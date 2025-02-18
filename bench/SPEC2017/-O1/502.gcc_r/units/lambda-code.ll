; ModuleID = 'lambda-code.c'
source_filename = "lambda-code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.lambda_body_vector_s = type { ptr, i32, i32 }
%struct.lambda_trans_matrix_s = type { ptr, i32, i32, i32 }
%struct.lambda_linear_expression_s = type { ptr, i32, ptr, i32, ptr }
%struct.lambda_loop_s = type { ptr, ptr, ptr, i32 }
%struct.lambda_loopnest_s = type { ptr, i32, i32 }
%struct.lambda_lattice_s = type { ptr, i32, ptr, ptr, i32 }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_lambda_loop_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_source_location_base = type { i32, i32, [1 x i32] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.access_matrix = type { ptr, i32, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lambda_body_vector_new(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 5
  store i64 16, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef %1, i32 noundef 16) #20
  br label %13

13:                                               ; preds = %2, %12
  %14 = load i64, ptr %3, align 8, !tbaa !54
  %15 = load ptr, ptr %6, align 8, !tbaa !57
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store ptr %16, ptr %6, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 10
  %22 = load i8, ptr %21, align 8
  %23 = or i8 %22, 2
  store i8 %23, ptr %21, align 8
  br label %24

24:                                               ; preds = %13, %20
  %25 = ptrtoint ptr %18 to i64
  store i64 %25, ptr %3, align 8, !tbaa !54
  %26 = ptrtoint ptr %16 to i64
  %27 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !59
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %26
  %31 = xor i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to ptr
  store ptr %34, ptr %6, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %33, %37
  %39 = load ptr, ptr %4, align 8, !tbaa !56
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store ptr %39, ptr %6, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %24, %43
  %45 = load ptr, ptr %6, align 8, !tbaa !57
  store ptr %45, ptr %17, align 8, !tbaa !58
  %46 = sext i32 %0 to i64
  %47 = shl nsw i64 %46, 2
  %48 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %47) #20
  store ptr %48, ptr %18, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %18, i64 0, i32 1
  store i32 %0, ptr %49, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %18, i64 0, i32 2
  store i32 1, ptr %50, align 4, !tbaa !64
  ret ptr %18
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lambda_body_vector_compute_new(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !67
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %3, %9
  %11 = load i32, ptr %4, align 8, !tbaa !65
  %12 = tail call ptr @lambda_body_vector_new(i32 noundef %11, ptr noundef %2)
  %13 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = mul nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %12, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !64
  %19 = load ptr, ptr %1, align 8, !tbaa !61
  %20 = load ptr, ptr %0, align 8, !tbaa !69
  %21 = load ptr, ptr %12, align 8, !tbaa !61
  %22 = sext i32 %11 to i64
  %23 = shl nsw i64 %22, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %21, i8 0, i64 %23, i1 false)
  %24 = icmp sgt i32 %11, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %10
  %26 = zext nneg i32 %11 to i64
  %27 = zext nneg i32 %11 to i64
  br label %28

28:                                               ; preds = %25, %45
  %29 = phi i64 [ 0, %25 ], [ %46, %45 ]
  %30 = getelementptr inbounds i32, ptr %21, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !50
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i64 [ 0, %28 ], [ %43, %32 ]
  %34 = phi i32 [ %31, %28 ], [ %42, %32 ]
  %35 = getelementptr inbounds ptr, ptr %20, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = getelementptr inbounds i32, ptr %36, i64 %29
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = getelementptr inbounds i32, ptr %19, i64 %33
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = mul nsw i32 %40, %38
  %42 = add nsw i32 %34, %41
  store i32 %42, ptr %30, align 4, !tbaa !50
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp eq i64 %43, %27
  br i1 %44, label %45, label %32, !llvm.loop !70

45:                                               ; preds = %32
  %46 = add nuw nsw i64 %29, 1
  %47 = icmp eq i64 %46, %26
  br i1 %47, label %48, label %28, !llvm.loop !71

48:                                               ; preds = %45, %10
  %49 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %12, i64 0, i32 1
  store i32 %50, ptr %51, align 8, !tbaa !63
  ret ptr %12
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_lambda_body_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %12)
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !72

16:                                               ; preds = %9, %2
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 5
  store i64 40, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 40
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef %2, i32 noundef 40) #20
  br label %14

14:                                               ; preds = %3, %13
  %15 = load i64, ptr %4, align 8, !tbaa !54
  %16 = load ptr, ptr %7, align 8, !tbaa !57
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  store ptr %17, ptr %7, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %23 = load i8, ptr %22, align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %14, %21
  %26 = ptrtoint ptr %19 to i64
  store i64 %26, ptr %4, align 8, !tbaa !54
  %27 = ptrtoint ptr %17 to i64
  %28 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  store ptr %35, ptr %7, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %34, %38
  %40 = load ptr, ptr %5, align 8, !tbaa !56
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %38
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  store ptr %40, ptr %7, align 8, !tbaa !57
  br label %45

45:                                               ; preds = %25, %44
  %46 = load ptr, ptr %7, align 8, !tbaa !57
  store ptr %46, ptr %18, align 8, !tbaa !58
  %47 = sext i32 %0 to i64
  %48 = shl nsw i64 %47, 2
  %49 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %48) #20
  store ptr %49, ptr %19, align 8, !tbaa !73
  %50 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %19, i64 0, i32 1
  store i32 0, ptr %50, align 8, !tbaa !75
  %51 = sext i32 %1 to i64
  %52 = shl nsw i64 %51, 2
  %53 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %52) #20
  %54 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %19, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %19, i64 0, i32 3
  store i32 1, ptr %55, align 8, !tbaa !77
  %56 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %19, i64 0, i32 4
  store ptr null, ptr %56, align 8, !tbaa !78
  ret ptr %19
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_lambda_linear_expression(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #10 !prof !34 {
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !73
  tail call fastcc void @print_linear_expression(ptr noundef %0, ptr noundef %7, i32 noundef %2, i8 noundef signext %4)
  %8 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !75
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %9)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %0)
  %12 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  tail call fastcc void @print_linear_expression(ptr noundef %0, ptr noundef %13, i32 noundef %3, i8 noundef signext 65)
  %14 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !77
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %15)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_linear_expression(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef signext %3) unnamed_addr #10 !prof !34 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %4
  %7 = sext i8 %3 to i64
  %8 = sext i8 %3 to i64
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %40
  %11 = phi i64 [ 0, %6 ], [ %42, %40 ]
  %12 = phi i8 [ 1, %6 ], [ %41, %40 ]
  %13 = getelementptr inbounds i32, ptr %1, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %12, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = icmp slt i32 %14, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = tail call i32 @fputc(i32 45, ptr %0)
  br label %28

22:                                               ; preds = %16
  %23 = icmp sgt i32 %14, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 3, i64 1, ptr %0)
  br label %28

26:                                               ; preds = %22
  %27 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %0)
  br label %28

28:                                               ; preds = %18, %20, %24, %26
  %29 = load i32, ptr %13, align 4, !tbaa !50
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = add i64 %11, %8
  %34 = trunc i64 %33 to i32
  %35 = tail call i32 @fputc(i32 %34, ptr %0)
  br label %40

36:                                               ; preds = %28
  %37 = add i64 %11, %7
  %38 = trunc i64 %37 to i32
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %30, i32 noundef %38)
  br label %40

40:                                               ; preds = %10, %36, %32
  %41 = phi i8 [ 0, %32 ], [ 0, %36 ], [ %12, %10 ]
  %42 = add nuw nsw i64 %11, 1
  %43 = icmp eq i64 %42, %9
  br i1 %43, label %44, label %10, !llvm.loop !79

44:                                               ; preds = %40, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_lambda_loop(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %5, %7
  %9 = getelementptr inbounds %struct.lambda_loop_s, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.lambda_loop_s, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %12)
  %14 = icmp eq ptr %10, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %0)
  tail call void @print_lambda_linear_expression(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, i8 noundef signext %4)
  br label %17

17:                                               ; preds = %15, %8
  %18 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 16, i64 1, ptr %0)
  %19 = load ptr, ptr %1, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %17 ]
  tail call void @print_lambda_linear_expression(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %2, i32 noundef %3, i8 noundef signext %4)
  %23 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !83

26:                                               ; preds = %21, %17
  %27 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr %0)
  %28 = getelementptr inbounds %struct.lambda_loop_s, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %34, %31 ], [ %29, %26 ]
  tail call void @print_lambda_linear_expression(ptr noundef %0, ptr noundef nonnull %32, i32 noundef %2, i32 noundef %3, i8 noundef signext %4)
  %33 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %31, !llvm.loop !84

36:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lambda_loopnest_new(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 5
  store i64 16, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 16
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef %2, i32 noundef 16) #20
  br label %14

14:                                               ; preds = %3, %13
  %15 = load i64, ptr %4, align 8, !tbaa !54
  %16 = load ptr, ptr %7, align 8, !tbaa !57
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  store ptr %17, ptr %7, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %23 = load i8, ptr %22, align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %14, %21
  %26 = ptrtoint ptr %19 to i64
  store i64 %26, ptr %4, align 8, !tbaa !54
  %27 = ptrtoint ptr %17 to i64
  %28 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  store ptr %35, ptr %7, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %34, %38
  %40 = load ptr, ptr %5, align 8, !tbaa !56
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %38
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  store ptr %40, ptr %7, align 8, !tbaa !57
  br label %45

45:                                               ; preds = %25, %44
  %46 = load ptr, ptr %7, align 8, !tbaa !57
  store ptr %46, ptr %18, align 8, !tbaa !58
  %47 = sext i32 %0 to i64
  %48 = shl nsw i64 %47, 3
  store i64 %48, ptr %4, align 8, !tbaa !54
  %49 = ptrtoint ptr %46 to i64
  %50 = sub i64 %41, %49
  %51 = icmp slt i64 %50, %48
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = trunc i64 %48 to i32
  tail call void @_obstack_newchunk(ptr noundef %2, i32 noundef %53) #20
  br label %54

54:                                               ; preds = %45, %52
  %55 = load i64, ptr %4, align 8, !tbaa !54
  %56 = load ptr, ptr %7, align 8, !tbaa !57
  %57 = getelementptr inbounds i8, ptr %56, i64 %55
  store ptr %57, ptr %7, align 8, !tbaa !57
  %58 = load ptr, ptr %18, align 8, !tbaa !58
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %62 = load i8, ptr %61, align 8
  %63 = or i8 %62, 2
  store i8 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %54, %60
  %65 = ptrtoint ptr %58 to i64
  store i64 %65, ptr %4, align 8, !tbaa !54
  %66 = ptrtoint ptr %57 to i64
  %67 = load i32, ptr %28, align 8, !tbaa !59
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = xor i32 %67, -1
  %71 = sext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = inttoptr i64 %72 to ptr
  store ptr %73, ptr %7, align 8, !tbaa !57
  %74 = load ptr, ptr %36, align 8, !tbaa !60
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %72, %75
  %77 = load ptr, ptr %5, align 8, !tbaa !56
  %78 = ptrtoint ptr %77 to i64
  %79 = sub i64 %78, %75
  %80 = icmp sgt i64 %76, %79
  %81 = select i1 %80, ptr %77, ptr %73
  store ptr %81, ptr %7, align 8
  store ptr %81, ptr %18, align 8, !tbaa !58
  store ptr %58, ptr %19, align 8, !tbaa !85
  %82 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %19, i64 0, i32 1
  store i32 %0, ptr %82, align 8, !tbaa !87
  %83 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %19, i64 0, i32 2
  store i32 %1, ptr %83, align 4, !tbaa !88
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_lambda_loopnest(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
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
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %13)
  %15 = load ptr, ptr %1, align 8, !tbaa !85
  %16 = getelementptr inbounds ptr, ptr %15, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = load i32, ptr %4, align 8, !tbaa !87
  %19 = load i32, ptr %9, align 4, !tbaa !88
  tail call void @print_lambda_loop(ptr noundef %0, ptr noundef %17, i32 noundef %18, i32 noundef %19, i8 noundef signext 105)
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  %21 = add nuw nsw i64 %11, 1
  %22 = load i32, ptr %4, align 8, !tbaa !87
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %10, label %25, !llvm.loop !89

25:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @least_common_multiple(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !34 {
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
  br i1 %11, label %12, label %7, !llvm.loop !90

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %3, %2 ], [ %8, %7 ]
  %14 = mul nsw i32 %1, %0
  %15 = tail call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = udiv i32 %15, %13
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lambda_loopnest_transform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !88
  %8 = sext i32 %5 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %9) #20
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !85
  %14 = zext nneg i32 %5 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %24, %15 ]
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.lambda_loop_s, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = getelementptr inbounds i32, ptr %10, i64 %16
  %22 = icmp slt i32 %20, 1
  %23 = select i1 %22, i32 -1, i32 1
  store i32 %23, ptr %21, align 4, !tbaa !50
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %26, label %15, !llvm.loop !91

26:                                               ; preds = %15, %3
  %27 = tail call fastcc ptr @lambda_lattice_compute_base(ptr noundef %0, ptr noundef %2)
  %28 = tail call ptr @lambda_trans_matrix_new(i32 noundef %5, i32 noundef %5) #20
  %29 = load ptr, ptr %1, align 8, !tbaa !69
  %30 = load ptr, ptr %27, align 8, !tbaa !92
  %31 = load ptr, ptr %28, align 8, !tbaa !69
  tail call void @lambda_matrix_mult(ptr noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef %5, i32 noundef %5, i32 noundef %5) #20
  %32 = tail call ptr @lambda_trans_matrix_new(i32 noundef %5, i32 noundef %5) #20
  %33 = tail call ptr @lambda_trans_matrix_new(i32 noundef %5, i32 noundef %5) #20
  %34 = load ptr, ptr %28, align 8, !tbaa !69
  %35 = load ptr, ptr %32, align 8, !tbaa !69
  %36 = load ptr, ptr %33, align 8, !tbaa !69
  tail call void @lambda_matrix_hermite(ptr noundef %34, i32 noundef %5, ptr noundef %35, ptr noundef %36) #20
  %37 = load i32, ptr %4, align 8, !tbaa !87
  %38 = load i32, ptr %6, align 4, !tbaa !88
  %39 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %37) #20
  %40 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %38) #20
  %41 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 512) #20
  %42 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %37) #20
  %43 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %38) #20
  %44 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 512) #20
  %45 = icmp sgt i32 %37, 0
  br i1 %45, label %46, label %200

46:                                               ; preds = %26
  %47 = icmp sgt i32 %38, 0
  %48 = icmp sgt i32 %38, 0
  %49 = icmp sgt i32 %38, 0
  %50 = zext nneg i32 %37 to i64
  %51 = zext nneg i32 %38 to i64
  %52 = zext nneg i32 %38 to i64
  %53 = zext nneg i32 %38 to i64
  br label %54

54:                                               ; preds = %46, %196
  %55 = phi i64 [ 0, %46 ], [ %198, %196 ]
  %56 = phi i32 [ 0, %46 ], [ %197, %196 ]
  %57 = load ptr, ptr %0, align 8, !tbaa !85
  %58 = getelementptr inbounds ptr, ptr %57, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.lambda_loop_s, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !82
  %62 = icmp sgt i32 %61, 0
  %63 = getelementptr inbounds %struct.lambda_loop_s, ptr %59, i64 0, i32 1
  %64 = select i1 %62, ptr %59, ptr %63
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %129, label %67

67:                                               ; preds = %54
  %68 = icmp eq i64 %55, 0
  %69 = sext i32 %56 to i64
  br label %70

70:                                               ; preds = %67, %123
  %71 = phi i64 [ %69, %67 ], [ %120, %123 ]
  %72 = phi ptr [ %65, %67 ], [ %125, %123 ]
  br i1 %68, label %77, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %72, align 8, !tbaa !73
  %75 = getelementptr inbounds ptr, ptr %39, i64 %71
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  br label %83

77:                                               ; preds = %83, %70
  br i1 %47, label %78, label %97

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !76
  %81 = getelementptr inbounds ptr, ptr %40, i64 %71
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  br label %90

83:                                               ; preds = %73, %83
  %84 = phi i64 [ 0, %73 ], [ %88, %83 ]
  %85 = getelementptr inbounds i32, ptr %74, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !50
  %87 = getelementptr inbounds i32, ptr %76, i64 %84
  store i32 %86, ptr %87, align 4, !tbaa !50
  %88 = add nuw nsw i64 %84, 1
  %89 = icmp eq i64 %88, %55
  br i1 %89, label %77, label %83, !llvm.loop !94

90:                                               ; preds = %78, %90
  %91 = phi i64 [ 0, %78 ], [ %95, %90 ]
  %92 = getelementptr inbounds i32, ptr %80, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = getelementptr inbounds i32, ptr %82, i64 %91
  store i32 %93, ptr %94, align 4, !tbaa !50
  %95 = add nuw nsw i64 %91, 1
  %96 = icmp eq i64 %95, %51
  br i1 %96, label %97, label %90, !llvm.loop !95

97:                                               ; preds = %90, %77
  %98 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %72, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !75
  %100 = getelementptr inbounds i32, ptr %41, i64 %71
  store i32 %99, ptr %100, align 4, !tbaa !50
  %101 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %72, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !77
  %103 = sub nsw i32 0, %102
  %104 = getelementptr inbounds ptr, ptr %39, i64 %71
  %105 = load ptr, ptr %104, align 8, !tbaa !35
  %106 = getelementptr inbounds i32, ptr %105, i64 %55
  store i32 %103, ptr %106, align 4, !tbaa !50
  %107 = load i32, ptr %100, align 4, !tbaa !50
  %108 = sub nsw i32 0, %107
  store i32 %108, ptr %100, align 4, !tbaa !50
  br i1 %48, label %109, label %119

109:                                              ; preds = %97
  %110 = getelementptr inbounds ptr, ptr %40, i64 %71
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  br label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ 0, %109 ], [ %117, %112 ]
  %114 = getelementptr inbounds i32, ptr %111, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = sub nsw i32 0, %115
  store i32 %116, ptr %114, align 4, !tbaa !50
  %117 = add nuw nsw i64 %113, 1
  %118 = icmp eq i64 %117, %52
  br i1 %118, label %119, label %112, !llvm.loop !96

119:                                              ; preds = %112, %97
  %120 = add i64 %71, 1
  %121 = icmp slt i64 %71, 127
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 702, ptr noundef nonnull @.str.1) #20
  br label %123

123:                                              ; preds = %122, %119
  %124 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %72, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %70, !llvm.loop !97

127:                                              ; preds = %123
  %128 = trunc i64 %120 to i32
  br label %129

129:                                              ; preds = %127, %54
  %130 = phi i32 [ %56, %54 ], [ %128, %127 ]
  %131 = load i32, ptr %60, align 8, !tbaa !82
  %132 = icmp sgt i32 %131, 0
  %133 = select i1 %132, ptr %63, ptr %59
  %134 = load ptr, ptr %133, align 8, !tbaa !35
  %135 = icmp eq ptr %134, null
  br i1 %135, label %196, label %136

136:                                              ; preds = %129
  %137 = icmp eq i64 %55, 0
  %138 = icmp eq i64 %55, 0
  %139 = sext i32 %130 to i64
  br label %140

140:                                              ; preds = %136, %190
  %141 = phi i64 [ %139, %136 ], [ %187, %190 ]
  %142 = phi ptr [ %134, %136 ], [ %192, %190 ]
  br i1 %137, label %147, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %142, align 8, !tbaa !73
  %145 = getelementptr inbounds ptr, ptr %39, i64 %141
  %146 = load ptr, ptr %145, align 8, !tbaa !35
  br label %153

147:                                              ; preds = %153, %140
  br i1 %49, label %148, label %167

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %142, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !76
  %151 = getelementptr inbounds ptr, ptr %40, i64 %141
  %152 = load ptr, ptr %151, align 8, !tbaa !35
  br label %160

153:                                              ; preds = %143, %153
  %154 = phi i64 [ 0, %143 ], [ %158, %153 ]
  %155 = getelementptr inbounds i32, ptr %144, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !50
  %157 = getelementptr inbounds i32, ptr %146, i64 %154
  store i32 %156, ptr %157, align 4, !tbaa !50
  %158 = add nuw nsw i64 %154, 1
  %159 = icmp eq i64 %158, %55
  br i1 %159, label %147, label %153, !llvm.loop !98

160:                                              ; preds = %148, %160
  %161 = phi i64 [ 0, %148 ], [ %165, %160 ]
  %162 = getelementptr inbounds i32, ptr %150, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = getelementptr inbounds i32, ptr %152, i64 %161
  store i32 %163, ptr %164, align 4, !tbaa !50
  %165 = add nuw nsw i64 %161, 1
  %166 = icmp eq i64 %165, %53
  br i1 %166, label %167, label %160, !llvm.loop !99

167:                                              ; preds = %160, %147
  %168 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %142, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !75
  %170 = getelementptr inbounds i32, ptr %41, i64 %141
  store i32 %169, ptr %170, align 4, !tbaa !50
  br i1 %138, label %181, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds ptr, ptr %39, i64 %141
  %173 = load ptr, ptr %172, align 8, !tbaa !35
  br label %174

174:                                              ; preds = %171, %174
  %175 = phi i64 [ 0, %171 ], [ %179, %174 ]
  %176 = getelementptr inbounds i32, ptr %173, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !50
  %178 = sub nsw i32 0, %177
  store i32 %178, ptr %176, align 4, !tbaa !50
  %179 = add nuw nsw i64 %175, 1
  %180 = icmp eq i64 %179, %55
  br i1 %180, label %181, label %174, !llvm.loop !100

181:                                              ; preds = %174, %167
  %182 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %142, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !77
  %184 = getelementptr inbounds ptr, ptr %39, i64 %141
  %185 = load ptr, ptr %184, align 8, !tbaa !35
  %186 = getelementptr inbounds i32, ptr %185, i64 %55
  store i32 %183, ptr %186, align 4, !tbaa !50
  %187 = add i64 %141, 1
  %188 = icmp slt i64 %141, 127
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 731, ptr noundef nonnull @.str.1) #20
  br label %190

190:                                              ; preds = %189, %181
  %191 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %142, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !35
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %140, !llvm.loop !101

194:                                              ; preds = %190
  %195 = trunc i64 %187 to i32
  br label %196

196:                                              ; preds = %194, %129
  %197 = phi i32 [ %130, %129 ], [ %195, %194 ]
  %198 = add nuw nsw i64 %55, 1
  %199 = icmp eq i64 %198, %50
  br i1 %199, label %200, label %54, !llvm.loop !102

200:                                              ; preds = %196, %26
  %201 = phi i32 [ 0, %26 ], [ %197, %196 ]
  %202 = tail call fastcc ptr @lambda_lattice_compute_base(ptr noundef %0, ptr noundef %2)
  %203 = load ptr, ptr %202, align 8, !tbaa !92
  tail call void @lambda_matrix_mult(ptr noundef %39, ptr noundef %203, ptr noundef %42, i32 noundef %201, i32 noundef %37, i32 noundef %37) #20
  %204 = getelementptr inbounds %struct.lambda_lattice_s, ptr %202, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !103
  tail call void @lambda_matrix_vector_mult(ptr noundef %39, i32 noundef %201, i32 noundef %37, ptr noundef %205, ptr noundef %44) #20
  %206 = icmp sgt i32 %201, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = zext nneg i32 %201 to i64
  br label %209

209:                                              ; preds = %207, %209
  %210 = phi i64 [ 0, %207 ], [ %216, %209 ]
  %211 = getelementptr inbounds i32, ptr %41, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !50
  %213 = getelementptr inbounds i32, ptr %44, i64 %210
  %214 = load i32, ptr %213, align 4, !tbaa !50
  %215 = sub i32 %212, %214
  store i32 %215, ptr %213, align 4, !tbaa !50
  %216 = add nuw nsw i64 %210, 1
  %217 = icmp eq i64 %216, %208
  br i1 %217, label %218, label %209, !llvm.loop !104

218:                                              ; preds = %209, %200
  %219 = getelementptr inbounds %struct.lambda_lattice_s, ptr %202, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !105
  tail call void @lambda_matrix_mult(ptr noundef %39, ptr noundef %220, ptr noundef %43, i32 noundef %201, i32 noundef %37, i32 noundef %38) #20
  tail call void @lambda_matrix_add_mc(ptr noundef %40, i32 noundef 1, ptr noundef %43, i32 noundef -1, ptr noundef %43, i32 noundef %201, i32 noundef %38) #20
  %221 = tail call ptr @lambda_matrix_new(i32 noundef %37, i32 noundef %37) #20
  %222 = load ptr, ptr %33, align 8, !tbaa !69
  %223 = tail call i32 @lambda_matrix_inverse(ptr noundef %222, ptr noundef %221, i32 noundef %37) #20
  tail call void @lambda_matrix_mult(ptr noundef %42, ptr noundef %221, ptr noundef %39, i32 noundef %201, i32 noundef %37, i32 noundef %37) #20
  %224 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %37) #20
  %225 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %38) #20
  %226 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 512) #20
  %227 = tail call ptr @lambda_loopnest_new(i32 noundef %37, i32 noundef %38, ptr noundef %2)
  %228 = icmp sgt i32 %37, 0
  br i1 %228, label %229, label %468

229:                                              ; preds = %218
  %230 = icmp sgt i32 %38, 0
  %231 = icmp sgt i32 %38, 0
  %232 = icmp sgt i32 %38, 0
  %233 = zext nneg i32 %37 to i64
  %234 = shl nuw nsw i64 %233, 2
  %235 = sext i32 %38 to i64
  %236 = shl nsw i64 %235, 2
  %237 = add nsw i32 %37, -1
  %238 = zext i32 %237 to i64
  %239 = zext nneg i32 %37 to i64
  %240 = zext nneg i32 %38 to i64
  %241 = zext nneg i32 %38 to i64
  %242 = zext nneg i32 %37 to i64
  %243 = zext nneg i32 %38 to i64
  br label %248

244:                                              ; preds = %464, %269
  %245 = phi i32 [ 0, %269 ], [ %465, %464 ]
  %246 = icmp sgt i64 %249, 1
  %247 = add nsw i64 %250, -1
  br i1 %246, label %248, label %468, !llvm.loop !106

248:                                              ; preds = %229, %244
  %249 = phi i64 [ %239, %229 ], [ %258, %244 ]
  %250 = phi i64 [ %238, %229 ], [ %247, %244 ]
  %251 = phi ptr [ %226, %229 ], [ %257, %244 ]
  %252 = phi i32 [ %201, %229 ], [ %245, %244 ]
  %253 = phi ptr [ %225, %229 ], [ %256, %244 ]
  %254 = phi ptr [ %224, %229 ], [ %255, %244 ]
  %255 = phi ptr [ %39, %229 ], [ %254, %244 ]
  %256 = phi ptr [ %43, %229 ], [ %253, %244 ]
  %257 = phi ptr [ %44, %229 ], [ %251, %244 ]
  %258 = add nsw i64 %249, -1
  %259 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #20
  %260 = load ptr, ptr %227, align 8, !tbaa !85
  %261 = getelementptr inbounds ptr, ptr %260, i64 %258
  store ptr %259, ptr %261, align 8, !tbaa !35
  %262 = getelementptr inbounds %struct.lambda_loop_s, ptr %259, i64 0, i32 3
  store i32 1, ptr %262, align 8, !tbaa !82
  %263 = icmp sgt i32 %252, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %248
  %265 = icmp sgt i64 %249, 1
  %266 = getelementptr inbounds %struct.lambda_loop_s, ptr %259, i64 0, i32 1
  %267 = icmp sgt i64 %249, 1
  %268 = zext nneg i32 %252 to i64
  br label %274

269:                                              ; preds = %363, %248
  %270 = icmp sgt i32 %252, 0
  br i1 %270, label %271, label %244

271:                                              ; preds = %269
  %272 = zext nneg i32 %252 to i64
  %273 = zext nneg i32 %252 to i64
  br label %366

274:                                              ; preds = %264, %363
  %275 = phi i64 [ 0, %264 ], [ %364, %363 ]
  %276 = getelementptr inbounds ptr, ptr %255, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !35
  %278 = getelementptr inbounds i32, ptr %277, i64 %258
  %279 = load i32, ptr %278, align 4, !tbaa !50
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %322

281:                                              ; preds = %274
  %282 = tail call ptr @lambda_linear_expression_new(i32 noundef %37, i32 noundef %38, ptr noundef %2)
  br i1 %267, label %283, label %286

283:                                              ; preds = %281
  %284 = load ptr, ptr %276, align 8, !tbaa !35
  %285 = load ptr, ptr %282, align 8, !tbaa !73
  br label %292

286:                                              ; preds = %292, %281
  br i1 %231, label %287, label %307

287:                                              ; preds = %286
  %288 = getelementptr inbounds ptr, ptr %256, i64 %275
  %289 = load ptr, ptr %288, align 8, !tbaa !35
  %290 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %282, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !76
  br label %299

292:                                              ; preds = %283, %292
  %293 = phi i64 [ 0, %283 ], [ %297, %292 ]
  %294 = getelementptr inbounds i32, ptr %284, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !50
  %296 = getelementptr inbounds i32, ptr %285, i64 %293
  store i32 %295, ptr %296, align 4, !tbaa !50
  %297 = add nuw nsw i64 %293, 1
  %298 = icmp eq i64 %297, %250
  br i1 %298, label %286, label %292, !llvm.loop !107

299:                                              ; preds = %287, %299
  %300 = phi i64 [ 0, %287 ], [ %305, %299 ]
  %301 = getelementptr inbounds i32, ptr %289, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !50
  %303 = sub nsw i32 0, %302
  %304 = getelementptr inbounds i32, ptr %291, i64 %300
  store i32 %303, ptr %304, align 4, !tbaa !50
  %305 = add nuw nsw i64 %300, 1
  %306 = icmp eq i64 %305, %241
  br i1 %306, label %307, label %299, !llvm.loop !108

307:                                              ; preds = %299, %286
  %308 = load ptr, ptr %276, align 8, !tbaa !35
  %309 = getelementptr inbounds i32, ptr %308, i64 %258
  %310 = load i32, ptr %309, align 4, !tbaa !50
  %311 = sub nsw i32 0, %310
  %312 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %282, i64 0, i32 3
  store i32 %311, ptr %312, align 8, !tbaa !77
  %313 = getelementptr inbounds i32, ptr %257, i64 %275
  %314 = load i32, ptr %313, align 4, !tbaa !50
  %315 = sub nsw i32 0, %314
  %316 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %282, i64 0, i32 1
  store i32 %315, ptr %316, align 8, !tbaa !75
  %317 = load ptr, ptr %259, align 8, !tbaa !109
  %318 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %317, ptr noundef %282, i32 noundef %37, i32 noundef %38), !range !110
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %363

320:                                              ; preds = %307
  %321 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %282, i64 0, i32 4
  store ptr %317, ptr %321, align 8, !tbaa !78
  store ptr %282, ptr %259, align 8, !tbaa !109
  br label %363

322:                                              ; preds = %274
  %323 = icmp eq i32 %279, 0
  br i1 %323, label %363, label %324

324:                                              ; preds = %322
  %325 = tail call ptr @lambda_linear_expression_new(i32 noundef %37, i32 noundef %38, ptr noundef %2)
  br i1 %265, label %326, label %329

326:                                              ; preds = %324
  %327 = load ptr, ptr %276, align 8, !tbaa !35
  %328 = load ptr, ptr %325, align 8, !tbaa !73
  br label %335

329:                                              ; preds = %335, %324
  br i1 %230, label %330, label %350

330:                                              ; preds = %329
  %331 = getelementptr inbounds ptr, ptr %256, i64 %275
  %332 = load ptr, ptr %331, align 8, !tbaa !35
  %333 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %325, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !76
  br label %343

335:                                              ; preds = %326, %335
  %336 = phi i64 [ 0, %326 ], [ %341, %335 ]
  %337 = getelementptr inbounds i32, ptr %327, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !50
  %339 = sub nsw i32 0, %338
  %340 = getelementptr inbounds i32, ptr %328, i64 %336
  store i32 %339, ptr %340, align 4, !tbaa !50
  %341 = add nuw nsw i64 %336, 1
  %342 = icmp eq i64 %341, %250
  br i1 %342, label %329, label %335, !llvm.loop !111

343:                                              ; preds = %330, %343
  %344 = phi i64 [ 0, %330 ], [ %348, %343 ]
  %345 = getelementptr inbounds i32, ptr %332, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !50
  %347 = getelementptr inbounds i32, ptr %334, i64 %344
  store i32 %346, ptr %347, align 4, !tbaa !50
  %348 = add nuw nsw i64 %344, 1
  %349 = icmp eq i64 %348, %240
  br i1 %349, label %350, label %343, !llvm.loop !112

350:                                              ; preds = %343, %329
  %351 = load ptr, ptr %276, align 8, !tbaa !35
  %352 = getelementptr inbounds i32, ptr %351, i64 %258
  %353 = load i32, ptr %352, align 4, !tbaa !50
  %354 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %325, i64 0, i32 3
  store i32 %353, ptr %354, align 8, !tbaa !77
  %355 = getelementptr inbounds i32, ptr %257, i64 %275
  %356 = load i32, ptr %355, align 4, !tbaa !50
  %357 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %325, i64 0, i32 1
  store i32 %356, ptr %357, align 8, !tbaa !75
  %358 = load ptr, ptr %266, align 8, !tbaa !113
  %359 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %358, ptr noundef %325, i32 noundef %37, i32 noundef %38), !range !110
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %350
  %362 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %325, i64 0, i32 4
  store ptr %358, ptr %362, align 8, !tbaa !78
  store ptr %325, ptr %266, align 8, !tbaa !113
  br label %363

363:                                              ; preds = %361, %350, %322, %320, %307
  %364 = add nuw nsw i64 %275, 1
  %365 = icmp eq i64 %364, %268
  br i1 %365, label %269, label %274, !llvm.loop !114

366:                                              ; preds = %271, %464
  %367 = phi i64 [ 0, %271 ], [ %466, %464 ]
  %368 = phi i32 [ 0, %271 ], [ %465, %464 ]
  %369 = getelementptr inbounds ptr, ptr %255, i64 %367
  %370 = load ptr, ptr %369, align 8, !tbaa !35
  %371 = getelementptr inbounds i32, ptr %370, i64 %258
  %372 = load i32, ptr %371, align 4, !tbaa !50
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %366
  %375 = sext i32 %368 to i64
  %376 = getelementptr inbounds ptr, ptr %254, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %377, ptr align 4 %370, i64 %234, i1 false)
  %378 = getelementptr inbounds ptr, ptr %256, i64 %367
  %379 = load ptr, ptr %378, align 8, !tbaa !35
  %380 = getelementptr inbounds ptr, ptr %253, i64 %375
  %381 = load ptr, ptr %380, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %381, ptr align 4 %379, i64 %236, i1 false)
  %382 = getelementptr inbounds i32, ptr %257, i64 %367
  %383 = load i32, ptr %382, align 4, !tbaa !50
  %384 = getelementptr inbounds i32, ptr %251, i64 %375
  store i32 %383, ptr %384, align 4, !tbaa !50
  %385 = add nsw i32 %368, 1
  br label %464

386:                                              ; preds = %366
  %387 = icmp sgt i32 %372, 0
  br i1 %387, label %388, label %464

388:                                              ; preds = %386
  %389 = getelementptr inbounds ptr, ptr %256, i64 %367
  %390 = getelementptr inbounds i32, ptr %257, i64 %367
  br label %391

391:                                              ; preds = %388, %460
  %392 = phi i64 [ 0, %388 ], [ %462, %460 ]
  %393 = phi i32 [ %368, %388 ], [ %461, %460 ]
  %394 = getelementptr inbounds ptr, ptr %255, i64 %392
  %395 = load ptr, ptr %394, align 8, !tbaa !35
  %396 = getelementptr inbounds i32, ptr %395, i64 %258
  %397 = load i32, ptr %396, align 4, !tbaa !50
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %460

399:                                              ; preds = %391
  %400 = load i32, ptr %371, align 4, !tbaa !50
  %401 = sub nsw i32 0, %397
  %402 = icmp eq i32 %400, 0
  br i1 %402, label %410, label %403

403:                                              ; preds = %399
  %404 = tail call i32 @llvm.abs.i32(i32 %400, i1 true)
  br label %405

405:                                              ; preds = %403, %405
  %406 = phi i32 [ %408, %405 ], [ %404, %403 ]
  %407 = phi i32 [ %406, %405 ], [ %401, %403 ]
  %408 = urem i32 %407, %406
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %405, !llvm.loop !90

410:                                              ; preds = %405, %399
  %411 = phi i32 [ %401, %399 ], [ %406, %405 ]
  %412 = mul nsw i32 %400, %397
  %413 = tail call i32 @llvm.abs.i32(i32 %412, i1 true)
  %414 = udiv i32 %413, %411
  %415 = sdiv i32 %414, %400
  %416 = sdiv i32 %414, %397
  %417 = sub nsw i32 0, %416
  %418 = sext i32 %393 to i64
  %419 = getelementptr inbounds ptr, ptr %254, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !35
  br label %421

421:                                              ; preds = %410, %421
  %422 = phi i64 [ 0, %410 ], [ %431, %421 ]
  %423 = getelementptr inbounds i32, ptr %370, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !50
  %425 = mul nsw i32 %424, %415
  %426 = getelementptr inbounds i32, ptr %395, i64 %422
  %427 = load i32, ptr %426, align 4, !tbaa !50
  %428 = mul nsw i32 %427, %417
  %429 = add nsw i32 %428, %425
  %430 = getelementptr inbounds i32, ptr %420, i64 %422
  store i32 %429, ptr %430, align 4, !tbaa !50
  %431 = add nuw nsw i64 %422, 1
  %432 = icmp eq i64 %431, %242
  br i1 %432, label %433, label %421, !llvm.loop !104

433:                                              ; preds = %421
  %434 = load ptr, ptr %389, align 8, !tbaa !35
  %435 = getelementptr inbounds ptr, ptr %256, i64 %392
  %436 = load ptr, ptr %435, align 8, !tbaa !35
  %437 = getelementptr inbounds ptr, ptr %253, i64 %418
  %438 = load ptr, ptr %437, align 8, !tbaa !35
  br i1 %232, label %439, label %451

439:                                              ; preds = %433, %439
  %440 = phi i64 [ %449, %439 ], [ 0, %433 ]
  %441 = getelementptr inbounds i32, ptr %434, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !50
  %443 = mul nsw i32 %442, %415
  %444 = getelementptr inbounds i32, ptr %436, i64 %440
  %445 = load i32, ptr %444, align 4, !tbaa !50
  %446 = mul nsw i32 %445, %417
  %447 = add nsw i32 %446, %443
  %448 = getelementptr inbounds i32, ptr %438, i64 %440
  store i32 %447, ptr %448, align 4, !tbaa !50
  %449 = add nuw nsw i64 %440, 1
  %450 = icmp eq i64 %449, %243
  br i1 %450, label %451, label %439, !llvm.loop !104

451:                                              ; preds = %439, %433
  %452 = load i32, ptr %390, align 4, !tbaa !50
  %453 = mul nsw i32 %452, %415
  %454 = getelementptr inbounds i32, ptr %257, i64 %392
  %455 = load i32, ptr %454, align 4, !tbaa !50
  %456 = mul nsw i32 %455, %417
  %457 = add nsw i32 %456, %453
  %458 = getelementptr inbounds i32, ptr %251, i64 %418
  store i32 %457, ptr %458, align 4, !tbaa !50
  %459 = add nsw i32 %393, 1
  br label %460

460:                                              ; preds = %451, %391
  %461 = phi i32 [ %459, %451 ], [ %393, %391 ]
  %462 = add nuw nsw i64 %392, 1
  %463 = icmp eq i64 %462, %273
  br i1 %463, label %464, label %391, !llvm.loop !115

464:                                              ; preds = %460, %386, %374
  %465 = phi i32 [ %385, %374 ], [ %368, %386 ], [ %461, %460 ]
  %466 = add nuw nsw i64 %367, 1
  %467 = icmp eq i64 %466, %272
  br i1 %467, label %244, label %366, !llvm.loop !116

468:                                              ; preds = %244, %218
  %469 = load ptr, ptr %28, align 8, !tbaa !69
  %470 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %28, i64 0, i32 1
  %471 = load i32, ptr %470, align 8, !tbaa !65
  %472 = tail call ptr @lambda_matrix_new(i32 noundef %471, i32 noundef %471) #20
  %473 = sext i32 %471 to i64
  %474 = shl nsw i64 %473, 2
  %475 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %474) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %475, ptr align 4 %10, i64 %474, i1 false)
  tail call void @lambda_matrix_copy(ptr noundef %469, ptr noundef %472, i32 noundef %471, i32 noundef %471) #20
  %476 = icmp sgt i32 %471, 0
  br i1 %476, label %477, label %557

477:                                              ; preds = %468
  %478 = zext nneg i32 %471 to i64
  %479 = zext nneg i32 %471 to i64
  %480 = zext nneg i32 %471 to i64
  %481 = zext nneg i32 %471 to i64
  %482 = zext nneg i32 %471 to i64
  %483 = zext nneg i32 %471 to i64
  br label %487

484:                                              ; preds = %505, %507, %492
  %485 = add nuw nsw i64 %488, 1
  %486 = icmp eq i64 %493, %479
  br i1 %486, label %557, label %487

487:                                              ; preds = %477, %484
  %488 = phi i64 [ 1, %477 ], [ %485, %484 ]
  %489 = phi i64 [ 0, %477 ], [ %493, %484 ]
  %490 = getelementptr inbounds ptr, ptr %472, i64 %489
  %491 = load ptr, ptr %490, align 8, !tbaa !35
  br label %495

492:                                              ; preds = %502
  %493 = add nuw nsw i64 %489, 1
  %494 = icmp ult i64 %493, %478
  br i1 %494, label %506, label %484

495:                                              ; preds = %487, %502
  %496 = phi i64 [ %489, %487 ], [ %503, %502 ]
  %497 = getelementptr inbounds i32, ptr %491, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !50
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %495
  %501 = trunc i64 %496 to i32
  tail call void @lambda_matrix_col_negate(ptr noundef %472, i32 noundef %471, i32 noundef %501) #20
  br label %502

502:                                              ; preds = %500, %495
  %503 = add nuw nsw i64 %496, 1
  %504 = icmp eq i64 %503, %480
  br i1 %504, label %492, label %495, !llvm.loop !117

505:                                              ; preds = %547
  br i1 %494, label %506, label %484, !llvm.loop !118

506:                                              ; preds = %492, %505
  br label %510

507:                                              ; preds = %510
  %508 = add nuw nsw i64 %511, 1
  %509 = icmp eq i64 %508, %481
  br i1 %509, label %484, label %510, !llvm.loop !119

510:                                              ; preds = %506, %507
  %511 = phi i64 [ %488, %506 ], [ %508, %507 ]
  %512 = getelementptr inbounds i32, ptr %491, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !50
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %507, label %515

515:                                              ; preds = %510
  %516 = getelementptr inbounds i32, ptr %491, i64 %489
  %517 = trunc i64 %489 to i32
  br label %518

518:                                              ; preds = %515, %533
  %519 = phi i64 [ %489, %515 ], [ %535, %533 ]
  %520 = phi i32 [ -1, %515 ], [ %534, %533 ]
  %521 = getelementptr inbounds i32, ptr %491, i64 %519
  %522 = load i32, ptr %521, align 4, !tbaa !50
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %533, label %524

524:                                              ; preds = %518
  %525 = icmp slt i32 %520, 0
  br i1 %525, label %531, label %526

526:                                              ; preds = %524
  %527 = zext nneg i32 %520 to i64
  %528 = getelementptr inbounds i32, ptr %491, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !50
  %530 = icmp slt i32 %522, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %526, %524
  %532 = trunc i64 %519 to i32
  br label %533

533:                                              ; preds = %531, %526, %518
  %534 = phi i32 [ %532, %531 ], [ %520, %526 ], [ %520, %518 ]
  %535 = add nuw nsw i64 %519, 1
  %536 = icmp eq i64 %535, %482
  br i1 %536, label %537, label %518, !llvm.loop !120

537:                                              ; preds = %533
  %538 = icmp sgt i32 %534, -1
  br i1 %538, label %540, label %539

539:                                              ; preds = %537
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 352, ptr noundef nonnull @.str.1) #20
  br label %540

540:                                              ; preds = %539, %537
  %541 = getelementptr inbounds i32, ptr %475, i64 %489
  %542 = trunc i64 %489 to i32
  tail call void @lambda_matrix_col_exchange(ptr noundef %472, i32 noundef %471, i32 noundef %542, i32 noundef %534) #20
  %543 = load i32, ptr %541, align 4, !tbaa !50
  %544 = sext i32 %534 to i64
  %545 = getelementptr inbounds i32, ptr %475, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !50
  store i32 %546, ptr %541, align 4, !tbaa !50
  store i32 %543, ptr %545, align 4, !tbaa !50
  br label %547

547:                                              ; preds = %540, %547
  %548 = phi i64 [ %488, %540 ], [ %555, %547 ]
  %549 = getelementptr inbounds i32, ptr %491, i64 %548
  %550 = load i32, ptr %549, align 4, !tbaa !50
  %551 = load i32, ptr %516, align 4, !tbaa !50
  %552 = sdiv i32 %550, %551
  %553 = sub nsw i32 0, %552
  %554 = trunc i64 %548 to i32
  tail call void @lambda_matrix_col_add(ptr noundef %472, i32 noundef %471, i32 noundef %517, i32 noundef %554, i32 noundef %553) #20
  %555 = add nuw nsw i64 %548, 1
  %556 = icmp eq i64 %555, %483
  br i1 %556, label %505, label %547, !llvm.loop !121

557:                                              ; preds = %484, %468
  %558 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %227, i64 0, i32 1
  %559 = load i32, ptr %558, align 8, !tbaa !87
  %560 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %227, i64 0, i32 2
  %561 = load i32, ptr %560, align 4, !tbaa !88
  %562 = tail call ptr @lambda_matrix_new(i32 noundef %559, i32 noundef %559) #20
  %563 = load ptr, ptr %32, align 8, !tbaa !69
  %564 = tail call i32 @lambda_matrix_inverse(ptr noundef %563, ptr noundef %562, i32 noundef %559) #20
  %565 = tail call ptr @lambda_matrix_new(i32 noundef %559, i32 noundef %559) #20
  %566 = load ptr, ptr %32, align 8, !tbaa !69
  tail call void @lambda_matrix_copy(ptr noundef %566, ptr noundef %565, i32 noundef %559, i32 noundef %559) #20
  %567 = icmp sgt i32 %559, 0
  br i1 %567, label %568, label %577

568:                                              ; preds = %557
  %569 = zext nneg i32 %559 to i64
  br label %570

570:                                              ; preds = %568, %570
  %571 = phi i64 [ 0, %568 ], [ %575, %570 ]
  %572 = getelementptr inbounds ptr, ptr %565, i64 %571
  %573 = load ptr, ptr %572, align 8, !tbaa !35
  %574 = getelementptr inbounds i32, ptr %573, i64 %571
  store i32 0, ptr %574, align 4, !tbaa !50
  %575 = add nuw nsw i64 %571, 1
  %576 = icmp eq i64 %575, %569
  br i1 %576, label %577, label %570, !llvm.loop !122

577:                                              ; preds = %570, %557
  %578 = tail call ptr @lambda_matrix_new(i32 noundef %559, i32 noundef %559) #20
  tail call void @lambda_matrix_mult(ptr noundef %565, ptr noundef %562, ptr noundef %578, i32 noundef %559, i32 noundef %559, i32 noundef %559) #20
  %579 = tail call ptr @lambda_loopnest_new(i32 noundef %559, i32 noundef %561, ptr noundef %2)
  %580 = icmp sgt i32 %559, 0
  br i1 %580, label %581, label %588

581:                                              ; preds = %577
  %582 = tail call i32 @llvm.abs.i32(i32 %564, i1 true)
  %583 = zext nneg i32 %559 to i64
  %584 = shl nuw nsw i64 %583, 2
  %585 = sext i32 %561 to i64
  %586 = shl nsw i64 %585, 2
  %587 = zext nneg i32 %559 to i64
  br label %634

588:                                              ; preds = %683, %577
  %589 = icmp sgt i32 %559, 0
  br i1 %589, label %590, label %695

590:                                              ; preds = %588
  %591 = zext nneg i32 %559 to i64
  %592 = shl nuw nsw i64 %591, 2
  %593 = sext i32 %561 to i64
  %594 = shl nsw i64 %593, 2
  %595 = icmp sgt i32 %561, 0
  %596 = icmp eq i32 %564, 0
  %597 = icmp sgt i32 %561, 0
  %598 = icmp eq i32 %559, 1
  %599 = icmp sgt i32 %561, 0
  %600 = icmp sgt i32 %561, 1
  %601 = icmp sgt i32 %561, 0
  %602 = zext nneg i32 %559 to i64
  %603 = shl nuw nsw i64 %602, 2
  %604 = sext i32 %561 to i64
  %605 = shl nsw i64 %604, 2
  %606 = icmp sgt i32 %561, 0
  %607 = icmp eq i32 %564, 0
  %608 = icmp sgt i32 %561, 0
  %609 = icmp eq i32 %559, 1
  %610 = icmp sgt i32 %561, 0
  %611 = icmp sgt i32 %561, 1
  %612 = icmp sgt i32 %561, 0
  %613 = zext nneg i32 %559 to i64
  %614 = zext nneg i32 %559 to i64
  %615 = zext nneg i32 %559 to i64
  %616 = zext nneg i32 %559 to i64
  %617 = zext nneg i32 %561 to i64
  %618 = zext nneg i32 %559 to i64
  %619 = zext nneg i32 %561 to i64
  %620 = zext nneg i32 %559 to i64
  %621 = zext nneg i32 %561 to i64
  %622 = zext nneg i32 %559 to i64
  %623 = zext nneg i32 %561 to i64
  %624 = zext nneg i32 %559 to i64
  %625 = zext nneg i32 %559 to i64
  %626 = zext nneg i32 %559 to i64
  %627 = zext nneg i32 %561 to i64
  %628 = zext nneg i32 %559 to i64
  %629 = zext nneg i32 %561 to i64
  %630 = zext nneg i32 %559 to i64
  %631 = zext nneg i32 %561 to i64
  %632 = zext nneg i32 %559 to i64
  %633 = zext nneg i32 %561 to i64
  br label %699

634:                                              ; preds = %581, %683
  %635 = phi i64 [ 0, %581 ], [ %693, %683 ]
  %636 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #20
  %637 = load ptr, ptr %579, align 8, !tbaa !85
  %638 = getelementptr inbounds ptr, ptr %637, i64 %635
  store ptr %636, ptr %638, align 8, !tbaa !35
  %639 = getelementptr inbounds ptr, ptr %578, i64 %635
  %640 = load ptr, ptr %639, align 8, !tbaa !35
  %641 = icmp eq i64 %635, 0
  br i1 %641, label %663, label %642

642:                                              ; preds = %634
  %643 = load i32, ptr %640, align 4, !tbaa !50
  %644 = icmp eq i64 %635, 1
  br i1 %644, label %663, label %645

645:                                              ; preds = %642, %659
  %646 = phi i64 [ %661, %659 ], [ 1, %642 ]
  %647 = phi i32 [ %660, %659 ], [ %643, %642 ]
  %648 = getelementptr inbounds i32, ptr %640, i64 %646
  %649 = load i32, ptr %648, align 4, !tbaa !50
  %650 = tail call i32 @llvm.abs.i32(i32 %649, i1 true)
  %651 = icmp eq i32 %647, 0
  br i1 %651, label %659, label %652

652:                                              ; preds = %645
  %653 = tail call i32 @llvm.abs.i32(i32 %647, i1 true)
  br label %654

654:                                              ; preds = %652, %654
  %655 = phi i32 [ %657, %654 ], [ %653, %652 ]
  %656 = phi i32 [ %655, %654 ], [ %650, %652 ]
  %657 = urem i32 %656, %655
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %654, !llvm.loop !90

659:                                              ; preds = %654, %645
  %660 = phi i32 [ %650, %645 ], [ %655, %654 ]
  %661 = add nuw nsw i64 %646, 1
  %662 = icmp eq i64 %661, %635
  br i1 %662, label %663, label %645, !llvm.loop !123

663:                                              ; preds = %659, %642, %634
  %664 = phi i32 [ 0, %634 ], [ %643, %642 ], [ %660, %659 ]
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %668, label %666

666:                                              ; preds = %663
  %667 = tail call i32 @llvm.abs.i32(i32 %664, i1 true)
  br label %671

668:                                              ; preds = %671, %663
  %669 = phi i32 [ %582, %663 ], [ %672, %671 ]
  %670 = icmp eq i64 %635, 0
  br i1 %670, label %683, label %676

671:                                              ; preds = %666, %671
  %672 = phi i32 [ %674, %671 ], [ %667, %666 ]
  %673 = phi i32 [ %672, %671 ], [ %582, %666 ]
  %674 = urem i32 %673, %672
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %668, label %671, !llvm.loop !90

676:                                              ; preds = %668, %676
  %677 = phi i64 [ %681, %676 ], [ 0, %668 ]
  %678 = getelementptr inbounds i32, ptr %640, i64 %677
  %679 = load i32, ptr %678, align 4, !tbaa !50
  %680 = sdiv i32 %679, %669
  store i32 %680, ptr %678, align 4, !tbaa !50
  %681 = add nuw nsw i64 %677, 1
  %682 = icmp eq i64 %681, %635
  br i1 %682, label %683, label %676, !llvm.loop !124

683:                                              ; preds = %676, %668
  %684 = tail call ptr @lambda_linear_expression_new(i32 noundef %559, i32 noundef %561, ptr noundef %2)
  %685 = load ptr, ptr %639, align 8, !tbaa !35
  %686 = load ptr, ptr %684, align 8, !tbaa !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %686, ptr align 4 %685, i64 %584, i1 false)
  %687 = sdiv i32 %564, %669
  %688 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %684, i64 0, i32 3
  store i32 %687, ptr %688, align 8, !tbaa !77
  %689 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %684, i64 0, i32 1
  store i32 0, ptr %689, align 8, !tbaa !75
  %690 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %684, i64 0, i32 2
  %691 = load ptr, ptr %690, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr align 4 %691, i8 0, i64 %586, i1 false)
  %692 = getelementptr inbounds %struct.lambda_loop_s, ptr %636, i64 0, i32 2
  store ptr %684, ptr %692, align 8, !tbaa !80
  %693 = add nuw nsw i64 %635, 1
  %694 = icmp eq i64 %693, %587
  br i1 %694, label %588, label %634, !llvm.loop !125

695:                                              ; preds = %1111, %588
  %696 = icmp sgt i32 %559, 0
  br i1 %696, label %697, label %1132

697:                                              ; preds = %695
  %698 = zext nneg i32 %559 to i64
  br label %1114

699:                                              ; preds = %590, %1111
  %700 = phi i64 [ 0, %590 ], [ %1112, %1111 ]
  %701 = load ptr, ptr %227, align 8, !tbaa !85
  %702 = getelementptr inbounds ptr, ptr %701, i64 %700
  %703 = load ptr, ptr %702, align 8, !tbaa !35
  %704 = load ptr, ptr %579, align 8, !tbaa !85
  %705 = getelementptr inbounds ptr, ptr %704, i64 %700
  %706 = load ptr, ptr %705, align 8, !tbaa !35
  %707 = load ptr, ptr %32, align 8, !tbaa !69
  %708 = getelementptr inbounds ptr, ptr %707, i64 %700
  %709 = load ptr, ptr %708, align 8, !tbaa !35
  %710 = getelementptr inbounds i32, ptr %709, i64 %700
  %711 = load i32, ptr %710, align 4, !tbaa !50
  %712 = getelementptr inbounds %struct.lambda_loop_s, ptr %706, i64 0, i32 3
  store i32 %711, ptr %712, align 8, !tbaa !82
  %713 = load i32, ptr %710, align 4, !tbaa !50
  %714 = load ptr, ptr %703, align 8, !tbaa !35
  %715 = icmp eq ptr %714, null
  br i1 %715, label %911, label %716

716:                                              ; preds = %699
  %717 = icmp eq i32 %713, 0
  br label %718

718:                                              ; preds = %716, %907
  %719 = phi ptr [ %714, %716 ], [ %909, %907 ]
  %720 = tail call ptr @lambda_linear_expression_new(i32 noundef %559, i32 noundef %561, ptr noundef %2)
  %721 = load ptr, ptr %719, align 8, !tbaa !73
  %722 = load ptr, ptr %720, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr align 4 %722, i8 0, i64 %592, i1 false)
  br label %723

723:                                              ; preds = %718, %740
  %724 = phi i64 [ 0, %718 ], [ %741, %740 ]
  %725 = getelementptr inbounds i32, ptr %722, i64 %724
  %726 = load i32, ptr %725, align 4, !tbaa !50
  br label %727

727:                                              ; preds = %723, %727
  %728 = phi i64 [ 0, %723 ], [ %738, %727 ]
  %729 = phi i32 [ %726, %723 ], [ %737, %727 ]
  %730 = getelementptr inbounds ptr, ptr %562, i64 %728
  %731 = load ptr, ptr %730, align 8, !tbaa !35
  %732 = getelementptr inbounds i32, ptr %731, i64 %724
  %733 = load i32, ptr %732, align 4, !tbaa !50
  %734 = getelementptr inbounds i32, ptr %721, i64 %728
  %735 = load i32, ptr %734, align 4, !tbaa !50
  %736 = mul nsw i32 %735, %733
  %737 = add nsw i32 %729, %736
  store i32 %737, ptr %725, align 4, !tbaa !50
  %738 = add nuw nsw i64 %728, 1
  %739 = icmp eq i64 %738, %615
  br i1 %739, label %740, label %727, !llvm.loop !70

740:                                              ; preds = %727
  %741 = add nuw nsw i64 %724, 1
  %742 = icmp eq i64 %741, %614
  br i1 %742, label %743, label %723, !llvm.loop !71

743:                                              ; preds = %740
  %744 = load ptr, ptr %720, align 8, !tbaa !73
  br i1 %717, label %745, label %746

745:                                              ; preds = %743
  tail call void @llvm.memset.p0.i64(ptr align 4 %744, i8 0, i64 %592, i1 false)
  br label %753

746:                                              ; preds = %743, %746
  %747 = phi i64 [ %751, %746 ], [ 0, %743 ]
  %748 = getelementptr inbounds i32, ptr %744, i64 %747
  %749 = load i32, ptr %748, align 4, !tbaa !50
  %750 = mul nsw i32 %749, %713
  store i32 %750, ptr %748, align 4, !tbaa !50
  %751 = add nuw nsw i64 %747, 1
  %752 = icmp eq i64 %751, %616
  br i1 %752, label %753, label %746, !llvm.loop !126

753:                                              ; preds = %746, %745
  %754 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %719, i64 0, i32 1
  %755 = load i32, ptr %754, align 8, !tbaa !75
  %756 = mul nsw i32 %755, %713
  %757 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %720, i64 0, i32 1
  store i32 %756, ptr %757, align 8, !tbaa !75
  %758 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %719, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !76
  %760 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %720, i64 0, i32 2
  %761 = load ptr, ptr %760, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %761, ptr align 4 %759, i64 %594, i1 false)
  %762 = load ptr, ptr %760, align 8, !tbaa !76
  br i1 %717, label %764, label %763

763:                                              ; preds = %753
  br i1 %595, label %765, label %772

764:                                              ; preds = %753
  tail call void @llvm.memset.p0.i64(ptr align 4 %762, i8 0, i64 %594, i1 false)
  br label %772

765:                                              ; preds = %763, %765
  %766 = phi i64 [ %770, %765 ], [ 0, %763 ]
  %767 = getelementptr inbounds i32, ptr %762, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !50
  %769 = mul nsw i32 %768, %713
  store i32 %769, ptr %767, align 4, !tbaa !50
  %770 = add nuw nsw i64 %766, 1
  %771 = icmp eq i64 %770, %617
  br i1 %771, label %772, label %765, !llvm.loop !126

772:                                              ; preds = %765, %763, %764
  %773 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %719, i64 0, i32 3
  %774 = load i32, ptr %773, align 8, !tbaa !77
  %775 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %720, i64 0, i32 3
  store i32 %774, ptr %775, align 8, !tbaa !77
  %776 = load ptr, ptr %720, align 8, !tbaa !73
  br label %780

777:                                              ; preds = %780
  %778 = add nuw nsw i64 %781, 1
  %779 = icmp eq i64 %778, %618
  br i1 %779, label %801, label %780, !llvm.loop !127

780:                                              ; preds = %772, %777
  %781 = phi i64 [ 0, %772 ], [ %778, %777 ]
  %782 = getelementptr inbounds i32, ptr %776, i64 %781
  %783 = load i32, ptr %782, align 4, !tbaa !50
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %777, label %785

785:                                              ; preds = %780
  %786 = load i32, ptr %757, align 8, !tbaa !75
  %787 = mul nsw i32 %786, %564
  store i32 %787, ptr %757, align 8, !tbaa !75
  %788 = load ptr, ptr %760, align 8, !tbaa !76
  br i1 %596, label %790, label %789

789:                                              ; preds = %785
  br i1 %597, label %791, label %798

790:                                              ; preds = %785
  tail call void @llvm.memset.p0.i64(ptr align 4 %788, i8 0, i64 %594, i1 false)
  br label %798

791:                                              ; preds = %789, %791
  %792 = phi i64 [ %796, %791 ], [ 0, %789 ]
  %793 = getelementptr inbounds i32, ptr %788, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !50
  %795 = mul nsw i32 %794, %564
  store i32 %795, ptr %793, align 4, !tbaa !50
  %796 = add nuw nsw i64 %792, 1
  %797 = icmp eq i64 %796, %619
  br i1 %797, label %798, label %791, !llvm.loop !126

798:                                              ; preds = %791, %789, %790
  %799 = load i32, ptr %775, align 8, !tbaa !77
  %800 = mul nsw i32 %799, %564
  store i32 %800, ptr %775, align 8, !tbaa !77
  br label %801

801:                                              ; preds = %777, %798
  %802 = load ptr, ptr %720, align 8, !tbaa !73
  %803 = load i32, ptr %802, align 4, !tbaa !50
  br i1 %598, label %822, label %804

804:                                              ; preds = %801, %818
  %805 = phi i64 [ %820, %818 ], [ 1, %801 ]
  %806 = phi i32 [ %819, %818 ], [ %803, %801 ]
  %807 = getelementptr inbounds i32, ptr %802, i64 %805
  %808 = load i32, ptr %807, align 4, !tbaa !50
  %809 = tail call i32 @llvm.abs.i32(i32 %808, i1 true)
  %810 = icmp eq i32 %806, 0
  br i1 %810, label %818, label %811

811:                                              ; preds = %804
  %812 = tail call i32 @llvm.abs.i32(i32 %806, i1 true)
  br label %813

813:                                              ; preds = %811, %813
  %814 = phi i32 [ %816, %813 ], [ %812, %811 ]
  %815 = phi i32 [ %814, %813 ], [ %809, %811 ]
  %816 = urem i32 %815, %814
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %813, !llvm.loop !90

818:                                              ; preds = %813, %804
  %819 = phi i32 [ %809, %804 ], [ %814, %813 ]
  %820 = add nuw nsw i64 %805, 1
  %821 = icmp eq i64 %820, %620
  br i1 %821, label %822, label %804, !llvm.loop !123

822:                                              ; preds = %818, %801
  %823 = phi i32 [ %803, %801 ], [ %819, %818 ]
  %824 = load ptr, ptr %760, align 8, !tbaa !76
  br i1 %599, label %825, label %845

825:                                              ; preds = %822
  %826 = load i32, ptr %824, align 4, !tbaa !50
  br i1 %600, label %827, label %845

827:                                              ; preds = %825, %841
  %828 = phi i64 [ %843, %841 ], [ 1, %825 ]
  %829 = phi i32 [ %842, %841 ], [ %826, %825 ]
  %830 = getelementptr inbounds i32, ptr %824, i64 %828
  %831 = load i32, ptr %830, align 4, !tbaa !50
  %832 = tail call i32 @llvm.abs.i32(i32 %831, i1 true)
  %833 = icmp eq i32 %829, 0
  br i1 %833, label %841, label %834

834:                                              ; preds = %827
  %835 = tail call i32 @llvm.abs.i32(i32 %829, i1 true)
  br label %836

836:                                              ; preds = %834, %836
  %837 = phi i32 [ %839, %836 ], [ %835, %834 ]
  %838 = phi i32 [ %837, %836 ], [ %832, %834 ]
  %839 = urem i32 %838, %837
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %836, !llvm.loop !90

841:                                              ; preds = %836, %827
  %842 = phi i32 [ %832, %827 ], [ %837, %836 ]
  %843 = add nuw nsw i64 %828, 1
  %844 = icmp eq i64 %843, %621
  br i1 %844, label %845, label %827, !llvm.loop !123

845:                                              ; preds = %841, %825, %822
  %846 = phi i32 [ 0, %822 ], [ %826, %825 ], [ %842, %841 ]
  %847 = tail call i32 @llvm.abs.i32(i32 %846, i1 true)
  %848 = icmp eq i32 %823, 0
  br i1 %848, label %856, label %849

849:                                              ; preds = %845
  %850 = tail call i32 @llvm.abs.i32(i32 %823, i1 true)
  br label %851

851:                                              ; preds = %849, %851
  %852 = phi i32 [ %854, %851 ], [ %850, %849 ]
  %853 = phi i32 [ %852, %851 ], [ %847, %849 ]
  %854 = urem i32 %853, %852
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %851, !llvm.loop !90

856:                                              ; preds = %851, %845
  %857 = phi i32 [ %847, %845 ], [ %852, %851 ]
  %858 = load i32, ptr %757, align 8, !tbaa !75
  %859 = tail call i32 @llvm.abs.i32(i32 %858, i1 true)
  %860 = icmp eq i32 %857, 0
  br i1 %860, label %868, label %861

861:                                              ; preds = %856
  %862 = tail call i32 @llvm.abs.i32(i32 %857, i1 true)
  br label %863

863:                                              ; preds = %861, %863
  %864 = phi i32 [ %866, %863 ], [ %862, %861 ]
  %865 = phi i32 [ %864, %863 ], [ %859, %861 ]
  %866 = urem i32 %865, %864
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %868, label %863, !llvm.loop !90

868:                                              ; preds = %863, %856
  %869 = phi i32 [ %859, %856 ], [ %864, %863 ]
  %870 = load i32, ptr %775, align 8, !tbaa !77
  %871 = tail call i32 @llvm.abs.i32(i32 %870, i1 true)
  %872 = icmp eq i32 %869, 0
  br i1 %872, label %875, label %873

873:                                              ; preds = %868
  %874 = tail call i32 @llvm.abs.i32(i32 %869, i1 true)
  br label %877

875:                                              ; preds = %877, %868
  %876 = phi i32 [ %871, %868 ], [ %878, %877 ]
  br label %883

877:                                              ; preds = %873, %877
  %878 = phi i32 [ %880, %877 ], [ %874, %873 ]
  %879 = phi i32 [ %878, %877 ], [ %871, %873 ]
  %880 = urem i32 %879, %878
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %875, label %877, !llvm.loop !90

882:                                              ; preds = %883
  br i1 %601, label %890, label %897

883:                                              ; preds = %875, %883
  %884 = phi i64 [ 0, %875 ], [ %888, %883 ]
  %885 = getelementptr inbounds i32, ptr %802, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !50
  %887 = sdiv i32 %886, %876
  store i32 %887, ptr %885, align 4, !tbaa !50
  %888 = add nuw nsw i64 %884, 1
  %889 = icmp eq i64 %888, %622
  br i1 %889, label %882, label %883, !llvm.loop !128

890:                                              ; preds = %882, %890
  %891 = phi i64 [ %895, %890 ], [ 0, %882 ]
  %892 = getelementptr inbounds i32, ptr %824, i64 %891
  %893 = load i32, ptr %892, align 4, !tbaa !50
  %894 = sdiv i32 %893, %876
  store i32 %894, ptr %892, align 4, !tbaa !50
  %895 = add nuw nsw i64 %891, 1
  %896 = icmp eq i64 %895, %623
  br i1 %896, label %897, label %890, !llvm.loop !129

897:                                              ; preds = %890, %882
  %898 = load i32, ptr %757, align 8, !tbaa !75
  %899 = sdiv i32 %898, %876
  store i32 %899, ptr %757, align 8, !tbaa !75
  %900 = load i32, ptr %775, align 8, !tbaa !77
  %901 = sdiv i32 %900, %876
  store i32 %901, ptr %775, align 8, !tbaa !77
  %902 = load ptr, ptr %706, align 8, !tbaa !109
  %903 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %902, ptr noundef nonnull %720, i32 noundef %559, i32 noundef %561), !range !110
  %904 = icmp eq i8 %903, 0
  br i1 %904, label %905, label %907

905:                                              ; preds = %897
  %906 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %720, i64 0, i32 4
  store ptr %902, ptr %906, align 8, !tbaa !78
  store ptr %720, ptr %706, align 8, !tbaa !109
  br label %907

907:                                              ; preds = %905, %897
  %908 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %719, i64 0, i32 4
  %909 = load ptr, ptr %908, align 8, !tbaa !35
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %718, !llvm.loop !130

911:                                              ; preds = %907, %699
  %912 = getelementptr inbounds %struct.lambda_loop_s, ptr %703, i64 0, i32 1
  %913 = load ptr, ptr %912, align 8, !tbaa !35
  %914 = icmp eq ptr %913, null
  br i1 %914, label %1111, label %915

915:                                              ; preds = %911
  %916 = icmp eq i32 %713, 0
  %917 = getelementptr inbounds %struct.lambda_loop_s, ptr %706, i64 0, i32 1
  br label %918

918:                                              ; preds = %915, %1107
  %919 = phi ptr [ %913, %915 ], [ %1109, %1107 ]
  %920 = tail call ptr @lambda_linear_expression_new(i32 noundef %559, i32 noundef %561, ptr noundef %2)
  %921 = load ptr, ptr %919, align 8, !tbaa !73
  %922 = load ptr, ptr %920, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr align 4 %922, i8 0, i64 %603, i1 false)
  br label %923

923:                                              ; preds = %918, %940
  %924 = phi i64 [ 0, %918 ], [ %941, %940 ]
  %925 = getelementptr inbounds i32, ptr %922, i64 %924
  %926 = load i32, ptr %925, align 4, !tbaa !50
  br label %927

927:                                              ; preds = %923, %927
  %928 = phi i64 [ 0, %923 ], [ %938, %927 ]
  %929 = phi i32 [ %926, %923 ], [ %937, %927 ]
  %930 = getelementptr inbounds ptr, ptr %562, i64 %928
  %931 = load ptr, ptr %930, align 8, !tbaa !35
  %932 = getelementptr inbounds i32, ptr %931, i64 %924
  %933 = load i32, ptr %932, align 4, !tbaa !50
  %934 = getelementptr inbounds i32, ptr %921, i64 %928
  %935 = load i32, ptr %934, align 4, !tbaa !50
  %936 = mul nsw i32 %935, %933
  %937 = add nsw i32 %929, %936
  store i32 %937, ptr %925, align 4, !tbaa !50
  %938 = add nuw nsw i64 %928, 1
  %939 = icmp eq i64 %938, %625
  br i1 %939, label %940, label %927, !llvm.loop !70

940:                                              ; preds = %927
  %941 = add nuw nsw i64 %924, 1
  %942 = icmp eq i64 %941, %624
  br i1 %942, label %943, label %923, !llvm.loop !71

943:                                              ; preds = %940
  %944 = load ptr, ptr %920, align 8, !tbaa !73
  br i1 %916, label %945, label %946

945:                                              ; preds = %943
  tail call void @llvm.memset.p0.i64(ptr align 4 %944, i8 0, i64 %603, i1 false)
  br label %953

946:                                              ; preds = %943, %946
  %947 = phi i64 [ %951, %946 ], [ 0, %943 ]
  %948 = getelementptr inbounds i32, ptr %944, i64 %947
  %949 = load i32, ptr %948, align 4, !tbaa !50
  %950 = mul nsw i32 %949, %713
  store i32 %950, ptr %948, align 4, !tbaa !50
  %951 = add nuw nsw i64 %947, 1
  %952 = icmp eq i64 %951, %626
  br i1 %952, label %953, label %946, !llvm.loop !126

953:                                              ; preds = %946, %945
  %954 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %919, i64 0, i32 1
  %955 = load i32, ptr %954, align 8, !tbaa !75
  %956 = mul nsw i32 %955, %713
  %957 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %920, i64 0, i32 1
  store i32 %956, ptr %957, align 8, !tbaa !75
  %958 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %919, i64 0, i32 2
  %959 = load ptr, ptr %958, align 8, !tbaa !76
  %960 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %920, i64 0, i32 2
  %961 = load ptr, ptr %960, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %961, ptr align 4 %959, i64 %605, i1 false)
  %962 = load ptr, ptr %960, align 8, !tbaa !76
  br i1 %916, label %964, label %963

963:                                              ; preds = %953
  br i1 %606, label %965, label %972

964:                                              ; preds = %953
  tail call void @llvm.memset.p0.i64(ptr align 4 %962, i8 0, i64 %605, i1 false)
  br label %972

965:                                              ; preds = %963, %965
  %966 = phi i64 [ %970, %965 ], [ 0, %963 ]
  %967 = getelementptr inbounds i32, ptr %962, i64 %966
  %968 = load i32, ptr %967, align 4, !tbaa !50
  %969 = mul nsw i32 %968, %713
  store i32 %969, ptr %967, align 4, !tbaa !50
  %970 = add nuw nsw i64 %966, 1
  %971 = icmp eq i64 %970, %627
  br i1 %971, label %972, label %965, !llvm.loop !126

972:                                              ; preds = %965, %963, %964
  %973 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %919, i64 0, i32 3
  %974 = load i32, ptr %973, align 8, !tbaa !77
  %975 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %920, i64 0, i32 3
  store i32 %974, ptr %975, align 8, !tbaa !77
  %976 = load ptr, ptr %920, align 8, !tbaa !73
  br label %980

977:                                              ; preds = %980
  %978 = add nuw nsw i64 %981, 1
  %979 = icmp eq i64 %978, %628
  br i1 %979, label %1001, label %980, !llvm.loop !127

980:                                              ; preds = %972, %977
  %981 = phi i64 [ 0, %972 ], [ %978, %977 ]
  %982 = getelementptr inbounds i32, ptr %976, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !50
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %977, label %985

985:                                              ; preds = %980
  %986 = load i32, ptr %957, align 8, !tbaa !75
  %987 = mul nsw i32 %986, %564
  store i32 %987, ptr %957, align 8, !tbaa !75
  %988 = load ptr, ptr %960, align 8, !tbaa !76
  br i1 %607, label %990, label %989

989:                                              ; preds = %985
  br i1 %608, label %991, label %998

990:                                              ; preds = %985
  tail call void @llvm.memset.p0.i64(ptr align 4 %988, i8 0, i64 %605, i1 false)
  br label %998

991:                                              ; preds = %989, %991
  %992 = phi i64 [ %996, %991 ], [ 0, %989 ]
  %993 = getelementptr inbounds i32, ptr %988, i64 %992
  %994 = load i32, ptr %993, align 4, !tbaa !50
  %995 = mul nsw i32 %994, %564
  store i32 %995, ptr %993, align 4, !tbaa !50
  %996 = add nuw nsw i64 %992, 1
  %997 = icmp eq i64 %996, %629
  br i1 %997, label %998, label %991, !llvm.loop !126

998:                                              ; preds = %991, %989, %990
  %999 = load i32, ptr %975, align 8, !tbaa !77
  %1000 = mul nsw i32 %999, %564
  store i32 %1000, ptr %975, align 8, !tbaa !77
  br label %1001

1001:                                             ; preds = %977, %998
  %1002 = load ptr, ptr %920, align 8, !tbaa !73
  %1003 = load i32, ptr %1002, align 4, !tbaa !50
  br i1 %609, label %1022, label %1004

1004:                                             ; preds = %1001, %1018
  %1005 = phi i64 [ %1020, %1018 ], [ 1, %1001 ]
  %1006 = phi i32 [ %1019, %1018 ], [ %1003, %1001 ]
  %1007 = getelementptr inbounds i32, ptr %1002, i64 %1005
  %1008 = load i32, ptr %1007, align 4, !tbaa !50
  %1009 = tail call i32 @llvm.abs.i32(i32 %1008, i1 true)
  %1010 = icmp eq i32 %1006, 0
  br i1 %1010, label %1018, label %1011

1011:                                             ; preds = %1004
  %1012 = tail call i32 @llvm.abs.i32(i32 %1006, i1 true)
  br label %1013

1013:                                             ; preds = %1011, %1013
  %1014 = phi i32 [ %1016, %1013 ], [ %1012, %1011 ]
  %1015 = phi i32 [ %1014, %1013 ], [ %1009, %1011 ]
  %1016 = urem i32 %1015, %1014
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1018, label %1013, !llvm.loop !90

1018:                                             ; preds = %1013, %1004
  %1019 = phi i32 [ %1009, %1004 ], [ %1014, %1013 ]
  %1020 = add nuw nsw i64 %1005, 1
  %1021 = icmp eq i64 %1020, %630
  br i1 %1021, label %1022, label %1004, !llvm.loop !123

1022:                                             ; preds = %1018, %1001
  %1023 = phi i32 [ %1003, %1001 ], [ %1019, %1018 ]
  %1024 = load ptr, ptr %960, align 8, !tbaa !76
  br i1 %610, label %1025, label %1045

1025:                                             ; preds = %1022
  %1026 = load i32, ptr %1024, align 4, !tbaa !50
  br i1 %611, label %1027, label %1045

1027:                                             ; preds = %1025, %1041
  %1028 = phi i64 [ %1043, %1041 ], [ 1, %1025 ]
  %1029 = phi i32 [ %1042, %1041 ], [ %1026, %1025 ]
  %1030 = getelementptr inbounds i32, ptr %1024, i64 %1028
  %1031 = load i32, ptr %1030, align 4, !tbaa !50
  %1032 = tail call i32 @llvm.abs.i32(i32 %1031, i1 true)
  %1033 = icmp eq i32 %1029, 0
  br i1 %1033, label %1041, label %1034

1034:                                             ; preds = %1027
  %1035 = tail call i32 @llvm.abs.i32(i32 %1029, i1 true)
  br label %1036

1036:                                             ; preds = %1034, %1036
  %1037 = phi i32 [ %1039, %1036 ], [ %1035, %1034 ]
  %1038 = phi i32 [ %1037, %1036 ], [ %1032, %1034 ]
  %1039 = urem i32 %1038, %1037
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1036, !llvm.loop !90

1041:                                             ; preds = %1036, %1027
  %1042 = phi i32 [ %1032, %1027 ], [ %1037, %1036 ]
  %1043 = add nuw nsw i64 %1028, 1
  %1044 = icmp eq i64 %1043, %631
  br i1 %1044, label %1045, label %1027, !llvm.loop !123

1045:                                             ; preds = %1041, %1025, %1022
  %1046 = phi i32 [ 0, %1022 ], [ %1026, %1025 ], [ %1042, %1041 ]
  %1047 = tail call i32 @llvm.abs.i32(i32 %1046, i1 true)
  %1048 = icmp eq i32 %1023, 0
  br i1 %1048, label %1056, label %1049

1049:                                             ; preds = %1045
  %1050 = tail call i32 @llvm.abs.i32(i32 %1023, i1 true)
  br label %1051

1051:                                             ; preds = %1049, %1051
  %1052 = phi i32 [ %1054, %1051 ], [ %1050, %1049 ]
  %1053 = phi i32 [ %1052, %1051 ], [ %1047, %1049 ]
  %1054 = urem i32 %1053, %1052
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1051, !llvm.loop !90

1056:                                             ; preds = %1051, %1045
  %1057 = phi i32 [ %1047, %1045 ], [ %1052, %1051 ]
  %1058 = load i32, ptr %957, align 8, !tbaa !75
  %1059 = tail call i32 @llvm.abs.i32(i32 %1058, i1 true)
  %1060 = icmp eq i32 %1057, 0
  br i1 %1060, label %1068, label %1061

1061:                                             ; preds = %1056
  %1062 = tail call i32 @llvm.abs.i32(i32 %1057, i1 true)
  br label %1063

1063:                                             ; preds = %1061, %1063
  %1064 = phi i32 [ %1066, %1063 ], [ %1062, %1061 ]
  %1065 = phi i32 [ %1064, %1063 ], [ %1059, %1061 ]
  %1066 = urem i32 %1065, %1064
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1068, label %1063, !llvm.loop !90

1068:                                             ; preds = %1063, %1056
  %1069 = phi i32 [ %1059, %1056 ], [ %1064, %1063 ]
  %1070 = load i32, ptr %975, align 8, !tbaa !77
  %1071 = tail call i32 @llvm.abs.i32(i32 %1070, i1 true)
  %1072 = icmp eq i32 %1069, 0
  br i1 %1072, label %1075, label %1073

1073:                                             ; preds = %1068
  %1074 = tail call i32 @llvm.abs.i32(i32 %1069, i1 true)
  br label %1077

1075:                                             ; preds = %1077, %1068
  %1076 = phi i32 [ %1071, %1068 ], [ %1078, %1077 ]
  br label %1083

1077:                                             ; preds = %1073, %1077
  %1078 = phi i32 [ %1080, %1077 ], [ %1074, %1073 ]
  %1079 = phi i32 [ %1078, %1077 ], [ %1071, %1073 ]
  %1080 = urem i32 %1079, %1078
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1075, label %1077, !llvm.loop !90

1082:                                             ; preds = %1083
  br i1 %612, label %1090, label %1097

1083:                                             ; preds = %1075, %1083
  %1084 = phi i64 [ 0, %1075 ], [ %1088, %1083 ]
  %1085 = getelementptr inbounds i32, ptr %1002, i64 %1084
  %1086 = load i32, ptr %1085, align 4, !tbaa !50
  %1087 = sdiv i32 %1086, %1076
  store i32 %1087, ptr %1085, align 4, !tbaa !50
  %1088 = add nuw nsw i64 %1084, 1
  %1089 = icmp eq i64 %1088, %632
  br i1 %1089, label %1082, label %1083, !llvm.loop !131

1090:                                             ; preds = %1082, %1090
  %1091 = phi i64 [ %1095, %1090 ], [ 0, %1082 ]
  %1092 = getelementptr inbounds i32, ptr %1024, i64 %1091
  %1093 = load i32, ptr %1092, align 4, !tbaa !50
  %1094 = sdiv i32 %1093, %1076
  store i32 %1094, ptr %1092, align 4, !tbaa !50
  %1095 = add nuw nsw i64 %1091, 1
  %1096 = icmp eq i64 %1095, %633
  br i1 %1096, label %1097, label %1090, !llvm.loop !132

1097:                                             ; preds = %1090, %1082
  %1098 = load i32, ptr %957, align 8, !tbaa !75
  %1099 = sdiv i32 %1098, %1076
  store i32 %1099, ptr %957, align 8, !tbaa !75
  %1100 = load i32, ptr %975, align 8, !tbaa !77
  %1101 = sdiv i32 %1100, %1076
  store i32 %1101, ptr %975, align 8, !tbaa !77
  %1102 = load ptr, ptr %917, align 8, !tbaa !113
  %1103 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %1102, ptr noundef nonnull %920, i32 noundef %559, i32 noundef %561), !range !110
  %1104 = icmp eq i8 %1103, 0
  br i1 %1104, label %1105, label %1107

1105:                                             ; preds = %1097
  %1106 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %920, i64 0, i32 4
  store ptr %1102, ptr %1106, align 8, !tbaa !78
  store ptr %920, ptr %917, align 8, !tbaa !113
  br label %1107

1107:                                             ; preds = %1105, %1097
  %1108 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %919, i64 0, i32 4
  %1109 = load ptr, ptr %1108, align 8, !tbaa !35
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1111, label %918, !llvm.loop !133

1111:                                             ; preds = %1107, %911
  %1112 = add nuw nsw i64 %700, 1
  %1113 = icmp eq i64 %1112, %613
  br i1 %1113, label %695, label %699, !llvm.loop !134

1114:                                             ; preds = %697, %1129
  %1115 = phi i64 [ 0, %697 ], [ %1130, %1129 ]
  %1116 = getelementptr inbounds i32, ptr %475, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !50
  %1118 = icmp slt i32 %1117, 0
  br i1 %1118, label %1119, label %1129

1119:                                             ; preds = %1114
  %1120 = load ptr, ptr %579, align 8, !tbaa !85
  %1121 = getelementptr inbounds ptr, ptr %1120, i64 %1115
  %1122 = load ptr, ptr %1121, align 8, !tbaa !35
  %1123 = getelementptr inbounds %struct.lambda_loop_s, ptr %1122, i64 0, i32 3
  %1124 = load i32, ptr %1123, align 8, !tbaa !82
  %1125 = sub nsw i32 0, %1124
  store i32 %1125, ptr %1123, align 8, !tbaa !82
  %1126 = load ptr, ptr %1122, align 8, !tbaa !109
  %1127 = getelementptr inbounds %struct.lambda_loop_s, ptr %1122, i64 0, i32 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !113
  store ptr %1128, ptr %1122, align 8, !tbaa !109
  store ptr %1126, ptr %1127, align 8, !tbaa !113
  br label %1129

1129:                                             ; preds = %1119, %1114
  %1130 = add nuw nsw i64 %1115, 1
  %1131 = icmp eq i64 %1130, %698
  br i1 %1131, label %1132, label %1114, !llvm.loop !135

1132:                                             ; preds = %1129, %695
  %1133 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %9) #20
  %1134 = tail call ptr @lambda_matrix_new(i32 noundef %5, i32 noundef %7) #20
  %1135 = load ptr, ptr %1, align 8, !tbaa !69
  %1136 = getelementptr inbounds %struct.lambda_lattice_s, ptr %27, i64 0, i32 2
  %1137 = load ptr, ptr %1136, align 8, !tbaa !103
  tail call void @lambda_matrix_vector_mult(ptr noundef %1135, i32 noundef %5, i32 noundef %5, ptr noundef %1137, ptr noundef %1133) #20
  %1138 = load ptr, ptr %1, align 8, !tbaa !69
  %1139 = getelementptr inbounds %struct.lambda_lattice_s, ptr %27, i64 0, i32 3
  %1140 = load ptr, ptr %1139, align 8, !tbaa !105
  tail call void @lambda_matrix_mult(ptr noundef %1138, ptr noundef %1140, ptr noundef %1134, i32 noundef %5, i32 noundef %5, i32 noundef %7) #20
  %1141 = icmp sgt i32 %5, 0
  br i1 %1141, label %1142, label %1197

1142:                                             ; preds = %1132
  %1143 = load ptr, ptr %579, align 8, !tbaa !85
  %1144 = icmp sgt i32 %7, 0
  %1145 = zext nneg i32 %5 to i64
  %1146 = zext nneg i32 %5 to i64
  %1147 = zext nneg i32 %5 to i64
  %1148 = zext nneg i32 %7 to i64
  br label %1149

1149:                                             ; preds = %1142, %1194
  %1150 = phi i64 [ 0, %1142 ], [ %1195, %1194 ]
  %1151 = getelementptr inbounds ptr, ptr %1143, i64 %1150
  %1152 = load ptr, ptr %1151, align 8, !tbaa !35
  %1153 = getelementptr inbounds %struct.lambda_loop_s, ptr %1152, i64 0, i32 2
  %1154 = load ptr, ptr %1153, align 8, !tbaa !80
  %1155 = load ptr, ptr %1154, align 8, !tbaa !73
  %1156 = load i32, ptr %1155, align 4, !tbaa !50
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1158, label %1168

1158:                                             ; preds = %1149, %1162
  %1159 = phi i64 [ %1160, %1162 ], [ 0, %1149 ]
  %1160 = add nuw nsw i64 %1159, 1
  %1161 = icmp eq i64 %1160, %1147
  br i1 %1161, label %1171, label %1162, !llvm.loop !127

1162:                                             ; preds = %1158
  %1163 = getelementptr inbounds i32, ptr %1155, i64 %1160
  %1164 = load i32, ptr %1163, align 4, !tbaa !50
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1158, label %1166, !llvm.loop !127

1166:                                             ; preds = %1162
  %1167 = icmp ult i64 %1160, %1145
  br i1 %1167, label %1168, label %1171

1168:                                             ; preds = %1149, %1166
  %1169 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1154, i64 0, i32 3
  %1170 = load i32, ptr %1169, align 8, !tbaa !77
  br label %1171

1171:                                             ; preds = %1158, %1166, %1168
  %1172 = phi i32 [ %1170, %1168 ], [ 1, %1166 ], [ 1, %1158 ]
  %1173 = getelementptr inbounds i32, ptr %1133, i64 %1150
  %1174 = load i32, ptr %1173, align 4, !tbaa !50
  %1175 = mul nsw i32 %1174, %1172
  %1176 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1154, i64 0, i32 1
  %1177 = load i32, ptr %1176, align 8, !tbaa !75
  %1178 = add nsw i32 %1177, %1175
  store i32 %1178, ptr %1176, align 8, !tbaa !75
  br i1 %1144, label %1179, label %1194

1179:                                             ; preds = %1171
  %1180 = getelementptr inbounds ptr, ptr %1134, i64 %1150
  %1181 = load ptr, ptr %1180, align 8, !tbaa !35
  %1182 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1154, i64 0, i32 2
  %1183 = load ptr, ptr %1182, align 8, !tbaa !76
  br label %1184

1184:                                             ; preds = %1179, %1184
  %1185 = phi i64 [ 0, %1179 ], [ %1192, %1184 ]
  %1186 = getelementptr inbounds i32, ptr %1181, i64 %1185
  %1187 = load i32, ptr %1186, align 4, !tbaa !50
  %1188 = mul nsw i32 %1187, %1172
  %1189 = getelementptr inbounds i32, ptr %1183, i64 %1185
  %1190 = load i32, ptr %1189, align 4, !tbaa !50
  %1191 = add nsw i32 %1190, %1188
  store i32 %1191, ptr %1189, align 4, !tbaa !50
  %1192 = add nuw nsw i64 %1185, 1
  %1193 = icmp eq i64 %1192, %1148
  br i1 %1193, label %1194, label %1184, !llvm.loop !136

1194:                                             ; preds = %1184, %1171
  %1195 = add nuw nsw i64 %1150, 1
  %1196 = icmp eq i64 %1195, %1146
  br i1 %1196, label %1197, label %1149, !llvm.loop !137

1197:                                             ; preds = %1194, %1132
  ret ptr %579
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lambda_lattice_compute_base(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !88
  %7 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 5
  store i64 40, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 40
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef %1, i32 noundef 40) #20
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i64, ptr %7, align 8, !tbaa !54
  %19 = load ptr, ptr %10, align 8, !tbaa !57
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr %10, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 10
  %26 = load i8, ptr %25, align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = ptrtoint ptr %22 to i64
  store i64 %29, ptr %7, align 8, !tbaa !54
  %30 = ptrtoint ptr %20 to i64
  %31 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %30
  %35 = xor i32 %32, -1
  %36 = sext i32 %35 to i64
  %37 = and i64 %34, %36
  %38 = inttoptr i64 %37 to ptr
  store ptr %38, ptr %10, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %37, %41
  %43 = load ptr, ptr %8, align 8, !tbaa !56
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  store ptr %43, ptr %10, align 8, !tbaa !57
  br label %48

48:                                               ; preds = %28, %47
  %49 = load ptr, ptr %10, align 8, !tbaa !57
  store ptr %49, ptr %21, align 8, !tbaa !58
  %50 = tail call ptr @lambda_matrix_new(i32 noundef %4, i32 noundef %4) #20
  store ptr %50, ptr %22, align 8, !tbaa !92
  %51 = sext i32 %4 to i64
  %52 = shl nsw i64 %51, 2
  %53 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %52) #20
  %54 = getelementptr inbounds %struct.lambda_lattice_s, ptr %22, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !103
  %55 = tail call ptr @lambda_matrix_new(i32 noundef %4, i32 noundef %6) #20
  %56 = getelementptr inbounds %struct.lambda_lattice_s, ptr %22, i64 0, i32 3
  store ptr %55, ptr %56, align 8, !tbaa !105
  %57 = getelementptr inbounds %struct.lambda_lattice_s, ptr %22, i64 0, i32 1
  store i32 %4, ptr %57, align 8, !tbaa !138
  %58 = getelementptr inbounds %struct.lambda_lattice_s, ptr %22, i64 0, i32 4
  store i32 %6, ptr %58, align 8, !tbaa !139
  %59 = load ptr, ptr %22, align 8, !tbaa !92
  %60 = icmp sgt i32 %4, 0
  br i1 %60, label %61, label %160

61:                                               ; preds = %48
  %62 = icmp sgt i32 %6, 0
  %63 = icmp sgt i32 %6, 0
  %64 = add nsw i32 %4, -2
  %65 = zext nneg i32 %4 to i64
  %66 = shl nuw nsw i64 %65, 2
  %67 = zext i32 %6 to i64
  %68 = shl nuw nsw i64 %67, 2
  %69 = zext nneg i32 %4 to i64
  %70 = zext nneg i32 %4 to i64
  %71 = zext nneg i32 %6 to i64
  br label %72

72:                                               ; preds = %61, %157
  %73 = phi i64 [ 0, %61 ], [ %158, %157 ]
  %74 = shl nuw nsw i64 %73, 2
  %75 = trunc i64 %73 to i32
  %76 = sub i32 %64, %75
  %77 = zext i32 %76 to i64
  %78 = shl nuw nsw i64 %77, 2
  %79 = add nuw nsw i64 %78, 4
  %80 = load ptr, ptr %0, align 8, !tbaa !85
  %81 = getelementptr inbounds ptr, ptr %80, i64 %73
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @.str.1) #20
  br label %85

85:                                               ; preds = %72, %84
  %86 = getelementptr inbounds %struct.lambda_loop_s, ptr %82, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !82
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = getelementptr inbounds ptr, ptr %59, i64 %73
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr align 4 %91, i8 0, i64 %66, i1 false), !tbaa !50
  %92 = getelementptr inbounds i32, ptr %91, i64 %73
  store i32 1, ptr %92, align 4, !tbaa !50
  %93 = load ptr, ptr %54, align 8, !tbaa !103
  %94 = getelementptr inbounds i32, ptr %93, i64 %73
  store i32 0, ptr %94, align 4, !tbaa !50
  br i1 %63, label %95, label %157

95:                                               ; preds = %89
  %96 = load ptr, ptr %56, align 8, !tbaa !105
  %97 = getelementptr inbounds ptr, ptr %96, i64 %73
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr align 4 %98, i8 0, i64 %68, i1 false), !tbaa !50
  br label %157

99:                                               ; preds = %85
  %100 = load ptr, ptr %82, align 8, !tbaa !109
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %100, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !78
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %100, i64 0, i32 3
  %108 = load i32, ptr %107, align 8, !tbaa !77
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %111, label %110

110:                                              ; preds = %106, %102, %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @.str.1) #20
  br label %111

111:                                              ; preds = %106, %110
  %112 = icmp eq i64 %73, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %100, align 8, !tbaa !73
  %115 = load ptr, ptr %0, align 8, !tbaa !85
  %116 = getelementptr inbounds ptr, ptr %59, i64 %73
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  br label %118

118:                                              ; preds = %113, %118
  %119 = phi i64 [ 0, %113 ], [ %128, %118 ]
  %120 = getelementptr inbounds i32, ptr %114, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = getelementptr inbounds ptr, ptr %115, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  %124 = getelementptr inbounds %struct.lambda_loop_s, ptr %123, i64 0, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !82
  %126 = mul nsw i32 %125, %121
  %127 = getelementptr inbounds i32, ptr %117, i64 %119
  store i32 %126, ptr %127, align 4, !tbaa !50
  %128 = add nuw nsw i64 %119, 1
  %129 = icmp eq i64 %128, %73
  br i1 %129, label %130, label %118, !llvm.loop !140

130:                                              ; preds = %118, %111
  %131 = getelementptr inbounds ptr, ptr %59, i64 %73
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  %133 = getelementptr inbounds i32, ptr %132, i64 %73
  store i32 %87, ptr %133, align 4, !tbaa !50
  %134 = add nuw nsw i64 %73, 1
  %135 = icmp ult i64 %134, %69
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = getelementptr i8, ptr %132, i64 %74
  %138 = getelementptr i8, ptr %137, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %138, i8 0, i64 %79, i1 false), !tbaa !50
  br label %139

139:                                              ; preds = %136, %130
  %140 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %100, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !75
  %142 = load ptr, ptr %54, align 8, !tbaa !103
  %143 = getelementptr inbounds i32, ptr %142, i64 %73
  store i32 %141, ptr %143, align 4, !tbaa !50
  br i1 %62, label %144, label %157

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %100, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !76
  %147 = load ptr, ptr %56, align 8, !tbaa !105
  %148 = getelementptr inbounds ptr, ptr %147, i64 %73
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  br label %150

150:                                              ; preds = %144, %150
  %151 = phi i64 [ 0, %144 ], [ %155, %150 ]
  %152 = getelementptr inbounds i32, ptr %146, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !50
  %154 = getelementptr inbounds i32, ptr %149, i64 %151
  store i32 %153, ptr %154, align 4, !tbaa !50
  %155 = add nuw nsw i64 %151, 1
  %156 = icmp eq i64 %155, %71
  br i1 %156, label %157, label %150, !llvm.loop !141

157:                                              ; preds = %150, %95, %139, %89
  %158 = add nuw nsw i64 %73, 1
  %159 = icmp eq i64 %158, %70
  br i1 %159, label %160, label %72, !llvm.loop !142

160:                                              ; preds = %157, %48
  ret ptr %22
}

declare ptr @lambda_trans_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_mult(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_hermite(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lambda_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_vector_mult(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_induction_var_from_exit_cond(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !143
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds i8, ptr %2, i64 %14
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -10
  %23 = icmp ult i32 %22, -9
  br i1 %23, label %37, label %24

24:                                               ; preds = %17
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !143
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %33

33:                                               ; preds = %32, %24
  %34 = getelementptr inbounds i8, ptr %2, i64 %30
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %17, %33
  %38 = phi ptr [ %36, %33 ], [ null, %17 ]
  %39 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %19) #20
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %38) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %37
  %45 = phi ptr [ %38, %37 ], [ %19, %41 ]
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  %49 = select i1 %48, ptr %45, ptr null
  br label %50

50:                                               ; preds = %44, %41, %4, %1
  %51 = phi ptr [ null, %1 ], [ null, %4 ], [ null, %41 ], [ %49, %44 ]
  ret ptr %51
}

declare ptr @get_loop_exit_condition(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gcc_loopnest_to_lambda_loopnest(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.tree_map, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %4, %17
  %18 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %19 = phi ptr [ %22, %17 ], [ %0, %4 ]
  %20 = add i64 %18, 1
  %21 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !144
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !148

24:                                               ; preds = %17, %4
  %25 = phi i64 [ 0, %4 ], [ %20, %17 ]
  %26 = trunc i64 %25 to i32
  %27 = tail call zeroext i8 @perfect_nest_p(ptr noundef %0)
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %399

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  %32 = icmp eq ptr %31, null
  br i1 %32, label %1641, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !144
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %1641

37:                                               ; preds = %33
  %38 = tail call ptr @get_loop_body(ptr noundef %0) #20
  %39 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !149
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %381, label %42

42:                                               ; preds = %37, %376
  %43 = phi i64 [ %377, %376 ], [ 0, %37 ]
  %44 = getelementptr inbounds ptr, ptr %38, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %49, label %376

49:                                               ; preds = %42
  %50 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #20
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !152, !noalias !153
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !46, !noalias !153
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !156, !noalias !153
  br label %61

61:                                               ; preds = %59, %55, %49
  %62 = phi ptr [ %60, %59 ], [ null, %55 ], [ null, %49 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %62, align 8, !tbaa !158, !noalias !153
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi ptr [ %65, %64 ], [ null, %61 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %376, label %69

69:                                               ; preds = %66, %372
  %70 = phi ptr [ %374, %372 ], [ %67, %66 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !160
  %72 = icmp eq ptr %71, %50
  br i1 %72, label %370, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %71, align 8
  %75 = trunc i32 %74 to i8
  switch i8 %75, label %76 [
    i8 4, label %80
    i8 3, label %80
    i8 1, label %80
  ]

76:                                               ; preds = %73
  %77 = and i32 %74, 255
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i8
  br label %80

80:                                               ; preds = %73, %73, %76, %73
  %81 = phi i8 [ %79, %76 ], [ 1, %73 ], [ 1, %73 ], [ 1, %73 ]
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %370

83:                                               ; preds = %80
  %84 = tail call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr noundef nonnull %71), !range !110
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %370

86:                                               ; preds = %83
  %87 = load i32, ptr %71, align 8
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 6
  br i1 %89, label %90, label %361

90:                                               ; preds = %86
  %91 = zext nneg i32 %88 to i64
  %92 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !143
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %98, %90
  %100 = getelementptr inbounds i8, ptr %71, i64 %96
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 141
  br i1 %104, label %105, label %131

105:                                              ; preds = %99
  %106 = tail call fastcc zeroext i8 @can_duplicate_iv(ptr noundef nonnull %101, ptr noundef %0), !range !110
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %101, i64 0, i32 5
  %110 = getelementptr inbounds %struct.tree_ssa_name, ptr %101, i64 0, i32 5, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !162
  %112 = icmp eq ptr %111, %109
  br i1 %112, label %131, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr %30, align 8, !tbaa !144
  br label %115

115:                                              ; preds = %113, %125
  %116 = phi ptr [ %111, %113 ], [ %129, %125 ]
  %117 = phi ptr [ %111, %113 ], [ %127, %125 ]
  %118 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %116, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !46
  %120 = getelementptr inbounds %struct.gimple_statement_base, ptr %119, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !150
  %124 = icmp eq ptr %123, %114
  br i1 %124, label %370, label %125

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %117, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !162
  %128 = icmp eq ptr %127, %109
  %129 = select i1 %128, ptr null, ptr %127
  %130 = icmp eq ptr %127, %109
  br i1 %130, label %131, label %115, !llvm.loop !164

131:                                              ; preds = %125, %108, %105, %99
  %132 = load i32, ptr %71, align 8
  %133 = and i32 %132, 255
  %134 = add nsw i32 %133, -10
  %135 = icmp ult i32 %134, -9
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %71, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  br label %139

139:                                              ; preds = %136, %131
  %140 = phi ptr [ %138, %136 ], [ null, %131 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = and i32 %132, 254
  %144 = add nsw i32 %143, -10
  %145 = icmp ult i32 %144, -4
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %71, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %140, align 8, !tbaa !165
  br label %152

152:                                              ; preds = %150, %146, %142, %139
  %153 = phi ptr [ %140, %139 ], [ %140, %142 ], [ %140, %146 ], [ %151, %150 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %157 = load ptr, ptr %153, align 8, !tbaa !165
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi ptr [ %157, %155 ], [ %153, %152 ]
  %160 = phi i8 [ 0, %155 ], [ 1, %152 ]
  %161 = phi ptr [ %156, %155 ], [ null, %152 ]
  br i1 %154, label %266, label %162

162:                                              ; preds = %158, %261
  %163 = phi ptr [ %264, %261 ], [ %161, %158 ]
  %164 = phi i8 [ %263, %261 ], [ %160, %158 ]
  %165 = phi ptr [ %262, %261 ], [ %159, %158 ]
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !167
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = tail call fastcc zeroext i8 @can_duplicate_iv(ptr noundef %168, ptr noundef %0), !range !110
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.tree_ssa_name, ptr %168, i64 0, i32 5
  %173 = getelementptr inbounds %struct.tree_ssa_name, ptr %168, i64 0, i32 5, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !162
  %175 = icmp eq ptr %174, %172
  br i1 %175, label %194, label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr %30, align 8, !tbaa !144
  br label %178

178:                                              ; preds = %176, %188
  %179 = phi ptr [ %174, %176 ], [ %192, %188 ]
  %180 = phi ptr [ %174, %176 ], [ %190, %188 ]
  %181 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %179, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  %183 = getelementptr inbounds %struct.gimple_statement_base, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !150
  %187 = icmp eq ptr %186, %177
  br i1 %187, label %370, label %188

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %180, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !162
  %191 = icmp eq ptr %190, %172
  %192 = select i1 %191, ptr null, ptr %190
  %193 = icmp eq ptr %190, %172
  br i1 %193, label %194, label %178, !llvm.loop !168

194:                                              ; preds = %188, %171, %162
  %195 = getelementptr inbounds %struct.tree_ssa_name, ptr %168, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !46
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 255
  %199 = icmp eq i32 %198, 16
  br i1 %199, label %200, label %256

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.gimple_statement_phi, ptr %196, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = tail call zeroext i8 @is_gimple_reg(ptr noundef %202) #20
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.gimple_statement_phi, ptr %196, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !46
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.gimple_statement_phi, ptr %196, i64 0, i32 4, i64 0
  br label %211

211:                                              ; preds = %209, %205, %200
  %212 = phi ptr [ %196, %209 ], [ null, %200 ], [ %196, %205 ]
  %213 = phi i32 [ %207, %209 ], [ 0, %200 ], [ %207, %205 ]
  %214 = phi i32 [ 1, %209 ], [ 0, %200 ], [ 0, %205 ]
  %215 = phi i1 [ true, %209 ], [ false, %200 ], [ false, %205 ]
  %216 = phi i8 [ 0, %209 ], [ 1, %200 ], [ 1, %205 ]
  %217 = phi ptr [ %210, %209 ], [ null, %200 ], [ null, %205 ]
  br i1 %215, label %218, label %256

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.gimple_statement_phi, ptr %212, i64 0, i32 1
  br label %220

220:                                              ; preds = %218, %251
  %221 = phi ptr [ %217, %218 ], [ %254, %251 ]
  %222 = phi i8 [ %216, %218 ], [ %253, %251 ]
  %223 = phi i32 [ %214, %218 ], [ %252, %251 ]
  %224 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %221, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !167
  %226 = load ptr, ptr %225, align 8, !tbaa !35
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 141
  br i1 %229, label %230, label %241

230:                                              ; preds = %220
  %231 = getelementptr inbounds %struct.tree_ssa_name, ptr %226, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !46
  %233 = getelementptr inbounds %struct.gimple_statement_base, ptr %232, i64 0, i32 4
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  %235 = icmp eq ptr %234, null
  br i1 %235, label %241, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !150
  %239 = load ptr, ptr %30, align 8, !tbaa !144
  %240 = icmp eq ptr %238, %239
  br i1 %240, label %370, label %241

241:                                              ; preds = %220, %230, %236
  %242 = icmp slt i32 %223, %213
  br i1 %242, label %243, label %251

243:                                              ; preds = %241
  %244 = add nsw i32 %223, 1
  %245 = load i32, ptr %219, align 8, !tbaa !46
  %246 = icmp ult i32 %245, %223
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %248

248:                                              ; preds = %247, %243
  %249 = zext i32 %223 to i64
  %250 = getelementptr inbounds %struct.gimple_statement_phi, ptr %212, i64 0, i32 4, i64 %249
  br label %251

251:                                              ; preds = %248, %241
  %252 = phi i32 [ %244, %248 ], [ %223, %241 ]
  %253 = phi i8 [ %222, %248 ], [ 1, %241 ]
  %254 = phi ptr [ %250, %248 ], [ null, %241 ]
  %255 = icmp eq i8 %253, 0
  br i1 %255, label %220, label %256, !llvm.loop !169

256:                                              ; preds = %251, %211, %194
  %257 = icmp eq ptr %165, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %256
  %259 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1
  %260 = load ptr, ptr %165, align 8, !tbaa !165
  br label %261

261:                                              ; preds = %256, %258
  %262 = phi ptr [ %260, %258 ], [ %165, %256 ]
  %263 = phi i8 [ %164, %258 ], [ 1, %256 ]
  %264 = phi ptr [ %259, %258 ], [ null, %256 ]
  %265 = icmp eq i8 %263, 0
  br i1 %265, label %162, label %266, !llvm.loop !170

266:                                              ; preds = %261, %158
  %267 = load i32, ptr %71, align 8
  %268 = and i32 %267, 255
  %269 = add nsw i32 %268, -10
  %270 = icmp ult i32 %269, -9
  br i1 %270, label %283, label %271

271:                                              ; preds = %266
  %272 = zext nneg i32 %268 to i64
  %273 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !50
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !143
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %280

280:                                              ; preds = %279, %271
  %281 = getelementptr inbounds i8, ptr %71, i64 %277
  %282 = load ptr, ptr %281, align 8, !tbaa !35
  br label %283

283:                                              ; preds = %280, %266
  %284 = phi ptr [ %282, %280 ], [ null, %266 ]
  %285 = tail call fastcc zeroext i8 @can_duplicate_iv(ptr noundef %284, ptr noundef %0), !range !110
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %370

287:                                              ; preds = %283
  %288 = load ptr, ptr %30, align 8, !tbaa !144
  %289 = tail call fastcc zeroext i8 @can_put_in_inner_loop(ptr noundef %288, ptr noundef nonnull %71)
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %370

291:                                              ; preds = %287
  %292 = load i32, ptr %71, align 8
  %293 = and i32 %292, 254
  %294 = add nsw i32 %293, -10
  %295 = icmp ult i32 %294, -4
  br i1 %295, label %300, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %71, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !46
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %361

300:                                              ; preds = %296, %291
  %301 = and i32 %292, 255
  %302 = add nsw i32 %301, -1
  %303 = icmp ult i32 %302, 9
  tail call void @llvm.assume(i1 %303)
  %304 = zext nneg i32 %301 to i64
  %305 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !50
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !143
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %300
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %312

312:                                              ; preds = %311, %300
  %313 = getelementptr inbounds i8, ptr %71, i64 %309
  %314 = load ptr, ptr %313, align 8, !tbaa !35
  %315 = getelementptr inbounds %struct.tree_ssa_name, ptr %314, i64 0, i32 5
  %316 = getelementptr inbounds %struct.tree_ssa_name, ptr %314, i64 0, i32 5, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !162
  %318 = icmp eq ptr %317, %315
  br i1 %318, label %370, label %319

319:                                              ; preds = %312, %355
  %320 = phi ptr [ %359, %355 ], [ %317, %312 ]
  %321 = phi ptr [ %357, %355 ], [ %317, %312 ]
  %322 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %320, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !46
  %324 = load i32, ptr %323, align 8
  %325 = and i32 %324, 255
  %326 = icmp eq i32 %325, 16
  br i1 %326, label %327, label %339

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.gimple_statement_phi, ptr %323, i64 0, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !46
  %330 = icmp eq i32 %329, 1
  br i1 %330, label %331, label %339

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.gimple_statement_base, ptr %323, i64 0, i32 4
  %333 = load ptr, ptr %332, align 8, !tbaa !46
  %334 = tail call ptr @single_exit(ptr noundef %0) #20
  %335 = getelementptr inbounds %struct.edge_def, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !171
  %337 = icmp eq ptr %333, %336
  %338 = zext i1 %337 to i8
  br label %339

339:                                              ; preds = %331, %327, %319
  %340 = phi i8 [ 0, %327 ], [ 0, %319 ], [ %338, %331 ]
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %355

342:                                              ; preds = %339
  %343 = load ptr, ptr %322, align 8, !tbaa !46
  %344 = getelementptr inbounds %struct.gimple_statement_base, ptr %343, i64 0, i32 4
  %345 = load ptr, ptr %344, align 8, !tbaa !46
  %346 = load ptr, ptr %30, align 8, !tbaa !144
  %347 = getelementptr inbounds %struct.loop, ptr %346, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !173
  %349 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %345, ptr noundef %348) #20
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %342
  %352 = load ptr, ptr %30, align 8, !tbaa !144
  %353 = tail call fastcc zeroext i8 @can_put_in_inner_loop(ptr noundef %352, ptr noundef nonnull %71)
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %351, %342, %339
  %356 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %321, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !162
  %358 = icmp eq ptr %357, %315
  %359 = select i1 %358, ptr null, ptr %357
  %360 = icmp eq ptr %357, %315
  br i1 %360, label %370, label %319, !llvm.loop !174

361:                                              ; preds = %351, %296, %86
  %362 = getelementptr inbounds %struct.gimple_statement_base, ptr %71, i64 0, i32 4
  %363 = load ptr, ptr %362, align 8, !tbaa !46
  %364 = load ptr, ptr %30, align 8, !tbaa !144
  %365 = getelementptr inbounds %struct.loop, ptr %364, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !173
  %367 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %363, ptr noundef %366) #20
  %368 = icmp eq i8 %367, 0
  %369 = zext i1 %368 to i32
  br label %370

370:                                              ; preds = %115, %355, %178, %236, %312, %361, %287, %283, %83, %80, %69
  %371 = phi i32 [ 4, %83 ], [ 4, %80 ], [ 4, %69 ], [ 4, %283 ], [ 4, %287 ], [ %369, %361 ], [ 4, %312 ], [ 1, %236 ], [ 1, %178 ], [ 4, %355 ], [ 1, %115 ]
  switch i32 %371, label %398 [
    i32 0, label %372
    i32 4, label %372
  ]

372:                                              ; preds = %370, %370
  %373 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %70, i64 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !175
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %69, !llvm.loop !176

376:                                              ; preds = %372, %66, %42
  %377 = add nuw nsw i64 %43, 1
  %378 = load i32, ptr %39, align 4, !tbaa !149
  %379 = zext i32 %378 to i64
  %380 = icmp ult i64 %377, %379
  br i1 %380, label %42, label %381, !llvm.loop !177

381:                                              ; preds = %376, %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #20
  %382 = tail call ptr @single_exit(ptr noundef %0) #20
  %383 = getelementptr inbounds %struct.edge_def, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !171
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef %384) #20
  %385 = load ptr, ptr %15, align 8, !tbaa.struct !178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #20
  %386 = icmp eq ptr %385, null
  br i1 %386, label %397, label %387

387:                                              ; preds = %381, %393
  %388 = phi ptr [ %395, %393 ], [ %385, %381 ]
  %389 = load ptr, ptr %388, align 8, !tbaa !160
  %390 = getelementptr inbounds %struct.gimple_statement_phi, ptr %389, i64 0, i32 2
  %391 = load i32, ptr %390, align 4, !tbaa !46
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %398

393:                                              ; preds = %387
  %394 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %388, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !175
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %387, !llvm.loop !179

397:                                              ; preds = %393, %381
  call void @free(ptr noundef %38)
  br label %399

398:                                              ; preds = %370, %387
  call void @free(ptr noundef %38)
  br label %1641

399:                                              ; preds = %397, %24
  %400 = icmp eq ptr %0, null
  br i1 %400, label %833, label %401

401:                                              ; preds = %399, %824
  %402 = phi ptr [ %831, %824 ], [ %0, %399 ]
  %403 = phi ptr [ %797, %824 ], [ null, %399 ]
  %404 = phi ptr [ %796, %824 ], [ null, %399 ]
  %405 = phi ptr [ %795, %824 ], [ null, %399 ]
  %406 = phi ptr [ %794, %824 ], [ null, %399 ]
  %407 = phi ptr [ %825, %824 ], [ null, %399 ]
  %408 = load ptr, ptr %1, align 8, !tbaa !35
  %409 = call ptr @find_induction_var_from_exit_cond(ptr noundef nonnull %402)
  %410 = call ptr @get_loop_exit_condition(ptr noundef nonnull %402) #20
  %411 = icmp eq ptr %409, null
  %412 = icmp eq ptr %410, null
  %413 = select i1 %411, i1 true, i1 %412
  br i1 %413, label %414, label %423

414:                                              ; preds = %401
  %415 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %416 = icmp eq ptr %415, null
  br i1 %416, label %793, label %417

417:                                              ; preds = %414
  %418 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %419 = and i32 %418, 8
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %793, label %421

421:                                              ; preds = %417
  %422 = call i64 @fwrite(ptr nonnull @.str.24, i64 88, i64 1, ptr nonnull %415)
  br label %793

423:                                              ; preds = %401
  %424 = getelementptr inbounds %struct.tree_ssa_name, ptr %409, i64 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !46
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %436

427:                                              ; preds = %423
  %428 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %429 = icmp eq ptr %428, null
  br i1 %429, label %793, label %430

430:                                              ; preds = %427
  %431 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %432 = and i32 %431, 8
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %793, label %434

434:                                              ; preds = %430
  %435 = call i64 @fwrite(ptr nonnull @.str.25, i64 68, i64 1, ptr nonnull %428)
  br label %793

436:                                              ; preds = %423
  %437 = load i32, ptr %425, align 8
  %438 = and i32 %437, 255
  %439 = icmp eq i32 %438, 16
  br i1 %439, label %501, label %440

440:                                              ; preds = %436
  %441 = add nsw i32 %438, -10
  %442 = icmp ult i32 %441, -9
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %425, i64 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !46
  br label %446

446:                                              ; preds = %443, %440
  %447 = phi ptr [ %445, %443 ], [ null, %440 ]
  %448 = icmp eq ptr %447, null
  br i1 %448, label %459, label %449

449:                                              ; preds = %446
  %450 = and i32 %437, 254
  %451 = add nsw i32 %450, -10
  %452 = icmp ult i32 %451, -4
  br i1 %452, label %459, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %425, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !46
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %453
  %458 = load ptr, ptr %447, align 8, !tbaa !165
  br label %459

459:                                              ; preds = %457, %453, %449, %446
  %460 = phi ptr [ %447, %446 ], [ %447, %449 ], [ %447, %453 ], [ %458, %457 ]
  %461 = icmp eq ptr %460, null
  br i1 %461, label %467, label %462

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.use_optype_d, ptr %460, i64 0, i32 1, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !167
  %465 = load ptr, ptr %464, align 8, !tbaa !35
  %466 = load ptr, ptr %460, align 8, !tbaa !165
  br label %467

467:                                              ; preds = %462, %459
  %468 = phi ptr [ %466, %462 ], [ %460, %459 ]
  %469 = phi ptr [ %465, %462 ], [ null, %459 ]
  %470 = icmp eq ptr %468, null
  %471 = select i1 %470, ptr %469, ptr null
  %472 = icmp eq ptr %471, null
  %473 = select i1 %461, i1 true, i1 %472
  br i1 %473, label %474, label %481

474:                                              ; preds = %467
  %475 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %476 = icmp eq ptr %475, null
  br i1 %476, label %498, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %479 = and i32 %478, 8
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %498, label %494

481:                                              ; preds = %467
  %482 = getelementptr inbounds %struct.tree_ssa_name, ptr %471, i64 0, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !46
  %484 = load i32, ptr %483, align 8
  %485 = and i32 %484, 255
  %486 = icmp eq i32 %485, 16
  br i1 %486, label %498, label %487

487:                                              ; preds = %481
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %489 = icmp eq ptr %488, null
  br i1 %489, label %498, label %490

490:                                              ; preds = %487
  %491 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %492 = and i32 %491, 8
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %498, label %494

494:                                              ; preds = %490, %477
  %495 = phi ptr [ %475, %477 ], [ %488, %490 ]
  %496 = phi ptr [ %425, %477 ], [ %483, %490 ]
  %497 = call i64 @fwrite(ptr nonnull @.str.25, i64 68, i64 1, ptr nonnull %495)
  br label %498

498:                                              ; preds = %494, %490, %487, %481, %477, %474
  %499 = phi ptr [ %425, %477 ], [ %425, %474 ], [ %483, %490 ], [ %483, %487 ], [ %483, %481 ], [ %496, %494 ]
  %500 = phi i1 [ false, %477 ], [ false, %474 ], [ false, %490 ], [ false, %487 ], [ true, %481 ], [ false, %494 ]
  br i1 %500, label %501, label %793

501:                                              ; preds = %498, %436
  %502 = phi ptr [ %499, %498 ], [ %425, %436 ]
  %503 = getelementptr inbounds %struct.gimple_statement_phi, ptr %502, i64 0, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !35
  %505 = call ptr @analyze_scalar_evolution(ptr noundef nonnull %402, ptr noundef %504) #20
  %506 = call ptr @loop_preheader_edge(ptr noundef nonnull %402) #20
  %507 = icmp eq ptr %506, null
  br i1 %507, label %508, label %512

508:                                              ; preds = %501
  %509 = load ptr, ptr @cfun, align 8, !tbaa !35
  %510 = getelementptr inbounds %struct.function, ptr %509, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !180
  br label %512

512:                                              ; preds = %508, %501
  %513 = phi ptr [ %511, %508 ], [ %506, %501 ]
  %514 = load ptr, ptr %513, align 8, !tbaa !35
  %515 = call ptr @instantiate_scev(ptr noundef %514, ptr noundef nonnull %402, ptr noundef %505) #20
  %516 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %517 = icmp eq ptr %515, %516
  br i1 %517, label %518, label %527

518:                                              ; preds = %512
  %519 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %520 = icmp eq ptr %519, null
  br i1 %520, label %793, label %521

521:                                              ; preds = %518
  %522 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %523 = and i32 %522, 8
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %793, label %525

525:                                              ; preds = %521
  %526 = call i64 @fwrite(ptr nonnull @.str.26, i64 78, i64 1, ptr nonnull %519)
  br label %793

527:                                              ; preds = %512
  %528 = load i32, ptr %402, align 8, !tbaa !182
  %529 = call ptr @evolution_part_in_loop_num(ptr noundef %515, i32 noundef %528) #20
  %530 = icmp eq ptr %529, null
  %531 = load ptr, ptr @chrec_dont_know, align 8
  %532 = icmp eq ptr %529, %531
  %533 = select i1 %530, i1 true, i1 %532
  br i1 %533, label %534, label %543

534:                                              ; preds = %527
  %535 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %536 = icmp eq ptr %535, null
  br i1 %536, label %793, label %537

537:                                              ; preds = %534
  %538 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %539 = and i32 %538, 8
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %793, label %541

541:                                              ; preds = %537
  %542 = call i64 @fwrite(ptr nonnull @.str.27, i64 55, i64 1, ptr nonnull %535)
  br label %793

543:                                              ; preds = %527
  %544 = load i64, ptr %529, align 8
  %545 = and i64 %544, 65535
  %546 = icmp eq i64 %545, 23
  br i1 %546, label %556, label %547

547:                                              ; preds = %543
  %548 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %549 = icmp eq ptr %548, null
  br i1 %549, label %793, label %550

550:                                              ; preds = %547
  %551 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %552 = and i32 %551, 8
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %793, label %554

554:                                              ; preds = %550
  %555 = call i64 @fwrite(ptr nonnull @.str.28, i64 53, i64 1, ptr nonnull %548)
  br label %793

556:                                              ; preds = %543
  %557 = getelementptr inbounds %struct.tree_int_cst, ptr %529, i64 0, i32 1
  %558 = load i64, ptr %557, align 8, !tbaa !46
  %559 = trunc i64 %558 to i32
  %560 = getelementptr inbounds %struct.gimple_statement_phi, ptr %502, i64 0, i32 2
  %561 = load i32, ptr %560, align 4, !tbaa !46
  %562 = icmp eq i32 %561, 2
  br i1 %562, label %572, label %563

563:                                              ; preds = %556
  %564 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %565 = icmp eq ptr %564, null
  br i1 %565, label %793, label %566

566:                                              ; preds = %563
  %567 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %568 = and i32 %567, 8
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %793, label %570

570:                                              ; preds = %566
  %571 = call i64 @fwrite(ptr nonnull @.str.29, i64 73, i64 1, ptr nonnull %564)
  br label %793

572:                                              ; preds = %556
  %573 = getelementptr inbounds %struct.gimple_statement_base, ptr %502, i64 0, i32 4
  %574 = load ptr, ptr %573, align 8, !tbaa !46
  %575 = load ptr, ptr %574, align 8, !tbaa !183, !nonnull !184, !noundef !184
  %576 = getelementptr inbounds %struct.VEC_edge_base, ptr %575, i64 0, i32 2, i64 0
  %577 = load ptr, ptr %576, align 8, !tbaa !35
  %578 = load ptr, ptr %577, align 8, !tbaa !185
  %579 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %402, ptr noundef %578) #20
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %598, label %581

581:                                              ; preds = %572
  %582 = load ptr, ptr %573, align 8, !tbaa !46
  %583 = load ptr, ptr %582, align 8, !tbaa !183, !nonnull !184, !noundef !184
  %584 = getelementptr inbounds %struct.VEC_edge_base, ptr %583, i64 0, i32 2, i64 1
  %585 = load ptr, ptr %584, align 8, !tbaa !35
  %586 = load ptr, ptr %585, align 8, !tbaa !185
  %587 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %402, ptr noundef %586) #20
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %598, label %589

589:                                              ; preds = %581
  %590 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %591 = icmp eq ptr %590, null
  br i1 %591, label %793, label %592

592:                                              ; preds = %589
  %593 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %594 = and i32 %593, 8
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %793, label %596

596:                                              ; preds = %592
  %597 = call i64 @fwrite(ptr nonnull @.str.30, i64 74, i64 1, ptr nonnull %590)
  br label %793

598:                                              ; preds = %581, %572
  %599 = load ptr, ptr %573, align 8, !tbaa !46
  %600 = load ptr, ptr %599, align 8, !tbaa !183, !nonnull !184, !noundef !184
  %601 = getelementptr inbounds %struct.VEC_edge_base, ptr %600, i64 0, i32 2, i64 0
  %602 = load ptr, ptr %601, align 8, !tbaa !35
  %603 = load ptr, ptr %602, align 8, !tbaa !185
  %604 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %402, ptr noundef %603) #20
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %613, label %606

606:                                              ; preds = %598
  %607 = getelementptr inbounds %struct.gimple_statement_phi, ptr %502, i64 0, i32 1
  %608 = load i32, ptr %607, align 8, !tbaa !46
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %611

610:                                              ; preds = %606
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %611

611:                                              ; preds = %610, %606
  %612 = getelementptr inbounds %struct.gimple_statement_phi, ptr %502, i64 1, i32 0, i32 5
  br label %615

613:                                              ; preds = %598
  %614 = getelementptr inbounds %struct.gimple_statement_phi, ptr %502, i64 0, i32 4, i64 0, i32 0, i32 3
  br label %615

615:                                              ; preds = %613, %611
  %616 = phi ptr [ %614, %613 ], [ %612, %611 ]
  %617 = load ptr, ptr %616, align 8, !tbaa !167
  %618 = load ptr, ptr %617, align 8, !tbaa !35
  %619 = load ptr, ptr %2, align 8, !tbaa !35
  %620 = call fastcc ptr @gcc_tree_to_linear_expression(i32 noundef %26, ptr noundef %618, ptr noundef %408, ptr noundef %619, i32 noundef 0, ptr noundef %3)
  %621 = icmp eq ptr %620, null
  br i1 %621, label %622, label %631

622:                                              ; preds = %615
  %623 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %624 = icmp eq ptr %623, null
  br i1 %624, label %793, label %625

625:                                              ; preds = %622
  %626 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %627 = and i32 %626, 8
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %793, label %629

629:                                              ; preds = %625
  %630 = call i64 @fwrite(ptr nonnull @.str.31, i64 72, i64 1, ptr nonnull %623)
  br label %793

631:                                              ; preds = %615
  %632 = load ptr, ptr %2, align 8, !tbaa !35
  %633 = icmp eq ptr %632, null
  br i1 %633, label %640, label %634

634:                                              ; preds = %631
  %635 = getelementptr inbounds %struct.VEC_tree_base, ptr %632, i64 0, i32 1
  %636 = load i32, ptr %635, align 4, !tbaa !186
  %637 = load i32, ptr %632, align 8, !tbaa !188
  %638 = icmp ne i32 %636, %637
  %639 = zext i1 %638 to i32
  br label %640

640:                                              ; preds = %634, %631
  %641 = phi i32 [ %639, %634 ], [ 0, %631 ]
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %645

643:                                              ; preds = %640
  %644 = call ptr @vec_heap_p_reserve(ptr noundef %632, i32 noundef 1) #20
  store ptr %644, ptr %2, align 8, !tbaa !35
  br label %645

645:                                              ; preds = %643, %640
  %646 = load i32, ptr %410, align 8
  %647 = and i32 %646, 255
  %648 = add nsw i32 %647, -10
  %649 = icmp ult i32 %648, -9
  br i1 %649, label %662, label %650

650:                                              ; preds = %645
  %651 = zext nneg i32 %647 to i64
  %652 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !50
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %654
  %656 = load i64, ptr %655, align 8, !tbaa !143
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %659

658:                                              ; preds = %650
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %659

659:                                              ; preds = %658, %650
  %660 = getelementptr inbounds i8, ptr %410, i64 %656
  %661 = load ptr, ptr %660, align 8, !tbaa !35
  br label %662

662:                                              ; preds = %659, %645
  %663 = phi ptr [ %661, %659 ], [ null, %645 ]
  %664 = load i32, ptr %410, align 8
  %665 = and i32 %664, 255
  %666 = add nsw i32 %665, -10
  %667 = icmp ult i32 %666, -9
  br i1 %667, label %681, label %668

668:                                              ; preds = %662
  %669 = zext nneg i32 %665 to i64
  %670 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %669
  %671 = load i32, ptr %670, align 4, !tbaa !50
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %672
  %674 = load i64, ptr %673, align 8, !tbaa !143
  %675 = icmp eq i64 %674, 0
  br i1 %675, label %676, label %677

676:                                              ; preds = %668
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %677

677:                                              ; preds = %676, %668
  %678 = getelementptr inbounds i8, ptr %410, i64 %674
  %679 = getelementptr inbounds ptr, ptr %678, i64 1
  %680 = load ptr, ptr %679, align 8, !tbaa !35
  br label %681

681:                                              ; preds = %677, %662
  %682 = phi ptr [ %680, %677 ], [ null, %662 ]
  %683 = load i64, ptr %682, align 8
  %684 = and i64 %683, 65535
  %685 = icmp eq i64 %684, 141
  br i1 %685, label %686, label %689

686:                                              ; preds = %681
  %687 = call fastcc zeroext i8 @invariant_in_loop_and_outer_loops(ptr noundef nonnull %402, ptr noundef nonnull %682), !range !110
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %689, label %696

689:                                              ; preds = %686, %681
  %690 = load i64, ptr %663, align 8
  %691 = and i64 %690, 65535
  %692 = icmp eq i64 %691, 141
  br i1 %692, label %693, label %703

693:                                              ; preds = %689
  %694 = call fastcc zeroext i8 @invariant_in_loop_and_outer_loops(ptr noundef nonnull %402, ptr noundef nonnull %663), !range !110
  %695 = icmp eq i8 %694, 0
  br i1 %695, label %703, label %696

696:                                              ; preds = %693, %686
  %697 = phi ptr [ %682, %686 ], [ %663, %693 ]
  %698 = load ptr, ptr %2, align 8, !tbaa !35
  %699 = load i32, ptr %698, align 8, !tbaa !188
  %700 = add i32 %699, 1
  store i32 %700, ptr %698, align 8, !tbaa !188
  %701 = zext i32 %699 to i64
  %702 = getelementptr inbounds %struct.VEC_tree_base, ptr %698, i64 0, i32 2, i64 %701
  store ptr %697, ptr %702, align 8, !tbaa !35
  br label %703

703:                                              ; preds = %696, %693, %689
  %704 = icmp eq ptr %663, %409
  %705 = select i1 %704, ptr %682, ptr %663
  %706 = load ptr, ptr %2, align 8, !tbaa !35
  %707 = icmp eq ptr %706, null
  br i1 %707, label %710, label %708

708:                                              ; preds = %703
  %709 = load i32, ptr %706, align 8, !tbaa !188
  br label %710

710:                                              ; preds = %708, %703
  %711 = phi i32 [ %709, %708 ], [ 0, %703 ]
  %712 = shl nsw i32 %26, 1
  %713 = icmp ugt i32 %711, %712
  br i1 %713, label %714, label %715

714:                                              ; preds = %710
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1398, ptr noundef nonnull @.str.1) #20
  br label %715

715:                                              ; preds = %714, %710
  %716 = load i32, ptr %410, align 8
  %717 = lshr i32 %716, 16
  %718 = trunc i32 %717 to i16
  switch i16 %718, label %725 [
    i16 97, label %719
    i16 102, label %721
    i16 99, label %723
  ]

719:                                              ; preds = %715
  %720 = sub nsw i32 0, %559
  br label %728

721:                                              ; preds = %715
  %722 = sub nsw i32 0, %559
  br label %728

723:                                              ; preds = %715
  %724 = sub nsw i32 0, %559
  br label %728

725:                                              ; preds = %715
  %726 = icmp eq i32 %717, 101
  %727 = select i1 %726, i32 %559, i32 0
  br label %728

728:                                              ; preds = %725, %723, %721, %719
  %729 = phi i32 [ %720, %719 ], [ %722, %721 ], [ %724, %723 ], [ %727, %725 ]
  %730 = load ptr, ptr %2, align 8, !tbaa !35
  %731 = call fastcc ptr @gcc_tree_to_linear_expression(i32 noundef %26, ptr noundef %705, ptr noundef %408, ptr noundef %730, i32 noundef %729, ptr noundef %3)
  %732 = getelementptr inbounds %struct.tree_common, ptr %705, i64 0, i32 2
  %733 = load ptr, ptr %732, align 8, !tbaa !46
  %734 = sext i32 %729 to i64
  %735 = call ptr @build_int_cst(ptr noundef %733, i64 noundef %734) #20
  %736 = call ptr @build2_stat(i32 noundef 63, ptr noundef %733, ptr noundef %705, ptr noundef %735) #20
  %737 = icmp eq ptr %406, null
  br i1 %737, label %743, label %738

738:                                              ; preds = %728
  %739 = getelementptr inbounds %struct.VEC_tree_base, ptr %406, i64 0, i32 1
  %740 = load i32, ptr %739, align 4, !tbaa !186
  %741 = load i32, ptr %406, align 8, !tbaa !188
  %742 = icmp eq i32 %740, %741
  br i1 %742, label %743, label %745

743:                                              ; preds = %738, %728
  %744 = call ptr @vec_heap_p_reserve(ptr noundef %406, i32 noundef 1) #20
  br label %745

745:                                              ; preds = %743, %738
  %746 = phi ptr [ %744, %743 ], [ %406, %738 ]
  %747 = load i32, ptr %746, align 8, !tbaa !188
  %748 = add i32 %747, 1
  store i32 %748, ptr %746, align 8, !tbaa !188
  %749 = zext i32 %747 to i64
  %750 = getelementptr inbounds %struct.VEC_tree_base, ptr %746, i64 0, i32 2, i64 %749
  store ptr %736, ptr %750, align 8, !tbaa !35
  %751 = icmp eq ptr %405, null
  br i1 %751, label %757, label %752

752:                                              ; preds = %745
  %753 = getelementptr inbounds %struct.VEC_tree_base, ptr %405, i64 0, i32 1
  %754 = load i32, ptr %753, align 4, !tbaa !186
  %755 = load i32, ptr %405, align 8, !tbaa !188
  %756 = icmp eq i32 %754, %755
  br i1 %756, label %757, label %759

757:                                              ; preds = %752, %745
  %758 = call ptr @vec_heap_p_reserve(ptr noundef %405, i32 noundef 1) #20
  br label %759

759:                                              ; preds = %757, %752
  %760 = phi ptr [ %758, %757 ], [ %405, %752 ]
  %761 = load i32, ptr %760, align 8, !tbaa !188
  %762 = add i32 %761, 1
  store i32 %762, ptr %760, align 8, !tbaa !188
  %763 = zext i32 %761 to i64
  %764 = getelementptr inbounds %struct.VEC_tree_base, ptr %760, i64 0, i32 2, i64 %763
  store ptr %618, ptr %764, align 8, !tbaa !35
  %765 = icmp eq ptr %404, null
  br i1 %765, label %771, label %766

766:                                              ; preds = %759
  %767 = getelementptr inbounds %struct.VEC_int_base, ptr %404, i64 0, i32 1
  %768 = load i32, ptr %767, align 4, !tbaa !189
  %769 = load i32, ptr %404, align 4, !tbaa !191
  %770 = icmp eq i32 %768, %769
  br i1 %770, label %771, label %773

771:                                              ; preds = %766, %759
  %772 = call ptr @vec_heap_o_reserve(ptr noundef %404, i32 noundef 1, i64 noundef 8, i64 noundef 4) #20
  br label %773

773:                                              ; preds = %771, %766
  %774 = phi ptr [ %772, %771 ], [ %404, %766 ]
  %775 = load i32, ptr %774, align 4, !tbaa !191
  %776 = add i32 %775, 1
  store i32 %776, ptr %774, align 4, !tbaa !191
  %777 = zext i32 %775 to i64
  %778 = getelementptr inbounds %struct.VEC_int_base, ptr %774, i64 0, i32 2, i64 %777
  store i32 %559, ptr %778, align 4, !tbaa !50
  %779 = icmp eq ptr %731, null
  br i1 %779, label %780, label %789

780:                                              ; preds = %773
  %781 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %782 = icmp eq ptr %781, null
  br i1 %782, label %793, label %783

783:                                              ; preds = %780
  %784 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %785 = and i32 %784, 8
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %793, label %787

787:                                              ; preds = %783
  %788 = call i64 @fwrite(ptr nonnull @.str.32, i64 72, i64 1, ptr nonnull %781)
  br label %793

789:                                              ; preds = %773
  %790 = call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #20
  %791 = getelementptr inbounds %struct.lambda_loop_s, ptr %790, i64 0, i32 3
  store i32 %559, ptr %791, align 8, !tbaa !82
  store ptr %620, ptr %790, align 8, !tbaa !109
  %792 = getelementptr inbounds %struct.lambda_loop_s, ptr %790, i64 0, i32 1
  store ptr %731, ptr %792, align 8, !tbaa !113
  br label %793

793:                                              ; preds = %414, %417, %421, %427, %430, %434, %498, %518, %521, %525, %534, %537, %541, %547, %550, %554, %563, %566, %570, %589, %592, %596, %622, %625, %629, %780, %783, %787, %789
  %794 = phi ptr [ %406, %414 ], [ %406, %417 ], [ %406, %421 ], [ %406, %427 ], [ %406, %430 ], [ %406, %434 ], [ %406, %518 ], [ %406, %521 ], [ %406, %525 ], [ %406, %534 ], [ %406, %537 ], [ %406, %541 ], [ %406, %622 ], [ %406, %625 ], [ %406, %629 ], [ %746, %780 ], [ %746, %783 ], [ %746, %787 ], [ %746, %789 ], [ %406, %589 ], [ %406, %592 ], [ %406, %596 ], [ %406, %563 ], [ %406, %566 ], [ %406, %570 ], [ %406, %547 ], [ %406, %550 ], [ %406, %554 ], [ %406, %498 ]
  %795 = phi ptr [ %405, %414 ], [ %405, %417 ], [ %405, %421 ], [ %405, %427 ], [ %405, %430 ], [ %405, %434 ], [ %405, %518 ], [ %405, %521 ], [ %405, %525 ], [ %405, %534 ], [ %405, %537 ], [ %405, %541 ], [ %405, %622 ], [ %405, %625 ], [ %405, %629 ], [ %760, %780 ], [ %760, %783 ], [ %760, %787 ], [ %760, %789 ], [ %405, %589 ], [ %405, %592 ], [ %405, %596 ], [ %405, %563 ], [ %405, %566 ], [ %405, %570 ], [ %405, %547 ], [ %405, %550 ], [ %405, %554 ], [ %405, %498 ]
  %796 = phi ptr [ %404, %414 ], [ %404, %417 ], [ %404, %421 ], [ %404, %427 ], [ %404, %430 ], [ %404, %434 ], [ %404, %518 ], [ %404, %521 ], [ %404, %525 ], [ %404, %534 ], [ %404, %537 ], [ %404, %541 ], [ %404, %622 ], [ %404, %625 ], [ %404, %629 ], [ %774, %780 ], [ %774, %783 ], [ %774, %787 ], [ %774, %789 ], [ %404, %589 ], [ %404, %592 ], [ %404, %596 ], [ %404, %563 ], [ %404, %566 ], [ %404, %570 ], [ %404, %547 ], [ %404, %550 ], [ %404, %554 ], [ %404, %498 ]
  %797 = phi ptr [ %403, %414 ], [ %403, %417 ], [ %403, %421 ], [ %403, %427 ], [ %403, %430 ], [ %403, %434 ], [ %504, %518 ], [ %504, %521 ], [ %504, %525 ], [ %504, %534 ], [ %504, %537 ], [ %504, %541 ], [ %504, %622 ], [ %504, %625 ], [ %504, %629 ], [ %504, %780 ], [ %504, %783 ], [ %504, %787 ], [ %504, %789 ], [ %504, %589 ], [ %504, %592 ], [ %504, %596 ], [ %504, %563 ], [ %504, %566 ], [ %504, %570 ], [ %504, %547 ], [ %504, %550 ], [ %504, %554 ], [ %403, %498 ]
  %798 = phi ptr [ null, %414 ], [ null, %417 ], [ null, %421 ], [ null, %427 ], [ null, %430 ], [ null, %434 ], [ null, %518 ], [ null, %521 ], [ null, %525 ], [ null, %534 ], [ null, %537 ], [ null, %541 ], [ null, %622 ], [ null, %625 ], [ null, %629 ], [ null, %780 ], [ null, %783 ], [ null, %787 ], [ %790, %789 ], [ null, %589 ], [ null, %592 ], [ null, %596 ], [ null, %563 ], [ null, %566 ], [ null, %570 ], [ null, %547 ], [ null, %550 ], [ null, %554 ], [ null, %498 ]
  %799 = icmp eq ptr %798, null
  br i1 %799, label %1641, label %800

800:                                              ; preds = %793
  %801 = load ptr, ptr %1, align 8, !tbaa !35
  %802 = icmp eq ptr %801, null
  br i1 %802, label %808, label %803

803:                                              ; preds = %800
  %804 = getelementptr inbounds %struct.VEC_tree_base, ptr %801, i64 0, i32 1
  %805 = load i32, ptr %804, align 4, !tbaa !186
  %806 = load i32, ptr %801, align 8, !tbaa !188
  %807 = icmp eq i32 %805, %806
  br i1 %807, label %808, label %810

808:                                              ; preds = %800, %803
  %809 = call ptr @vec_heap_p_reserve(ptr noundef %801, i32 noundef 1) #20
  store ptr %809, ptr %1, align 8, !tbaa !35
  br label %810

810:                                              ; preds = %803, %808
  %811 = load ptr, ptr %1, align 8, !tbaa !35
  %812 = load i32, ptr %811, align 8, !tbaa !188
  %813 = add i32 %812, 1
  store i32 %813, ptr %811, align 8, !tbaa !188
  %814 = zext i32 %812 to i64
  %815 = getelementptr inbounds %struct.VEC_tree_base, ptr %811, i64 0, i32 2, i64 %814
  store ptr %797, ptr %815, align 8, !tbaa !35
  %816 = icmp eq ptr %407, null
  br i1 %816, label %822, label %817

817:                                              ; preds = %810
  %818 = getelementptr inbounds %struct.VEC_lambda_loop_base, ptr %407, i64 0, i32 1
  %819 = load i32, ptr %818, align 4, !tbaa !192
  %820 = load i32, ptr %407, align 8, !tbaa !194
  %821 = icmp eq i32 %819, %820
  br i1 %821, label %822, label %824

822:                                              ; preds = %810, %817
  %823 = call ptr @vec_heap_p_reserve(ptr noundef %407, i32 noundef 1) #20
  br label %824

824:                                              ; preds = %817, %822
  %825 = phi ptr [ %823, %822 ], [ %407, %817 ]
  %826 = load i32, ptr %825, align 8, !tbaa !194
  %827 = add i32 %826, 1
  store i32 %827, ptr %825, align 8, !tbaa !194
  %828 = zext i32 %826 to i64
  %829 = getelementptr inbounds %struct.VEC_lambda_loop_base, ptr %825, i64 0, i32 2, i64 %828
  store ptr %798, ptr %829, align 8, !tbaa !35
  %830 = getelementptr inbounds %struct.loop, ptr %402, i64 0, i32 8
  %831 = load ptr, ptr %830, align 8, !tbaa !144
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %401, !llvm.loop !195

833:                                              ; preds = %824, %399
  %834 = phi ptr [ null, %399 ], [ %825, %824 ]
  %835 = phi ptr [ null, %399 ], [ %794, %824 ]
  %836 = phi ptr [ null, %399 ], [ %795, %824 ]
  %837 = phi ptr [ null, %399 ], [ %796, %824 ]
  br i1 %28, label %838, label %1620

838:                                              ; preds = %833
  %839 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  %840 = call ptr @single_exit(ptr noundef %0) #20
  %841 = getelementptr inbounds %struct.edge_def, ptr %840, i64 0, i32 1
  %842 = load ptr, ptr %841, align 8, !tbaa !171
  %843 = call ptr @single_exit(ptr noundef %0) #20
  %844 = call ptr @split_edge(ptr noundef %843) #20
  %845 = load ptr, ptr @cfun, align 8, !tbaa !35
  %846 = getelementptr inbounds %struct.function, ptr %845, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !180
  %848 = getelementptr inbounds %struct.control_flow_graph, ptr %847, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !196
  %850 = getelementptr inbounds %struct.basic_block_def, ptr %849, i64 0, i32 5
  %851 = load ptr, ptr %850, align 8, !tbaa !198
  %852 = call ptr @create_empty_bb(ptr noundef %851) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #20
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %842) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #20
  %853 = load ptr, ptr %6, align 8
  %854 = icmp eq ptr %853, null
  br i1 %854, label %911, label %855

855:                                              ; preds = %838, %887
  %856 = phi ptr [ %909, %887 ], [ %853, %838 ]
  %857 = phi ptr [ %874, %887 ], [ null, %838 ]
  %858 = phi ptr [ %888, %887 ], [ null, %838 ]
  %859 = load ptr, ptr %856, align 8, !tbaa !160
  %860 = icmp eq ptr %857, null
  br i1 %860, label %868, label %861

861:                                              ; preds = %855
  %862 = getelementptr inbounds %struct.VEC_tree_base, ptr %857, i64 0, i32 1
  %863 = load i32, ptr %862, align 4, !tbaa !186
  %864 = load i32, ptr %857, align 8, !tbaa !188
  %865 = sub i32 %863, %864
  %866 = icmp ugt i32 %865, 1
  %867 = zext i1 %866 to i32
  br label %868

868:                                              ; preds = %861, %855
  %869 = phi i32 [ %867, %861 ], [ 0, %855 ]
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %873

871:                                              ; preds = %868
  %872 = call ptr @vec_heap_p_reserve(ptr noundef %857, i32 noundef 2) #20
  br label %873

873:                                              ; preds = %871, %868
  %874 = phi ptr [ %872, %871 ], [ %857, %868 ]
  %875 = icmp eq ptr %858, null
  br i1 %875, label %882, label %876

876:                                              ; preds = %873
  %877 = getelementptr inbounds %struct.VEC_source_location_base, ptr %858, i64 0, i32 1
  %878 = load i32, ptr %877, align 4, !tbaa !199
  %879 = load i32, ptr %858, align 4, !tbaa !201
  %880 = icmp ne i32 %878, %879
  %881 = zext i1 %880 to i32
  br label %882

882:                                              ; preds = %876, %873
  %883 = phi i32 [ %881, %876 ], [ 0, %873 ]
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %887

885:                                              ; preds = %882
  %886 = call ptr @vec_heap_o_reserve(ptr noundef %858, i32 noundef 1, i64 noundef 8, i64 noundef 4) #20
  br label %887

887:                                              ; preds = %885, %882
  %888 = phi ptr [ %886, %885 ], [ %858, %882 ]
  %889 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 3
  %890 = load ptr, ptr %889, align 8, !tbaa !35
  %891 = load i32, ptr %874, align 8, !tbaa !188
  %892 = add i32 %891, 1
  store i32 %892, ptr %874, align 8, !tbaa !188
  %893 = zext i32 %891 to i64
  %894 = getelementptr inbounds %struct.VEC_tree_base, ptr %874, i64 0, i32 2, i64 %893
  store ptr %890, ptr %894, align 8, !tbaa !35
  %895 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 4, i64 0, i32 0, i32 3
  %896 = load ptr, ptr %895, align 8, !tbaa !167
  %897 = load ptr, ptr %896, align 8, !tbaa !35
  %898 = add i32 %891, 2
  store i32 %898, ptr %874, align 8, !tbaa !188
  %899 = zext i32 %892 to i64
  %900 = getelementptr inbounds %struct.VEC_tree_base, ptr %874, i64 0, i32 2, i64 %899
  store ptr %897, ptr %900, align 8, !tbaa !35
  %901 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 4, i64 0, i32 2
  %902 = load i32, ptr %901, align 8, !tbaa !202
  %903 = load i32, ptr %888, align 4, !tbaa !201
  %904 = add i32 %903, 1
  store i32 %904, ptr %888, align 4, !tbaa !201
  %905 = zext i32 %903 to i64
  %906 = getelementptr inbounds %struct.VEC_source_location_base, ptr %888, i64 0, i32 2, i64 %905
  store i32 %902, ptr %906, align 4, !tbaa !50
  %907 = load ptr, ptr %6, align 8, !tbaa !204
  %908 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %907, i64 0, i32 2
  %909 = load ptr, ptr %908, align 8, !tbaa !175
  store ptr %909, ptr %6, align 8, !tbaa !204
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %855, !llvm.loop !206

911:                                              ; preds = %887, %838
  %912 = phi ptr [ null, %838 ], [ %888, %887 ]
  %913 = phi ptr [ null, %838 ], [ %874, %887 ]
  %914 = getelementptr inbounds i8, ptr %6, i64 8
  %915 = getelementptr inbounds %struct.basic_block_def, ptr %844, i64 0, i32 1
  %916 = load ptr, ptr %915, align 8, !tbaa !207
  %917 = icmp eq ptr %916, null
  br i1 %917, label %921, label %918

918:                                              ; preds = %911
  %919 = load i32, ptr %916, align 8, !tbaa !208
  %920 = icmp eq i32 %919, 1
  br i1 %920, label %922, label %921

921:                                              ; preds = %918, %911
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %922

922:                                              ; preds = %921, %918
  %923 = load ptr, ptr %915, align 8, !tbaa !207
  %924 = getelementptr inbounds %struct.VEC_edge_base, ptr %923, i64 0, i32 2, i64 0
  %925 = load ptr, ptr %924, align 8, !tbaa !35
  %926 = call ptr @redirect_edge_and_branch(ptr noundef %925, ptr noundef %852) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #20
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %842) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #20
  %927 = load ptr, ptr %6, align 8
  %928 = icmp eq ptr %927, null
  br i1 %928, label %929, label %931

929:                                              ; preds = %931, %922
  %930 = icmp eq ptr %913, null
  br label %934

931:                                              ; preds = %922, %931
  call void @remove_phi_node(ptr noundef nonnull %6, i8 noundef zeroext 0) #20
  %932 = load ptr, ptr %6, align 8
  %933 = icmp eq ptr %932, null
  br i1 %933, label %929, label %931, !llvm.loop !210

934:                                              ; preds = %929, %962
  br i1 %930, label %937, label %935

935:                                              ; preds = %934
  %936 = load i32, ptr %913, align 8, !tbaa !188
  br label %937

937:                                              ; preds = %935, %934
  %938 = phi i32 [ %936, %935 ], [ 0, %934 ]
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %966, label %940

940:                                              ; preds = %937
  %941 = load i32, ptr %913, align 8, !tbaa !188
  %942 = add i32 %941, -1
  store i32 %942, ptr %913, align 8, !tbaa !188
  %943 = zext i32 %942 to i64
  %944 = getelementptr inbounds %struct.VEC_tree_base, ptr %913, i64 0, i32 2, i64 %943
  %945 = load ptr, ptr %944, align 8, !tbaa !35
  %946 = add i32 %941, -2
  store i32 %946, ptr %913, align 8, !tbaa !188
  %947 = zext i32 %946 to i64
  %948 = getelementptr inbounds %struct.VEC_tree_base, ptr %913, i64 0, i32 2, i64 %947
  %949 = load ptr, ptr %948, align 8, !tbaa !35
  %950 = load i32, ptr %912, align 4, !tbaa !201
  %951 = add i32 %950, -1
  store i32 %951, ptr %912, align 4, !tbaa !201
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds %struct.VEC_source_location_base, ptr %912, i64 0, i32 2, i64 %952
  %954 = load i32, ptr %953, align 4, !tbaa !50
  %955 = call ptr @create_phi_node(ptr noundef %949, ptr noundef %844) #20
  %956 = load ptr, ptr %844, align 8, !tbaa !183
  %957 = icmp eq ptr %956, null
  br i1 %957, label %961, label %958

958:                                              ; preds = %940
  %959 = load i32, ptr %956, align 8, !tbaa !208
  %960 = icmp eq i32 %959, 1
  br i1 %960, label %962, label %961

961:                                              ; preds = %958, %940
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 655, ptr noundef nonnull @.str.1) #20
  br label %962

962:                                              ; preds = %961, %958
  %963 = load ptr, ptr %844, align 8, !tbaa !183
  %964 = getelementptr inbounds %struct.VEC_edge_base, ptr %963, i64 0, i32 2, i64 0
  %965 = load ptr, ptr %964, align 8, !tbaa !35
  call void @add_phi_arg(ptr noundef %955, ptr noundef %945, ptr noundef %965, i32 noundef %954) #20
  br label %934, !llvm.loop !211

966:                                              ; preds = %937
  call void @flush_pending_stmts(ptr noundef %926) #20
  br i1 %930, label %968, label %967

967:                                              ; preds = %966
  call void @free(ptr noundef %913)
  br label %968

968:                                              ; preds = %967, %966
  %969 = load ptr, ptr @cfun, align 8, !tbaa !35
  %970 = getelementptr inbounds %struct.function, ptr %969, i64 0, i32 1
  %971 = load ptr, ptr %970, align 8, !tbaa !180
  %972 = getelementptr inbounds %struct.control_flow_graph, ptr %971, i64 0, i32 1
  %973 = load ptr, ptr %972, align 8, !tbaa !196
  %974 = getelementptr inbounds %struct.basic_block_def, ptr %973, i64 0, i32 5
  %975 = load ptr, ptr %974, align 8, !tbaa !198
  %976 = call ptr @create_empty_bb(ptr noundef %975) #20
  %977 = load ptr, ptr @cfun, align 8, !tbaa !35
  %978 = getelementptr inbounds %struct.function, ptr %977, i64 0, i32 1
  %979 = load ptr, ptr %978, align 8, !tbaa !180
  %980 = getelementptr inbounds %struct.control_flow_graph, ptr %979, i64 0, i32 1
  %981 = load ptr, ptr %980, align 8, !tbaa !196
  %982 = getelementptr inbounds %struct.basic_block_def, ptr %981, i64 0, i32 5
  %983 = load ptr, ptr %982, align 8, !tbaa !198
  %984 = call ptr @create_empty_bb(ptr noundef %983) #20
  %985 = call ptr @make_edge(ptr noundef %852, ptr noundef %976, i32 noundef 1) #20
  %986 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !35
  %987 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %988 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %986, ptr noundef %987, ptr noundef null, ptr noundef null) #20
  %989 = getelementptr inbounds %struct.basic_block_def, ptr %976, i64 0, i32 13
  %990 = load i32, ptr %989, align 8, !tbaa !152, !noalias !212
  %991 = and i32 %990, 512
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %999

993:                                              ; preds = %968
  %994 = getelementptr inbounds %struct.basic_block_def, ptr %976, i64 0, i32 7
  %995 = load ptr, ptr %994, align 8, !tbaa !46, !noalias !212
  %996 = icmp eq ptr %995, null
  br i1 %996, label %999, label %997

997:                                              ; preds = %993
  %998 = load ptr, ptr %995, align 8, !tbaa !156, !noalias !212
  br label %999

999:                                              ; preds = %997, %993, %968
  %1000 = phi ptr [ %998, %997 ], [ null, %993 ], [ null, %968 ]
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1004, label %1002

1002:                                             ; preds = %999
  %1003 = load ptr, ptr %1000, align 8, !tbaa !158, !noalias !212
  br label %1004

1004:                                             ; preds = %1002, %999
  %1005 = phi ptr [ %1003, %1002 ], [ null, %999 ]
  store ptr %1005, ptr %6, align 8, !tbaa.struct !178
  store ptr %1000, ptr %914, align 8, !tbaa.struct !215
  %1006 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %976, ptr %1006, align 8, !tbaa.struct !216
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %988, i32 noundef 0) #20
  %1007 = call ptr @make_edge(ptr noundef %976, ptr noundef %842, i32 noundef 2048) #20
  %1008 = call ptr @make_edge(ptr noundef %976, ptr noundef %984, i32 noundef 1024) #20
  %1009 = call ptr @make_edge(ptr noundef %984, ptr noundef %852, i32 noundef 1) #20
  %1010 = getelementptr inbounds %struct.basic_block_def, ptr %842, i64 0, i32 3
  %1011 = load ptr, ptr %1010, align 8, !tbaa !150
  %1012 = call ptr @duplicate_loop(ptr noundef %0, ptr noundef %1011) #20
  %1013 = getelementptr inbounds %struct.loop, ptr %1012, i64 0, i32 2
  store ptr %852, ptr %1013, align 8, !tbaa !173
  %1014 = getelementptr inbounds %struct.loop, ptr %1012, i64 0, i32 3
  store ptr %984, ptr %1014, align 8, !tbaa !217
  call void @add_bb_to_loop(ptr noundef %984, ptr noundef %1012) #20
  call void @add_bb_to_loop(ptr noundef %976, ptr noundef %1012) #20
  call void @add_bb_to_loop(ptr noundef %852, ptr noundef %1012) #20
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %976, ptr noundef %852) #20
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %852, ptr noundef %844) #20
  %1015 = call ptr @single_exit(ptr noundef %0) #20
  %1016 = load ptr, ptr %1015, align 8, !tbaa !185
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %844, ptr noundef %1016) #20
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %984, ptr noundef %976) #20
  %1017 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %842) #20
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %842, ptr noundef %1017) #20
  %1018 = getelementptr inbounds %struct.VEC_tree_base, ptr %839, i64 0, i32 2, i64 0
  %1019 = load ptr, ptr %1018, align 8, !tbaa !35
  %1020 = getelementptr inbounds %struct.tree_common, ptr %1019, i64 0, i32 2
  %1021 = load ptr, ptr %1020, align 8, !tbaa !46
  %1022 = call ptr @create_tmp_var(ptr noundef %1021, ptr noundef nonnull @.str.36) #20
  store ptr %1022, ptr %9, align 8, !tbaa !35
  %1023 = call zeroext i8 @add_referenced_var(ptr noundef %1022) #20
  call void @standard_iv_increment_position(ptr noundef %1012, ptr noundef nonnull %6, ptr noundef nonnull %8) #20
  %1024 = getelementptr inbounds %struct.VEC_tree_base, ptr %836, i64 0, i32 2, i64 0
  %1025 = load ptr, ptr %1024, align 8, !tbaa !35
  %1026 = load ptr, ptr %1020, align 8, !tbaa !46
  %1027 = getelementptr inbounds %struct.VEC_int_base, ptr %837, i64 0, i32 2
  %1028 = load i32, ptr %1027, align 4, !tbaa !50
  %1029 = sext i32 %1028 to i64
  %1030 = call ptr @build_int_cst(ptr noundef %1026, i64 noundef %1029) #20
  %1031 = load ptr, ptr %9, align 8, !tbaa !35
  %1032 = load i8, ptr %8, align 1, !tbaa !46
  call void @create_iv(ptr noundef %1025, ptr noundef %1030, ptr noundef %1031, ptr noundef %1012, ptr noundef nonnull %6, i8 noundef zeroext %1032, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %1033 = call ptr @get_loop_exit_condition(ptr noundef %1012) #20
  %1034 = getelementptr inbounds %struct.VEC_tree_base, ptr %835, i64 0, i32 2, i64 0
  %1035 = load ptr, ptr %1034, align 8, !tbaa !35
  %1036 = getelementptr inbounds %struct.tree_common, ptr %1035, i64 0, i32 2
  %1037 = load ptr, ptr %1036, align 8, !tbaa !46
  %1038 = call ptr @create_tmp_var(ptr noundef %1037, ptr noundef nonnull @.str.37) #20
  %1039 = call zeroext i8 @add_referenced_var(ptr noundef %1038) #20
  %1040 = load ptr, ptr %1034, align 8, !tbaa !35
  %1041 = call ptr @gimple_build_assign_stat(ptr noundef %1038, ptr noundef %1040) #20
  %1042 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1043 = call ptr @make_ssa_name_fn(ptr noundef %1042, ptr noundef %1038, ptr noundef %1041) #20
  %1044 = load i32, ptr %1041, align 8
  %1045 = and i32 %1044, 255
  %1046 = add nsw i32 %1045, -10
  %1047 = icmp ult i32 %1046, -9
  br i1 %1047, label %1052, label %1048

1048:                                             ; preds = %1004
  %1049 = getelementptr inbounds %struct.gimple_statement_base, ptr %1041, i64 0, i32 3
  %1050 = load i32, ptr %1049, align 4, !tbaa !46
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1048, %1004
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %1053

1053:                                             ; preds = %1052, %1048
  %1054 = load i32, ptr %1041, align 8
  %1055 = and i32 %1054, 255
  %1056 = zext nneg i32 %1055 to i64
  %1057 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1056
  %1058 = load i32, ptr %1057, align 4, !tbaa !50
  %1059 = zext i32 %1058 to i64
  %1060 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1059
  %1061 = load i64, ptr %1060, align 8, !tbaa !143
  %1062 = icmp eq i64 %1061, 0
  br i1 %1062, label %1063, label %1064

1063:                                             ; preds = %1053
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %1064

1064:                                             ; preds = %1063, %1053
  %1065 = getelementptr inbounds i8, ptr %1041, i64 %1061
  store ptr %1043, ptr %1065, align 8, !tbaa !35
  %1066 = icmp eq ptr %1043, null
  br i1 %1066, label %1073, label %1067

1067:                                             ; preds = %1064
  %1068 = load i64, ptr %1043, align 8
  %1069 = and i64 %1068, 65535
  %1070 = icmp eq i64 %1069, 141
  br i1 %1070, label %1071, label %1073

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds %struct.tree_ssa_name, ptr %1043, i64 0, i32 2
  store ptr %1041, ptr %1072, align 8, !tbaa !46
  br label %1073

1073:                                             ; preds = %1071, %1067, %1064
  %1074 = load i8, ptr %8, align 1, !tbaa !46
  %1075 = icmp eq i8 %1074, 0
  br i1 %1075, label %1077, label %1076

1076:                                             ; preds = %1073
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef nonnull %1041, i32 noundef 1) #20
  br label %1078

1077:                                             ; preds = %1073
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef nonnull %1041, i32 noundef 1) #20
  br label %1078

1078:                                             ; preds = %1077, %1076
  %1079 = load i32, ptr %1041, align 8
  %1080 = and i32 %1079, 255
  %1081 = add nsw i32 %1080, -10
  %1082 = icmp ult i32 %1081, -9
  br i1 %1082, label %1084, label %1083

1083:                                             ; preds = %1078
  call void @gimple_set_modified(ptr noundef nonnull %1041, i8 noundef zeroext 1) #20
  call void @update_stmt_operands(ptr noundef nonnull %1041) #20
  br label %1084

1084:                                             ; preds = %1083, %1078
  %1085 = load ptr, ptr %10, align 8, !tbaa !35
  %1086 = load i32, ptr %1033, align 8
  %1087 = and i32 %1086, 65535
  %1088 = or disjoint i32 %1087, 6553600
  store i32 %1088, ptr %1033, align 8
  %1089 = and i32 %1086, 255
  %1090 = add nsw i32 %1089, -10
  %1091 = icmp ult i32 %1090, -9
  br i1 %1091, label %1096, label %1092

1092:                                             ; preds = %1084
  %1093 = getelementptr inbounds %struct.gimple_statement_base, ptr %1033, i64 0, i32 3
  %1094 = load i32, ptr %1093, align 4, !tbaa !46
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1092, %1084
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %1097

1097:                                             ; preds = %1096, %1092
  %1098 = load i32, ptr %1033, align 8
  %1099 = and i32 %1098, 255
  %1100 = zext nneg i32 %1099 to i64
  %1101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1100
  %1102 = load i32, ptr %1101, align 4, !tbaa !50
  %1103 = zext i32 %1102 to i64
  %1104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1103
  %1105 = load i64, ptr %1104, align 8, !tbaa !143
  %1106 = icmp eq i64 %1105, 0
  br i1 %1106, label %1107, label %1108

1107:                                             ; preds = %1097
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %1108

1108:                                             ; preds = %1107, %1097
  %1109 = getelementptr inbounds i8, ptr %1033, i64 %1105
  store ptr %1043, ptr %1109, align 8, !tbaa !35
  %1110 = load i32, ptr %1033, align 8
  %1111 = and i32 %1110, 255
  %1112 = add nsw i32 %1111, -10
  %1113 = icmp ult i32 %1112, -9
  br i1 %1113, label %1118, label %1114

1114:                                             ; preds = %1108
  %1115 = getelementptr inbounds %struct.gimple_statement_base, ptr %1033, i64 0, i32 3
  %1116 = load i32, ptr %1115, align 4, !tbaa !46
  %1117 = icmp ugt i32 %1116, 1
  br i1 %1117, label %1119, label %1118

1118:                                             ; preds = %1114, %1108
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %1119

1119:                                             ; preds = %1118, %1114
  %1120 = load i32, ptr %1033, align 8
  %1121 = and i32 %1120, 255
  %1122 = zext nneg i32 %1121 to i64
  %1123 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1122
  %1124 = load i32, ptr %1123, align 4, !tbaa !50
  %1125 = zext i32 %1124 to i64
  %1126 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1125
  %1127 = load i64, ptr %1126, align 8, !tbaa !143
  %1128 = icmp eq i64 %1127, 0
  br i1 %1128, label %1129, label %1130

1129:                                             ; preds = %1119
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %1130

1130:                                             ; preds = %1129, %1119
  %1131 = getelementptr inbounds i8, ptr %1033, i64 %1127
  %1132 = getelementptr inbounds ptr, ptr %1131, i64 1
  store ptr %1085, ptr %1132, align 8, !tbaa !35
  %1133 = load i32, ptr %1033, align 8
  %1134 = and i32 %1133, 255
  %1135 = add nsw i32 %1134, -10
  %1136 = icmp ult i32 %1135, -9
  br i1 %1136, label %1138, label %1137

1137:                                             ; preds = %1130
  call void @gimple_set_modified(ptr noundef nonnull %1033, i8 noundef zeroext 1) #20
  call void @update_stmt_operands(ptr noundef nonnull %1033) #20
  br label %1138

1138:                                             ; preds = %1137, %1130
  %1139 = call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  %1140 = call ptr @get_loop_body_in_dom_order(ptr noundef %0) #20
  %1141 = load ptr, ptr %1018, align 8, !tbaa !35
  %1142 = load i32, ptr %989, align 8, !tbaa !152, !noalias !218
  %1143 = and i32 %1142, 512
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1151

1145:                                             ; preds = %1138
  %1146 = getelementptr inbounds %struct.basic_block_def, ptr %976, i64 0, i32 7
  %1147 = load ptr, ptr %1146, align 8, !tbaa !46, !noalias !218
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1151, label %1149

1149:                                             ; preds = %1145
  %1150 = load ptr, ptr %1147, align 8, !tbaa !156, !noalias !218
  br label %1151

1151:                                             ; preds = %1149, %1145, %1138
  %1152 = phi ptr [ %1150, %1149 ], [ null, %1145 ], [ null, %1138 ]
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1156, label %1154

1154:                                             ; preds = %1151
  %1155 = load ptr, ptr %1152, align 8, !tbaa !158, !noalias !218
  br label %1156

1156:                                             ; preds = %1154, %1151
  %1157 = phi ptr [ %1155, %1154 ], [ null, %1151 ]
  store ptr %1157, ptr %7, align 8, !tbaa.struct !178
  %1158 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %1152, ptr %1158, align 8, !tbaa.struct !215
  %1159 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr %976, ptr %1159, align 8, !tbaa.struct !216
  %1160 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %1161 = load i32, ptr %1160, align 4, !tbaa !149
  %1162 = add i32 %1161, -1
  %1163 = icmp sgt i32 %1162, -1
  br i1 %1163, label %1164, label %1609

1164:                                             ; preds = %1156
  %1165 = getelementptr inbounds %struct.basic_block_def, ptr %976, i64 0, i32 7
  %1166 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %13, i64 0, i32 1
  %1167 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %13, i64 0, i32 2
  %1168 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %1169 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %14, i64 0, i32 1
  %1170 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %14, i64 0, i32 2
  %1171 = getelementptr inbounds %struct.tree_map, ptr %5, i64 0, i32 1
  %1172 = zext nneg i32 %1162 to i64
  br label %1173

1173:                                             ; preds = %1164, %1606
  %1174 = phi i64 [ %1172, %1164 ], [ %1607, %1606 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %1175 = load i32, ptr %989, align 8, !tbaa !152, !noalias !221
  %1176 = and i32 %1175, 512
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1178, label %1183

1178:                                             ; preds = %1173
  %1179 = load ptr, ptr %1165, align 8, !tbaa !46, !noalias !221
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1183, label %1181

1181:                                             ; preds = %1178
  %1182 = load ptr, ptr %1179, align 8, !tbaa !156, !noalias !221
  br label %1183

1183:                                             ; preds = %1181, %1178, %1173
  %1184 = phi ptr [ %1182, %1181 ], [ null, %1178 ], [ null, %1173 ]
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1189, label %1186

1186:                                             ; preds = %1183
  %1187 = getelementptr inbounds %struct.gimple_seq_d, ptr %1184, i64 0, i32 1
  %1188 = load ptr, ptr %1187, align 8, !tbaa !224, !noalias !221
  br label %1189

1189:                                             ; preds = %1186, %1183
  %1190 = phi ptr [ %1188, %1186 ], [ null, %1183 ]
  store ptr %1190, ptr %13, align 8, !tbaa !204, !alias.scope !221
  store ptr %1184, ptr %1166, align 8, !tbaa !225, !alias.scope !221
  store ptr %976, ptr %1167, align 8, !tbaa !226, !alias.scope !221
  %1191 = getelementptr inbounds ptr, ptr %1140, i64 %1174
  %1192 = load ptr, ptr %1191, align 8, !tbaa !35
  %1193 = getelementptr inbounds %struct.basic_block_def, ptr %1192, i64 0, i32 3
  %1194 = load ptr, ptr %1193, align 8, !tbaa !150
  %1195 = icmp eq ptr %1194, %0
  br i1 %1195, label %1196, label %1606

1196:                                             ; preds = %1189
  %1197 = load ptr, ptr %1168, align 8, !tbaa !144
  %1198 = getelementptr inbounds %struct.loop, ptr %1197, i64 0, i32 2
  %1199 = load ptr, ptr %1198, align 8, !tbaa !173
  %1200 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1199, ptr noundef %1192) #20
  %1201 = icmp eq i8 %1200, 0
  br i1 %1201, label %1280, label %1202

1202:                                             ; preds = %1196
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #20
  %1203 = load ptr, ptr %1168, align 8, !tbaa !144
  %1204 = getelementptr inbounds %struct.loop, ptr %1203, i64 0, i32 2
  %1205 = load ptr, ptr %1204, align 8, !tbaa !173
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %1206 = getelementptr inbounds %struct.basic_block_def, ptr %1205, i64 0, i32 13
  %1207 = load i32, ptr %1206, align 8, !tbaa !152, !noalias !233
  %1208 = and i32 %1207, 512
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1210, label %1216

1210:                                             ; preds = %1202
  %1211 = getelementptr inbounds %struct.basic_block_def, ptr %1205, i64 0, i32 7
  %1212 = load ptr, ptr %1211, align 8, !tbaa !46, !noalias !233
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1216, label %1214

1214:                                             ; preds = %1210
  %1215 = load ptr, ptr %1212, align 8, !tbaa !156, !noalias !233
  br label %1216

1216:                                             ; preds = %1214, %1210, %1202
  %1217 = phi ptr [ %1215, %1214 ], [ null, %1210 ], [ null, %1202 ]
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1221, label %1219

1219:                                             ; preds = %1216
  %1220 = load ptr, ptr %1217, align 8, !tbaa !158, !noalias !233
  br label %1221

1221:                                             ; preds = %1219, %1216
  %1222 = phi ptr [ %1220, %1219 ], [ null, %1216 ]
  store ptr %1222, ptr %14, align 8, !tbaa !204, !alias.scope !233
  store ptr %1217, ptr %1169, align 8, !tbaa !225, !alias.scope !233
  store ptr %1205, ptr %1170, align 8, !tbaa !226, !alias.scope !233
  %1223 = icmp eq ptr %1222, null
  br i1 %1223, label %1234, label %1224

1224:                                             ; preds = %1221, %1230
  %1225 = phi ptr [ %1232, %1230 ], [ %1222, %1221 ]
  %1226 = load ptr, ptr %1225, align 8, !tbaa !160, !noalias !227
  %1227 = load i32, ptr %1226, align 8, !noalias !227
  %1228 = and i32 %1227, 255
  %1229 = icmp eq i32 %1228, 4
  br i1 %1229, label %1230, label %1234

1230:                                             ; preds = %1224
  %1231 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1225, i64 0, i32 2
  %1232 = load ptr, ptr %1231, align 8, !tbaa !175, !noalias !227
  store ptr %1232, ptr %14, align 8, !tbaa !204, !alias.scope !227
  %1233 = icmp eq ptr %1232, null
  br i1 %1233, label %1234, label %1224, !llvm.loop !234

1234:                                             ; preds = %1230, %1224, %1221
  %1235 = load ptr, ptr %1191, align 8, !tbaa !35
  %1236 = getelementptr inbounds %struct.basic_block_def, ptr %1235, i64 0, i32 13
  %1237 = load i32, ptr %1236, align 8, !tbaa !152, !noalias !235
  %1238 = and i32 %1237, 512
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1240, label %1246

1240:                                             ; preds = %1234
  %1241 = getelementptr inbounds %struct.basic_block_def, ptr %1235, i64 0, i32 7
  %1242 = load ptr, ptr %1241, align 8, !tbaa !46, !noalias !235
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1246, label %1244

1244:                                             ; preds = %1240
  %1245 = load ptr, ptr %1242, align 8, !tbaa !156, !noalias !235
  br label %1246

1246:                                             ; preds = %1244, %1240, %1234
  %1247 = phi ptr [ %1245, %1244 ], [ null, %1240 ], [ null, %1234 ]
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1251, label %1249

1249:                                             ; preds = %1246
  %1250 = load ptr, ptr %1247, align 8, !tbaa !158, !noalias !235
  br label %1251

1251:                                             ; preds = %1249, %1246
  %1252 = phi ptr [ %1250, %1249 ], [ null, %1246 ]
  store ptr %1252, ptr %6, align 8, !tbaa.struct !178
  store ptr %1247, ptr %914, align 8, !tbaa.struct !215
  store ptr %1235, ptr %1006, align 8, !tbaa.struct !216
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %1279, label %1254

1254:                                             ; preds = %1251, %1276
  %1255 = phi ptr [ %1277, %1276 ], [ %1252, %1251 ]
  %1256 = load ptr, ptr %1255, align 8, !tbaa !160
  %1257 = icmp eq ptr %1256, %1033
  br i1 %1257, label %1271, label %1258

1258:                                             ; preds = %1254
  %1259 = load i32, ptr %1256, align 8
  %1260 = trunc i32 %1259 to i8
  switch i8 %1260, label %1261 [
    i8 4, label %1265
    i8 3, label %1265
    i8 1, label %1265
  ]

1261:                                             ; preds = %1258
  %1262 = and i32 %1259, 255
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  br label %1265

1265:                                             ; preds = %1258, %1258, %1261, %1258
  %1266 = phi i8 [ %1264, %1261 ], [ 1, %1258 ], [ 1, %1258 ], [ 1, %1258 ]
  %1267 = icmp eq i8 %1266, 0
  br i1 %1267, label %1268, label %1271

1268:                                             ; preds = %1265
  %1269 = call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr noundef nonnull %1256), !range !110
  %1270 = icmp eq i8 %1269, 0
  br i1 %1270, label %1275, label %1271

1271:                                             ; preds = %1268, %1265, %1254
  %1272 = load ptr, ptr %6, align 8, !tbaa !204
  %1273 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1272, i64 0, i32 2
  %1274 = load ptr, ptr %1273, align 8, !tbaa !175
  store ptr %1274, ptr %6, align 8, !tbaa !204
  br label %1276, !llvm.loop !238

1275:                                             ; preds = %1268
  call void @gsi_move_before(ptr noundef nonnull %6, ptr noundef nonnull %14) #20
  br label %1276

1276:                                             ; preds = %1275, %1271
  %1277 = load ptr, ptr %6, align 8
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1279, label %1254

1279:                                             ; preds = %1276, %1251
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #20
  br label %1606

1280:                                             ; preds = %1196
  %1281 = load ptr, ptr %1191, align 8, !tbaa !35
  %1282 = getelementptr inbounds %struct.basic_block_def, ptr %1281, i64 0, i32 13
  %1283 = load i32, ptr %1282, align 8, !tbaa !152, !noalias !239
  %1284 = and i32 %1283, 512
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1286, label %1292

1286:                                             ; preds = %1280
  %1287 = getelementptr inbounds %struct.basic_block_def, ptr %1281, i64 0, i32 7
  %1288 = load ptr, ptr %1287, align 8, !tbaa !46, !noalias !239
  %1289 = icmp eq ptr %1288, null
  br i1 %1289, label %1292, label %1290

1290:                                             ; preds = %1286
  %1291 = load ptr, ptr %1288, align 8, !tbaa !156, !noalias !239
  br label %1292

1292:                                             ; preds = %1290, %1286, %1280
  %1293 = phi ptr [ %1291, %1290 ], [ null, %1286 ], [ null, %1280 ]
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1297, label %1295

1295:                                             ; preds = %1292
  %1296 = load ptr, ptr %1293, align 8, !tbaa !158, !noalias !239
  br label %1297

1297:                                             ; preds = %1295, %1292
  %1298 = phi ptr [ %1296, %1295 ], [ null, %1292 ]
  store ptr %1298, ptr %6, align 8, !tbaa.struct !178
  store ptr %1293, ptr %914, align 8, !tbaa.struct !215
  store ptr %1281, ptr %1006, align 8, !tbaa.struct !216
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1606, label %1300

1300:                                             ; preds = %1297, %1603
  %1301 = phi ptr [ %1604, %1603 ], [ %1298, %1297 ]
  %1302 = load ptr, ptr %1301, align 8, !tbaa !160
  %1303 = icmp eq ptr %1302, %1033
  br i1 %1303, label %1317, label %1304

1304:                                             ; preds = %1300
  %1305 = load i32, ptr %1302, align 8
  %1306 = trunc i32 %1305 to i8
  switch i8 %1306, label %1307 [
    i8 4, label %1311
    i8 3, label %1311
    i8 1, label %1311
  ]

1307:                                             ; preds = %1304
  %1308 = and i32 %1305, 255
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  br label %1311

1311:                                             ; preds = %1304, %1304, %1307, %1304
  %1312 = phi i8 [ %1310, %1307 ], [ 1, %1304 ], [ 1, %1304 ], [ 1, %1304 ]
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1314, label %1317

1314:                                             ; preds = %1311
  %1315 = call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr noundef nonnull %1302), !range !110
  %1316 = icmp eq i8 %1315, 0
  br i1 %1316, label %1321, label %1317

1317:                                             ; preds = %1314, %1311, %1300
  %1318 = load ptr, ptr %6, align 8, !tbaa !204
  %1319 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1318, i64 0, i32 2
  %1320 = load ptr, ptr %1319, align 8, !tbaa !175
  store ptr %1320, ptr %6, align 8, !tbaa !204
  br label %1603, !llvm.loop !242

1321:                                             ; preds = %1314
  %1322 = load i32, ptr %1027, align 4, !tbaa !50
  %1323 = load ptr, ptr %9, align 8, !tbaa !35
  %1324 = load ptr, ptr %1024, align 8, !tbaa !35
  %1325 = load i32, ptr %1302, align 8
  %1326 = and i32 %1325, 255
  %1327 = add nsw i32 %1326, -10
  %1328 = icmp ult i32 %1327, -9
  br i1 %1328, label %1332, label %1329

1329:                                             ; preds = %1321
  %1330 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1302, i64 0, i32 2
  %1331 = load ptr, ptr %1330, align 8, !tbaa !46
  br label %1332

1332:                                             ; preds = %1329, %1321
  %1333 = phi ptr [ %1331, %1329 ], [ null, %1321 ]
  %1334 = icmp eq ptr %1333, null
  br i1 %1334, label %1345, label %1335

1335:                                             ; preds = %1332
  %1336 = and i32 %1325, 254
  %1337 = add nsw i32 %1336, -10
  %1338 = icmp ult i32 %1337, -4
  br i1 %1338, label %1345, label %1339

1339:                                             ; preds = %1335
  %1340 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1302, i64 0, i32 2
  %1341 = load ptr, ptr %1340, align 8, !tbaa !46
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1345, label %1343

1343:                                             ; preds = %1339
  %1344 = load ptr, ptr %1333, align 8, !tbaa !165
  br label %1345

1345:                                             ; preds = %1343, %1339, %1335, %1332
  %1346 = phi ptr [ %1333, %1332 ], [ %1333, %1335 ], [ %1333, %1339 ], [ %1344, %1343 ]
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1351, label %1348

1348:                                             ; preds = %1345
  %1349 = getelementptr inbounds %struct.use_optype_d, ptr %1346, i64 0, i32 1
  %1350 = load ptr, ptr %1346, align 8, !tbaa !165
  br label %1351

1351:                                             ; preds = %1348, %1345
  %1352 = phi ptr [ %1350, %1348 ], [ %1346, %1345 ]
  %1353 = phi i8 [ 0, %1348 ], [ 1, %1345 ]
  %1354 = phi ptr [ %1349, %1348 ], [ null, %1345 ]
  br i1 %1347, label %1579, label %1355

1355:                                             ; preds = %1351
  %1356 = sext i32 %1322 to i64
  %1357 = icmp eq ptr %1323, null
  %1358 = getelementptr inbounds %struct.tree_ssa_name, ptr %1323, i64 0, i32 5
  %1359 = getelementptr inbounds %struct.tree_ssa_name, ptr %1323, i64 0, i32 5, i32 1
  br label %1360

1360:                                             ; preds = %1355, %1574
  %1361 = phi ptr [ %1354, %1355 ], [ %1577, %1574 ]
  %1362 = phi i8 [ %1353, %1355 ], [ %1576, %1574 ]
  %1363 = phi ptr [ %1352, %1355 ], [ %1575, %1574 ]
  %1364 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 3
  %1365 = load ptr, ptr %1364, align 8, !tbaa !167
  %1366 = load ptr, ptr %1365, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %1367 = icmp eq ptr %1366, %1141
  br i1 %1367, label %1368, label %1387

1368:                                             ; preds = %1360
  %1369 = load ptr, ptr %1361, align 8, !tbaa !243
  %1370 = icmp eq ptr %1369, null
  br i1 %1370, label %1376, label %1371

1371:                                             ; preds = %1368
  %1372 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  %1373 = load ptr, ptr %1372, align 8, !tbaa !162
  %1374 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1369, i64 0, i32 1
  store ptr %1373, ptr %1374, align 8, !tbaa !162
  %1375 = load ptr, ptr %1372, align 8, !tbaa !162
  store ptr %1369, ptr %1375, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1361, i8 0, i64 16, i1 false)
  br label %1376

1376:                                             ; preds = %1371, %1368
  %1377 = load ptr, ptr %1364, align 8, !tbaa !167
  store ptr %1323, ptr %1377, align 8, !tbaa !35
  br i1 %1357, label %1382, label %1378

1378:                                             ; preds = %1376
  %1379 = load i64, ptr %1323, align 8
  %1380 = and i64 %1379, 65535
  %1381 = icmp eq i64 %1380, 141
  br i1 %1381, label %1383, label %1382

1382:                                             ; preds = %1378, %1376
  store ptr null, ptr %1361, align 8, !tbaa !243
  br label %1569

1383:                                             ; preds = %1378
  store ptr %1358, ptr %1361, align 8, !tbaa !243
  %1384 = load ptr, ptr %1359, align 8, !tbaa !162
  %1385 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  store ptr %1384, ptr %1385, align 8, !tbaa !162
  %1386 = load ptr, ptr %1359, align 8, !tbaa !162
  store ptr %1361, ptr %1386, align 8, !tbaa !243
  store ptr %1361, ptr %1359, align 8, !tbaa !162
  br label %1569

1387:                                             ; preds = %1360
  %1388 = call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %1366) #20
  %1389 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %1390 = icmp eq ptr %1389, null
  br i1 %1390, label %1391, label %1395

1391:                                             ; preds = %1387
  %1392 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1393 = getelementptr inbounds %struct.function, ptr %1392, i64 0, i32 1
  %1394 = load ptr, ptr %1393, align 8, !tbaa !180
  br label %1395

1395:                                             ; preds = %1391, %1387
  %1396 = phi ptr [ %1394, %1391 ], [ %1389, %1387 ]
  %1397 = load ptr, ptr %1396, align 8, !tbaa !35
  %1398 = call ptr @instantiate_scev(ptr noundef %1397, ptr noundef %0, ptr noundef %1388) #20
  %1399 = icmp eq ptr %1398, null
  %1400 = load ptr, ptr @chrec_dont_know, align 8
  %1401 = icmp eq ptr %1398, %1400
  %1402 = select i1 %1399, i1 true, i1 %1401
  br i1 %1402, label %1569, label %1403

1403:                                             ; preds = %1395
  %1404 = load i32, ptr %0, align 8, !tbaa !182
  %1405 = call ptr @evolution_part_in_loop_num(ptr noundef nonnull %1398, i32 noundef %1404) #20
  %1406 = icmp eq ptr %1405, null
  %1407 = load ptr, ptr @chrec_dont_know, align 8
  %1408 = icmp eq ptr %1405, %1407
  %1409 = select i1 %1406, i1 true, i1 %1408
  br i1 %1409, label %1569, label %1410

1410:                                             ; preds = %1403
  %1411 = load i64, ptr %1405, align 8
  %1412 = and i64 %1411, 65535
  %1413 = icmp eq i64 %1412, 23
  br i1 %1413, label %1414, label %1569

1414:                                             ; preds = %1410
  %1415 = call i64 @int_cst_value(ptr noundef nonnull %1405) #20
  %1416 = icmp eq i64 %1415, %1356
  br i1 %1416, label %1417, label %1569

1417:                                             ; preds = %1414
  %1418 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %1419 = call i32 %1418(ptr noundef %1366) #20
  store i32 %1419, ptr %1171, align 8, !tbaa !244
  store ptr %1366, ptr %5, align 8, !tbaa !247
  %1420 = call ptr @htab_find_with_hash(ptr noundef %1139, ptr noundef nonnull %5, i32 noundef %1419) #20
  %1421 = icmp eq ptr %1420, null
  br i1 %1421, label %1446, label %1422

1422:                                             ; preds = %1417
  %1423 = getelementptr inbounds %struct.tree_map, ptr %1420, i64 0, i32 2
  %1424 = load ptr, ptr %1423, align 8, !tbaa !248
  %1425 = load ptr, ptr %1361, align 8, !tbaa !243
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1432, label %1427

1427:                                             ; preds = %1422
  %1428 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  %1429 = load ptr, ptr %1428, align 8, !tbaa !162
  %1430 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1425, i64 0, i32 1
  store ptr %1429, ptr %1430, align 8, !tbaa !162
  %1431 = load ptr, ptr %1428, align 8, !tbaa !162
  store ptr %1425, ptr %1431, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1361, i8 0, i64 16, i1 false)
  br label %1432

1432:                                             ; preds = %1427, %1422
  %1433 = load ptr, ptr %1364, align 8, !tbaa !167
  store ptr %1424, ptr %1433, align 8, !tbaa !35
  %1434 = icmp eq ptr %1424, null
  br i1 %1434, label %1439, label %1435

1435:                                             ; preds = %1432
  %1436 = load i64, ptr %1424, align 8
  %1437 = and i64 %1436, 65535
  %1438 = icmp eq i64 %1437, 141
  br i1 %1438, label %1440, label %1439

1439:                                             ; preds = %1435, %1432
  store ptr null, ptr %1361, align 8, !tbaa !243
  br label %1569

1440:                                             ; preds = %1435
  %1441 = getelementptr inbounds %struct.tree_ssa_name, ptr %1424, i64 0, i32 5
  store ptr %1441, ptr %1361, align 8, !tbaa !243
  %1442 = getelementptr inbounds %struct.tree_ssa_name, ptr %1424, i64 0, i32 5, i32 1
  %1443 = load ptr, ptr %1442, align 8, !tbaa !162
  %1444 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  store ptr %1443, ptr %1444, align 8, !tbaa !162
  %1445 = load ptr, ptr %1442, align 8, !tbaa !162
  store ptr %1361, ptr %1445, align 8, !tbaa !243
  store ptr %1361, ptr %1442, align 8, !tbaa !162
  br label %1569

1446:                                             ; preds = %1417
  %1447 = getelementptr inbounds %struct.tree_common, ptr %1323, i64 0, i32 2
  %1448 = load i32, ptr %0, align 8, !tbaa !182
  %1449 = call ptr @initial_condition_in_loop_num(ptr noundef nonnull %1398, i32 noundef %1448) #20
  %1450 = icmp eq ptr %1449, null
  %1451 = load ptr, ptr @chrec_dont_know, align 8
  %1452 = icmp eq ptr %1449, %1451
  %1453 = select i1 %1450, i1 true, i1 %1452
  br i1 %1453, label %1454, label %1455

1454:                                             ; preds = %1446
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2083, ptr noundef nonnull @.str.1) #20
  br label %1455

1455:                                             ; preds = %1454, %1446
  %1456 = getelementptr inbounds %struct.tree_common, ptr %1366, i64 0, i32 2
  %1457 = load ptr, ptr %1456, align 8, !tbaa !46
  %1458 = load ptr, ptr %1447, align 8, !tbaa !46
  %1459 = icmp eq ptr %1457, %1458
  br i1 %1459, label %1460, label %1487

1460:                                             ; preds = %1455
  %1461 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %1458, ptr noundef %1449, ptr noundef %1324) #20
  %1462 = load ptr, ptr %1447, align 8, !tbaa !46
  %1463 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1462, ptr noundef %1323, ptr noundef %1461) #20
  %1464 = icmp eq ptr %1463, %1323
  br i1 %1464, label %1465, label %1493

1465:                                             ; preds = %1460
  %1466 = load ptr, ptr %1361, align 8, !tbaa !243
  %1467 = icmp eq ptr %1466, null
  br i1 %1467, label %1473, label %1468

1468:                                             ; preds = %1465
  %1469 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  %1470 = load ptr, ptr %1469, align 8, !tbaa !162
  %1471 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1466, i64 0, i32 1
  store ptr %1470, ptr %1471, align 8, !tbaa !162
  %1472 = load ptr, ptr %1469, align 8, !tbaa !162
  store ptr %1466, ptr %1472, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1361, i8 0, i64 16, i1 false)
  br label %1473

1473:                                             ; preds = %1468, %1465
  %1474 = icmp eq ptr %1323, null
  %1475 = load ptr, ptr %1364, align 8, !tbaa !167
  store ptr %1323, ptr %1475, align 8, !tbaa !35
  br i1 %1474, label %1480, label %1476

1476:                                             ; preds = %1473
  %1477 = load i64, ptr %1323, align 8
  %1478 = and i64 %1477, 65535
  %1479 = icmp eq i64 %1478, 141
  br i1 %1479, label %1481, label %1480

1480:                                             ; preds = %1476, %1473
  store ptr null, ptr %1361, align 8, !tbaa !243
  br label %1569

1481:                                             ; preds = %1476
  %1482 = getelementptr inbounds %struct.tree_ssa_name, ptr %1323, i64 0, i32 5
  %1483 = getelementptr inbounds %struct.tree_ssa_name, ptr %1323, i64 0, i32 5, i32 1
  store ptr %1482, ptr %1361, align 8, !tbaa !243
  %1484 = load ptr, ptr %1483, align 8, !tbaa !162
  %1485 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  store ptr %1484, ptr %1485, align 8, !tbaa !162
  %1486 = load ptr, ptr %1483, align 8, !tbaa !162
  store ptr %1361, ptr %1486, align 8, !tbaa !243
  store ptr %1361, ptr %1483, align 8, !tbaa !162
  br label %1569

1487:                                             ; preds = %1455
  %1488 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %1458, ptr noundef %1323, ptr noundef %1324) #20
  %1489 = load ptr, ptr %1456, align 8, !tbaa !46
  %1490 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1489, ptr noundef %1488) #20
  %1491 = load ptr, ptr %1456, align 8, !tbaa !46
  %1492 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1491, ptr noundef %1490, ptr noundef %1449) #20
  br label %1493

1493:                                             ; preds = %1487, %1460
  %1494 = phi ptr [ %1463, %1460 ], [ %1492, %1487 ]
  %1495 = load ptr, ptr %1456, align 8, !tbaa !46
  %1496 = call ptr @create_tmp_var(ptr noundef %1495, ptr noundef nonnull @.str.39) #20
  %1497 = call zeroext i8 @add_referenced_var(ptr noundef %1496) #20
  %1498 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %1494, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #20
  %1499 = call ptr @gimple_build_assign_stat(ptr noundef %1496, ptr noundef %1498) #20
  %1500 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1501 = call ptr @make_ssa_name_fn(ptr noundef %1500, ptr noundef %1496, ptr noundef %1499) #20
  %1502 = load i32, ptr %1499, align 8
  %1503 = and i32 %1502, 255
  %1504 = add nsw i32 %1503, -10
  %1505 = icmp ult i32 %1504, -9
  br i1 %1505, label %1510, label %1506

1506:                                             ; preds = %1493
  %1507 = getelementptr inbounds %struct.gimple_statement_base, ptr %1499, i64 0, i32 3
  %1508 = load i32, ptr %1507, align 4, !tbaa !46
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1510, label %1511

1510:                                             ; preds = %1506, %1493
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %1511

1511:                                             ; preds = %1510, %1506
  %1512 = load i32, ptr %1499, align 8
  %1513 = and i32 %1512, 255
  %1514 = zext nneg i32 %1513 to i64
  %1515 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1514
  %1516 = load i32, ptr %1515, align 4, !tbaa !50
  %1517 = zext i32 %1516 to i64
  %1518 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1517
  %1519 = load i64, ptr %1518, align 8, !tbaa !143
  %1520 = icmp eq i64 %1519, 0
  br i1 %1520, label %1521, label %1522

1521:                                             ; preds = %1511
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %1522

1522:                                             ; preds = %1521, %1511
  %1523 = getelementptr inbounds i8, ptr %1499, i64 %1519
  store ptr %1501, ptr %1523, align 8, !tbaa !35
  %1524 = icmp eq ptr %1501, null
  br i1 %1524, label %1531, label %1525

1525:                                             ; preds = %1522
  %1526 = load i64, ptr %1501, align 8
  %1527 = and i64 %1526, 65535
  %1528 = icmp eq i64 %1527, 141
  br i1 %1528, label %1529, label %1531

1529:                                             ; preds = %1525
  %1530 = getelementptr inbounds %struct.tree_ssa_name, ptr %1501, i64 0, i32 2
  store ptr %1499, ptr %1530, align 8, !tbaa !46
  br label %1531

1531:                                             ; preds = %1529, %1525, %1522
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef nonnull %1499, i32 noundef 1) #20
  %1532 = load i32, ptr %1499, align 8
  %1533 = and i32 %1532, 255
  %1534 = add nsw i32 %1533, -10
  %1535 = icmp ult i32 %1534, -9
  br i1 %1535, label %1537, label %1536

1536:                                             ; preds = %1531
  call void @gimple_set_modified(ptr noundef nonnull %1499, i8 noundef zeroext 1) #20
  call void @update_stmt_operands(ptr noundef nonnull %1499) #20
  br label %1537

1537:                                             ; preds = %1536, %1531
  %1538 = load ptr, ptr %1361, align 8, !tbaa !243
  %1539 = icmp eq ptr %1538, null
  br i1 %1539, label %1545, label %1540

1540:                                             ; preds = %1537
  %1541 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  %1542 = load ptr, ptr %1541, align 8, !tbaa !162
  %1543 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1538, i64 0, i32 1
  store ptr %1542, ptr %1543, align 8, !tbaa !162
  %1544 = load ptr, ptr %1541, align 8, !tbaa !162
  store ptr %1538, ptr %1544, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1361, i8 0, i64 16, i1 false)
  br label %1545

1545:                                             ; preds = %1540, %1537
  %1546 = load ptr, ptr %1364, align 8, !tbaa !167
  store ptr %1501, ptr %1546, align 8, !tbaa !35
  br i1 %1524, label %1551, label %1547

1547:                                             ; preds = %1545
  %1548 = load i64, ptr %1501, align 8
  %1549 = and i64 %1548, 65535
  %1550 = icmp eq i64 %1549, 141
  br i1 %1550, label %1552, label %1551

1551:                                             ; preds = %1547, %1545
  store ptr null, ptr %1361, align 8, !tbaa !243
  br label %1558

1552:                                             ; preds = %1547
  %1553 = getelementptr inbounds %struct.tree_ssa_name, ptr %1501, i64 0, i32 5
  store ptr %1553, ptr %1361, align 8, !tbaa !243
  %1554 = getelementptr inbounds %struct.tree_ssa_name, ptr %1501, i64 0, i32 5, i32 1
  %1555 = load ptr, ptr %1554, align 8, !tbaa !162
  %1556 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1361, i64 0, i32 1
  store ptr %1555, ptr %1556, align 8, !tbaa !162
  %1557 = load ptr, ptr %1554, align 8, !tbaa !162
  store ptr %1361, ptr %1557, align 8, !tbaa !243
  store ptr %1361, ptr %1554, align 8, !tbaa !162
  br label %1558

1558:                                             ; preds = %1552, %1551
  %1559 = call ptr @ggc_alloc_stat(i64 noundef 24) #20
  %1560 = load i32, ptr %1171, align 8, !tbaa !244
  %1561 = getelementptr inbounds %struct.tree_map, ptr %1559, i64 0, i32 1
  store i32 %1560, ptr %1561, align 8, !tbaa !244
  store ptr %1366, ptr %1559, align 8, !tbaa !247
  %1562 = getelementptr inbounds %struct.tree_map, ptr %1559, i64 0, i32 2
  store ptr %1501, ptr %1562, align 8, !tbaa !248
  %1563 = load i32, ptr %1171, align 8, !tbaa !244
  %1564 = call ptr @htab_find_slot_with_hash(ptr noundef %1139, ptr noundef nonnull %1559, i32 noundef %1563, i32 noundef 1) #20
  %1565 = load ptr, ptr %1564, align 8, !tbaa !35
  %1566 = icmp eq ptr %1565, null
  br i1 %1566, label %1568, label %1567

1567:                                             ; preds = %1558
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2121, ptr noundef nonnull @.str.1) #20
  br label %1568

1568:                                             ; preds = %1567, %1558
  store ptr %1559, ptr %1564, align 8, !tbaa !35
  br label %1569

1569:                                             ; preds = %1568, %1481, %1480, %1440, %1439, %1414, %1410, %1403, %1395, %1383, %1382
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  %1570 = icmp eq ptr %1363, null
  br i1 %1570, label %1574, label %1571

1571:                                             ; preds = %1569
  %1572 = getelementptr inbounds %struct.use_optype_d, ptr %1363, i64 0, i32 1
  %1573 = load ptr, ptr %1363, align 8, !tbaa !165
  br label %1574

1574:                                             ; preds = %1569, %1571
  %1575 = phi ptr [ %1573, %1571 ], [ %1363, %1569 ]
  %1576 = phi i8 [ %1362, %1571 ], [ 1, %1569 ]
  %1577 = phi ptr [ %1572, %1571 ], [ null, %1569 ]
  %1578 = icmp eq i8 %1576, 0
  br i1 %1578, label %1360, label %1579, !llvm.loop !249

1579:                                             ; preds = %1574, %1351
  call void @gsi_move_before(ptr noundef nonnull %6, ptr noundef nonnull %13) #20
  %1580 = load i32, ptr %1302, align 8
  %1581 = and i32 %1580, 254
  %1582 = add nsw i32 %1581, -10
  %1583 = icmp ult i32 %1582, -4
  br i1 %1583, label %1587, label %1584

1584:                                             ; preds = %1579
  %1585 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1302, i64 0, i32 2
  %1586 = load ptr, ptr %1585, align 8, !tbaa !46
  br label %1587

1587:                                             ; preds = %1584, %1579
  %1588 = phi ptr [ %1586, %1584 ], [ null, %1579 ]
  %1589 = icmp eq ptr %1588, null
  br i1 %1589, label %1603, label %1590

1590:                                             ; preds = %1587
  %1591 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1592 = icmp eq ptr %1591, null
  br i1 %1592, label %1597, label %1593

1593:                                             ; preds = %1590
  %1594 = getelementptr inbounds %struct.function, ptr %1591, i64 0, i32 3
  %1595 = load ptr, ptr %1594, align 8, !tbaa !250
  %1596 = icmp eq ptr %1595, null
  br i1 %1596, label %1597, label %1598

1597:                                             ; preds = %1593, %1590
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 51, ptr noundef nonnull @.str.1) #20
  br label %1598

1598:                                             ; preds = %1597, %1593
  %1599 = getelementptr inbounds %struct.function, ptr %1591, i64 0, i32 3
  %1600 = load ptr, ptr %1599, align 8, !tbaa !250
  %1601 = getelementptr inbounds %struct.gimple_df, ptr %1600, i64 0, i32 3
  %1602 = load ptr, ptr %1601, align 8, !tbaa !251
  call void @mark_sym_for_renaming(ptr noundef %1602) #20
  br label %1603

1603:                                             ; preds = %1598, %1587, %1317
  %1604 = load ptr, ptr %6, align 8
  %1605 = icmp eq ptr %1604, null
  br i1 %1605, label %1606, label %1300

1606:                                             ; preds = %1603, %1297, %1279, %1189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #20
  %1607 = add nsw i64 %1174, -1
  %1608 = icmp sgt i64 %1174, 0
  br i1 %1608, label %1173, label %1609, !llvm.loop !255

1609:                                             ; preds = %1606, %1156
  call void @free(ptr noundef %1140)
  call void @htab_delete(ptr noundef %1139) #20
  %1610 = call zeroext i8 @perfect_nest_p(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  %1611 = icmp eq i8 %1610, 0
  %1612 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1613 = icmp eq ptr %1612, null
  br i1 %1611, label %1614, label %1617

1614:                                             ; preds = %1609
  br i1 %1613, label %1641, label %1615

1615:                                             ; preds = %1614
  %1616 = call i64 @fwrite(ptr nonnull @.str.12, i64 53, i64 1, ptr nonnull %1612)
  br label %1641

1617:                                             ; preds = %1609
  br i1 %1613, label %1620, label %1618

1618:                                             ; preds = %1617
  %1619 = call i64 @fwrite(ptr nonnull @.str.13, i64 55, i64 1, ptr nonnull %1612)
  br label %1620

1620:                                             ; preds = %1618, %1617, %833
  %1621 = shl nsw i32 %26, 1
  %1622 = call ptr @lambda_loopnest_new(i32 noundef %26, i32 noundef %1621, ptr noundef %3)
  %1623 = icmp eq ptr %834, null
  br label %1624

1624:                                             ; preds = %1637, %1620
  %1625 = phi i64 [ 0, %1620 ], [ %1640, %1637 ]
  br i1 %1623, label %1634, label %1626

1626:                                             ; preds = %1624
  %1627 = trunc i64 %1625 to i32
  %1628 = load i32, ptr %834, align 8, !tbaa !194
  %1629 = icmp ugt i32 %1628, %1627
  br i1 %1629, label %1630, label %1634

1630:                                             ; preds = %1626
  %1631 = and i64 %1625, 4294967295
  %1632 = getelementptr inbounds %struct.VEC_lambda_loop_base, ptr %834, i64 0, i32 2, i64 %1631
  %1633 = load ptr, ptr %1632, align 8, !tbaa !35
  br label %1634

1634:                                             ; preds = %1624, %1626, %1630
  %1635 = phi ptr [ %1633, %1630 ], [ null, %1626 ], [ null, %1624 ]
  %1636 = phi i1 [ false, %1630 ], [ true, %1626 ], [ true, %1624 ]
  br i1 %1636, label %1641, label %1637

1637:                                             ; preds = %1634
  %1638 = load ptr, ptr %1622, align 8, !tbaa !85
  %1639 = getelementptr inbounds ptr, ptr %1638, i64 %1625
  store ptr %1635, ptr %1639, align 8, !tbaa !35
  %1640 = add i64 %1625, 1
  br label %1624, !llvm.loop !256

1641:                                             ; preds = %793, %1634, %398, %33, %29, %1614, %1615
  %1642 = phi ptr [ %834, %1614 ], [ %834, %1615 ], [ null, %29 ], [ null, %33 ], [ null, %398 ], [ %834, %1634 ], [ %407, %793 ]
  %1643 = phi ptr [ %835, %1614 ], [ %835, %1615 ], [ null, %29 ], [ null, %33 ], [ null, %398 ], [ %835, %1634 ], [ %794, %793 ]
  %1644 = phi ptr [ %836, %1614 ], [ %836, %1615 ], [ null, %29 ], [ null, %33 ], [ null, %398 ], [ %836, %1634 ], [ %795, %793 ]
  %1645 = phi ptr [ %837, %1614 ], [ %837, %1615 ], [ null, %29 ], [ null, %33 ], [ null, %398 ], [ %837, %1634 ], [ %796, %793 ]
  %1646 = phi ptr [ null, %1614 ], [ null, %1615 ], [ null, %29 ], [ null, %33 ], [ null, %398 ], [ %1622, %1634 ], [ null, %793 ]
  %1647 = icmp eq ptr %1642, null
  br i1 %1647, label %1649, label %1648

1648:                                             ; preds = %1641
  call void @free(ptr noundef %1642)
  br label %1649

1649:                                             ; preds = %1641, %1648
  %1650 = icmp eq ptr %1643, null
  br i1 %1650, label %1652, label %1651

1651:                                             ; preds = %1649
  call void @free(ptr noundef %1643)
  br label %1652

1652:                                             ; preds = %1649, %1651
  %1653 = icmp eq ptr %1644, null
  br i1 %1653, label %1655, label %1654

1654:                                             ; preds = %1652
  call void @free(ptr noundef %1644)
  br label %1655

1655:                                             ; preds = %1652, %1654
  %1656 = icmp eq ptr %1645, null
  br i1 %1656, label %1658, label %1657

1657:                                             ; preds = %1655
  call void @free(ptr noundef %1645)
  br label %1658

1658:                                             ; preds = %1655, %1657
  ret ptr %1646
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @perfect_nest_p(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %69, %1
  %3 = phi ptr [ %0, %1 ], [ %70, %69 ]
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @get_loop_body(ptr noundef %3) #20
  %9 = tail call ptr @get_loop_exit_condition(ptr noundef %3) #20
  %10 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !149
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %7, %64
  %14 = phi i64 [ %65, %64 ], [ 0, %7 ]
  %15 = getelementptr inbounds ptr, ptr %8, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %64

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !152, !noalias !257
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !46, !noalias !257
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !156, !noalias !257
  br label %31

31:                                               ; preds = %29, %25, %20
  %32 = phi ptr [ %30, %29 ], [ null, %25 ], [ null, %20 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !158, !noalias !257
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %36, %60
  %40 = phi ptr [ %62, %60 ], [ %37, %36 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !160
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 255
  %44 = icmp ne i32 %43, 1
  %45 = icmp eq ptr %9, %41
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  br i1 %45, label %60, label %48

48:                                               ; preds = %47
  %49 = trunc i32 %42 to i8
  switch i8 %49, label %50 [
    i8 4, label %53
    i8 3, label %53
    i8 1, label %53
  ]

50:                                               ; preds = %48
  %51 = icmp eq i32 %43, 2
  %52 = zext i1 %51 to i8
  br label %53

53:                                               ; preds = %48, %48, %48, %50
  %54 = phi i8 [ %52, %50 ], [ 1, %48 ], [ 1, %48 ], [ 1, %48 ]
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %3, ptr noundef nonnull %41), !range !110
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %39, %56
  tail call void @free(ptr noundef %8)
  br label %71

60:                                               ; preds = %56, %53, %47
  %61 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %40, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !175
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %39, !llvm.loop !260

64:                                               ; preds = %60, %36, %13
  %65 = add nuw nsw i64 %14, 1
  %66 = load i32, ptr %10, align 4, !tbaa !149
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %13, label %69, !llvm.loop !261

69:                                               ; preds = %64, %7
  tail call void @free(ptr noundef %8)
  %70 = load ptr, ptr %4, align 8, !tbaa !144
  br label %2

71:                                               ; preds = %59, %2
  %72 = phi i8 [ 0, %59 ], [ 1, %2 ]
  ret i8 %72
}

; Function Attrs: cold nounwind uwtable
define dso_local void @remove_iv(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %84

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %83, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  br label %16

16:                                               ; preds = %11, %78
  %17 = phi i64 [ 0, %11 ], [ %79, %78 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %18 = load i32, ptr %12, align 8, !tbaa !46
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %22

22:                                               ; preds = %16, %21
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %17, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !167
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %78

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 5
  store ptr %30, ptr %13, align 8, !tbaa !262
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !162
  store ptr %32, ptr %3, align 8, !tbaa !264
  %33 = icmp eq ptr %32, %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  call fastcc void @link_use_stmts_after(ptr noundef %32, ptr noundef nonnull %3)
  %35 = load ptr, ptr %3, align 8, !tbaa !264
  %36 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi ptr [ %37, %34 ], [ null, %29 ]
  %40 = load ptr, ptr %3, align 8, !tbaa !264
  %41 = load ptr, ptr %13, align 8, !tbaa !262
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %72, label %43

43:                                               ; preds = %38, %67
  %44 = phi ptr [ %70, %67 ], [ %41, %38 ]
  %45 = phi i8 [ %54, %67 ], [ 0, %38 ]
  %46 = phi ptr [ %68, %67 ], [ %39, %38 ]
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %46, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 2
  %52 = select i1 %51, i8 %45, i8 1
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i8 [ %45, %43 ], [ %52, %48 ]
  %55 = load ptr, ptr %15, align 8, !tbaa !162
  store ptr %55, ptr %3, align 8, !tbaa !264
  %56 = icmp eq ptr %55, %44
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load ptr, ptr %14, align 8, !tbaa !243
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %58, i64 0, i32 1
  store ptr %55, ptr %61, align 8, !tbaa !162
  %62 = load ptr, ptr %15, align 8, !tbaa !162
  store ptr %58, ptr %62, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br label %67

63:                                               ; preds = %53
  call fastcc void @link_use_stmts_after(ptr noundef %55, ptr noundef nonnull %3)
  %64 = load ptr, ptr %3, align 8, !tbaa !264
  %65 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  br label %67

67:                                               ; preds = %57, %60, %63
  %68 = phi ptr [ %66, %63 ], [ null, %60 ], [ null, %57 ]
  %69 = load ptr, ptr %3, align 8, !tbaa !264
  %70 = load ptr, ptr %13, align 8, !tbaa !262
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %43, !llvm.loop !265

72:                                               ; preds = %67, %38
  %73 = phi i8 [ 0, %38 ], [ %54, %67 ]
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  call void @remove_iv(ptr noundef %77)
  br label %78

78:                                               ; preds = %72, %75, %22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #20
  %79 = add nuw nsw i64 %17, 1
  %80 = load i32, ptr %8, align 4, !tbaa !46
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %16, label %83, !llvm.loop !266

83:                                               ; preds = %78, %7
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  br label %85

84:                                               ; preds = %1
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  call void @release_defs(ptr noundef nonnull %0) #20
  br label %85

85:                                               ; preds = %84, %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lambda_loopnest_to_gcc_loopnest(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #9 !prof !34 {
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.immediate_use_iterator_d, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  %16 = tail call ptr @lambda_trans_matrix_inverse(ptr noundef %5) #20
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %7
  %20 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 34, i64 1, ptr nonnull %17)
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_lambda_trans_matrix(ptr noundef %21, ptr noundef %16) #20
  br label %22

22:                                               ; preds = %19, %7
  %23 = icmp eq ptr %0, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %27, %24 ], [ 0, %22 ]
  %26 = phi ptr [ %29, %24 ], [ %0, %22 ]
  %27 = add i64 %25, 1
  %28 = getelementptr inbounds %struct.loop, ptr %26, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !144
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24, !llvm.loop !148

31:                                               ; preds = %24
  %32 = trunc i64 %27 to i32
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ 0, %22 ], [ %32, %31 ]
  %35 = icmp eq ptr %0, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = icmp sgt i32 %34, 0
  %38 = getelementptr inbounds i8, ptr %8, i64 8
  %39 = getelementptr inbounds i8, ptr %8, i64 16
  br label %48

40:                                               ; preds = %267, %33
  %41 = phi ptr [ null, %33 ], [ %69, %267 ]
  %42 = icmp eq ptr %1, null
  %43 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %13, i64 0, i32 1
  %44 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %13, i64 0, i32 3
  %45 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %13, i64 0, i32 2
  %46 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %13, i64 0, i32 2, i32 1
  %47 = icmp eq ptr %41, null
  br label %274

48:                                               ; preds = %36, %267
  %49 = phi ptr [ %0, %36 ], [ %272, %267 ]
  %50 = phi i64 [ 0, %36 ], [ %270, %267 ]
  %51 = phi ptr [ null, %36 ], [ %69, %267 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #20
  %52 = and i64 %50, 4294967295
  %53 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = call ptr @create_tmp_var(ptr noundef %56, ptr noundef nonnull @.str.15) #20
  store ptr %57, ptr %9, align 8, !tbaa !35
  %58 = call zeroext i8 @add_referenced_var(ptr noundef %57) #20
  %59 = load ptr, ptr %9, align 8, !tbaa !35
  %60 = icmp eq ptr %51, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.VEC_tree_base, ptr %51, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !186
  %64 = load i32, ptr %51, align 8, !tbaa !188
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %48, %61
  %67 = call ptr @vec_heap_p_reserve(ptr noundef %51, i32 noundef 1) #20
  br label %68

68:                                               ; preds = %61, %66
  %69 = phi ptr [ %67, %66 ], [ %51, %61 ]
  %70 = load i32, ptr %69, align 8, !tbaa !188
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !188
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.VEC_tree_base, ptr %69, i64 0, i32 2, i64 %72
  store ptr %59, ptr %73, align 8, !tbaa !35
  %74 = load ptr, ptr %4, align 8, !tbaa !85
  %75 = getelementptr inbounds ptr, ptr %74, i64 %50
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = getelementptr inbounds %struct.lambda_loop_s, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !80
  %79 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !77
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %68
  %83 = load ptr, ptr %78, align 8, !tbaa !73
  br i1 %37, label %84, label %103

84:                                               ; preds = %82
  %85 = load i32, ptr %83, align 4, !tbaa !50
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = zext nneg i32 %34 to i64
  br label %89

89:                                               ; preds = %87, %93
  %90 = phi i64 [ %91, %93 ], [ 0, %87 ]
  %91 = add nuw nsw i64 %90, 1
  %92 = icmp eq i64 %91, %88
  br i1 %92, label %103, label %93, !llvm.loop !127

93:                                               ; preds = %89
  %94 = getelementptr inbounds i32, ptr %83, i64 %91
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %89, label %97, !llvm.loop !127

97:                                               ; preds = %93
  %98 = sext i32 %34 to i64
  %99 = icmp slt i64 %91, %98
  br label %100

100:                                              ; preds = %97, %84
  %101 = phi i1 [ %99, %97 ], [ %37, %84 ]
  br i1 %101, label %102, label %103

102:                                              ; preds = %100, %68
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1747, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %89, %82, %100, %102
  store ptr null, ptr %10, align 8, !tbaa !35
  %104 = load ptr, ptr %76, align 8, !tbaa !109
  %105 = load ptr, ptr %77, align 8, !tbaa !80
  %106 = call fastcc ptr @lle_to_gcc_expression(ptr noundef %104, ptr noundef %105, ptr noundef %56, ptr noundef nonnull %69, ptr noundef %2, i32 noundef 81, ptr noundef nonnull %10)
  %107 = load ptr, ptr %10, align 8, !tbaa !35
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = call ptr @loop_preheader_edge(ptr noundef nonnull %49) #20
  %111 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gsi_insert_seq_on_edge(ptr noundef %110, ptr noundef %111) #20
  call void @gsi_commit_edge_inserts() #20
  br label %112

112:                                              ; preds = %109, %103
  store ptr null, ptr %10, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.lambda_loop_s, ptr %76, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !113
  %115 = load ptr, ptr %77, align 8, !tbaa !80
  %116 = call fastcc ptr @lle_to_gcc_expression(ptr noundef %114, ptr noundef %115, ptr noundef %56, ptr noundef nonnull %69, ptr noundef %2, i32 noundef 80, ptr noundef nonnull %10)
  %117 = call ptr @single_exit(ptr noundef nonnull %49) #20
  %118 = call ptr @get_loop_exit_condition(ptr noundef nonnull %49) #20
  %119 = getelementptr inbounds %struct.gimple_statement_base, ptr %118, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 13
  %122 = load i32, ptr %121, align 8, !tbaa !152, !noalias !267
  %123 = and i32 %122, 512
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !46, !noalias !267
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %127, align 8, !tbaa !156, !noalias !267
  br label %131

131:                                              ; preds = %129, %125, %112
  %132 = phi ptr [ %130, %129 ], [ null, %125 ], [ null, %112 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %132, align 8, !tbaa !158, !noalias !267
  br label %136

136:                                              ; preds = %134, %131
  %137 = phi ptr [ %135, %134 ], [ null, %131 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %136, %145
  %140 = phi ptr [ %147, %145 ], [ %137, %136 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !160, !noalias !272
  %142 = load i32, ptr %141, align 8, !noalias !272
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 4
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %140, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !175, !noalias !272
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %139, !llvm.loop !234

149:                                              ; preds = %139, %145, %136
  %150 = phi ptr [ %137, %136 ], [ %140, %139 ], [ %147, %145 ]
  store ptr %150, ptr %8, align 8, !tbaa.struct !178
  store ptr %132, ptr %38, align 8, !tbaa.struct !215
  store ptr %120, ptr %39, align 8, !tbaa.struct !216
  %151 = load ptr, ptr %10, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  call void @gsi_insert_seq_before(ptr noundef nonnull %8, ptr noundef nonnull %151, i32 noundef 0) #20
  br label %154

154:                                              ; preds = %153, %149
  call void @standard_iv_increment_position(ptr noundef nonnull %49, ptr noundef nonnull %8, ptr noundef nonnull %11) #20
  %155 = getelementptr inbounds %struct.lambda_loop_s, ptr %76, i64 0, i32 3
  %156 = load i32, ptr %155, align 8, !tbaa !82
  %157 = sext i32 %156 to i64
  %158 = call ptr @build_int_cst(ptr noundef %56, i64 noundef %157) #20
  %159 = load ptr, ptr %9, align 8, !tbaa !35
  %160 = load i8, ptr %11, align 1, !tbaa !46
  call void @create_iv(ptr noundef %106, ptr noundef %158, ptr noundef %159, ptr noundef nonnull %49, ptr noundef nonnull %8, i8 noundef zeroext %160, ptr noundef nonnull %9, ptr noundef null) #20
  %161 = load ptr, ptr %9, align 8, !tbaa !35
  %162 = getelementptr inbounds %struct.tree_ssa_name, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  %164 = load i32, ptr %155, align 8, !tbaa !82
  %165 = sext i32 %164 to i64
  %166 = call ptr @build_int_cst(ptr noundef %56, i64 noundef %165) #20
  %167 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %163, ptr noundef %161, ptr noundef %166) #20
  %168 = load ptr, ptr %9, align 8, !tbaa !35
  %169 = getelementptr inbounds %struct.tree_ssa_name, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !46
  %171 = load ptr, ptr @cfun, align 8, !tbaa !35
  %172 = call ptr @make_ssa_name_fn(ptr noundef %171, ptr noundef %170, ptr noundef %167) #20
  %173 = load i32, ptr %167, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %181, label %177

177:                                              ; preds = %154
  %178 = getelementptr inbounds %struct.gimple_statement_base, ptr %167, i64 0, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !46
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %154
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %182

182:                                              ; preds = %181, %177
  %183 = load i32, ptr %167, align 8
  %184 = and i32 %183, 255
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !50
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %188
  %190 = load i64, ptr %189, align 8, !tbaa !143
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %193

193:                                              ; preds = %192, %182
  %194 = getelementptr inbounds i8, ptr %167, i64 %190
  store ptr %172, ptr %194, align 8, !tbaa !35
  %195 = icmp eq ptr %172, null
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = load i64, ptr %172, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 141
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.tree_ssa_name, ptr %172, i64 0, i32 2
  store ptr %167, ptr %201, align 8, !tbaa !46
  br label %202

202:                                              ; preds = %193, %196, %200
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %118) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #20
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %167, i32 noundef 1) #20
  %203 = load i32, ptr %155, align 8, !tbaa !82
  %204 = icmp sgt i32 %203, -1
  %205 = select i1 %204, i32 98, i32 100
  %206 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 7
  %207 = load i32, ptr %206, align 8, !tbaa !273
  %208 = and i32 %207, 2048
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %202
  %211 = call i32 @swap_tree_comparison(i32 noundef %205) #20
  br label %212

212:                                              ; preds = %210, %202
  %213 = phi i32 [ %211, %210 ], [ %205, %202 ]
  %214 = load i32, ptr %118, align 8
  %215 = shl i32 %213, 16
  %216 = and i32 %214, 65535
  %217 = or disjoint i32 %216, %215
  store i32 %217, ptr %118, align 8
  %218 = and i32 %214, 255
  %219 = add nsw i32 %218, -10
  %220 = icmp ult i32 %219, -9
  br i1 %220, label %225, label %221

221:                                              ; preds = %212
  %222 = getelementptr inbounds %struct.gimple_statement_base, ptr %118, i64 0, i32 3
  %223 = load i32, ptr %222, align 4, !tbaa !46
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %212
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %226

226:                                              ; preds = %225, %221
  %227 = load i32, ptr %118, align 8
  %228 = and i32 %227, 255
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !50
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !143
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %237

237:                                              ; preds = %236, %226
  %238 = getelementptr inbounds i8, ptr %118, i64 %234
  store ptr %116, ptr %238, align 8, !tbaa !35
  %239 = load i32, ptr %118, align 8
  %240 = and i32 %239, 255
  %241 = add nsw i32 %240, -10
  %242 = icmp ult i32 %241, -9
  br i1 %242, label %247, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.gimple_statement_base, ptr %118, i64 0, i32 3
  %245 = load i32, ptr %244, align 4, !tbaa !46
  %246 = icmp ugt i32 %245, 1
  br i1 %246, label %248, label %247

247:                                              ; preds = %243, %237
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %248

248:                                              ; preds = %247, %243
  %249 = load i32, ptr %118, align 8
  %250 = and i32 %249, 255
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !50
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !143
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %248
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %259

259:                                              ; preds = %248, %258
  %260 = getelementptr inbounds i8, ptr %118, i64 %256
  %261 = getelementptr inbounds ptr, ptr %260, i64 1
  store ptr %172, ptr %261, align 8, !tbaa !35
  %262 = load i32, ptr %118, align 8
  %263 = and i32 %262, 255
  %264 = add nsw i32 %263, -10
  %265 = icmp ult i32 %264, -9
  br i1 %265, label %267, label %266

266:                                              ; preds = %259
  call void @gimple_set_modified(ptr noundef nonnull %118, i8 noundef zeroext 1) #20
  call void @update_stmt_operands(ptr noundef nonnull %118) #20
  br label %267

267:                                              ; preds = %259, %266
  %268 = load ptr, ptr %9, align 8, !tbaa !35
  %269 = getelementptr inbounds %struct.VEC_tree_base, ptr %69, i64 0, i32 2, i64 %52
  store ptr %268, ptr %269, align 8, !tbaa !35
  %270 = add i64 %50, 1
  %271 = getelementptr inbounds %struct.loop, ptr %49, i64 0, i32 8
  %272 = load ptr, ptr %271, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  %273 = icmp eq ptr %272, null
  br i1 %273, label %40, label %48, !llvm.loop !274

274:                                              ; preds = %40, %503
  %275 = phi i64 [ %509, %503 ], [ 0, %40 ]
  br i1 %42, label %284, label %276

276:                                              ; preds = %274
  %277 = trunc i64 %275 to i32
  %278 = load i32, ptr %1, align 8, !tbaa !188
  %279 = icmp ugt i32 %278, %277
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = and i64 %275, 4294967295
  %282 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !35
  br label %284

284:                                              ; preds = %274, %276, %280
  %285 = phi ptr [ %283, %280 ], [ null, %276 ], [ null, %274 ]
  %286 = phi i1 [ false, %280 ], [ true, %276 ], [ true, %274 ]
  br i1 %286, label %510, label %287

287:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #20
  %288 = getelementptr inbounds %struct.tree_ssa_name, ptr %285, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !46
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 255
  %292 = icmp eq i32 %291, 16
  br i1 %292, label %293, label %296

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.gimple_statement_phi, ptr %289, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !35
  br label %329

296:                                              ; preds = %287
  %297 = add nsw i32 %291, -10
  %298 = icmp ult i32 %297, -9
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %289, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  br label %302

302:                                              ; preds = %299, %296
  %303 = phi ptr [ %301, %299 ], [ null, %296 ]
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %302
  %306 = and i32 %290, 254
  %307 = add nsw i32 %306, -10
  %308 = icmp ult i32 %307, -4
  br i1 %308, label %315, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %289, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !46
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = load ptr, ptr %303, align 8, !tbaa !275
  br label %315

315:                                              ; preds = %302, %305, %309, %313
  %316 = phi ptr [ %303, %302 ], [ %303, %305 ], [ %303, %309 ], [ %314, %313 ]
  %317 = icmp eq ptr %316, null
  br i1 %317, label %323, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.def_optype_d, ptr %316, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !277
  %321 = load ptr, ptr %320, align 8, !tbaa !35
  %322 = load ptr, ptr %316, align 8, !tbaa !275
  br label %323

323:                                              ; preds = %318, %315
  %324 = phi ptr [ %322, %318 ], [ %316, %315 ]
  %325 = phi ptr [ %321, %318 ], [ null, %315 ]
  br i1 %317, label %329, label %326

326:                                              ; preds = %323
  %327 = icmp eq ptr %324, null
  %328 = select i1 %327, ptr %325, ptr null
  br label %329

329:                                              ; preds = %326, %323, %293
  %330 = phi ptr [ %295, %293 ], [ null, %323 ], [ %328, %326 ]
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1834, ptr noundef nonnull @.str.1) #20
  br label %333

333:                                              ; preds = %329, %332
  %334 = getelementptr inbounds %struct.tree_ssa_name, ptr %330, i64 0, i32 5
  store ptr %334, ptr %43, align 8, !tbaa !262
  %335 = getelementptr inbounds %struct.tree_ssa_name, ptr %330, i64 0, i32 5, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !162
  store ptr %336, ptr %13, align 8, !tbaa !264
  %337 = icmp eq ptr %336, %334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %45, i8 0, i64 40, i1 false)
  br i1 %337, label %342, label %338

338:                                              ; preds = %333
  call fastcc void @link_use_stmts_after(ptr noundef %336, ptr noundef nonnull %13)
  %339 = load ptr, ptr %13, align 8, !tbaa !264
  %340 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !46
  br label %342

342:                                              ; preds = %333, %338
  %343 = phi ptr [ %341, %338 ], [ null, %333 ]
  %344 = load ptr, ptr %13, align 8, !tbaa !264
  %345 = load ptr, ptr %43, align 8, !tbaa !262
  %346 = icmp eq ptr %344, %345
  br i1 %346, label %493, label %347

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.tree_common, ptr %285, i64 0, i32 2
  br label %349

349:                                              ; preds = %347, %488
  %350 = phi ptr [ %343, %347 ], [ %489, %488 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #20
  %351 = load i32, ptr %350, align 8
  %352 = and i32 %351, 255
  %353 = icmp eq i32 %352, 2
  br i1 %353, label %474, label %354

354:                                              ; preds = %349
  br i1 %47, label %357, label %355

355:                                              ; preds = %354
  %356 = load i32, ptr %41, align 8, !tbaa !188
  br label %357

357:                                              ; preds = %354, %355
  %358 = phi i32 [ %356, %355 ], [ 0, %354 ]
  %359 = call ptr @lambda_body_vector_new(i32 noundef %358, ptr noundef %6)
  %360 = load ptr, ptr %359, align 8, !tbaa !61
  %361 = getelementptr inbounds i32, ptr %360, i64 %275
  store i32 1, ptr %361, align 4, !tbaa !50
  %362 = call ptr @lambda_body_vector_compute_new(ptr noundef %16, ptr noundef nonnull %359, ptr noundef %6)
  store ptr null, ptr %14, align 8, !tbaa !35
  %363 = load ptr, ptr %348, align 8, !tbaa !46
  %364 = load ptr, ptr %362, align 8, !tbaa !61
  %365 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %366 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %363, ptr noundef %365) #20
  br label %367

367:                                              ; preds = %391, %357
  %368 = phi ptr [ %366, %357 ], [ %392, %391 ]
  %369 = phi i32 [ 0, %357 ], [ %393, %391 ]
  br i1 %47, label %377, label %370

370:                                              ; preds = %367
  %371 = load i32, ptr %41, align 8, !tbaa !188
  %372 = icmp ugt i32 %371, %369
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = zext i32 %369 to i64
  %375 = getelementptr inbounds %struct.VEC_tree_base, ptr %41, i64 0, i32 2, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !35
  br label %377

377:                                              ; preds = %373, %370, %367
  %378 = phi ptr [ %376, %373 ], [ null, %370 ], [ null, %367 ]
  %379 = phi i1 [ false, %373 ], [ true, %370 ], [ true, %367 ]
  br i1 %379, label %394, label %380

380:                                              ; preds = %377
  %381 = zext i32 %369 to i64
  %382 = getelementptr inbounds i32, ptr %364, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !50
  switch i32 %383, label %384 [
    i32 1, label %388
    i32 0, label %391
  ]

384:                                              ; preds = %380
  %385 = sext i32 %383 to i64
  %386 = call ptr @build_int_cst(ptr noundef %363, i64 noundef %385) #20
  %387 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %363, ptr noundef %378, ptr noundef %386) #20
  br label %388

388:                                              ; preds = %380, %384
  %389 = phi ptr [ %387, %384 ], [ %378, %380 ]
  %390 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %363, ptr noundef %368, ptr noundef %389) #20
  br label %391

391:                                              ; preds = %388, %380
  %392 = phi ptr [ %368, %380 ], [ %390, %388 ]
  %393 = add i32 %369, 1
  br label %367, !llvm.loop !278

394:                                              ; preds = %377
  %395 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %362, i64 0, i32 2
  %396 = load i32, ptr %395, align 4, !tbaa !64
  switch i32 %396, label %398 [
    i32 0, label %397
    i32 1, label %402
  ]

397:                                              ; preds = %394
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1555, ptr noundef nonnull @.str.1) #20
  br label %398

398:                                              ; preds = %397, %394
  %399 = sext i32 %396 to i64
  %400 = call ptr @build_int_cst(ptr noundef %363, i64 noundef %399) #20
  %401 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 68, ptr noundef %363, ptr noundef %368, ptr noundef %400) #20
  br label %402

402:                                              ; preds = %394, %398
  %403 = phi ptr [ %401, %398 ], [ %368, %394 ]
  %404 = call ptr @create_tmp_var(ptr noundef %363, ptr noundef nonnull @.str.35) #20
  %405 = call zeroext i8 @add_referenced_var(ptr noundef %404) #20
  %406 = call ptr @fold(ptr noundef %403) #20
  %407 = call ptr @force_gimple_operand(ptr noundef %406, ptr noundef nonnull %14, i8 noundef zeroext 1, ptr noundef %404) #20
  %408 = load ptr, ptr %14, align 8, !tbaa !35
  %409 = icmp eq ptr %408, null
  br i1 %409, label %416, label %410

410:                                              ; preds = %402
  %411 = load i32, ptr %350, align 8
  %412 = and i32 %411, 255
  %413 = icmp eq i32 %412, 16
  br i1 %413, label %416, label %414

414:                                              ; preds = %410
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef nonnull %350) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #20
  %415 = load ptr, ptr %14, align 8, !tbaa !35
  call void @gsi_insert_seq_before(ptr noundef nonnull %8, ptr noundef %415, i32 noundef 1) #20
  br label %416

416:                                              ; preds = %414, %410, %402
  %417 = load ptr, ptr %13, align 8, !tbaa !264
  %418 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !162
  store ptr %419, ptr %44, align 8, !tbaa !279
  %420 = icmp eq ptr %417, %45
  br i1 %420, label %432, label %421

421:                                              ; preds = %416, %428
  %422 = phi ptr [ %429, %428 ], [ %417, %416 ]
  call void @propagate_value(ptr noundef %422, ptr noundef %407) #20
  %423 = load ptr, ptr %44, align 8, !tbaa !279
  store ptr %423, ptr %13, align 8, !tbaa !264
  %424 = icmp eq ptr %423, %45
  br i1 %424, label %428, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %423, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !162
  store ptr %427, ptr %44, align 8, !tbaa !279
  br label %428

428:                                              ; preds = %421, %425
  %429 = phi ptr [ %423, %425 ], [ null, %421 ]
  %430 = load ptr, ptr %13, align 8, !tbaa !264
  %431 = icmp eq ptr %430, %45
  br i1 %431, label %432, label %421, !llvm.loop !280

432:                                              ; preds = %428, %416
  %433 = load ptr, ptr %14, align 8, !tbaa !35
  %434 = icmp eq ptr %433, null
  br i1 %434, label %468, label %435

435:                                              ; preds = %432
  %436 = load i32, ptr %350, align 8
  %437 = and i32 %436, 255
  %438 = icmp eq i32 %437, 16
  br i1 %438, label %439, label %468

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.gimple_statement_phi, ptr %350, i64 0, i32 2
  %441 = load i32, ptr %440, align 4, !tbaa !46
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %468, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.gimple_statement_phi, ptr %350, i64 0, i32 1
  %445 = getelementptr inbounds %struct.gimple_statement_base, ptr %350, i64 0, i32 4
  br label %446

446:                                              ; preds = %443, %463
  %447 = phi i64 [ 0, %443 ], [ %464, %463 ]
  %448 = load i32, ptr %444, align 8, !tbaa !46
  %449 = zext i32 %448 to i64
  %450 = icmp ugt i64 %447, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %446
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %452

452:                                              ; preds = %446, %451
  %453 = getelementptr inbounds %struct.gimple_statement_phi, ptr %350, i64 0, i32 4, i64 %447, i32 0, i32 3
  %454 = load ptr, ptr %453, align 8, !tbaa !167
  %455 = load ptr, ptr %454, align 8, !tbaa !35
  %456 = icmp eq ptr %455, %407
  br i1 %456, label %457, label %463

457:                                              ; preds = %452
  %458 = load ptr, ptr %445, align 8, !tbaa !46
  %459 = load ptr, ptr %458, align 8, !tbaa !183, !nonnull !184, !noundef !184
  %460 = getelementptr inbounds %struct.VEC_edge_base, ptr %459, i64 0, i32 2, i64 %447
  %461 = load ptr, ptr %460, align 8, !tbaa !35
  %462 = load ptr, ptr %14, align 8, !tbaa !35
  call void @gsi_insert_seq_on_edge(ptr noundef %461, ptr noundef %462) #20
  br label %463

463:                                              ; preds = %452, %457
  %464 = add nuw nsw i64 %447, 1
  %465 = load i32, ptr %440, align 4, !tbaa !46
  %466 = zext i32 %465 to i64
  %467 = icmp ult i64 %464, %466
  br i1 %467, label %446, label %468, !llvm.loop !281

468:                                              ; preds = %463, %439, %435, %432
  %469 = load i32, ptr %350, align 8
  %470 = and i32 %469, 255
  %471 = add nsw i32 %470, -10
  %472 = icmp ult i32 %471, -9
  br i1 %472, label %474, label %473

473:                                              ; preds = %468
  call void @gimple_set_modified(ptr noundef nonnull %350, i8 noundef zeroext 1) #20
  call void @update_stmt_operands(ptr noundef nonnull %350) #20
  br label %474

474:                                              ; preds = %473, %468, %349
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #20
  %475 = load ptr, ptr %46, align 8, !tbaa !162
  store ptr %475, ptr %13, align 8, !tbaa !264
  %476 = load ptr, ptr %43, align 8, !tbaa !262
  %477 = icmp eq ptr %475, %476
  br i1 %477, label %478, label %484

478:                                              ; preds = %474
  %479 = load ptr, ptr %45, align 8, !tbaa !243
  %480 = icmp eq ptr %479, null
  br i1 %480, label %488, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %479, i64 0, i32 1
  store ptr %475, ptr %482, align 8, !tbaa !162
  %483 = load ptr, ptr %46, align 8, !tbaa !162
  store ptr %479, ptr %483, align 8, !tbaa !243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  br label %488

484:                                              ; preds = %474
  call fastcc void @link_use_stmts_after(ptr noundef %475, ptr noundef nonnull %13)
  %485 = load ptr, ptr %13, align 8, !tbaa !264
  %486 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %485, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !46
  br label %488

488:                                              ; preds = %478, %481, %484
  %489 = phi ptr [ %487, %484 ], [ null, %481 ], [ null, %478 ]
  %490 = load ptr, ptr %13, align 8, !tbaa !264
  %491 = load ptr, ptr %43, align 8, !tbaa !262
  %492 = icmp eq ptr %490, %491
  br i1 %492, label %493, label %349, !llvm.loop !282

493:                                              ; preds = %488, %342
  %494 = load ptr, ptr %3, align 8, !tbaa !35
  %495 = icmp eq ptr %494, null
  br i1 %495, label %501, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.VEC_gimple_base, ptr %494, i64 0, i32 1
  %498 = load i32, ptr %497, align 4, !tbaa !283
  %499 = load i32, ptr %494, align 8, !tbaa !285
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %503

501:                                              ; preds = %493, %496
  %502 = call ptr @vec_heap_p_reserve(ptr noundef %494, i32 noundef 1) #20
  store ptr %502, ptr %3, align 8, !tbaa !35
  br label %503

503:                                              ; preds = %496, %501
  %504 = load ptr, ptr %3, align 8, !tbaa !35
  %505 = load i32, ptr %504, align 8, !tbaa !285
  %506 = add i32 %505, 1
  store i32 %506, ptr %504, align 8, !tbaa !285
  %507 = zext i32 %505 to i64
  %508 = getelementptr inbounds %struct.VEC_gimple_base, ptr %504, i64 0, i32 2, i64 %507
  store ptr %289, ptr %508, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #20
  %509 = add i64 %275, 1
  br label %274, !llvm.loop !286

510:                                              ; preds = %284
  %511 = icmp eq ptr %41, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %510
  call void @free(ptr noundef %41)
  br label %513

513:                                              ; preds = %510, %512
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  ret void
}

declare ptr @lambda_trans_matrix_inverse(ptr noundef) local_unnamed_addr #3

declare void @print_lambda_trans_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lle_to_gcc_expression(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, i32 noundef %5, ptr noundef %6) unnamed_addr #9 !prof !34 {
  %8 = icmp eq i32 %5, 81
  %9 = and i32 %5, -2
  %10 = icmp eq i32 %9, 80
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1590, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %7, %11
  %13 = icmp eq ptr %0, null
  br i1 %13, label %130, label %14

14:                                               ; preds = %12
  %15 = icmp eq ptr %3, null
  %16 = icmp eq ptr %4, null
  %17 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 1
  %18 = select i1 %8, i32 68, i32 69
  br label %19

19:                                               ; preds = %14, %121
  %20 = phi ptr [ %0, %14 ], [ %128, %121 ]
  %21 = phi ptr [ null, %14 ], [ %122, %121 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !73
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef %23) #20
  br label %25

25:                                               ; preds = %49, %19
  %26 = phi ptr [ %24, %19 ], [ %50, %49 ]
  %27 = phi i32 [ 0, %19 ], [ %51, %49 ]
  br i1 %15, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %3, align 8, !tbaa !188
  %30 = icmp ugt i32 %29, %27
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = zext i32 %27 to i64
  %33 = getelementptr inbounds %struct.VEC_tree_base, ptr %3, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %31, %28, %25
  %36 = phi ptr [ %34, %31 ], [ null, %28 ], [ null, %25 ]
  %37 = phi i1 [ false, %31 ], [ true, %28 ], [ true, %25 ]
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = zext i32 %27 to i64
  %40 = getelementptr inbounds i32, ptr %22, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !50
  switch i32 %41, label %42 [
    i32 1, label %46
    i32 0, label %49
  ]

42:                                               ; preds = %38
  %43 = sext i32 %41 to i64
  %44 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %43) #20
  %45 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %2, ptr noundef %36, ptr noundef %44) #20
  br label %46

46:                                               ; preds = %38, %42
  %47 = phi ptr [ %45, %42 ], [ %36, %38 ]
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %26, ptr noundef %47) #20
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi ptr [ %26, %38 ], [ %48, %46 ]
  %51 = add i32 %27, 1
  br label %25, !llvm.loop !278

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %56 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef %55) #20
  br label %57

57:                                               ; preds = %81, %52
  %58 = phi ptr [ %56, %52 ], [ %82, %81 ]
  %59 = phi i32 [ 0, %52 ], [ %83, %81 ]
  br i1 %16, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %4, align 8, !tbaa !188
  %62 = icmp ugt i32 %61, %59
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = zext i32 %59 to i64
  %65 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  br label %67

67:                                               ; preds = %63, %60, %57
  %68 = phi ptr [ %66, %63 ], [ null, %60 ], [ null, %57 ]
  %69 = phi i1 [ false, %63 ], [ true, %60 ], [ true, %57 ]
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = zext i32 %59 to i64
  %72 = getelementptr inbounds i32, ptr %54, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !50
  switch i32 %73, label %74 [
    i32 1, label %78
    i32 0, label %81
  ]

74:                                               ; preds = %70
  %75 = sext i32 %73 to i64
  %76 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %75) #20
  %77 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %2, ptr noundef %68, ptr noundef %76) #20
  br label %78

78:                                               ; preds = %70, %74
  %79 = phi ptr [ %77, %74 ], [ %68, %70 ]
  %80 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %58, ptr noundef %79) #20
  br label %81

81:                                               ; preds = %78, %70
  %82 = phi ptr [ %58, %70 ], [ %80, %78 ]
  %83 = add i32 %59, 1
  br label %57, !llvm.loop !278

84:                                               ; preds = %67
  %85 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %26, ptr noundef %58) #20
  %86 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !75
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = sext i32 %87 to i64
  %91 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %90) #20
  %92 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %85, ptr noundef %91) #20
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi ptr [ %92, %89 ], [ %85, %84 ]
  %95 = load i32, ptr %17, align 8, !tbaa !75
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = sext i32 %95 to i64
  %99 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %98) #20
  %100 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %94, ptr noundef %99) #20
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi ptr [ %100, %97 ], [ %94, %93 ]
  %103 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !77
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = sext i32 %104 to i64
  %108 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %107) #20
  %109 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %18, ptr noundef %2, ptr noundef %102, ptr noundef %108) #20
  br label %110

110:                                              ; preds = %106, %101
  %111 = phi ptr [ %109, %106 ], [ %102, %101 ]
  %112 = tail call ptr @fold(ptr noundef %111) #20
  %113 = icmp eq ptr %21, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !186
  %117 = load i32, ptr %21, align 8, !tbaa !188
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110, %114
  %120 = tail call ptr @vec_heap_p_reserve(ptr noundef %21, i32 noundef 1) #20
  br label %121

121:                                              ; preds = %114, %119
  %122 = phi ptr [ %120, %119 ], [ %21, %114 ]
  %123 = load i32, ptr %122, align 8, !tbaa !188
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 8, !tbaa !188
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds %struct.VEC_tree_base, ptr %122, i64 0, i32 2, i64 %125
  store ptr %112, ptr %126, align 8, !tbaa !35
  %127 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !78
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %19, !llvm.loop !287

130:                                              ; preds = %121, %12
  %131 = phi ptr [ null, %12 ], [ %122, %121 ]
  %132 = phi ptr [ null, %12 ], [ %112, %121 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1618, ptr noundef nonnull @.str.1) #20
  br label %135

135:                                              ; preds = %130, %134
  %136 = icmp eq ptr %131, null
  br i1 %136, label %160, label %137

137:                                              ; preds = %135
  %138 = load i32, ptr %131, align 8, !tbaa !188
  %139 = icmp ugt i32 %138, 1
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.VEC_tree_base, ptr %131, i64 0, i32 2, i64 0
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  br label %143

143:                                              ; preds = %157, %140
  %144 = phi ptr [ %142, %140 ], [ %158, %157 ]
  %145 = phi i64 [ 1, %140 ], [ %159, %157 ]
  br i1 %136, label %154, label %146

146:                                              ; preds = %143
  %147 = trunc i64 %145 to i32
  %148 = load i32, ptr %131, align 8, !tbaa !188
  %149 = icmp ugt i32 %148, %147
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = and i64 %145, 4294967295
  %152 = getelementptr inbounds %struct.VEC_tree_base, ptr %131, i64 0, i32 2, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !35
  br label %154

154:                                              ; preds = %143, %146, %150
  %155 = phi ptr [ %153, %150 ], [ null, %146 ], [ null, %143 ]
  %156 = phi i1 [ false, %150 ], [ true, %146 ], [ true, %143 ]
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %2, ptr noundef %144, ptr noundef %155) #20
  %159 = add i64 %145, 1
  br label %143, !llvm.loop !288

160:                                              ; preds = %154, %135, %137
  %161 = phi ptr [ %132, %137 ], [ %132, %135 ], [ %144, %154 ]
  br i1 %136, label %163, label %162

162:                                              ; preds = %160
  tail call void @free(ptr noundef %131)
  br label %163

163:                                              ; preds = %160, %162
  %164 = tail call ptr @create_tmp_var(ptr noundef %2, ptr noundef nonnull @.str.34) #20
  %165 = tail call zeroext i8 @add_referenced_var(ptr noundef %164) #20
  %166 = tail call ptr @fold(ptr noundef %161) #20
  %167 = tail call ptr @force_gimple_operand(ptr noundef %166, ptr noundef %6, i8 noundef zeroext 1, ptr noundef %164) #20
  ret ptr %167
}

declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @standard_iv_increment_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -10
  %6 = icmp ult i32 %5, -9
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = and i32 %3, 254
  %15 = add nsw i32 %14, -10
  %16 = icmp ult i32 %15, -4
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 8, !tbaa !275
  br label %23

23:                                               ; preds = %10, %13, %17, %21
  %24 = phi ptr [ %11, %10 ], [ %11, %13 ], [ %11, %17 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.def_optype_d, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !277
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = load ptr, ptr %24, align 8, !tbaa !275
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr %29, ptr null
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi ptr [ %32, %26 ], [ null, %23 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %124, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 5
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 5, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !162
  %40 = icmp eq ptr %39, %37
  br i1 %40, label %124, label %41

41:                                               ; preds = %36, %118
  %42 = phi ptr [ %122, %118 ], [ %39, %36 ]
  %43 = phi ptr [ %120, %118 ], [ %39, %36 ]
  %44 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %42, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %118

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.gimple_statement_phi, ptr %45, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !46
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %118

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %45, i64 0, i32 4
  %55 = getelementptr inbounds %struct.gimple_statement_phi, ptr %45, i64 0, i32 1
  br label %56

56:                                               ; preds = %53, %76
  %57 = phi i64 [ 0, %53 ], [ %77, %76 ]
  %58 = phi i1 [ %52, %53 ], [ %80, %76 ]
  %59 = load ptr, ptr %54, align 8, !tbaa !46
  %60 = load ptr, ptr %59, align 8, !tbaa !183, !nonnull !184, !noundef !184
  %61 = getelementptr inbounds %struct.VEC_edge_base, ptr %60, i64 0, i32 2, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = load ptr, ptr %62, align 8, !tbaa !185
  %64 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %63) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %56
  %67 = load i32, ptr %55, align 8, !tbaa !46
  %68 = zext i32 %67 to i64
  %69 = icmp ugt i64 %57, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.gimple_statement_phi, ptr %45, i64 0, i32 4, i64 %57, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !167
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = icmp eq ptr %74, %34
  br i1 %75, label %81, label %76

76:                                               ; preds = %71, %56
  %77 = add nuw nsw i64 %57, 1
  %78 = load i32, ptr %50, align 4, !tbaa !46
  %79 = zext i32 %78 to i64
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %56, label %118, !llvm.loop !289

81:                                               ; preds = %71
  br i1 %58, label %82, label %118

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.gimple_statement_phi, ptr %45, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  %85 = load i32, ptr %1, align 8
  %86 = and i32 %85, 255
  %87 = add nsw i32 %86, -10
  %88 = icmp ult i32 %87, -9
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  br label %92

92:                                               ; preds = %89, %82
  %93 = phi ptr [ %91, %89 ], [ null, %82 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = and i32 %85, 254
  %97 = add nsw i32 %96, -10
  %98 = icmp ult i32 %97, -4
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %93, align 8, !tbaa !165
  br label %105

105:                                              ; preds = %103, %99, %95, %92
  %106 = phi ptr [ %93, %92 ], [ %93, %95 ], [ %93, %99 ], [ %104, %103 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.use_optype_d, ptr %106, i64 0, i32 1, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !167
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = load ptr, ptr %106, align 8, !tbaa !165
  %113 = icmp eq ptr %112, null
  %114 = select i1 %113, ptr %111, ptr null
  br label %115

115:                                              ; preds = %108, %105
  %116 = phi ptr [ %114, %108 ], [ null, %105 ]
  %117 = icmp eq ptr %116, %84
  br i1 %117, label %124, label %118

118:                                              ; preds = %76, %49, %81, %41, %115
  %119 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %43, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !162
  %121 = icmp eq ptr %120, %37
  %122 = select i1 %121, ptr null, ptr %120
  %123 = icmp eq ptr %120, %37
  br i1 %123, label %124, label %41, !llvm.loop !290

124:                                              ; preds = %115, %118, %36, %33
  %125 = phi i8 [ 0, %33 ], [ 0, %36 ], [ 0, %118 ], [ 1, %115 ]
  ret i8 %125
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lambda_transform_legal_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !67
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2608, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %7, %11
  %13 = icmp eq ptr %2, null
  br i1 %13, label %103, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %2, align 8, !tbaa !291
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %103, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %103, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.data_dependence_relation, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !293
  %24 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %103, label %26

26:                                               ; preds = %21
  %27 = sext i32 %1 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %28) #20
  %30 = icmp eq i32 %1, 0
  br label %31

31:                                               ; preds = %101, %26
  %32 = phi i32 [ 0, %26 ], [ %102, %101 ]
  br i1 %13, label %40, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %2, align 8, !tbaa !291
  %35 = icmp ugt i32 %34, %32
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = zext i32 %32 to i64
  %38 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %2, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  br label %40

40:                                               ; preds = %31, %33, %36
  %41 = phi ptr [ %39, %36 ], [ null, %33 ], [ null, %31 ]
  %42 = phi i1 [ false, %36 ], [ true, %33 ], [ true, %31 ]
  br i1 %42, label %103, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.data_dependence_relation, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !293
  %46 = load ptr, ptr @chrec_known, align 8, !tbaa !35
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %101, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !295
  %50 = getelementptr inbounds %struct.data_reference, ptr %49, i64 0, i32 3
  %51 = load i8, ptr %50, align 8, !tbaa !296
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.data_dependence_relation, ptr %41, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !301
  %56 = getelementptr inbounds %struct.data_reference, ptr %55, i64 0, i32 3
  %57 = load i8, ptr %56, align 8, !tbaa !296
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %53, %48
  %60 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %61 = icmp eq ptr %45, %60
  br i1 %61, label %103, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.data_dependence_relation, ptr %41, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !302
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %64, align 8, !tbaa !303
  br label %68

68:                                               ; preds = %62, %66
  %69 = phi i32 [ %67, %66 ], [ 0, %62 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %68, %97
  %72 = phi i64 [ %100, %97 ], [ 0, %68 ]
  %73 = load ptr, ptr %63, align 8, !tbaa !302
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %73, align 8, !tbaa !303
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi i32 [ %76, %75 ], [ 0, %71 ]
  %79 = zext i32 %78 to i64
  %80 = icmp ult i64 %72, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load ptr, ptr %0, align 8, !tbaa !69
  %83 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %73, i64 0, i32 2, i64 %72
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  tail call void @lambda_matrix_vector_mult(ptr noundef %82, i32 noundef %1, i32 noundef %1, ptr noundef %84, ptr noundef %29) #20
  br i1 %30, label %97, label %88

85:                                               ; preds = %88
  %86 = add nuw i32 %89, 1
  %87 = icmp eq i32 %86, %1
  br i1 %87, label %97, label %88, !llvm.loop !305

88:                                               ; preds = %81, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %81 ]
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %29, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %85, label %94

94:                                               ; preds = %88
  %95 = icmp sgt i32 %92, -1
  %96 = zext i1 %95 to i8
  br label %97

97:                                               ; preds = %85, %81, %94
  %98 = phi i8 [ %96, %94 ], [ 1, %81 ], [ 1, %85 ]
  %99 = icmp eq i8 %98, 0
  %100 = add nuw nsw i64 %72, 1
  br i1 %99, label %103, label %71, !llvm.loop !306

101:                                              ; preds = %77, %43, %53
  %102 = add i32 %32, 1
  br label %31, !llvm.loop !307

103:                                              ; preds = %68, %40, %59, %97, %12, %21, %17, %14
  %104 = phi i8 [ 1, %14 ], [ 1, %17 ], [ 0, %21 ], [ 1, %12 ], [ 0, %97 ], [ 0, %59 ], [ 1, %40 ], [ 0, %68 ]
  ret i8 %104
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lambda_collect_parameters(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @pointer_set_create() #20
  %4 = icmp eq ptr %0, null
  br label %5

5:                                                ; preds = %33, %2
  %6 = phi i32 [ 0, %2 ], [ %34, %33 ]
  br i1 %4, label %14, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8, !tbaa !308
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %5, %7, %10
  %15 = phi ptr [ %13, %10 ], [ null, %7 ], [ null, %5 ]
  %16 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %5 ]
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.data_reference, ptr %15, i64 0, i32 5, i32 1
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %32, %29 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !310
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !188
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %20, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 2, i64 %20
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  tail call fastcc void @lambda_collect_parameters_from_af(ptr noundef %31, ptr noundef %3, ptr noundef %1)
  %32 = add nuw nsw i64 %20, 1
  br label %19, !llvm.loop !311

33:                                               ; preds = %25
  %34 = add i32 %6, 1
  br label %5, !llvm.loop !312

35:                                               ; preds = %14
  tail call void @pointer_set_destroy(ptr noundef %3) #20
  ret void
}

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lambda_collect_parameters_from_af(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = tail call i32 @pointer_set_contains(ptr noundef %1, ptr noundef nonnull %0) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = tail call i32 @pointer_set_insert(ptr noundef %1, ptr noundef nonnull %0) #20
  %14 = load ptr, ptr %2, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !186
  %19 = load i32, ptr %14, align 8, !tbaa !188
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12, %16
  %22 = tail call ptr @vec_heap_p_reserve(ptr noundef %14, i32 noundef 1) #20
  store ptr %22, ptr %2, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %16, %21
  %24 = load ptr, ptr %2, align 8, !tbaa !35
  %25 = load i32, ptr %24, align 8, !tbaa !188
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !188
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_tree_base, ptr %24, i64 0, i32 2, i64 %27
  store ptr %0, ptr %28, align 8, !tbaa !35
  br label %56

29:                                               ; preds = %9, %5
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !46
  %40 = trunc i64 %39 to i32
  br label %45

41:                                               ; preds = %29
  %42 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %31
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %35, %41
  %46 = phi i32 [ %40, %35 ], [ %44, %41 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %54, %50 ]
  %52 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  tail call fastcc void @lambda_collect_parameters_from_af(ptr noundef %53, ptr noundef %1, ptr noundef %2)
  %54 = add nuw nsw i64 %51, 1
  %55 = icmp eq i64 %54, %49
  br i1 %55, label %56, label %50, !llvm.loop !313

56:                                               ; preds = %50, %45, %3, %23
  ret void
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lambda_compute_access_matrices(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %78, %3
  %8 = phi i32 [ 0, %3 ], [ %80, %78 ]
  br i1 %4, label %16, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8, !tbaa !308
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %7, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %7 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %7 ]
  br i1 %18, label %81, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #20
  %21 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 5, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !310
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %22, align 8, !tbaa !188
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ]
  br i1 %5, label %30, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %2, align 8, !tbaa !314
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %29, %28 ], [ 0, %26 ]
  store ptr %2, ptr %20, align 8, !tbaa !316
  %32 = getelementptr inbounds %struct.access_matrix, ptr %20, i64 0, i32 1
  store i32 %31, ptr %32, align 8, !tbaa !318
  %33 = getelementptr inbounds %struct.access_matrix, ptr %20, i64 0, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !319
  br i1 %6, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %1, align 8, !tbaa !188
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ 0, %30 ]
  %38 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %27) #20
  %39 = getelementptr inbounds %struct.access_matrix, ptr %20, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !320
  %40 = icmp ne i32 %27, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = add i32 %31, 1
  %43 = add i32 %42, %37
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 2
  %46 = zext i32 %27 to i64
  %47 = zext i32 %27 to i64
  %48 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %45) #20
  %49 = load ptr, ptr %21, align 8, !tbaa !310
  %50 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 0
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = tail call fastcc zeroext i8 @av_for_af(ptr noundef %51, ptr noundef %48, ptr noundef nonnull %20), !range !110
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %78, label %61

54:                                               ; preds = %61
  %55 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %45) #20
  %56 = load ptr, ptr %21, align 8, !tbaa !310
  %57 = getelementptr inbounds %struct.VEC_tree_base, ptr %56, i64 0, i32 2, i64 %69
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = tail call fastcc zeroext i8 @av_for_af(ptr noundef %58, ptr noundef %55, ptr noundef nonnull %20), !range !110
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %76, label %61, !llvm.loop !321

61:                                               ; preds = %41, %54
  %62 = phi ptr [ %55, %54 ], [ %48, %41 ]
  %63 = phi i64 [ %69, %54 ], [ 0, %41 ]
  %64 = load ptr, ptr %39, align 8, !tbaa !320
  %65 = load i32, ptr %64, align 8, !tbaa !303
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !303
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %64, i64 0, i32 2, i64 %67
  store ptr %62, ptr %68, align 8, !tbaa !35
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, %47
  br i1 %70, label %71, label %54, !llvm.loop !321

71:                                               ; preds = %61
  %72 = icmp ult i64 %69, %46
  br label %73

73:                                               ; preds = %71, %36
  %74 = phi i1 [ %40, %36 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 7
  store ptr %20, ptr %75, align 8, !tbaa !322
  br label %78

76:                                               ; preds = %54
  %77 = icmp ult i64 %69, %46
  br label %78

78:                                               ; preds = %76, %41, %73
  %79 = phi i1 [ %74, %73 ], [ %40, %41 ], [ %77, %76 ]
  %80 = add i32 %8, 1
  br i1 %79, label %81, label %7, !llvm.loop !323

81:                                               ; preds = %16, %78
  %82 = phi i8 [ 0, %78 ], [ 1, %16 ]
  ret i8 %82
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare void @lambda_matrix_add_mc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lambda_matrix_inverse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @lle_equal(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 !prof !34 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !75
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8, !tbaa !73
  %24 = load ptr, ptr %1, align 8, !tbaa !73
  %25 = zext nneg i32 %2 to i64
  br label %37

26:                                               ; preds = %37
  %27 = add nuw nsw i64 %38, 1
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %29, label %37, !llvm.loop !324

29:                                               ; preds = %26, %20
  %30 = icmp sgt i32 %3, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = zext nneg i32 %3 to i64
  br label %47

37:                                               ; preds = %22, %26
  %38 = phi i64 [ 0, %22 ], [ %27, %26 ]
  %39 = getelementptr inbounds i32, ptr %23, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = getelementptr inbounds i32, ptr %24, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %26, label %54

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %36
  br i1 %46, label %54, label %47, !llvm.loop !325

47:                                               ; preds = %31, %44
  %48 = phi i64 [ 0, %31 ], [ %45, %44 ]
  %49 = getelementptr inbounds i32, ptr %33, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = getelementptr inbounds i32, ptr %35, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %44, label %54

54:                                               ; preds = %37, %47, %44, %29, %14, %8, %4
  %55 = phi i8 [ 0, %4 ], [ 0, %8 ], [ 0, %14 ], [ 1, %29 ], [ 1, %44 ], [ 0, %47 ], [ 0, %37 ]
  ret i8 %55
}

declare void @lambda_matrix_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_col_negate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_col_exchange(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_col_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gcc_tree_to_linear_expression(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #9 !prof !34 {
  %7 = load i64, ptr %1, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %93 [
    i16 23, label %14
    i16 141, label %9
  ]

9:                                                ; preds = %6
  %10 = icmp eq ptr %2, null
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %12 = shl nsw i32 %0, 1
  %13 = icmp eq i32 %4, 0
  br label %23

14:                                               ; preds = %6
  %15 = shl nsw i32 %0, 1
  %16 = tail call ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %15, ptr noundef %5)
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !46
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %16, i64 0, i32 1
  %21 = add nsw i32 %19, %4
  store i32 %21, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %16, i64 0, i32 3
  store i32 1, ptr %22, align 8, !tbaa !77
  br label %93

23:                                               ; preds = %9, %57
  %24 = phi ptr [ %58, %57 ], [ null, %9 ]
  %25 = phi i64 [ %59, %57 ], [ 0, %9 ]
  br i1 %10, label %34, label %26

26:                                               ; preds = %23
  %27 = trunc i64 %25 to i32
  %28 = load i32, ptr %2, align 8, !tbaa !188
  %29 = icmp ugt i32 %28, %27
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = and i64 %25, 4294967295
  %32 = getelementptr inbounds %struct.VEC_tree_base, ptr %2, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %23, %26, %30
  %35 = phi ptr [ %33, %30 ], [ null, %26 ], [ null, %23 ]
  %36 = phi i1 [ false, %30 ], [ true, %26 ], [ true, %23 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = icmp eq ptr %3, null
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %40 = shl nsw i32 %0, 1
  %41 = icmp eq i32 %4, 0
  br label %60

42:                                               ; preds = %34
  %43 = icmp eq ptr %35, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = load ptr, ptr %11, align 8, !tbaa !46
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = tail call ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %12, ptr noundef %5)
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds i32, ptr %51, i64 %25
  store i32 1, ptr %52, align 4, !tbaa !50
  br i1 %13, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %50, i64 0, i32 1
  store i32 %4, ptr %54, align 8, !tbaa !75
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %50, i64 0, i32 3
  store i32 1, ptr %56, align 8, !tbaa !77
  br label %57

57:                                               ; preds = %42, %55, %44
  %58 = phi ptr [ %50, %55 ], [ %24, %44 ], [ %24, %42 ]
  %59 = add i64 %25, 1
  br label %23, !llvm.loop !326

60:                                               ; preds = %37, %90
  %61 = phi ptr [ %91, %90 ], [ %24, %37 ]
  %62 = phi i64 [ %92, %90 ], [ 0, %37 ]
  br i1 %38, label %71, label %63

63:                                               ; preds = %60
  %64 = trunc i64 %62 to i32
  %65 = load i32, ptr %3, align 8, !tbaa !188
  %66 = icmp ugt i32 %65, %64
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = and i64 %62, 4294967295
  %69 = getelementptr inbounds %struct.VEC_tree_base, ptr %3, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %60, %63, %67
  %72 = phi ptr [ %70, %67 ], [ null, %63 ], [ null, %60 ]
  %73 = phi i1 [ false, %67 ], [ true, %63 ], [ true, %60 ]
  br i1 %73, label %93, label %74

74:                                               ; preds = %71
  %75 = icmp eq ptr %72, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %72, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = load ptr, ptr %39, align 8, !tbaa !46
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = tail call ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %40, ptr noundef %5)
  %83 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !76
  %85 = getelementptr inbounds i32, ptr %84, i64 %62
  store i32 1, ptr %85, align 4, !tbaa !50
  br i1 %41, label %88, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %82, i64 0, i32 1
  store i32 %4, ptr %87, align 8, !tbaa !75
  br label %88

88:                                               ; preds = %86, %81
  %89 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %82, i64 0, i32 3
  store i32 1, ptr %89, align 8, !tbaa !77
  br label %90

90:                                               ; preds = %74, %88, %76
  %91 = phi ptr [ %82, %88 ], [ %61, %76 ], [ %61, %74 ]
  %92 = add i64 %62, 1
  br label %60, !llvm.loop !327

93:                                               ; preds = %71, %14, %6
  %94 = phi ptr [ null, %6 ], [ %16, %14 ], [ %61, %71 ]
  ret ptr %94
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @invariant_in_loop_and_outer_loops(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %30, %2
  %4 = phi ptr [ %0, %2 ], [ %31, %30 ]
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !328
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !314
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %4, ptr noundef %1) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8, !tbaa !328
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 8, !tbaa !314
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ 0, %17 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = add i32 %23, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %18, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi ptr [ %29, %25 ], [ null, %22 ]
  br label %3

32:                                               ; preds = %7, %14, %11, %3
  %33 = phi i8 [ 1, %3 ], [ 1, %11 ], [ 0, %14 ], [ 1, %7 ]
  ret i8 %33
}

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #20
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !167
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !162
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !243
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !162
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !162
  %56 = load ptr, ptr %53, align 8, !tbaa !162
  store ptr %50, ptr %56, align 8, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !243
  %58 = load ptr, ptr %46, align 8, !tbaa !162
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !162
  %60 = load ptr, ptr %46, align 8, !tbaa !162
  store ptr %35, ptr %60, align 8, !tbaa !243
  store ptr %35, ptr %46, align 8, !tbaa !162
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !46
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !329

77:                                               ; preds = %2
  br i1 %9, label %147, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !165
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !165
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !167
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !162
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !243
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !162
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !162
  %131 = load ptr, ptr %128, align 8, !tbaa !162
  store ptr %125, ptr %131, align 8, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !243
  %133 = load ptr, ptr %121, align 8, !tbaa !162
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !162
  %135 = load ptr, ptr %121, align 8, !tbaa !162
  store ptr %110, ptr %135, align 8, !tbaa !243
  store ptr %110, ptr %121, align 8, !tbaa !162
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !165
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !330

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !331
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !167
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !162
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !243
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !162
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !162
  %183 = load ptr, ptr %180, align 8, !tbaa !162
  store ptr %177, ptr %183, align 8, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !243
  %185 = load ptr, ptr %173, align 8, !tbaa !162
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !162
  %187 = load ptr, ptr %173, align 8, !tbaa !162
  store ptr %163, ptr %187, align 8, !tbaa !243
  store ptr %163, ptr %173, align 8, !tbaa !162
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !243
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !162
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !162
  %197 = load ptr, ptr %194, align 8, !tbaa !162
  store ptr %191, ptr %197, align 8, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !243
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !162
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !162
  %202 = load ptr, ptr %199, align 8, !tbaa !162
  store ptr %190, ptr %202, align 8, !tbaa !243
  store ptr %190, ptr %199, align 8, !tbaa !162
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @can_duplicate_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef %0) #20
  %4 = tail call ptr @loop_preheader_edge(ptr noundef %1) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = tail call ptr @instantiate_scev(ptr noundef %12, ptr noundef %1, ptr noundef %3) #20
  %14 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %15 = icmp ne ptr %14, %13
  %16 = load ptr, ptr @chrec_known, align 8
  %17 = icmp ne ptr %16, %13
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %31

19:                                               ; preds = %10
  %20 = load i32, ptr %1, align 8, !tbaa !182
  %21 = tail call ptr @evolution_part_in_loop_num(ptr noundef %13, i32 noundef %20) #20
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr @chrec_dont_know, align 8
  %24 = icmp eq ptr %21, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i64, ptr %21, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 23
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %10, %30, %26
  %32 = phi i8 [ 1, %26 ], [ 0, %30 ], [ 0, %10 ]
  ret i8 %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @can_put_in_inner_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 254
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -4
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %74

16:                                               ; preds = %7, %12
  %17 = tail call zeroext i8 @stmt_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %1) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -1
  %23 = icmp ult i32 %22, 9
  tail call void @llvm.assume(i1 %23)
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !143
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %32

32:                                               ; preds = %31, %19
  %33 = getelementptr inbounds i8, ptr %1, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 5
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 5, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !162
  %38 = icmp eq ptr %37, %35
  br i1 %38, label %74, label %39

39:                                               ; preds = %32, %68
  %40 = phi ptr [ %72, %68 ], [ %37, %32 ]
  %41 = phi ptr [ %70, %68 ], [ %37, %32 ]
  %42 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %40, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !46
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %43, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = tail call ptr @single_exit(ptr noundef %0) #20
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !171
  %57 = icmp eq ptr %53, %56
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %39, %47, %51
  %60 = phi i8 [ 0, %47 ], [ 0, %39 ], [ %58, %51 ]
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr %42, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.gimple_statement_base, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %65) #20
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %59, %62
  %69 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !162
  %71 = icmp eq ptr %70, %35
  %72 = select i1 %71, ptr null, ptr %70
  %73 = icmp eq ptr %70, %35
  br i1 %73, label %74, label %39, !llvm.loop !332

74:                                               ; preds = %62, %68, %32, %12, %16
  %75 = phi i8 [ 0, %16 ], [ 0, %12 ], [ 1, %32 ], [ 1, %68 ], [ 0, %62 ]
  ret i8 %75
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @duplicate_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @recompute_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_map_hash(ptr noundef) #3

declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #3

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @av_for_af(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  br label %4

4:                                                ; preds = %44, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %44 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %56 [
    i16 146, label %8
    i16 23, label %54
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %56

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr %2, align 8, !tbaa !316
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %39, %16
  %25 = phi i64 [ %40, %39 ], [ 0, %16 ]
  br i1 %23, label %33, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %22, align 8, !tbaa !314
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %22, i64 0, i32 2, i64 %25
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  br label %33

33:                                               ; preds = %30, %26, %24
  %34 = phi ptr [ %32, %30 ], [ null, %26 ], [ null, %24 ]
  %35 = phi i1 [ false, %30 ], [ true, %26 ], [ true, %24 ]
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %34, align 8, !tbaa !182
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = add nuw i64 %25, 1
  br label %24, !llvm.loop !333

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 157, ptr noundef nonnull @.str.1) #20
  br label %44

42:                                               ; preds = %36
  %43 = and i64 %25, 4294967295
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i64 [ 0, %41 ], [ %43, %42 ]
  %46 = tail call i64 @int_cst_value(ptr noundef nonnull %12) #20
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds i32, ptr %1, i64 %45
  store i32 %47, ptr %48, align 4, !tbaa !50
  %49 = load i64, ptr %10, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 146
  br i1 %51, label %4, label %52

52:                                               ; preds = %44
  %53 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1), !range !110
  br label %56

54:                                               ; preds = %4
  %55 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef 1), !range !110
  br label %56

56:                                               ; preds = %4, %52, %8, %54
  %57 = phi i8 [ %55, %54 ], [ %53, %52 ], [ 0, %8 ], [ 0, %4 ]
  ret i8 %57
}

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @av_for_af_base(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  br label %5

5:                                                ; preds = %73, %69, %61, %49, %41, %4
  %6 = phi ptr [ %0, %4 ], [ %43, %41 ], [ %51, %49 ], [ %60, %61 ], [ %55, %69 ], [ %75, %73 ]
  %7 = phi i32 [ %3, %4 ], [ %7, %41 ], [ %52, %49 ], [ %64, %61 ], [ %72, %69 ], [ %76, %73 ]
  %8 = load i64, ptr %6, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %77 [
    i16 23, label %10
    i16 141, label %28
    i16 63, label %36
    i16 64, label %44
    i16 65, label %53
    i16 79, label %73
  ]

10:                                               ; preds = %5
  %11 = tail call i64 @int_cst_value(ptr noundef nonnull %6) #20
  %12 = getelementptr inbounds %struct.access_matrix, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !318
  %14 = getelementptr inbounds %struct.access_matrix, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !319
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %15, align 8, !tbaa !188
  br label %19

19:                                               ; preds = %10, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %10 ]
  %21 = add i32 %20, %13
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = trunc i64 %11 to i32
  %26 = mul i32 %25, %7
  %27 = add i32 %24, %26
  store i32 %27, ptr %23, align 4, !tbaa !50
  br label %77

28:                                               ; preds = %5
  %29 = tail call i32 @access_matrix_get_index_for_parameter(ptr noundef nonnull %6, ptr noundef %2) #20
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds i32, ptr %1, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = add nsw i32 %34, %7
  store i32 %35, ptr %33, align 4, !tbaa !50
  br label %77

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef %38, ptr noundef %1, ptr noundef %2, i32 noundef %7), !range !110
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  br label %5

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef %46, ptr noundef %1, ptr noundef %2, i32 noundef %7), !range !110
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = sub nsw i32 0, %7
  br label %5

53:                                               ; preds = %5
  %54 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 23
  %59 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  br i1 %58, label %61, label %65

61:                                               ; preds = %53
  %62 = tail call i64 @int_cst_value(ptr noundef nonnull %55) #20
  %63 = trunc i64 %62 to i32
  %64 = mul i32 %63, %7
  br label %5

65:                                               ; preds = %53
  %66 = load i64, ptr %60, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 23
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = tail call i64 @int_cst_value(ptr noundef nonnull %60) #20
  %71 = trunc i64 %70 to i32
  %72 = mul i32 %71, %7
  br label %5

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = sub nsw i32 0, %7
  br label %5

77:                                               ; preds = %5, %65, %44, %36, %31, %28, %19
  %78 = phi i8 [ 1, %19 ], [ 1, %31 ], [ 0, %28 ], [ 0, %36 ], [ 0, %44 ], [ 0, %65 ], [ 0, %5 ]
  ret i8 %78
}

declare i32 @access_matrix_get_index_for_parameter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !42, i64 40}
!55 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!56 = !{!55, !36, i64 32}
!57 = !{!55, !36, i64 24}
!58 = !{!55, !36, i64 16}
!59 = !{!55, !41, i64 48}
!60 = !{!55, !36, i64 8}
!61 = !{!62, !36, i64 0}
!62 = !{!"lambda_body_vector_s", !36, i64 0, !41, i64 8, !41, i64 12}
!63 = !{!62, !41, i64 8}
!64 = !{!62, !41, i64 12}
!65 = !{!66, !41, i64 8}
!66 = !{!"lambda_trans_matrix_s", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!67 = !{!66, !41, i64 12}
!68 = !{!66, !41, i64 16}
!69 = !{!66, !36, i64 0}
!70 = distinct !{!70, !52, !53}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = !{!74, !36, i64 0}
!74 = !{!"lambda_linear_expression_s", !36, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32}
!75 = !{!74, !41, i64 8}
!76 = !{!74, !36, i64 16}
!77 = !{!74, !41, i64 24}
!78 = !{!74, !36, i64 32}
!79 = distinct !{!79, !52, !53}
!80 = !{!81, !36, i64 16}
!81 = !{!"lambda_loop_s", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24}
!82 = !{!81, !41, i64 24}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = !{!86, !36, i64 0}
!86 = !{!"lambda_loopnest_s", !36, i64 0, !41, i64 8, !41, i64 12}
!87 = !{!86, !41, i64 8}
!88 = !{!86, !41, i64 12}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = !{!93, !36, i64 0}
!93 = !{!"lambda_lattice_s", !36, i64 0, !41, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = !{!93, !36, i64 16}
!104 = distinct !{!104, !52, !53}
!105 = !{!93, !36, i64 24}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = distinct !{!108, !52, !53}
!109 = !{!81, !36, i64 0}
!110 = !{i8 0, i8 2}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = !{!81, !36, i64 8}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = distinct !{!119, !52, !53}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = !{!93, !41, i64 8}
!139 = !{!93, !41, i64 32}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = !{!42, !42, i64 0}
!144 = !{!145, !36, i64 48}
!145 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !146, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !147, i64 80, !147, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!146 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!147 = !{!"", !42, i64 0, !42, i64 8}
!148 = distinct !{!148, !52, !53}
!149 = !{!145, !41, i64 36}
!150 = !{!151, !36, i64 24}
!151 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!152 = !{!151, !41, i64 96}
!153 = !{!154}
!154 = distinct !{!154, !155, !"gsi_start_bb: argument 0"}
!155 = distinct !{!155, !"gsi_start_bb"}
!156 = !{!157, !36, i64 0}
!157 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!158 = !{!159, !36, i64 0}
!159 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!160 = !{!161, !36, i64 0}
!161 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!162 = !{!163, !36, i64 8}
!163 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!164 = distinct !{!164, !52, !53}
!165 = !{!166, !36, i64 0}
!166 = !{!"use_optype_d", !36, i64 0, !163, i64 8}
!167 = !{!163, !36, i64 24}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = !{!172, !36, i64 8}
!172 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!173 = !{!145, !36, i64 8}
!174 = distinct !{!174, !52, !53}
!175 = !{!161, !36, i64 16}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!179 = distinct !{!179, !52, !53}
!180 = !{!181, !36, i64 8}
!181 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!182 = !{!145, !41, i64 0}
!183 = !{!151, !36, i64 0}
!184 = !{}
!185 = !{!172, !36, i64 0}
!186 = !{!187, !41, i64 4}
!187 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!188 = !{!187, !41, i64 0}
!189 = !{!190, !41, i64 4}
!190 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!191 = !{!190, !41, i64 0}
!192 = !{!193, !41, i64 4}
!193 = !{!"VEC_lambda_loop_base", !41, i64 0, !41, i64 4, !37, i64 8}
!194 = !{!193, !41, i64 0}
!195 = distinct !{!195, !52, !53}
!196 = !{!197, !36, i64 8}
!197 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!198 = !{!151, !36, i64 48}
!199 = !{!200, !41, i64 4}
!200 = !{!"VEC_source_location_base", !41, i64 0, !41, i64 4, !37, i64 8}
!201 = !{!200, !41, i64 0}
!202 = !{!203, !41, i64 40}
!203 = !{!"phi_arg_d", !163, i64 0, !36, i64 32, !41, i64 40}
!204 = !{!205, !36, i64 0}
!205 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!206 = distinct !{!206, !52, !53}
!207 = !{!151, !36, i64 8}
!208 = !{!209, !41, i64 0}
!209 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!210 = distinct !{!210, !52, !53}
!211 = distinct !{!211, !52, !53}
!212 = !{!213}
!213 = distinct !{!213, !214, !"gsi_start_bb: argument 0"}
!214 = distinct !{!214, !"gsi_start_bb"}
!215 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!216 = !{i64 0, i64 8, !35}
!217 = !{!145, !36, i64 16}
!218 = !{!219}
!219 = distinct !{!219, !220, !"gsi_start_bb: argument 0"}
!220 = distinct !{!220, !"gsi_start_bb"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"gsi_last_bb: argument 0"}
!223 = distinct !{!223, !"gsi_last_bb"}
!224 = !{!159, !36, i64 8}
!225 = !{!205, !36, i64 8}
!226 = !{!205, !36, i64 16}
!227 = !{!228}
!228 = distinct !{!228, !229, !"gsi_after_labels: argument 0"}
!229 = distinct !{!229, !"gsi_after_labels"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"gsi_start_bb: argument 0"}
!232 = distinct !{!232, !"gsi_start_bb"}
!233 = !{!231, !228}
!234 = distinct !{!234, !52, !53}
!235 = !{!236}
!236 = distinct !{!236, !237, !"gsi_start_bb: argument 0"}
!237 = distinct !{!237, !"gsi_start_bb"}
!238 = distinct !{!238, !52, !53}
!239 = !{!240}
!240 = distinct !{!240, !241, !"gsi_start_bb: argument 0"}
!241 = distinct !{!241, !"gsi_start_bb"}
!242 = distinct !{!242, !52, !53}
!243 = !{!163, !36, i64 0}
!244 = !{!245, !41, i64 8}
!245 = !{!"tree_map", !246, i64 0, !41, i64 8, !36, i64 16}
!246 = !{!"tree_map_base", !36, i64 0}
!247 = !{!245, !36, i64 0}
!248 = !{!245, !36, i64 16}
!249 = distinct !{!249, !52, !53}
!250 = !{!181, !36, i64 24}
!251 = !{!252, !36, i64 24}
!252 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !253, i64 32, !253, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !254, i64 104}
!253 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!254 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!255 = distinct !{!255, !52, !53}
!256 = distinct !{!256, !52, !53}
!257 = !{!258}
!258 = distinct !{!258, !259, !"gsi_start_bb: argument 0"}
!259 = distinct !{!259, !"gsi_start_bb"}
!260 = distinct !{!260, !52, !53}
!261 = distinct !{!261, !52, !53}
!262 = !{!263, !36, i64 8}
!263 = !{!"immediate_use_iterator_d", !36, i64 0, !36, i64 8, !163, i64 16, !36, i64 48}
!264 = !{!263, !36, i64 0}
!265 = distinct !{!265, !52, !53}
!266 = distinct !{!266, !52, !53}
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"gsi_start_bb: argument 0"}
!269 = distinct !{!269, !"gsi_start_bb"}
!270 = distinct !{!270, !271, !"gsi_after_labels: argument 0"}
!271 = distinct !{!271, !"gsi_after_labels"}
!272 = !{!270}
!273 = !{!172, !41, i64 48}
!274 = distinct !{!274, !52, !53}
!275 = !{!276, !36, i64 0}
!276 = !{!"def_optype_d", !36, i64 0, !36, i64 8}
!277 = !{!276, !36, i64 8}
!278 = distinct !{!278, !52, !53}
!279 = !{!263, !36, i64 48}
!280 = distinct !{!280, !52, !53}
!281 = distinct !{!281, !52, !53}
!282 = distinct !{!282, !52, !53}
!283 = !{!284, !41, i64 4}
!284 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !37, i64 8}
!285 = !{!284, !41, i64 0}
!286 = distinct !{!286, !52, !53}
!287 = distinct !{!287, !52, !53}
!288 = distinct !{!288, !52, !53}
!289 = distinct !{!289, !52, !53}
!290 = distinct !{!290, !52, !53}
!291 = !{!292, !41, i64 0}
!292 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!293 = !{!294, !36, i64 16}
!294 = !{!"data_dependence_relation", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60, !37, i64 61, !37, i64 62}
!295 = !{!294, !36, i64 0}
!296 = !{!297, !37, i64 24}
!297 = !{!"data_reference", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !298, i64 32, !299, i64 72, !300, i64 88, !36, i64 104}
!298 = !{!"innermost_loop_behavior", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!299 = !{!"indices", !36, i64 0, !36, i64 8}
!300 = !{!"dr_alias", !36, i64 0, !36, i64 8}
!301 = !{!294, !36, i64 8}
!302 = !{!294, !36, i64 48}
!303 = !{!304, !41, i64 0}
!304 = !{!"VEC_lambda_vector_base", !41, i64 0, !41, i64 4, !37, i64 8}
!305 = distinct !{!305, !52, !53}
!306 = distinct !{!306, !52, !53}
!307 = distinct !{!307, !52, !53}
!308 = !{!309, !41, i64 0}
!309 = !{!"VEC_data_reference_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!310 = !{!297, !36, i64 80}
!311 = distinct !{!311, !52, !53}
!312 = distinct !{!312, !52, !53}
!313 = distinct !{!313, !52, !53}
!314 = !{!315, !41, i64 0}
!315 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!316 = !{!317, !36, i64 0}
!317 = !{!"access_matrix", !36, i64 0, !41, i64 8, !36, i64 16, !36, i64 24}
!318 = !{!317, !41, i64 8}
!319 = !{!317, !36, i64 16}
!320 = !{!317, !36, i64 24}
!321 = distinct !{!321, !52, !53}
!322 = !{!297, !36, i64 104}
!323 = distinct !{!323, !52, !53}
!324 = distinct !{!324, !52, !53}
!325 = distinct !{!325, !52, !53}
!326 = distinct !{!326, !52, !53}
!327 = distinct !{!327, !52, !53}
!328 = !{!145, !36, i64 40}
!329 = distinct !{!329, !52, !53}
!330 = distinct !{!330, !52, !53}
!331 = !{!166, !36, i64 32}
!332 = distinct !{!332, !52, !53}
!333 = distinct !{!333, !52, !53}
