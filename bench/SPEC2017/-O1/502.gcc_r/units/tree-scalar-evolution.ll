; ModuleID = 'tree-scalar-evolution.c'
source_filename = "tree-scalar-evolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.scev_info_str = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.chrec_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"(get_loop_exit_condition \0A  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"(analyze_scalar_evolution \0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"  (loop_nb = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"  (scalar = \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"(instantiate_scev \0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"  (instantiate_below = %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"  (evolution_loop = %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"  (chrec = \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"  (res = \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"(number_of_iterations_in_loop\0A\00", align 1
@scalar_evolution_info = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"tree-scalar-evolution.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gt_ggc_r_gt_tree_scalar_evolution_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @scalar_evolution_info, i64 1, i64 8, ptr @gt_ggc_m_P13scev_info_str4htab, ptr @gt_pch_n_P13scev_info_str4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@chrec_not_analyzed_yet = dso_local local_unnamed_addr global ptr null, align 8
@chrec_known = dso_local local_unnamed_addr global ptr null, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"(get_scalar_evolution \0A\00", align 1
@nb_get_scev = internal unnamed_addr global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"  (scalar_evolution = \00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"(analyze_initial_condition \0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"  (loop_phi_node = \0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"  (init_cond = \00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"(analyze_evolution_in_loop \0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"  (loop_phi_node = \00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"  (evolution_function = \00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [20 x i8] c"(add_to_evolution \0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"  (chrec_before = \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c")\0A  (to_add = \00", align 1
@dconstm1 = external global %struct.real_value, align 8
@dconst0 = external global %struct.real_value, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"(set_scalar_evolution \0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"  instantiated_below = %d \0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c")\0A  (scalar_evolution = \00", align 1
@nb_set_scev = internal unnamed_addr global i32 0, align 4
@.str.30 = private unnamed_addr constant [32 x i8] c"  (set_nb_iterations_in_loop = \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"(classify_chrec \00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"  affine_univariate\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"  affine_multivariate\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"  higher_degree_polynomial\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"  undetermined\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\0A(\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"-----------------------------------------\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"%d\09affine univariate chrecs\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"%d\09affine multivariate chrecs\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"%d\09degree greater than 2 polynomials\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"%d\09chrec_dont_know chrecs\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"%d\09total chrecs\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"%d\09with undetermined coefficients\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"%d\09chrecs in the scev database\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"%d\09sets in the scev database\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"%d\09gets in the scev database\0A\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c")\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"%d\09nb_chrec_dont_know_loops\0A\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"%d\09nb_static_loops\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"%d\09nb_total_loops\0A\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !43 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %36 [
    i16 32, label %65
    i16 34, label %65
    i16 29, label %65
    i16 30, label %65
    i16 36, label %65
    i16 31, label %65
    i16 141, label %10
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %18, %16 ], [ null, %10 ]
  %21 = load ptr, ptr @cfun, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.loops, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = zext i32 %1 to i64
  %27 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %20, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %19
  %31 = icmp eq ptr %28, %20
  br i1 %31, label %65, label %32

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %28, ptr noundef nonnull %20) #18
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i8
  br label %65

36:                                               ; preds = %7
  %37 = and i64 %8, 65535
  %38 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.tree_int_cst, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !55
  %46 = trunc i64 %45 to i32
  br label %51

47:                                               ; preds = %36
  %48 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %37
  %49 = load i8, ptr %48, align 1, !tbaa !55
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %41, %47
  %52 = phi i32 [ %46, %41 ], [ %50, %47 ]
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = zext nneg i32 %52 to i64
  br label %59

56:                                               ; preds = %59
  %57 = add nuw nsw i64 %60, 1
  %58 = icmp eq i64 %57, %55
  br i1 %58, label %65, label %59, !llvm.loop !69

59:                                               ; preds = %54, %56
  %60 = phi i64 [ 0, %54 ], [ %57, %56 ]
  %61 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !55
  %63 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %62, i32 noundef %1), !range !70
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %56, label %65

65:                                               ; preds = %59, %56, %51, %7, %7, %7, %7, %7, %32, %19, %30, %7, %4, %2
  %66 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %7 ], [ 0, %19 ], [ 1, %30 ], [ %35, %32 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %51 ], [ 0, %56 ], [ 1, %59 ]
  ret i8 %66
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @compute_overall_effect_of_inner_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !43 {
  br label %3

3:                                                ; preds = %49, %2
  %4 = phi ptr [ %1, %2 ], [ %50, %49 ]
  %5 = load ptr, ptr @chrec_dont_know, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %74, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 146
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !55
  %16 = load ptr, ptr @cfun, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.loops, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = and i64 %15, 4294967295
  %22 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %20, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %28, label %25

25:                                               ; preds = %11
  %26 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %0, ptr noundef %23) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %25, %11
  %29 = tail call ptr @number_of_latch_executions(ptr noundef %23)
  %30 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %74, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %23, align 8, !tbaa !71
  %34 = tail call ptr @chrec_apply(i32 noundef %33, ptr noundef nonnull %4, ptr noundef %29) #18
  %35 = load i32, ptr %0, align 8, !tbaa !71
  %36 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %34, i32 noundef %35), !range !70
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load ptr, ptr @cfun, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  br label %45

45:                                               ; preds = %38, %41
  %46 = phi ptr [ %44, %41 ], [ %39, %38 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = tail call ptr @instantiate_scev(ptr noundef %47, ptr noundef nonnull %0, ptr noundef %34)
  br label %49

49:                                               ; preds = %45, %32
  %50 = phi ptr [ %48, %45 ], [ %34, %32 ]
  br label %3

51:                                               ; preds = %7
  %52 = load i32, ptr %0, align 8, !tbaa !71
  %53 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %54 = icmp eq ptr %53, %4
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %4, i32 noundef %52), !range !70
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %4) #18
  %60 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %59, i32 noundef %52) #18
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 146
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %66 = icmp ne ptr %65, %60
  %67 = load ptr, ptr @chrec_known, align 8
  %68 = icmp ne ptr %67, %60
  %69 = select i1 %66, i1 %68, i1 false
  br label %70

70:                                               ; preds = %58, %64, %51, %55
  %71 = phi i1 [ false, %51 ], [ false, %55 ], [ false, %58 ], [ %69, %64 ]
  %72 = load ptr, ptr @chrec_dont_know, align 8
  %73 = select i1 %71, ptr %4, ptr %72
  br label %74

74:                                               ; preds = %25, %70, %28, %3
  %75 = phi ptr [ %5, %3 ], [ %30, %28 ], [ %73, %70 ], [ %4, %25 ]
  ret ptr %75
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @number_of_latch_executions(ptr noundef %0) local_unnamed_addr #9 !prof !43 {
  %2 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %55

6:                                                ; preds = %1
  %7 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 30, i64 1, ptr nonnull %8)
  br label %16

16:                                               ; preds = %14, %10, %6
  %17 = tail call ptr @single_exit(ptr noundef %0) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = call i32 @integer_nonzerop(ptr noundef %28) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = call ptr @build_int_cst(ptr noundef %26, i64 noundef 0) #18
  br label %41

33:                                               ; preds = %22
  %34 = load ptr, ptr %27, align 8, !tbaa !80
  %35 = call i32 @integer_zerop(ptr noundef %34) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 8, !tbaa !77
  br label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %41

41:                                               ; preds = %31, %39, %37, %19, %16
  %42 = phi ptr [ %32, %31 ], [ %38, %37 ], [ %40, %39 ], [ %7, %19 ], [ %7, %16 ]
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = call i64 @fwrite(ptr nonnull @.str.30, i64 31, i64 1, ptr nonnull %43)
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call void @print_generic_expr(ptr noundef %51, ptr noundef %42, i32 noundef 0) #18
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %53 = call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %52)
  br label %54

54:                                               ; preds = %41, %45, %49
  store ptr %42, ptr %3, align 8, !tbaa !76
  br label %55

55:                                               ; preds = %1, %54
  %56 = phi ptr [ %42, %54 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #18
  ret ptr %56
}

declare ptr @chrec_apply(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @chrec_is_positive(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 !prof !43 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %73 [
    i16 146, label %8
    i16 23, label %66
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = call zeroext i8 @chrec_is_positive(ptr noundef %11, ptr noundef nonnull %3), !range !70
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = call zeroext i8 @chrec_is_positive(ptr noundef %16, ptr noundef nonnull %4), !range !70
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %73, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %3, align 1, !tbaa !55
  %21 = load i8, ptr %4, align 1, !tbaa !55
  %22 = icmp eq i8 %20, %21
  br i1 %22, label %70, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %0, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 146
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load ptr, ptr %10, align 8, !tbaa !55
  %29 = load ptr, ptr %9, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !55
  %32 = trunc i64 %31 to i32
  %33 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %28, i32 noundef %32) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %15, align 8, !tbaa !55
  %37 = load ptr, ptr %9, align 8, !tbaa !55
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !55
  %40 = trunc i64 %39 to i32
  %41 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %36, i32 noundef %40) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !55
  %47 = load ptr, ptr @cfun, align 8, !tbaa !44
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.loops, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = and i64 %46, 4294967295
  %53 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %51, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = tail call ptr @number_of_latch_executions(ptr noundef %54)
  %56 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %55) #18
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %43
  %59 = load ptr, ptr %9, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !55
  %62 = trunc i64 %61 to i32
  %63 = tail call ptr @chrec_apply(i32 noundef %62, ptr noundef nonnull %0, ptr noundef %55) #18
  %64 = call zeroext i8 @chrec_is_positive(ptr noundef %63, ptr noundef nonnull %5), !range !70
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %73, label %70

66:                                               ; preds = %2
  %67 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %0) #18
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %58, %19, %66
  %71 = phi i8 [ %69, %66 ], [ %20, %19 ], [ %20, %58 ]
  %72 = phi i8 [ 1, %66 ], [ 1, %19 ], [ 0, %58 ]
  store i8 %71, ptr %1, align 1, !tbaa !55
  br label %73

73:                                               ; preds = %70, %27, %35, %23, %2, %58, %43, %8, %14
  %74 = phi i8 [ 0, %14 ], [ 0, %8 ], [ 0, %43 ], [ 0, %58 ], [ 0, %2 ], [ 0, %23 ], [ 0, %35 ], [ 0, %27 ], [ %72, %70 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret i8 %74
}

declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_loop_exit_condition(ptr noundef %0) local_unnamed_addr #9 !prof !43 {
  %2 = tail call ptr @single_exit(ptr noundef %0) #18
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr nonnull %3)
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = icmp eq ptr %2, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8, !tbaa !81
  %15 = tail call ptr @last_stmt(ptr noundef %14) #18
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  %19 = select i1 %18, ptr %15, ptr null
  br label %20

20:                                               ; preds = %13, %11
  %21 = phi ptr [ %19, %13 ], [ null, %11 ]
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  tail call void @print_gimple_stmt(ptr noundef nonnull %22, ptr noundef %21, i32 noundef 0, i32 noundef 0) #18
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %30 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %29)
  br label %31

31:                                               ; preds = %28, %24, %20
  ret ptr %21
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !43 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %12 = load i32, ptr %0, align 8, !tbaa !71
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %12)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %15 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %14)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %16, ptr noundef %1, i32 noundef 0) #18
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %17)
  br label %19

19:                                               ; preds = %9, %5, %2
  %20 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ %20, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 23, i64 1, ptr nonnull %29)
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %38 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %37)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %39, ptr noundef %1, i32 noundef 0) #18
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %41 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %40)
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr @nb_get_scev, align 4, !tbaa !59
  %48 = add i32 %47, 1
  store i32 %48, ptr @nb_get_scev, align 4, !tbaa !59
  br label %49

49:                                               ; preds = %46, %42, %26
  %50 = load i64, ptr %1, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %55 [
    i16 141, label %52
    i16 24, label %57
    i16 25, label %57
    i16 23, label %57
  ]

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @find_var_scev_info(ptr noundef %28, ptr noundef nonnull %1)
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  br label %57

55:                                               ; preds = %49
  %56 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  br label %57

57:                                               ; preds = %49, %49, %55, %52, %49
  %58 = phi ptr [ %56, %55 ], [ %54, %52 ], [ %1, %49 ], [ %1, %49 ], [ %1, %49 ]
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %59)
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %67, ptr noundef %58, i32 noundef 0) #18
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %69 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %68)
  br label %70

70:                                               ; preds = %57, %61, %65
  %71 = tail call fastcc ptr @analyze_scalar_evolution_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %58)
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %72)
  br label %80

80:                                               ; preds = %78, %74, %70
  ret ptr %71
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @analyze_scalar_evolution_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !43 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %3
  %15 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %132

16:                                               ; preds = %8
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %21 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %22 = icmp ne ptr %21, %1
  %23 = load ptr, ptr @chrec_known, align 8
  %24 = icmp ne ptr %23, %1
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = icmp eq i64 %18, 146
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  call void @extract_ops_from_tree(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %29 = load ptr, ptr %5, align 8, !tbaa !44
  %30 = load i32, ptr %4, align 4, !tbaa !59
  %31 = load ptr, ptr %6, align 8, !tbaa !44
  %32 = call fastcc ptr @interpret_rhs_expr(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %10, ptr noundef %29, i32 noundef %30, ptr noundef %31)
  br label %33

33:                                               ; preds = %26, %20, %28
  %34 = phi ptr [ %32, %28 ], [ %1, %20 ], [ %21, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %132

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi ptr [ %43, %41 ], [ null, %35 ]
  br i1 %40, label %83, label %46

46:                                               ; preds = %44
  %47 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef nonnull %39) #18
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %83, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @find_common_loop(ptr noundef nonnull %0, ptr noundef %54) #18
  %58 = load ptr, ptr %53, align 8, !tbaa !63
  %59 = tail call fastcc ptr @compute_scalar_evolution_in_loop(ptr noundef %57, ptr noundef %58, ptr noundef %2)
  br label %83

60:                                               ; preds = %49
  %61 = icmp eq ptr %45, %0
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = tail call fastcc ptr @analyze_scalar_evolution_1(ptr noundef %45, ptr noundef nonnull %1, ptr noundef %50)
  %64 = tail call fastcc ptr @compute_scalar_evolution_in_loop(ptr noundef nonnull %0, ptr noundef %45, ptr noundef %63)
  br label %83

65:                                               ; preds = %60
  %66 = load i32, ptr %37, align 8
  %67 = trunc i32 %66 to i8
  switch i8 %67, label %81 [
    i8 6, label %68
    i8 16, label %70
  ]

68:                                               ; preds = %65
  %69 = tail call fastcc ptr @interpret_gimple_assign(ptr noundef nonnull %0, ptr noundef nonnull %37)
  br label %83

70:                                               ; preds = %65
  %71 = load ptr, ptr %38, align 8, !tbaa !55, !nonnull !83, !noundef !83
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct.loop, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !84
  %76 = icmp eq ptr %75, %71
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @interpret_loop_phi(ptr noundef nonnull %0, ptr noundef nonnull %37)
  br label %83

79:                                               ; preds = %70
  %80 = tail call fastcc ptr @interpret_condition_phi(ptr noundef nonnull %0, ptr noundef nonnull %37)
  br label %83

81:                                               ; preds = %65
  %82 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %83

83:                                               ; preds = %44, %46, %68, %81, %79, %77, %52, %56, %62
  %84 = phi ptr [ %59, %56 ], [ %2, %52 ], [ %64, %62 ], [ %82, %81 ], [ %78, %77 ], [ %80, %79 ], [ %69, %68 ], [ %1, %46 ], [ %1, %44 ]
  %85 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %86 = icmp eq ptr %84, %85
  %87 = select i1 %86, ptr %1, ptr %84
  %88 = icmp eq ptr %45, %0
  br i1 %88, label %89, label %132

89:                                               ; preds = %83
  %90 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #18
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load ptr, ptr @cfun, align 8, !tbaa !44
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !75
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ %90, %89 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  %99 = load i64, ptr %1, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 141
  br i1 %101, label %102, label %132

102:                                              ; preds = %96
  %103 = tail call fastcc ptr @find_var_scev_info(ptr noundef %98, ptr noundef nonnull %1)
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %105 = icmp eq ptr %104, null
  br i1 %105, label %131, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %106
  %111 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 23, i64 1, ptr nonnull %104)
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !85
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.28, i32 noundef %114)
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %117 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %116)
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %118, ptr noundef nonnull %1, i32 noundef 0) #18
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %120 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 24, i64 1, ptr %119)
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %121, ptr noundef %87, i32 noundef 0) #18
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %123 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %122)
  br label %124

124:                                              ; preds = %110, %106
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %126 = and i32 %125, 16
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr @nb_set_scev, align 4, !tbaa !59
  %130 = add i32 %129, 1
  store i32 %130, ptr @nb_set_scev, align 4, !tbaa !59
  br label %131

131:                                              ; preds = %128, %124, %102
  store ptr %87, ptr %103, align 8, !tbaa !44
  br label %132

132:                                              ; preds = %131, %96, %83, %33, %14
  %133 = phi ptr [ %15, %14 ], [ %34, %33 ], [ %87, %83 ], [ %87, %96 ], [ %87, %131 ]
  ret ptr %133
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @instantiate_scev(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !43 {
  %4 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_scev_info, ptr noundef nonnull @eq_scev_info, ptr noundef nonnull @del_scev_info) #18
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 19, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %15)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %18 = load i32, ptr %1, align 8, !tbaa !71
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %18)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %21 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 11, i64 1, ptr %20)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %22, ptr noundef %2, i32 noundef 0) #18
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %24 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %23)
  br label %25

25:                                               ; preds = %11, %7, %3
  %26 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %4, i32 noundef 0)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 9, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %26, i32 noundef 0) #18
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %37 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %33, %29, %25
  tail call void @htab_delete(ptr noundef %4) #18
  ret ptr %26
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_scev_info(ptr nocapture noundef readonly %0) #10 !prof !43 {
  %2 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !55
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @eq_scev_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !43 {
  %3 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.scev_info_str, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !88
  %10 = load ptr, ptr %1, align 8, !tbaa !88
  %11 = icmp eq ptr %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define internal void @del_scev_info(ptr noundef %0) #9 !prof !43 {
  tail call void @ggc_free(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = add nsw i32 %5, 1
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 63, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !89
  %11 = icmp slt i32 %10, %5
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br i1 %11, label %100, label %13

13:                                               ; preds = %6
  %14 = icmp ne ptr %12, %2
  %15 = load ptr, ptr @chrec_known, align 8
  %16 = icmp ne ptr %15, %2
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %100

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %100

21:                                               ; preds = %18
  %22 = load i64, ptr %2, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %82 [
    i16 141, label %24
    i16 146, label %26
    i16 66, label %28
    i16 63, label %28
    i16 64, label %28
    i16 65, label %28
    i16 116, label %64
    i16 113, label %64
    i16 79, label %70
    i16 90, label %70
    i16 145, label %78
    i16 144, label %80
  ]

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @instantiate_scev_name(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @instantiate_scev_poly(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

28:                                               ; preds = %21, %21, %21, %21
  %29 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %30 = icmp ne ptr %29, %2
  %31 = load ptr, ptr @chrec_known, align 8
  %32 = icmp ne ptr %31, %2
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  br label %37

37:                                               ; preds = %28, %34
  %38 = phi ptr [ %36, %34 ], [ null, %28 ]
  %39 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %40, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  %44 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %100, label %46

46:                                               ; preds = %37
  %47 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %42, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  %48 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %100, label %50

50:                                               ; preds = %46
  %51 = icmp eq ptr %43, %40
  %52 = icmp eq ptr %47, %42
  %53 = and i1 %51, %52
  br i1 %53, label %100, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @chrec_convert(ptr noundef %38, ptr noundef %43, ptr noundef null) #18
  %56 = tail call ptr @chrec_convert_rhs(ptr noundef %38, ptr noundef %47, ptr noundef null) #18
  switch i16 %23, label %63 [
    i16 66, label %57
    i16 63, label %57
    i16 64, label %59
    i16 65, label %61
  ]

57:                                               ; preds = %54, %54
  %58 = tail call ptr @chrec_fold_plus(ptr noundef %38, ptr noundef %55, ptr noundef %56) #18
  br label %100

59:                                               ; preds = %54
  %60 = tail call ptr @chrec_fold_minus(ptr noundef %38, ptr noundef %55, ptr noundef %56) #18
  br label %100

61:                                               ; preds = %54
  %62 = tail call ptr @chrec_fold_multiply(ptr noundef %38, ptr noundef %55, ptr noundef %56) #18
  br label %100

63:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2316, ptr noundef nonnull @.str.13) #18
  br label %100

64:                                               ; preds = %21, %21
  %65 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  %67 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !55
  %69 = tail call fastcc ptr @instantiate_scev_convert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %66, ptr noundef %68, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

70:                                               ; preds = %21, %21
  %71 = trunc i64 %22 to i32
  %72 = and i32 %71, 65535
  %73 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !55
  %77 = tail call fastcc ptr @instantiate_scev_not(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %72, ptr noundef %74, ptr noundef %76, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

78:                                               ; preds = %21
  %79 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %100

80:                                               ; preds = %21
  %81 = load ptr, ptr @chrec_known, align 8, !tbaa !44
  br label %100

82:                                               ; preds = %21
  %83 = and i64 %22, 65535
  %84 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !59
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %100

89:                                               ; preds = %82
  %90 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %83
  %91 = load i8, ptr %90, align 1, !tbaa !55
  switch i8 %91, label %98 [
    i8 3, label %92
    i8 2, label %94
    i8 1, label %96
    i8 0, label %100
  ]

92:                                               ; preds = %89
  %93 = tail call fastcc ptr @instantiate_scev_3(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

94:                                               ; preds = %89
  %95 = tail call fastcc ptr @instantiate_scev_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

96:                                               ; preds = %89
  %97 = tail call fastcc ptr @instantiate_scev_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7)
  br label %100

98:                                               ; preds = %89
  %99 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %100

100:                                              ; preds = %6, %61, %59, %57, %46, %37, %63, %50, %89, %13, %18, %98, %96, %94, %92, %87, %80, %78, %70, %64, %26, %24
  %101 = phi ptr [ %88, %87 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %81, %80 ], [ %79, %78 ], [ %77, %70 ], [ %69, %64 ], [ %27, %26 ], [ %25, %24 ], [ %2, %18 ], [ %2, %13 ], [ %2, %89 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %44, %37 ], [ %48, %46 ], [ %2, %63 ], [ %2, %50 ], [ %12, %6 ]
  ret ptr %101
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @resolve_mixers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !43 {
  %3 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_scev_info, ptr noundef nonnull @eq_scev_info, ptr noundef nonnull @del_scev_info) #18
  %4 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr @cfun, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %12, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, ptr noundef %3, i32 noundef 0)
  tail call void @htab_delete(ptr noundef %3) #18
  ret ptr %13
}

declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @number_of_exit_cond_executions(ptr noundef %0) local_unnamed_addr #9 !prof !43 {
  %2 = tail call ptr @number_of_latch_executions(ptr noundef %0)
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %4 = icmp ne ptr %3, %2
  %5 = load ptr, ptr @chrec_known, align 8
  %6 = icmp ne ptr %5, %2
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %2) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #18
  %17 = tail call ptr @chrec_fold_plus(ptr noundef %12, ptr noundef %2, ptr noundef %16) #18
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 134283263
  %20 = icmp eq i64 %19, 134217751
  %21 = load ptr, ptr @chrec_dont_know, align 8
  %22 = select i1 %20, ptr %21, ptr %17
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %2, %11 ], [ %22, %15 ]
  ret ptr %24
}

declare ptr @chrec_fold_plus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gather_stats_on_scev_database() local_unnamed_addr #9 !prof !43 {
  %1 = alloca %struct.chrec_stats, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !44
  call void @htab_traverse(ptr noundef %5, ptr noundef nonnull @gather_stats_on_scev_database_1, ptr noundef nonnull %1) #18
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call fastcc void @dump_chrecs_stats(ptr noundef %6, ptr noundef nonnull %1)
  br label %7

7:                                                ; preds = %0, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @gather_stats_on_scev_database_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.scev_info_str, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  tail call fastcc void @gather_chrec_stats(ptr noundef %5, ptr noundef %1)
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_chrecs_stats(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !43 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 3, i64 1, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %5 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %6)
  %8 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %9)
  %11 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !95
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %12)
  %14 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !96
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %15)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %18 = load i32, ptr %1, align 4, !tbaa !97
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %18)
  %20 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !98
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %21)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %24 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !44
  %25 = tail call i64 @htab_elements(ptr noundef %24) #18
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %26)
  %28 = load i32, ptr @nb_set_scev, align 4, !tbaa !59
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %28)
  %30 = load i32, ptr @nb_get_scev, align 4, !tbaa !59
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %30)
  %32 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %33 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @scev_initialize() local_unnamed_addr #12 !prof !99 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 100, ptr noundef nonnull @hash_scev_info, ptr noundef nonnull @eq_scev_info, ptr noundef nonnull @del_scev_info, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  store ptr %1, ptr @scalar_evolution_info, align 8, !tbaa !44
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12, !prof !100

4:                                                ; preds = %0
  store ptr null, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %5 = tail call ptr @make_node_stat(i32 noundef 145) #18
  store ptr %5, ptr @chrec_dont_know, align 8, !tbaa !44
  %6 = tail call ptr @make_node_stat(i32 noundef 144) #18
  store ptr %6, ptr @chrec_known, align 8, !tbaa !44
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !44
  %8 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  store ptr %7, ptr %9, align 8, !tbaa !55
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !44
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %0, %4
  %13 = load ptr, ptr @cfun, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %92, label %17, !prof !101

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !102

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 8, !tbaa !103
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ]
  %25 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %24, i64 noundef 8, i64 noundef 4) #18
  %26 = load ptr, ptr @cfun, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.loops, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  br label %31

31:                                               ; preds = %44, %23
  %32 = phi ptr [ %30, %23 ], [ %45, %44 ]
  %33 = load i32, ptr %32, align 8, !tbaa !71
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %40, label %35, !prof !106

35:                                               ; preds = %31
  %36 = load i32, ptr %25, align 4, !tbaa !107
  %37 = add i32 %36, 1
  store i32 %37, ptr %25, align 4, !tbaa !107
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.VEC_int_base, ptr %25, i64 0, i32 2, i64 %38
  store i32 %33, ptr %39, align 4, !tbaa !59
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !109
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44, !prof !106

44:                                               ; preds = %48, %40
  %45 = phi ptr [ %42, %40 ], [ %51, %48 ]
  br label %31, !llvm.loop !110

46:                                               ; preds = %67
  %47 = icmp eq ptr %25, null
  br label %70

48:                                               ; preds = %40, %67
  %49 = phi ptr [ %68, %67 ], [ %32, %40 ]
  %50 = getelementptr inbounds %struct.loop, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !prof !106, !llvm.loop !110

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.loop, ptr %49, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !112
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !106

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8, !tbaa !103
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %58, %57 ], [ 0, %53 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62, !prof !106

62:                                               ; preds = %59
  %63 = add i32 %60, -1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %55, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !44
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi ptr [ %66, %62 ], [ null, %59 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %46, label %48, !prof !106, !llvm.loop !113

70:                                               ; preds = %46, %82
  %71 = phi i32 [ %84, %82 ], [ 0, %46 ]
  br i1 %47, label %79, label %72, !prof !102

72:                                               ; preds = %70
  %73 = load i32, ptr %25, align 4, !tbaa !107
  %74 = icmp ugt i32 %73, %71
  br i1 %74, label %75, label %79, !prof !102

75:                                               ; preds = %72
  %76 = zext i32 %71 to i64
  %77 = getelementptr inbounds %struct.VEC_int_base, ptr %25, i64 0, i32 2, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !59
  br label %79

79:                                               ; preds = %75, %72, %70
  %80 = phi i32 [ %78, %75 ], [ 0, %72 ], [ 0, %70 ]
  %81 = phi i1 [ false, %75 ], [ true, %72 ], [ true, %70 ]
  br i1 %81, label %90, label %82, !prof !106

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.loops, ptr %28, i64 0, i32 1
  %84 = add i32 %71, 1
  %85 = load ptr, ptr %83, align 8, !tbaa !67
  %86 = zext i32 %80 to i64
  %87 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %85, i64 0, i32 2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %70, label %92, !llvm.loop !114

90:                                               ; preds = %79
  br i1 %47, label %92, label %91, !prof !102

91:                                               ; preds = %90
  tail call void @free(ptr noundef %25)
  br label %92

92:                                               ; preds = %82, %90, %91, %12
  %93 = phi i32 [ 0, %12 ], [ %71, %91 ], [ %71, %90 ], [ %84, %82 ]
  %94 = phi ptr [ null, %12 ], [ null, %91 ], [ null, %90 ], [ %25, %82 ]
  %95 = phi ptr [ null, %12 ], [ null, %91 ], [ null, %90 ], [ %88, %82 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %133, label %97, !prof !115

97:                                               ; preds = %92, %128
  %98 = phi ptr [ %131, %128 ], [ %95, %92 ]
  %99 = phi ptr [ %130, %128 ], [ %94, %92 ]
  %100 = phi i32 [ %129, %128 ], [ %93, %92 ]
  %101 = getelementptr inbounds %struct.loop, ptr %98, i64 0, i32 11
  store ptr null, ptr %101, align 8, !tbaa !76
  %102 = icmp eq ptr %99, null
  %103 = load ptr, ptr @cfun, align 8
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 4
  br label %105

105:                                              ; preds = %117, %97
  %106 = phi i32 [ %100, %97 ], [ %118, %117 ]
  br i1 %102, label %114, label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %99, align 4, !tbaa !107
  %109 = icmp ugt i32 %108, %106
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = zext i32 %106 to i64
  %112 = getelementptr inbounds %struct.VEC_int_base, ptr %99, i64 0, i32 2, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !59
  br label %114

114:                                              ; preds = %110, %107, %105
  %115 = phi i32 [ %113, %110 ], [ 0, %107 ], [ 0, %105 ]
  %116 = phi i1 [ false, %110 ], [ true, %107 ], [ true, %105 ]
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = add i32 %106, 1
  %119 = load ptr, ptr %104, align 8, !tbaa !65
  %120 = getelementptr inbounds %struct.loops, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !67
  %122 = zext i32 %115 to i64
  %123 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %121, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !44
  %125 = icmp eq ptr %124, null
  br i1 %125, label %105, label %128, !llvm.loop !114

126:                                              ; preds = %114
  br i1 %102, label %128, label %127

127:                                              ; preds = %126
  tail call void @free(ptr noundef %99)
  br label %128

128:                                              ; preds = %117, %126, %127
  %129 = phi i32 [ %106, %127 ], [ %106, %126 ], [ %118, %117 ]
  %130 = phi ptr [ null, %127 ], [ null, %126 ], [ %99, %117 ]
  %131 = phi ptr [ null, %127 ], [ null, %126 ], [ %124, %117 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %97, !prof !115, !llvm.loop !116

133:                                              ; preds = %128, %92
  ret void
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @scev_reset_htab() local_unnamed_addr #9 !prof !43 {
  %1 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @scev_reset() local_unnamed_addr #12 !prof !117 {
  %1 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !118

3:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %125, label %9, !prof !119

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !119

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !103
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %16, i64 noundef 8, i64 noundef 4) #18
  %18 = load ptr, ptr @cfun, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.loops, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  br label %23

23:                                               ; preds = %36, %15
  %24 = phi ptr [ %22, %15 ], [ %37, %36 ]
  %25 = load i32, ptr %24, align 8, !tbaa !71
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %32, label %27, !prof !118

27:                                               ; preds = %23
  %28 = load i32, ptr %17, align 4, !tbaa !107
  %29 = add i32 %28, 1
  store i32 %29, ptr %17, align 4, !tbaa !107
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.VEC_int_base, ptr %17, i64 0, i32 2, i64 %30
  store i32 %25, ptr %31, align 4, !tbaa !59
  br label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.loop, ptr %24, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !118

36:                                               ; preds = %40, %32
  %37 = phi ptr [ %34, %32 ], [ %43, %40 ]
  br label %23, !llvm.loop !110

38:                                               ; preds = %59
  %39 = icmp eq ptr %17, null
  br label %62

40:                                               ; preds = %32, %59
  %41 = phi ptr [ %60, %59 ], [ %24, %32 ]
  %42 = getelementptr inbounds %struct.loop, ptr %41, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !111
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !prof !118, !llvm.loop !110

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.loop, ptr %41, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !112
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !118

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8, !tbaa !103
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ 0, %45 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54, !prof !118

54:                                               ; preds = %51
  %55 = add i32 %52, -1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %47, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi ptr [ %58, %54 ], [ null, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %38, label %40, !prof !118, !llvm.loop !113

62:                                               ; preds = %38, %74
  %63 = phi i32 [ %76, %74 ], [ 0, %38 ]
  br i1 %39, label %71, label %64, !prof !119

64:                                               ; preds = %62
  %65 = load i32, ptr %17, align 4, !tbaa !107
  %66 = icmp ugt i32 %65, %63
  br i1 %66, label %67, label %71, !prof !119

67:                                               ; preds = %64
  %68 = zext i32 %63 to i64
  %69 = getelementptr inbounds %struct.VEC_int_base, ptr %17, i64 0, i32 2, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !59
  br label %71

71:                                               ; preds = %67, %64, %62
  %72 = phi i32 [ %70, %67 ], [ 0, %64 ], [ 0, %62 ]
  %73 = phi i1 [ false, %67 ], [ true, %64 ], [ true, %62 ]
  br i1 %73, label %82, label %74, !prof !118

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.loops, ptr %20, i64 0, i32 1
  %76 = add i32 %63, 1
  %77 = load ptr, ptr %75, align 8, !tbaa !67
  %78 = zext i32 %72 to i64
  %79 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %77, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = icmp eq ptr %80, null
  br i1 %81, label %62, label %84, !llvm.loop !114

82:                                               ; preds = %71
  br i1 %39, label %84, label %83, !prof !119

83:                                               ; preds = %82
  tail call void @free(ptr noundef %17)
  br label %84

84:                                               ; preds = %74, %82, %83
  %85 = phi i32 [ %63, %83 ], [ %63, %82 ], [ %76, %74 ]
  %86 = phi ptr [ null, %83 ], [ null, %82 ], [ %17, %74 ]
  %87 = phi ptr [ null, %83 ], [ null, %82 ], [ %80, %74 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %125, label %89, !prof !115

89:                                               ; preds = %84, %120
  %90 = phi ptr [ %123, %120 ], [ %87, %84 ]
  %91 = phi ptr [ %122, %120 ], [ %86, %84 ]
  %92 = phi i32 [ %121, %120 ], [ %85, %84 ]
  %93 = getelementptr inbounds %struct.loop, ptr %90, i64 0, i32 11
  store ptr null, ptr %93, align 8, !tbaa !76
  %94 = icmp eq ptr %91, null
  %95 = load ptr, ptr @cfun, align 8
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 4
  br label %97

97:                                               ; preds = %109, %89
  %98 = phi i32 [ %92, %89 ], [ %110, %109 ]
  br i1 %94, label %106, label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %91, align 4, !tbaa !107
  %101 = icmp ugt i32 %100, %98
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = zext i32 %98 to i64
  %104 = getelementptr inbounds %struct.VEC_int_base, ptr %91, i64 0, i32 2, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !59
  br label %106

106:                                              ; preds = %102, %99, %97
  %107 = phi i32 [ %105, %102 ], [ 0, %99 ], [ 0, %97 ]
  %108 = phi i1 [ false, %102 ], [ true, %99 ], [ true, %97 ]
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = add i32 %98, 1
  %111 = load ptr, ptr %96, align 8, !tbaa !65
  %112 = getelementptr inbounds %struct.loops, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !67
  %114 = zext i32 %107 to i64
  %115 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %113, i64 0, i32 2, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  %117 = icmp eq ptr %116, null
  br i1 %117, label %97, label %120, !llvm.loop !114

118:                                              ; preds = %106
  br i1 %94, label %120, label %119

119:                                              ; preds = %118
  tail call void @free(ptr noundef %91)
  br label %120

120:                                              ; preds = %109, %118, %119
  %121 = phi i32 [ %98, %119 ], [ %98, %118 ], [ %110, %109 ]
  %122 = phi ptr [ null, %119 ], [ null, %118 ], [ %91, %109 ]
  %123 = phi ptr [ null, %119 ], [ null, %118 ], [ %116, %109 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %89, !prof !115, !llvm.loop !120

125:                                              ; preds = %120, %84, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #9 !prof !43 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, i8 0, i64 17, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %75 [
    i16 8, label %13
    i16 10, label %13
  ]

13:                                               ; preds = %5, %5
  %14 = call fastcc ptr @analyze_scalar_evolution_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6)
  %15 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %14) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %13
  %18 = load i32, ptr %0, align 8, !tbaa !71
  %19 = call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %14, i32 noundef %18), !range !70
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = call zeroext i8 @tree_contains_chrecs(ptr noundef %14, ptr noundef null) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  store ptr %14, ptr %3, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = call ptr @build_int_cst(ptr noundef %26, i64 noundef 0) #18
  store ptr %27, ptr %7, align 8, !tbaa !122
  br label %73

28:                                               ; preds = %21
  %29 = load i64, ptr %14, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !55
  %37 = load i32, ptr %0, align 8, !tbaa !71
  %38 = zext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  store ptr %42, ptr %7, align 8, !tbaa !122
  %43 = icmp eq i8 %4, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 23
  br i1 %47, label %48, label %75

48:                                               ; preds = %44, %40
  %49 = call zeroext i8 @tree_contains_chrecs(ptr noundef %42, ptr noundef null) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  store ptr %53, ptr %3, align 8, !tbaa !121
  %54 = call zeroext i8 @tree_contains_chrecs(ptr noundef %53, ptr noundef null) #18
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i8, ptr %6, align 1, !tbaa !55
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i64, ptr %10, align 8
  %61 = and i64 %60, 2097152
  %62 = icmp ne i64 %61, 0
  %63 = load i32, ptr @flag_wrapv, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  %66 = load i32, ptr @flag_trapv, align 4
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = load i32, ptr @flag_strict_overflow, align 4, !tbaa !59
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %56, %69, %59, %24
  %74 = phi i8 [ 1, %24 ], [ 0, %56 ], [ 0, %59 ], [ %72, %69 ]
  store i8 %74, ptr %8, align 8, !tbaa !123
  br label %75

75:                                               ; preds = %73, %44, %5, %51, %48, %28, %32, %13, %17
  %76 = phi i8 [ 0, %17 ], [ 0, %13 ], [ 0, %32 ], [ 0, %28 ], [ 0, %48 ], [ 0, %51 ], [ 0, %5 ], [ 0, %44 ], [ 1, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  ret i8 %76
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @analyze_scalar_evolution_in_loop(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #9 !prof !43 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  store i8 0, ptr %3, align 1, !tbaa !55
  br label %7

7:                                                ; preds = %6, %4
  br label %8

8:                                                ; preds = %58, %7
  %9 = phi i8 [ 0, %7 ], [ %43, %58 ]
  %10 = phi ptr [ %1, %7 ], [ %59, %58 ]
  %11 = phi ptr [ %2, %7 ], [ %13, %58 ]
  %12 = tail call ptr @analyze_scalar_evolution(ptr noundef %10, ptr noundef %11)
  %13 = tail call ptr @resolve_mixers(ptr noundef %10, ptr noundef %12)
  %14 = icmp eq ptr %12, %13
  %15 = select i1 %5, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  store i8 1, ptr %3, align 1, !tbaa !55
  br label %17

17:                                               ; preds = %16, %8
  %18 = icmp eq ptr %10, %0
  br i1 %18, label %65, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %10, align 8, !tbaa !71
  %21 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %22 = icmp eq ptr %21, %13
  %23 = load ptr, ptr @chrec_dont_know, align 8
  %24 = icmp eq ptr %23, %13
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %19
  %27 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %13, i32 noundef %20), !range !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = tail call ptr @tree_strip_nop_conversions(ptr noundef %13) #18
  %31 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %30, i32 noundef %20) #18
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 146
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %37 = icmp ne ptr %36, %31
  %38 = load ptr, ptr @chrec_known, align 8
  %39 = icmp ne ptr %38, %31
  %40 = select i1 %37, i1 %39, i1 false
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %29, %35, %19, %26
  %43 = phi i8 [ %9, %19 ], [ %9, %26 ], [ 0, %29 ], [ %41, %35 ]
  %44 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %29 ], [ true, %35 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %65

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !112
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %51, align 8, !tbaa !103
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %54, %53 ], [ 0, %49 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %60
  %59 = phi ptr [ null, %55 ], [ %64, %60 ]
  br label %8, !llvm.loop !124

60:                                               ; preds = %55
  %61 = add i32 %56, -1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %51, i64 0, i32 2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  br label %58

65:                                               ; preds = %17, %47
  %66 = phi ptr [ %48, %47 ], [ %13, %17 ]
  ret ptr %66
}

declare zeroext i8 @tree_contains_chrecs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @scev_analysis() local_unnamed_addr #9 !prof !43 {
  %1 = alloca %struct.chrec_stats, align 4
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 37) #18
  store ptr %4, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr @cfun, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  call fastcc void @get_exit_conditions_rec(ptr noundef %11, ptr noundef nonnull %3)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %88, label %14

14:                                               ; preds = %0
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %88, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %19

19:                                               ; preds = %77, %18
  %20 = phi i32 [ 0, %18 ], [ %78, %77 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !125
  %25 = icmp ugt i32 %24, %20
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = zext i32 %20 to i64
  %28 = getelementptr inbounds %struct.VEC_gimple_base, ptr %21, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %26, %23, %19
  %31 = phi ptr [ %29, %26 ], [ null, %23 ], [ null, %19 ]
  %32 = phi i1 [ false, %26 ], [ true, %23 ], [ true, %19 ]
  br i1 %32, label %79, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %39, %37 ], [ null, %33 ]
  %42 = getelementptr inbounds %struct.loop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %43) #18
  %44 = load ptr, ptr %2, align 8, !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %77, label %46

46:                                               ; preds = %40, %73
  %47 = phi ptr [ %75, %73 ], [ %44, %40 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !128
  %49 = getelementptr inbounds %struct.gimple_statement_phi, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !44
  %51 = call zeroext i8 @is_gimple_reg(ptr noundef %50) #18
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %49, align 8, !tbaa !44
  %55 = call ptr @analyze_scalar_evolution(ptr noundef %41, ptr noundef %54)
  %56 = call ptr @loop_preheader_edge(ptr noundef %41) #18
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load ptr, ptr @cfun, align 8, !tbaa !44
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi ptr [ %61, %58 ], [ %56, %53 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = call ptr @instantiate_scev(ptr noundef %64, ptr noundef %41, ptr noundef %55)
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call fastcc void @gather_chrec_stats(ptr noundef %65, ptr noundef nonnull %1)
  br label %73

73:                                               ; preds = %72, %68, %62, %46
  %74 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %47, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !130
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %46, !llvm.loop !131

77:                                               ; preds = %73, %40
  %78 = add i32 %20, 1
  br label %19, !llvm.loop !132

79:                                               ; preds = %30
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call fastcc void @dump_chrecs_stats(ptr noundef nonnull %80, ptr noundef nonnull %1)
  br label %87

87:                                               ; preds = %79, %82, %86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  br label %88

88:                                               ; preds = %87, %14, %0
  br label %89

89:                                               ; preds = %88, %112
  %90 = phi i32 [ %118, %112 ], [ 0, %88 ]
  %91 = phi i32 [ %121, %112 ], [ 0, %88 ]
  %92 = phi i32 [ %122, %112 ], [ 0, %88 ]
  %93 = load ptr, ptr %3, align 8, !tbaa !44
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load i32, ptr %93, align 8, !tbaa !125
  %97 = icmp ugt i32 %96, %92
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = zext i32 %92 to i64
  %100 = getelementptr inbounds %struct.VEC_gimple_base, ptr %93, i64 0, i32 2, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  br label %102

102:                                              ; preds = %98, %95, %89
  %103 = phi ptr [ %101, %98 ], [ null, %95 ], [ null, %89 ]
  %104 = phi i1 [ false, %98 ], [ true, %95 ], [ true, %89 ]
  br i1 %104, label %123, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.gimple_statement_base, ptr %103, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !55
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi ptr [ %111, %109 ], [ null, %105 ]
  %114 = call ptr @number_of_latch_executions(ptr noundef %113)
  %115 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %114) #18
  %116 = icmp ne i8 %115, 0
  %117 = zext i1 %116 to i32
  %118 = add i32 %90, %117
  %119 = xor i1 %116, true
  %120 = zext i1 %119 to i32
  %121 = add i32 %91, %120
  %122 = add i32 %92, 1
  br label %89, !llvm.loop !133

123:                                              ; preds = %102
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %125 = icmp eq ptr %124, null
  br i1 %125, label %153, label %126

126:                                              ; preds = %123
  %127 = call i64 @fwrite(ptr nonnull @.str.37, i64 3, i64 1, ptr nonnull %124)
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %129 = call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %128)
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.49, i32 noundef %90)
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.50, i32 noundef %91)
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %135 = load ptr, ptr @cfun, align 8, !tbaa !44
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !65
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.loops, ptr %137, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !67
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %141, align 8, !tbaa !103
  br label %145

145:                                              ; preds = %143, %139, %126
  %146 = phi i32 [ 0, %126 ], [ %144, %143 ], [ 0, %139 ]
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.51, i32 noundef %146)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %149 = call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %148)
  %150 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %151 = call i64 @fwrite(ptr nonnull @.str.48, i64 3, i64 1, ptr %150)
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call void @print_loops(ptr noundef %152, i32 noundef 3) #18
  br label %153

153:                                              ; preds = %123, %145
  %154 = load ptr, ptr %3, align 8, !tbaa !44
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  call void @free(ptr noundef %154)
  br label %157

157:                                              ; preds = %153, %156
  store ptr null, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @scev_finalize() local_unnamed_addr #12 !prof !134 {
  %1 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !135

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #18
  store ptr null, ptr @scalar_evolution_info, align 8, !tbaa !44
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @expression_expensive_p(ptr noundef %0) local_unnamed_addr #9 !prof !43 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = phi ptr [ %0, %1 ], [ %25, %23 ]
  %4 = tail call zeroext i8 @is_gimple_val(ptr noundef %3) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %14 [
    i16 76, label %9
    i16 74, label %9
    i16 73, label %9
    i16 72, label %9
    i16 71, label %9
    i16 70, label %9
    i16 69, label %9
    i16 68, label %9
    i16 67, label %9
  ]

9:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6
  %10 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = tail call i32 @integer_pow2p(ptr noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %6, %9
  %15 = and i64 %7, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !59
  switch i32 %17, label %26 [
    i32 7, label %18
    i32 5, label %18
    i32 6, label %23
  ]

18:                                               ; preds = %14, %14
  %19 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = tail call zeroext i8 @expression_expensive_p(ptr noundef %20), !range !70
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  br label %2

26:                                               ; preds = %18, %14, %9, %2
  %27 = phi i8 [ 0, %2 ], [ 1, %9 ], [ 1, %14 ], [ 1, %18 ]
  ret i8 %27
}

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @scev_const_prop() local_unnamed_addr #12 !prof !136 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %446, label %11, !prof !137

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.loops, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %446, label %15, !prof !137

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !103
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %446, label %18, !prof !138

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = load ptr, ptr @cfun, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !142
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %86, label %40

30:                                               ; preds = %80, %40
  %31 = phi ptr [ %42, %40 ], [ %81, %80 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  %34 = load ptr, ptr @cfun, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !142
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %86, label %40, !llvm.loop !143

40:                                               ; preds = %18, %30
  %41 = phi ptr [ %33, %30 ], [ %23, %18 ]
  %42 = phi ptr [ %31, %30 ], [ null, %18 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %41) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %45 = load ptr, ptr %1, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %30, label %47

47:                                               ; preds = %40, %80
  %48 = phi ptr [ %84, %80 ], [ %45, %40 ]
  %49 = phi ptr [ %81, %80 ], [ %42, %40 ]
  %50 = load ptr, ptr %48, align 8, !tbaa !128
  %51 = getelementptr inbounds %struct.gimple_statement_phi, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = call zeroext i8 @is_gimple_reg(ptr noundef %52) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %80 [
    i16 10, label %60
    i16 12, label %60
    i16 6, label %60
    i16 7, label %60
    i16 8, label %60
  ]

60:                                               ; preds = %55, %55, %55, %55, %55
  %61 = call ptr @analyze_scalar_evolution(ptr noundef %44, ptr noundef %52)
  %62 = call ptr @resolve_mixers(ptr noundef %44, ptr noundef %61)
  %63 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %62) #18
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  %66 = call zeroext i8 @may_propagate_copy(ptr noundef %52, ptr noundef %62) #18
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = icmp eq ptr %52, %62
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  call void @replace_uses_by(ptr noundef %52, ptr noundef %62) #18
  br label %71

71:                                               ; preds = %70, %68
  %72 = icmp eq ptr %49, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %49, %71 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !55
  %79 = call zeroext i8 @bitmap_set_bit(ptr noundef %76, i32 noundef %78) #18
  br label %80

80:                                               ; preds = %55, %60, %65, %47, %75
  %81 = phi ptr [ %76, %75 ], [ %49, %65 ], [ %49, %60 ], [ %49, %47 ], [ %49, %55 ]
  %82 = load ptr, ptr %1, align 8, !tbaa !144
  %83 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !130
  store ptr %84, ptr %1, align 8, !tbaa !144
  %85 = icmp eq ptr %84, null
  br i1 %85, label %30, label %47, !llvm.loop !146

86:                                               ; preds = %30, %18
  %87 = phi ptr [ null, %18 ], [ %31, %30 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %181, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %87, align 8, !tbaa !147
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr @bitmap_zero_bits, ptr %90
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !149
  %95 = shl i32 %94, 7
  %96 = getelementptr inbounds %struct.bitmap_element_def, ptr %92, i64 0, i32 3
  %97 = load i64, ptr %96, align 8, !tbaa !151
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = or disjoint i32 %95, %99
  br label %101

101:                                              ; preds = %177, %89
  %102 = phi i64 [ %97, %89 ], [ %178, %177 ]
  %103 = phi i32 [ 0, %89 ], [ %158, %177 ]
  %104 = phi ptr [ %92, %89 ], [ %159, %177 ]
  %105 = phi i32 [ %100, %89 ], [ %179, %177 ]
  %106 = icmp eq i64 %102, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %135, %101
  %108 = phi i64 [ %102, %101 ], [ %140, %135 ]
  %109 = phi i32 [ %103, %101 ], [ %136, %135 ]
  %110 = phi ptr [ %104, %101 ], [ %127, %135 ]
  %111 = phi i32 [ %105, %101 ], [ %137, %135 ]
  %112 = and i64 %108, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %107, %114
  %115 = phi i32 [ %118, %114 ], [ %111, %107 ]
  %116 = phi i64 [ %117, %114 ], [ %108, %107 ]
  %117 = lshr exact i64 %116, 1
  %118 = add i32 %115, 1
  %119 = and i64 %116, 2
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %114, label %156, !llvm.loop !152

121:                                              ; preds = %101
  %122 = add i32 %105, 63
  %123 = and i32 %122, -64
  %124 = add i32 %103, 1
  br label %125

125:                                              ; preds = %152, %121
  %126 = phi i64 [ %102, %121 ], [ %147, %152 ]
  %127 = phi ptr [ %104, %121 ], [ %150, %152 ]
  %128 = phi i32 [ %123, %121 ], [ %155, %152 ]
  %129 = phi i32 [ %124, %121 ], [ 0, %152 ]
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %146, label %131

131:                                              ; preds = %125
  %132 = add i32 %128, 128
  %133 = shl i32 %129, 6
  %134 = sub i32 %132, %133
  br label %135

135:                                              ; preds = %131, %142
  %136 = phi i32 [ %144, %142 ], [ %129, %131 ]
  %137 = phi i32 [ %143, %142 ], [ %128, %131 ]
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds %struct.bitmap_element_def, ptr %127, i64 0, i32 3, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !151
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %107

142:                                              ; preds = %135
  %143 = add i32 %137, 64
  %144 = add i32 %136, 1
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %135, !llvm.loop !153

146:                                              ; preds = %142, %125
  %147 = phi i64 [ %126, %125 ], [ %140, %142 ]
  %148 = phi i32 [ %128, %125 ], [ %134, %142 ]
  %149 = phi i32 [ %129, %125 ], [ 2, %142 ]
  %150 = load ptr, ptr %127, align 8, !tbaa !154
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.bitmap_element_def, ptr %150, i64 0, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !149
  %155 = shl i32 %154, 7
  br label %125, !llvm.loop !155

156:                                              ; preds = %146, %114, %107
  %157 = phi i64 [ %108, %107 ], [ %117, %114 ], [ %147, %146 ]
  %158 = phi i32 [ %109, %107 ], [ %109, %114 ], [ %149, %146 ]
  %159 = phi ptr [ %110, %107 ], [ %110, %114 ], [ %150, %146 ]
  %160 = phi i32 [ %111, %107 ], [ %118, %114 ], [ %148, %146 ]
  %161 = phi i1 [ false, %107 ], [ false, %114 ], [ true, %146 ]
  br i1 %161, label %180, label %162

162:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %163 = load ptr, ptr @cfun, align 8, !tbaa !44
  %164 = getelementptr inbounds %struct.function, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !156
  %166 = getelementptr inbounds %struct.gimple_df, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !157
  %168 = zext i32 %160 to i64
  %169 = getelementptr inbounds %struct.VEC_tree_base, ptr %167, i64 0, i32 2, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !44
  %171 = getelementptr inbounds %struct.tree_ssa_name, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !55
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 255
  %175 = icmp eq i32 %174, 16
  br i1 %175, label %177, label %176

176:                                              ; preds = %162
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3277, ptr noundef nonnull @.str.13) #18
  br label %177

177:                                              ; preds = %162, %176
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %172) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %178 = lshr i64 %157, 1
  %179 = add i32 %160, 1
  br label %101, !llvm.loop !161

180:                                              ; preds = %156
  call void @bitmap_obstack_free(ptr noundef nonnull %87) #18
  call void @scev_reset()
  br label %181

181:                                              ; preds = %180, %86
  %182 = load ptr, ptr @cfun, align 8, !tbaa !44
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !65
  %185 = icmp eq ptr %184, null
  br i1 %185, label %277, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.loops, ptr %184, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !67
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = load i32, ptr %188, align 8, !tbaa !103
  br label %192

192:                                              ; preds = %190, %186
  %193 = phi i32 [ %191, %190 ], [ 0, %186 ]
  %194 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %193, i64 noundef 8, i64 noundef 4) #18
  %195 = load ptr, ptr @cfun, align 8, !tbaa !44
  %196 = getelementptr inbounds %struct.function, ptr %195, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !65
  %198 = getelementptr inbounds %struct.loops, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !105
  br label %200

200:                                              ; preds = %200, %192
  %201 = phi ptr [ %199, %192 ], [ %203, %200 ]
  %202 = getelementptr inbounds %struct.loop, ptr %201, i64 0, i32 8
  %203 = load ptr, ptr %202, align 8, !tbaa !109
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %200, !llvm.loop !162

205:                                              ; preds = %200, %254
  %206 = phi ptr [ %255, %254 ], [ %201, %200 ]
  %207 = load i32, ptr %206, align 8, !tbaa !71
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = load i32, ptr %194, align 4, !tbaa !107
  %211 = add i32 %210, 1
  store i32 %211, ptr %194, align 4, !tbaa !107
  %212 = zext i32 %210 to i64
  %213 = getelementptr inbounds %struct.VEC_int_base, ptr %194, i64 0, i32 2, i64 %212
  store i32 %207, ptr %213, align 4, !tbaa !59
  br label %214

214:                                              ; preds = %209, %205
  %215 = getelementptr inbounds %struct.loop, ptr %206, i64 0, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !111
  %217 = icmp eq ptr %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %214, %218
  %219 = phi ptr [ %221, %218 ], [ %216, %214 ]
  %220 = getelementptr inbounds %struct.loop, ptr %219, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !109
  %222 = icmp eq ptr %221, null
  br i1 %222, label %254, label %218, !llvm.loop !163

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct.loop, ptr %206, i64 0, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !112
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = load i32, ptr %225, align 8, !tbaa !103
  br label %229

229:                                              ; preds = %227, %223
  %230 = phi i32 [ %228, %227 ], [ 0, %223 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %229
  %233 = add i32 %230, -1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %225, i64 0, i32 2, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !44
  br label %237

237:                                              ; preds = %232, %229
  %238 = phi ptr [ %236, %232 ], [ null, %229 ]
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = icmp eq ptr %194, null
  %242 = getelementptr inbounds %struct.loops, ptr %197, i64 0, i32 1
  br label %256

243:                                              ; preds = %237
  br i1 %226, label %246, label %244

244:                                              ; preds = %243
  %245 = load i32, ptr %225, align 8, !tbaa !103
  br label %246

246:                                              ; preds = %244, %243
  %247 = phi i32 [ %245, %244 ], [ 0, %243 ]
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %246
  %250 = add i32 %247, -1
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %225, i64 0, i32 2, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !44
  br label %254

254:                                              ; preds = %218, %249, %246
  %255 = phi ptr [ %253, %249 ], [ null, %246 ], [ %219, %218 ]
  br label %205, !llvm.loop !164

256:                                              ; preds = %240, %268
  %257 = phi i32 [ %269, %268 ], [ 0, %240 ]
  br i1 %241, label %265, label %258

258:                                              ; preds = %256
  %259 = load i32, ptr %194, align 4, !tbaa !107
  %260 = icmp ugt i32 %259, %257
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = zext i32 %257 to i64
  %263 = getelementptr inbounds %struct.VEC_int_base, ptr %194, i64 0, i32 2, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !59
  br label %265

265:                                              ; preds = %261, %258, %256
  %266 = phi i32 [ %264, %261 ], [ 0, %258 ], [ 0, %256 ]
  %267 = phi i1 [ false, %261 ], [ true, %258 ], [ true, %256 ]
  br i1 %267, label %275, label %268

268:                                              ; preds = %265
  %269 = add i32 %257, 1
  %270 = load ptr, ptr %242, align 8, !tbaa !67
  %271 = zext i32 %266 to i64
  %272 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %270, i64 0, i32 2, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !44
  %274 = icmp eq ptr %273, null
  br i1 %274, label %256, label %277, !llvm.loop !114

275:                                              ; preds = %265
  br i1 %241, label %277, label %276

276:                                              ; preds = %275
  call void @free(ptr noundef %194)
  br label %277

277:                                              ; preds = %268, %275, %276, %181
  %278 = phi ptr [ null, %181 ], [ null, %276 ], [ null, %275 ], [ %194, %268 ]
  %279 = phi i32 [ 0, %181 ], [ %257, %276 ], [ %257, %275 ], [ %269, %268 ]
  %280 = phi ptr [ null, %181 ], [ null, %276 ], [ null, %275 ], [ %273, %268 ]
  %281 = icmp eq ptr %280, null
  br i1 %281, label %446, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds i8, ptr %5, i64 8
  %284 = getelementptr inbounds i8, ptr %5, i64 16
  br label %285

285:                                              ; preds = %282, %441
  %286 = phi ptr [ %280, %282 ], [ %444, %441 ]
  %287 = phi i32 [ %279, %282 ], [ %443, %441 ]
  %288 = phi ptr [ %278, %282 ], [ %442, %441 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %289 = call ptr @single_exit(ptr noundef nonnull %286) #18
  %290 = icmp eq ptr %289, null
  br i1 %290, label %414, label %291

291:                                              ; preds = %285
  %292 = call ptr @number_of_latch_executions(ptr noundef nonnull %286)
  %293 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %294 = icmp eq ptr %292, %293
  br i1 %294, label %414, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.edge_def, ptr %289, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !165
  %298 = load ptr, ptr %297, align 8, !tbaa !166
  %299 = icmp eq ptr %298, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %295
  %301 = load i32, ptr %298, align 8, !tbaa !167
  %302 = icmp eq i32 %301, 1
  %303 = zext i1 %302 to i8
  br label %304

304:                                              ; preds = %295, %300
  %305 = phi i8 [ %303, %300 ], [ 0, %295 ]
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = call ptr @split_loop_exit_edge(ptr noundef nonnull %289) #18
  br label %309

309:                                              ; preds = %307, %304
  %310 = load ptr, ptr %296, align 8, !tbaa !165
  %311 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 13
  %312 = load i32, ptr %311, align 8, !tbaa !169, !noalias !170
  %313 = and i32 %312, 512
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 7
  %317 = load ptr, ptr %316, align 8, !tbaa !55, !noalias !170
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %317, align 8, !tbaa !175, !noalias !170
  br label %321

321:                                              ; preds = %319, %315, %309
  %322 = phi ptr [ %320, %319 ], [ null, %315 ], [ null, %309 ]
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %322, align 8, !tbaa !177, !noalias !170
  br label %326

326:                                              ; preds = %324, %321
  %327 = phi ptr [ %325, %324 ], [ null, %321 ]
  %328 = icmp eq ptr %327, null
  br i1 %328, label %339, label %329

329:                                              ; preds = %326, %335
  %330 = phi ptr [ %337, %335 ], [ %327, %326 ]
  %331 = load ptr, ptr %330, align 8, !tbaa !128, !noalias !179
  %332 = load i32, ptr %331, align 8, !noalias !179
  %333 = and i32 %332, 255
  %334 = icmp eq i32 %333, 4
  br i1 %334, label %335, label %339

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %330, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !130, !noalias !179
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %329, !llvm.loop !180

339:                                              ; preds = %329, %335, %326
  %340 = phi ptr [ %327, %326 ], [ %330, %329 ], [ %337, %335 ]
  store ptr %340, ptr %5, align 8, !tbaa.struct !127
  store ptr %322, ptr %283, align 8, !tbaa.struct !181
  store ptr %310, ptr %284, align 8, !tbaa.struct !182
  %341 = load ptr, ptr %296, align 8, !tbaa !165
  %342 = getelementptr inbounds %struct.basic_block_def, ptr %341, i64 0, i32 3
  %343 = load ptr, ptr %342, align 8, !tbaa !63
  %344 = getelementptr inbounds %struct.loop, ptr %343, i64 0, i32 7
  %345 = load ptr, ptr %344, align 8, !tbaa !112
  %346 = icmp eq ptr %345, null
  br i1 %346, label %349, label %347

347:                                              ; preds = %339
  %348 = load i32, ptr %345, align 8, !tbaa !103
  br label %349

349:                                              ; preds = %339, %347
  %350 = phi i32 [ %348, %347 ], [ 0, %339 ]
  %351 = add i32 %350, 1
  %352 = call ptr @superloop_at_depth(ptr noundef nonnull %286, i32 noundef %351) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %353 = load ptr, ptr %296, align 8, !tbaa !165
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %353) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  %354 = load ptr, ptr %1, align 8
  %355 = icmp eq ptr %354, null
  br i1 %355, label %414, label %356

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.edge_def, ptr %289, i64 0, i32 6
  br label %358

358:                                              ; preds = %356, %379
  %359 = phi ptr [ %354, %356 ], [ %380, %379 ]
  %360 = load ptr, ptr %359, align 8, !tbaa !128
  %361 = getelementptr inbounds %struct.gimple_statement_phi, ptr %360, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !44
  %363 = load i32, ptr %357, align 4, !tbaa !183
  %364 = getelementptr inbounds %struct.gimple_statement_phi, ptr %360, i64 0, i32 1
  %365 = load i32, ptr %364, align 8, !tbaa !55
  %366 = icmp ult i32 %365, %363
  br i1 %366, label %367, label %368

367:                                              ; preds = %358
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %368

368:                                              ; preds = %358, %367
  %369 = zext i32 %363 to i64
  %370 = getelementptr inbounds %struct.gimple_statement_phi, ptr %360, i64 0, i32 4, i64 %369, i32 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !184
  %372 = load ptr, ptr %371, align 8, !tbaa !44
  %373 = call zeroext i8 @is_gimple_reg(ptr noundef %372) #18
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %368
  %376 = load ptr, ptr %1, align 8, !tbaa !144
  %377 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %376, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !130
  store ptr %378, ptr %1, align 8, !tbaa !144
  br label %379

379:                                              ; preds = %375, %387, %406, %410
  %380 = load ptr, ptr %1, align 8
  %381 = icmp eq ptr %380, null
  br i1 %381, label %414, label %358, !llvm.loop !186

382:                                              ; preds = %368
  %383 = getelementptr inbounds %struct.tree_common, ptr %372, i64 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !55
  %385 = load i64, ptr %384, align 8
  %386 = trunc i64 %385 to i16
  switch i16 %386, label %387 [
    i16 10, label %391
    i16 12, label %391
    i16 6, label %391
    i16 7, label %391
    i16 8, label %391
  ]

387:                                              ; preds = %382
  %388 = load ptr, ptr %1, align 8, !tbaa !144
  %389 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !130
  store ptr %390, ptr %1, align 8, !tbaa !144
  br label %379

391:                                              ; preds = %382, %382, %382, %382, %382
  %392 = call fastcc ptr @analyze_scalar_evolution_in_loop(ptr noundef %352, ptr noundef nonnull %286, ptr noundef %372, ptr noundef null)
  %393 = call ptr @compute_overall_effect_of_inner_loop(ptr noundef %352, ptr noundef %392)
  %394 = call zeroext i8 @tree_contains_chrecs(ptr noundef %393, ptr noundef null) #18
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %391
  %397 = load i32, ptr %352, align 8, !tbaa !71
  %398 = call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %393, i32 noundef %397), !range !70
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %396
  %401 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %393) #18
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = call zeroext i8 @expression_expensive_p(ptr noundef %393), !range !70
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %403, %400, %396, %391
  %407 = load ptr, ptr %1, align 8, !tbaa !144
  %408 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %407, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !130
  store ptr %409, ptr %1, align 8, !tbaa !144
  br label %379

410:                                              ; preds = %403
  %411 = call ptr @unshare_expr(ptr noundef %393) #18
  call void @remove_phi_node(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  %412 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %411, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  %413 = call ptr @gimple_build_assign_stat(ptr noundef %362, ptr noundef %412) #18
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %413, i32 noundef 1) #18
  br label %379

414:                                              ; preds = %379, %349, %291, %285
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %415 = icmp eq ptr %288, null
  %416 = load ptr, ptr @cfun, align 8
  %417 = getelementptr inbounds %struct.function, ptr %416, i64 0, i32 4
  br label %418

418:                                              ; preds = %430, %414
  %419 = phi i32 [ %287, %414 ], [ %431, %430 ]
  br i1 %415, label %427, label %420

420:                                              ; preds = %418
  %421 = load i32, ptr %288, align 4, !tbaa !107
  %422 = icmp ugt i32 %421, %419
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = zext i32 %419 to i64
  %425 = getelementptr inbounds %struct.VEC_int_base, ptr %288, i64 0, i32 2, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !59
  br label %427

427:                                              ; preds = %423, %420, %418
  %428 = phi i32 [ %426, %423 ], [ 0, %420 ], [ 0, %418 ]
  %429 = phi i1 [ false, %423 ], [ true, %420 ], [ true, %418 ]
  br i1 %429, label %439, label %430

430:                                              ; preds = %427
  %431 = add i32 %419, 1
  %432 = load ptr, ptr %417, align 8, !tbaa !65
  %433 = getelementptr inbounds %struct.loops, ptr %432, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !67
  %435 = zext i32 %428 to i64
  %436 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %434, i64 0, i32 2, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !44
  %438 = icmp eq ptr %437, null
  br i1 %438, label %418, label %441, !llvm.loop !114

439:                                              ; preds = %427
  br i1 %415, label %441, label %440

440:                                              ; preds = %439
  call void @free(ptr noundef %288)
  br label %441

441:                                              ; preds = %430, %439, %440
  %442 = phi ptr [ null, %440 ], [ null, %439 ], [ %288, %430 ]
  %443 = phi i32 [ %419, %440 ], [ %419, %439 ], [ %431, %430 ]
  %444 = phi ptr [ null, %440 ], [ null, %439 ], [ %437, %430 ]
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %285, !llvm.loop !187

446:                                              ; preds = %441, %0, %11, %277, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret i32 0
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #3

declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_scev_info_str(ptr noundef %0) local_unnamed_addr #9 !prof !43 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %7) #18
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #18
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_basic_block_def(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P13scev_info_str4htab(ptr noundef %0) #9 !prof !43 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !188
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !190
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !188
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_scev_info_str(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !190
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !191

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !188
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #18
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_scev_info_str(ptr noundef %0) local_unnamed_addr #9 !prof !43 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13scev_info_str, i32 noundef 57) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %5) #18
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #18
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #18
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_13scev_info_str(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !43 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #18
  %7 = getelementptr inbounds %struct.scev_info_str, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #18
  %8 = getelementptr inbounds %struct.scev_info_str, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #18
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_basic_block_def(ptr noundef) local_unnamed_addr #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P13scev_info_str4htab(ptr noundef %0) #9 !prof !43 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P13scev_info_str4htab, i32 noundef 190) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !190
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !188
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_scev_info_str(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !190
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !192

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !188
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P13scev_info_str4htab, i32 noundef 217) #18
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P13scev_info_str4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !43 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !190
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !188
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #18
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !190
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !193

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #18
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @hide_evolution_in_other_loops_than_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @evolution_function_is_invariant_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc nonnull ptr @find_var_scev_info(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !43 {
  %3 = alloca %struct.scev_info_str, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.scev_info_str, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !86
  store ptr %0, ptr %3, align 8, !tbaa !88
  %5 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !44
  %6 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = call ptr @ggc_alloc_stat(i64 noundef 24) #18
  %11 = getelementptr inbounds %struct.scev_info_str, ptr %10, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !86
  %12 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.scev_info_str, ptr %10, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !91
  store ptr %0, ptr %10, align 8, !tbaa !88
  store ptr %10, ptr %6, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %9, %2
  %15 = load ptr, ptr %6, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.scev_info_str, ptr %15, i64 0, i32 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret ptr %16
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @compute_scalar_evolution_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !43 {
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !103
  %11 = add i32 %10, 1
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %5 ]
  %14 = tail call ptr @superloop_at_depth(ptr noundef %1, i32 noundef %13) #18
  %15 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %14, ptr noundef %2)
  %16 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %17 = tail call fastcc ptr @analyze_scalar_evolution_1(ptr noundef %0, ptr noundef %15, ptr noundef %16)
  br label %18

18:                                               ; preds = %3, %12
  %19 = phi ptr [ %17, %12 ], [ %2, %3 ]
  ret ptr %19
}

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @interpret_gimple_assign(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !43 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -1
  %6 = icmp ult i32 %5, 9
  tail call void @llvm.assume(i1 %6)
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !151
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds i8, ptr %1, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = load i32, ptr %1, align 8
  %21 = trunc i32 %20 to i8
  switch i8 %21, label %24 [
    i8 6, label %22
    i8 1, label %22
    i8 8, label %25
  ]

22:                                               ; preds = %15, %15
  %23 = lshr i32 %20, 16
  br label %25

24:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.13) #18
  br label %25

25:                                               ; preds = %24, %22, %15
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ], [ 59, %15 ]
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !55
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !151
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %1, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = load i32, ptr %1, align 8
  %54 = and i32 %53, 255
  %55 = add nsw i32 %54, -10
  %56 = icmp ult i32 %55, -9
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = zext nneg i32 %54 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !151
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %66

66:                                               ; preds = %65, %57
  %67 = getelementptr inbounds i8, ptr %1, i64 %63
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  br label %70

70:                                               ; preds = %51, %66
  %71 = phi ptr [ %69, %66 ], [ null, %51 ]
  %72 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !55
  %74 = icmp ugt i32 %73, 2
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load i32, ptr %1, align 8
  %77 = and i32 %76, 255
  %78 = add nsw i32 %77, -10
  %79 = icmp ult i32 %78, -9
  br i1 %79, label %93, label %80

80:                                               ; preds = %75
  %81 = zext nneg i32 %77 to i64
  %82 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !59
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !151
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %89

89:                                               ; preds = %88, %80
  %90 = getelementptr inbounds i8, ptr %1, i64 %86
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !44
  br label %93

93:                                               ; preds = %70, %75, %89
  %94 = phi ptr [ null, %70 ], [ %92, %89 ], [ null, %75 ]
  %95 = tail call fastcc ptr @interpret_rhs_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %19, ptr noundef %71, i32 noundef %52, ptr noundef %94)
  ret ptr %95
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @interpret_loop_phi(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !43 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call ptr @analyze_scalar_evolution(ptr noundef %11, ptr noundef %15)
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %18, align 8, !tbaa !103
  %22 = add i32 %21, 1
  br label %23

23:                                               ; preds = %13, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %13 ]
  %25 = tail call ptr @superloop_at_depth(ptr noundef %11, i32 noundef %24) #18
  %26 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %25, ptr noundef %16)
  br label %271

27:                                               ; preds = %10
  %28 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  br i1 %6, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ null, %27 ]
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 28, i64 1, ptr nonnull %34)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %43 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 20, i64 1, ptr %42)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_gimple_stmt(ptr noundef %44, ptr noundef %1, i32 noundef 0, i32 noundef 0) #18
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %46 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %45)
  br label %47

47:                                               ; preds = %40, %36, %32
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !55
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %53 = zext nneg i32 %49 to i64
  br label %54

54:                                               ; preds = %83, %51
  %55 = phi i64 [ 0, %51 ], [ %86, %83 ]
  %56 = phi ptr [ %28, %51 ], [ %85, %83 ]
  %57 = load i32, ptr %52, align 8, !tbaa !55
  %58 = zext i32 %57 to i64
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %61

61:                                               ; preds = %60, %54
  %62 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %55, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !184
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = load ptr, ptr %4, align 8, !tbaa !55
  %66 = load ptr, ptr %65, align 8, !tbaa !166, !nonnull !83, !noundef !83
  %67 = getelementptr inbounds %struct.VEC_edge_base, ptr %66, i64 0, i32 2, i64 %55
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = load ptr, ptr %68, align 8, !tbaa !81
  %70 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %33, ptr noundef %69) #18
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %61
  %73 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %74 = icmp eq ptr %56, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load i64, ptr %64, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %83

81:                                               ; preds = %75
  %82 = tail call ptr @chrec_merge(ptr noundef %56, ptr noundef nonnull %64) #18
  br label %83

83:                                               ; preds = %81, %79, %72, %61
  %84 = phi i1 [ true, %79 ], [ false, %81 ], [ false, %61 ], [ false, %72 ]
  %85 = phi ptr [ %80, %79 ], [ %82, %81 ], [ %56, %61 ], [ %64, %72 ]
  %86 = add nuw nsw i64 %55, 1
  %87 = icmp eq i64 %86, %53
  %88 = select i1 %84, i1 true, i1 %87
  br i1 %88, label %89, label %54, !llvm.loop !194

89:                                               ; preds = %83, %47
  %90 = phi ptr [ %28, %47 ], [ %85, %83 ]
  %91 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %92 = icmp eq ptr %90, %91
  %93 = load ptr, ptr @chrec_dont_know, align 8
  %94 = select i1 %92, ptr %93, ptr %90
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 141
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.tree_ssa_name, ptr %94, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !55
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 255
  %103 = icmp eq i32 %102, 16
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = tail call ptr @degenerate_phi_result(ptr noundef nonnull %100) #18
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %105) #18
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, ptr %94, ptr %105
  br label %111

111:                                              ; preds = %107, %104, %98, %89
  %112 = phi ptr [ %94, %89 ], [ %94, %104 ], [ %94, %98 ], [ %110, %107 ]
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 15, i64 1, ptr nonnull %113)
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %121, ptr noundef %112, i32 noundef 0) #18
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %123 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %122)
  br label %124

124:                                              ; preds = %111, %115, %119
  %125 = load i32, ptr %48, align 4, !tbaa !55
  %126 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %127 = load ptr, ptr %4, align 8, !tbaa !55
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !63
  br label %132

132:                                              ; preds = %124, %129
  %133 = phi ptr [ %131, %129 ], [ null, %124 ]
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %135 = icmp eq ptr %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %138 = and i32 %137, 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 28, i64 1, ptr nonnull %134)
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %143 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 19, i64 1, ptr %142)
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_gimple_stmt(ptr noundef %144, ptr noundef %1, i32 noundef 0, i32 noundef 0) #18
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %146 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %145)
  br label %147

147:                                              ; preds = %140, %136, %132
  %148 = icmp sgt i32 %125, 0
  br i1 %148, label %149, label %221

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %151 = zext nneg i32 %125 to i64
  br label %152

152:                                              ; preds = %149, %217
  %153 = phi i64 [ 0, %149 ], [ %219, %217 ]
  %154 = phi ptr [ %126, %149 ], [ %218, %217 ]
  %155 = load i32, ptr %150, align 8, !tbaa !55
  %156 = zext i32 %155 to i64
  %157 = icmp ugt i64 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %159

159:                                              ; preds = %152, %158
  %160 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %153, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !184
  %162 = load ptr, ptr %161, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %163 = load ptr, ptr %4, align 8, !tbaa !55
  %164 = load ptr, ptr %163, align 8, !tbaa !166, !nonnull !83, !noundef !83
  %165 = getelementptr inbounds %struct.VEC_edge_base, ptr %164, i64 0, i32 2, i64 %153
  %166 = load ptr, ptr %165, align 8, !tbaa !44
  %167 = load ptr, ptr %166, align 8, !tbaa !81
  %168 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %133, ptr noundef %167) #18
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %217, label %170

170:                                              ; preds = %159
  %171 = load i64, ptr %162, align 8
  %172 = and i64 %171, 65535
  %173 = icmp eq i64 %172, 141
  br i1 %173, label %174, label %209

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.tree_ssa_name, ptr %162, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !55
  store ptr %112, ptr %3, align 8, !tbaa !44
  %177 = call fastcc i32 @follow_ssa_edge(ptr noundef %133, ptr noundef %176, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 0)
  %178 = load ptr, ptr %3, align 8, !tbaa !44
  %179 = load i64, ptr %178, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 146
  br i1 %181, label %209, label %182

182:                                              ; preds = %174
  %183 = load i32, ptr %133, align 8, !tbaa !71
  %184 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %185 = icmp eq ptr %184, %178
  %186 = load ptr, ptr @chrec_dont_know, align 8
  %187 = icmp eq ptr %186, %178
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %209, label %189

189:                                              ; preds = %182
  %190 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %178, i32 noundef %183), !range !70
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %189
  %193 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %178) #18
  %194 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %193, i32 noundef %183) #18
  %195 = load i64, ptr %194, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 146
  br i1 %197, label %209, label %198

198:                                              ; preds = %192
  %199 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %200 = icmp ne ptr %199, %194
  %201 = load ptr, ptr @chrec_known, align 8
  %202 = icmp ne ptr %201, %194
  %203 = select i1 %200, i1 %202, i1 false
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = tail call i32 @operand_equal_p(ptr noundef %112, ptr noundef nonnull %178, i32 noundef 0) #18
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  store ptr %208, ptr %3, align 8, !tbaa !44
  br label %209

209:                                              ; preds = %182, %189, %192, %174, %198, %204, %207, %170
  %210 = phi i32 [ 0, %170 ], [ %177, %207 ], [ %177, %204 ], [ %177, %198 ], [ %177, %174 ], [ %177, %192 ], [ %177, %189 ], [ %177, %182 ]
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  store ptr %213, ptr %3, align 8, !tbaa !44
  br label %214

214:                                              ; preds = %212, %209
  %215 = load ptr, ptr %3, align 8, !tbaa !44
  %216 = tail call ptr @chrec_merge(ptr noundef %154, ptr noundef %215) #18
  br label %217

217:                                              ; preds = %214, %159
  %218 = phi ptr [ %216, %214 ], [ %154, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %219 = add nuw nsw i64 %153, 1
  %220 = icmp eq i64 %219, %151
  br i1 %220, label %221, label %152, !llvm.loop !195

221:                                              ; preds = %217, %147
  %222 = phi ptr [ %126, %147 ], [ %218, %217 ]
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %224 = icmp eq ptr %223, null
  br i1 %224, label %234, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %227 = and i32 %226, 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %225
  %230 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 24, i64 1, ptr nonnull %223)
  %231 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %231, ptr noundef %222, i32 noundef 0) #18
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %233 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %232)
  br label %234

234:                                              ; preds = %221, %225, %229
  %235 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %236 = icmp eq ptr %222, %235
  br i1 %236, label %270, label %237

237:                                              ; preds = %234
  %238 = load i64, ptr %222, align 8
  %239 = trunc i64 %238 to i16
  switch i16 %239, label %252 [
    i16 116, label %240
    i16 113, label %240
  ]

240:                                              ; preds = %237, %237
  %241 = getelementptr inbounds %struct.tree_exp, ptr %222, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !55
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 146
  br i1 %245, label %246, label %252

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.tree_common, ptr %222, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !55
  %249 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !55
  %251 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %248, ptr noundef %250) #18
  br label %258

252:                                              ; preds = %240, %237
  %253 = and i64 %238, 65535
  %254 = icmp eq i64 %253, 146
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.tree_exp, ptr %222, i64 1
  %257 = load ptr, ptr %256, align 8, !tbaa !55
  br label %258

258:                                              ; preds = %252, %255, %246
  %259 = phi ptr [ %251, %246 ], [ %257, %255 ], [ %222, %252 ]
  %260 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %259) #18
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 146
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1657, ptr noundef nonnull @.str.13) #18
  br label %265

265:                                              ; preds = %258, %264
  %266 = tail call i32 @operand_equal_p(ptr noundef %112, ptr noundef nonnull %260, i32 noundef 0) #18
  %267 = icmp eq i32 %266, 0
  %268 = load ptr, ptr @chrec_dont_know, align 8
  %269 = select i1 %267, ptr %268, ptr undef
  br i1 %267, label %271, label %270

270:                                              ; preds = %265, %234
  br label %271

271:                                              ; preds = %265, %270, %23
  %272 = phi ptr [ %26, %23 ], [ %222, %270 ], [ %269, %265 ]
  ret ptr %272
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @interpret_condition_phi(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !43 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !55
  %5 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %35, %7
  %12 = phi i64 [ 0, %7 ], [ %37, %35 ]
  %13 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !55
  %15 = load ptr, ptr %14, align 8, !tbaa !166, !nonnull !83, !noundef !83
  %16 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !196
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %35

24:                                               ; preds = %11
  %25 = load i32, ptr %9, align 8, !tbaa !55
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %12, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %12, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %32)
  %34 = tail call ptr @chrec_merge(ptr noundef %13, ptr noundef %33) #18
  br label %35

35:                                               ; preds = %29, %22
  %36 = phi ptr [ %23, %22 ], [ %34, %29 ]
  %37 = add nuw nsw i64 %12, 1
  %38 = icmp eq i64 %37, %10
  %39 = select i1 %21, i1 true, i1 %38
  br i1 %39, label %40, label %11, !llvm.loop !197

40:                                               ; preds = %35, %2
  %41 = phi ptr [ %5, %2 ], [ %36, %35 ]
  ret ptr %41
}

declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @interpret_rhs_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #9 !prof !43 {
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !55
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %70

16:                                               ; preds = %11
  switch i32 %4, label %25 [
    i32 141, label %17
    i32 148, label %20
  ]

17:                                               ; preds = %16
  %18 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %19 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %18, ptr noundef %1) #18
  br label %70

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %22)
  %24 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %23, ptr noundef %1) #18
  br label %70

25:                                               ; preds = %16
  %26 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %70

27:                                               ; preds = %6
  switch i32 %4, label %68 [
    i32 66, label %28
    i32 63, label %35
    i32 64, label %41
    i32 79, label %47
    i32 90, label %53
    i32 65, label %59
    i32 116, label %65
    i32 113, label %65
  ]

28:                                               ; preds = %27
  %29 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %30 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5)
  %31 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %29, ptr noundef %1) #18
  %32 = load ptr, ptr @sizetype_tab, align 16, !tbaa !44
  %33 = tail call ptr @chrec_convert(ptr noundef %32, ptr noundef %30, ptr noundef %1) #18
  %34 = tail call ptr @chrec_fold_plus(ptr noundef %2, ptr noundef %31, ptr noundef %33) #18
  br label %70

35:                                               ; preds = %27
  %36 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %37 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5)
  %38 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %36, ptr noundef %1) #18
  %39 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %37, ptr noundef %1) #18
  %40 = tail call ptr @chrec_fold_plus(ptr noundef %2, ptr noundef %38, ptr noundef %39) #18
  br label %70

41:                                               ; preds = %27
  %42 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %43 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5)
  %44 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %42, ptr noundef %1) #18
  %45 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %43, ptr noundef %1) #18
  %46 = tail call ptr @chrec_fold_minus(ptr noundef %2, ptr noundef %44, ptr noundef %45) #18
  br label %70

47:                                               ; preds = %27
  %48 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %49 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %48, ptr noundef %1) #18
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !44
  %51 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef %50) #18
  %52 = tail call ptr @chrec_fold_multiply(ptr noundef %2, ptr noundef %49, ptr noundef %51) #18
  br label %70

53:                                               ; preds = %27
  %54 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %55 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %54, ptr noundef %1) #18
  %56 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !44
  %57 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef %56) #18
  %58 = tail call ptr @chrec_fold_minus(ptr noundef %2, ptr noundef %57, ptr noundef %55) #18
  br label %70

59:                                               ; preds = %27
  %60 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %61 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5)
  %62 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %60, ptr noundef %1) #18
  %63 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %61, ptr noundef %1) #18
  %64 = tail call ptr @chrec_fold_multiply(ptr noundef %2, ptr noundef %62, ptr noundef %63) #18
  br label %70

65:                                               ; preds = %27, %27
  %66 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3)
  %67 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %66, ptr noundef %1) #18
  br label %70

68:                                               ; preds = %27
  %69 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %70

70:                                               ; preds = %28, %35, %41, %47, %53, %59, %65, %68, %25, %20, %17, %14
  %71 = phi ptr [ %15, %14 ], [ %19, %17 ], [ %24, %20 ], [ %26, %25 ], [ %69, %68 ], [ %67, %65 ], [ %64, %59 ], [ %58, %53 ], [ %52, %47 ], [ %46, %41 ], [ %40, %35 ], [ %34, %28 ]
  ret ptr %71
}

declare ptr @chrec_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chrec_fold_minus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chrec_fold_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @chrec_merge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @degenerate_phi_result(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #9 !prof !43 {
  %6 = alloca ptr, align 8
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 18
  br i1 %9, label %317, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 63, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = icmp slt i32 %13, %4
  br i1 %14, label %317, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %21, %19 ], [ null, %15 ]
  %24 = trunc i32 %7 to i8
  switch i8 %24, label %317 [
    i8 16, label %25
    i8 6, label %119
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = icmp eq ptr %29, %17
  br i1 %30, label %109, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !184
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  store ptr %37, ptr %6, align 8, !tbaa !44
  %38 = load ptr, ptr %17, align 8, !tbaa !166, !nonnull !83, !noundef !83
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 0
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !196
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %31
  %46 = load i64, ptr %36, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  store ptr %32, ptr %6, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %51, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %4)
  br label %53

53:                                               ; preds = %31, %45, %49
  %54 = phi i32 [ %52, %49 ], [ 0, %31 ], [ 0, %45 ]
  %55 = and i32 %54, -3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %107, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %6, align 8, !tbaa !44
  store ptr %58, ptr %3, align 8, !tbaa !44
  %59 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !55
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %107

62:                                               ; preds = %57
  %63 = zext nneg i32 %60 to i64
  br label %64

64:                                               ; preds = %62, %101
  %65 = phi i64 [ 1, %62 ], [ %105, %101 ]
  %66 = load ptr, ptr %3, align 8, !tbaa !44
  %67 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %107, label %69

69:                                               ; preds = %64
  %70 = load i32, ptr %33, align 8, !tbaa !55
  %71 = zext i32 %70 to i64
  %72 = icmp ugt i64 %65, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %65, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !184
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  store ptr %78, ptr %6, align 8, !tbaa !44
  %79 = load ptr, ptr %16, align 8, !tbaa !55
  %80 = load ptr, ptr %79, align 8, !tbaa !166, !nonnull !83, !noundef !83
  %81 = getelementptr inbounds %struct.VEC_edge_base, ptr %80, i64 0, i32 2, i64 %65
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !196
  %85 = and i32 %84, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %74
  %88 = load i64, ptr %77, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 141
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  store ptr %32, ptr %6, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.tree_ssa_name, ptr %77, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !55
  %94 = trunc i64 %65 to i32
  %95 = add i32 %94, %4
  %96 = call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %93, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %95)
  br label %97

97:                                               ; preds = %74, %87, %91
  %98 = phi i32 [ %96, %91 ], [ 0, %74 ], [ 0, %87 ]
  %99 = and i32 %98, -3
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %3, align 8, !tbaa !44
  %103 = load ptr, ptr %6, align 8, !tbaa !44
  %104 = tail call ptr @chrec_merge(ptr noundef %102, ptr noundef %103) #18
  store ptr %104, ptr %3, align 8, !tbaa !44
  %105 = add nuw nsw i64 %65, 1
  %106 = icmp eq i64 %105, %63
  br i1 %106, label %107, label %64, !llvm.loop !198

107:                                              ; preds = %97, %64, %101, %57, %53
  %108 = phi i32 [ %54, %53 ], [ 1, %57 ], [ 1, %101 ], [ 1, %64 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %317

109:                                              ; preds = %25
  %110 = icmp eq ptr %1, %2
  br i1 %110, label %317, label %111

111:                                              ; preds = %109
  %112 = icmp eq ptr %23, %0
  br i1 %112, label %317, label %113

113:                                              ; preds = %111
  %114 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %0, ptr noundef %23) #18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %317, label %116

116:                                              ; preds = %113
  %117 = add nsw i32 %4, 1
  %118 = tail call fastcc i32 @follow_ssa_edge_inner_loop_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %117)
  br label %317

119:                                              ; preds = %22
  %120 = lshr i32 %7, 16
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !55
  %124 = icmp eq i8 %123, 3
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = add nsw i32 %8, -1
  %127 = icmp ult i32 %126, 9
  tail call void @llvm.assume(i1 %127)
  %128 = zext nneg i32 %8 to i64
  %129 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !59
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !151
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %136

136:                                              ; preds = %135, %125
  %137 = getelementptr inbounds i8, ptr %1, i64 %133
  %138 = getelementptr inbounds ptr, ptr %137, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !44
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = and i32 %141, 65535
  br label %143

143:                                              ; preds = %119, %136
  %144 = phi i32 [ %142, %136 ], [ %120, %119 ]
  %145 = load i32, ptr %1, align 8
  %146 = trunc i32 %145 to i8
  switch i8 %146, label %217 [
    i8 8, label %147
    i8 6, label %168
    i8 1, label %218
  ]

147:                                              ; preds = %143
  %148 = and i32 %145, 255
  %149 = add nsw i32 %148, -1
  %150 = icmp ult i32 %149, 9
  tail call void @llvm.assume(i1 %150)
  %151 = zext nneg i32 %148 to i64
  %152 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !59
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !151
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %159

159:                                              ; preds = %158, %147
  %160 = getelementptr inbounds i8, ptr %1, i64 %156
  %161 = getelementptr inbounds ptr, ptr %160, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !44
  %163 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !55
  %165 = getelementptr inbounds %struct.tree_common, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !55
  %167 = getelementptr inbounds %struct.tree_common, ptr %166, i64 0, i32 2
  br label %218

168:                                              ; preds = %143
  %169 = lshr i32 %145, 16
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !55
  %173 = icmp eq i8 %172, 3
  br i1 %173, label %174, label %193

174:                                              ; preds = %168
  %175 = and i32 %145, 255
  %176 = add nsw i32 %175, -1
  %177 = icmp ult i32 %176, 9
  tail call void @llvm.assume(i1 %177)
  %178 = zext nneg i32 %175 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !59
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !151
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %186

186:                                              ; preds = %185, %174
  %187 = getelementptr inbounds i8, ptr %1, i64 %183
  %188 = getelementptr inbounds ptr, ptr %187, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !44
  %190 = load i64, ptr %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = and i32 %191, 65535
  br label %193

193:                                              ; preds = %186, %168
  %194 = phi i32 [ %192, %186 ], [ %169, %168 ]
  %195 = icmp eq i32 %194, 66
  br i1 %195, label %196, label %214

196:                                              ; preds = %193
  %197 = load i32, ptr %1, align 8
  %198 = and i32 %197, 255
  %199 = add nsw i32 %198, -1
  %200 = icmp ult i32 %199, 9
  tail call void @llvm.assume(i1 %200)
  %201 = zext nneg i32 %198 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !59
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !151
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %209

209:                                              ; preds = %208, %196
  %210 = getelementptr inbounds i8, ptr %1, i64 %206
  %211 = getelementptr inbounds ptr, ptr %210, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !44
  %213 = getelementptr inbounds %struct.tree_common, ptr %212, i64 0, i32 2
  br label %218

214:                                              ; preds = %193
  %215 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %1) #18
  %216 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  br label %218

217:                                              ; preds = %143
  br label %218

218:                                              ; preds = %143, %159, %209, %214, %217
  %219 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %217 ], [ %167, %159 ], [ %213, %209 ], [ %216, %214 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %143 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !55
  %221 = trunc i32 %144 to i16
  switch i16 %221, label %291 [
    i16 116, label %222
    i16 113, label %222
    i16 66, label %245
    i16 63, label %245
    i16 64, label %245
  ]

222:                                              ; preds = %218, %218
  %223 = load i32, ptr %1, align 8
  %224 = and i32 %223, 255
  %225 = add nsw i32 %224, -10
  %226 = icmp ult i32 %225, -9
  br i1 %226, label %240, label %227

227:                                              ; preds = %222
  %228 = zext nneg i32 %224 to i64
  %229 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !59
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !151
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %236

236:                                              ; preds = %235, %227
  %237 = getelementptr inbounds i8, ptr %1, i64 %233
  %238 = getelementptr inbounds ptr, ptr %237, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !44
  br label %240

240:                                              ; preds = %222, %236
  %241 = phi ptr [ %239, %236 ], [ null, %222 ]
  %242 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %241, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %243 = load ptr, ptr %3, align 8, !tbaa !44
  %244 = tail call ptr @chrec_convert(ptr noundef %220, ptr noundef %243, ptr noundef nonnull %1) #18
  store ptr %244, ptr %3, align 8, !tbaa !44
  br label %317

245:                                              ; preds = %218, %218, %218
  %246 = load i32, ptr %1, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -10
  %249 = icmp ult i32 %248, -9
  br i1 %249, label %263, label %250

250:                                              ; preds = %245
  %251 = zext nneg i32 %247 to i64
  %252 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !59
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !151
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %259

259:                                              ; preds = %258, %250
  %260 = getelementptr inbounds i8, ptr %1, i64 %256
  %261 = getelementptr inbounds ptr, ptr %260, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !44
  br label %263

263:                                              ; preds = %245, %259
  %264 = phi ptr [ %262, %259 ], [ null, %245 ]
  %265 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %266 = load i32, ptr %265, align 4, !tbaa !55
  %267 = icmp ugt i32 %266, 2
  br i1 %267, label %268, label %286

268:                                              ; preds = %263
  %269 = load i32, ptr %1, align 8
  %270 = and i32 %269, 255
  %271 = add nsw i32 %270, -10
  %272 = icmp ult i32 %271, -9
  br i1 %272, label %286, label %273

273:                                              ; preds = %268
  %274 = zext nneg i32 %270 to i64
  %275 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !59
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %277
  %279 = load i64, ptr %278, align 8, !tbaa !151
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %282

282:                                              ; preds = %281, %273
  %283 = getelementptr inbounds i8, ptr %1, i64 %279
  %284 = getelementptr inbounds ptr, ptr %283, i64 2
  %285 = load ptr, ptr %284, align 8, !tbaa !44
  br label %286

286:                                              ; preds = %263, %268, %282
  %287 = phi ptr [ null, %263 ], [ %285, %282 ], [ null, %268 ]
  %288 = getelementptr inbounds %struct.tree_common, ptr %264, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !55
  %290 = tail call fastcc i32 @follow_ssa_edge_binary(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %289, ptr noundef %264, i32 noundef %144, ptr noundef %287, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %317

291:                                              ; preds = %218
  %292 = zext nneg i32 %144 to i64
  %293 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !55
  %295 = icmp eq i8 %294, 3
  br i1 %295, label %296, label %317

296:                                              ; preds = %291
  %297 = load i32, ptr %1, align 8
  %298 = and i32 %297, 255
  %299 = add nsw i32 %298, -10
  %300 = icmp ult i32 %299, -9
  br i1 %300, label %314, label %301

301:                                              ; preds = %296
  %302 = zext nneg i32 %298 to i64
  %303 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !59
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !151
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.13) #18
  br label %310

310:                                              ; preds = %309, %301
  %311 = getelementptr inbounds i8, ptr %1, i64 %307
  %312 = getelementptr inbounds ptr, ptr %311, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !44
  br label %314

314:                                              ; preds = %296, %310
  %315 = phi ptr [ %313, %310 ], [ null, %296 ]
  %316 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %315, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %317

317:                                              ; preds = %314, %291, %286, %240, %22, %113, %111, %109, %10, %5, %116, %107
  %318 = phi i32 [ %118, %116 ], [ %108, %107 ], [ 0, %5 ], [ 2, %10 ], [ 1, %109 ], [ 0, %111 ], [ 0, %113 ], [ 0, %22 ], [ %316, %314 ], [ %290, %286 ], [ %242, %240 ], [ 0, %291 ]
  ret i32 %318
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @follow_ssa_edge_inner_loop_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #9 !prof !43 {
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call ptr @analyze_scalar_evolution(ptr noundef %13, ptr noundef %15)
  %17 = load ptr, ptr %14, align 8, !tbaa !44
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %25 = zext nneg i32 %21 to i64
  br label %26

26:                                               ; preds = %46, %23
  %27 = phi i64 [ 0, %23 ], [ %49, %46 ]
  %28 = phi i32 [ 0, %23 ], [ %47, %46 ]
  %29 = load i32, ptr %24, align 8, !tbaa !55
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %33

33:                                               ; preds = %26, %32
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %27, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !184
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = load ptr, ptr %6, align 8, !tbaa !55
  %38 = load ptr, ptr %37, align 8, !tbaa !166, !nonnull !83, !noundef !83
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 %27
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %13, ptr noundef %41) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %36, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %46

46:                                               ; preds = %44, %33
  %47 = phi i32 [ %28, %33 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 1
  %49 = add nuw nsw i64 %27, 1
  %50 = icmp eq i64 %49, %25
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %26, !llvm.loop !199

52:                                               ; preds = %46, %19
  %53 = phi i32 [ 0, %19 ], [ %47, %46 ]
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  store ptr %56, ptr %3, align 8, !tbaa !44
  br label %60

57:                                               ; preds = %12
  %58 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %13, ptr noundef %16)
  %59 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %58, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %60

60:                                               ; preds = %52, %55, %57
  %61 = phi i32 [ %59, %57 ], [ %53, %55 ], [ %53, %52 ]
  ret i32 %61
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = load i64, ptr %2, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %9 [
    i16 116, label %11
    i16 113, label %11
    i16 148, label %35
    i16 141, label %19
    i16 66, label %23
    i16 63, label %23
    i16 64, label %23
  ]

9:                                                ; preds = %19, %23, %41, %35, %6, %11
  %10 = phi i32 [ %16, %11 ], [ %44, %41 ], [ %34, %23 ], [ %22, %19 ], [ 0, %35 ], [ 0, %6 ]
  ret i32 %10

11:                                               ; preds = %6, %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %15, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %17 = load ptr, ptr %4, align 8, !tbaa !44
  %18 = tail call ptr @chrec_convert(ptr noundef %13, ptr noundef %17, ptr noundef %1) #18
  store ptr %18, ptr %4, align 8, !tbaa !44
  br label %9

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %21, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %9

23:                                               ; preds = %6, %6, %6
  %24 = trunc i64 %7 to i32
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %27) #18
  %33 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %29) #18
  %34 = tail call fastcc i32 @follow_ssa_edge_binary(ptr noundef %0, ptr noundef %1, ptr noundef %31, ptr noundef %32, i32 noundef %25, ptr noundef %33, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %9

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %9

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %43, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %9
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @follow_ssa_edge_binary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef %7, i32 noundef %8) unnamed_addr #9 !prof !43 {
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  switch i32 %4, label %89 [
    i32 66, label %11
    i32 63, label %11
    i32 64, label %66
  ]

11:                                               ; preds = %9, %9
  %12 = load i64, ptr %3, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  %15 = load i64, ptr %5, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %14, label %18, label %54

18:                                               ; preds = %11
  br i1 %17, label %19, label %43

19:                                               ; preds = %18
  %20 = add nsw i32 %8, 1
  %21 = load ptr, ptr %7, align 8, !tbaa !44
  store ptr %21, ptr %10, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %23, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %20)
  switch i32 %24, label %89 [
    i32 1, label %25
    i32 0, label %30
    i32 2, label %41
  ]

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8, !tbaa !71
  %27 = load ptr, ptr %10, align 8, !tbaa !44
  %28 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %27, ptr noundef %1) #18
  %29 = tail call fastcc ptr @add_to_evolution(i32 noundef %26, ptr noundef %28, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %1)
  br label %86

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %32, ptr noundef %6, ptr noundef nonnull %7, i32 noundef %20)
  switch i32 %33, label %89 [
    i32 1, label %34
    i32 2, label %39
  ]

34:                                               ; preds = %30
  %35 = load i32, ptr %0, align 8, !tbaa !71
  %36 = load ptr, ptr %7, align 8, !tbaa !44
  %37 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %36, ptr noundef %1) #18
  %38 = tail call fastcc ptr @add_to_evolution(i32 noundef %35, ptr noundef %37, i32 noundef %4, ptr noundef nonnull %3, ptr noundef %1)
  br label %86

39:                                               ; preds = %30
  %40 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %86

41:                                               ; preds = %19
  %42 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %86

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %45, ptr noundef %6, ptr noundef %7, i32 noundef %8)
  switch i32 %46, label %89 [
    i32 1, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8, !tbaa !71
  %49 = load ptr, ptr %7, align 8, !tbaa !44
  %50 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %49, ptr noundef %1) #18
  %51 = tail call fastcc ptr @add_to_evolution(i32 noundef %48, ptr noundef %50, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %1)
  br label %86

52:                                               ; preds = %43
  %53 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %86

54:                                               ; preds = %11
  br i1 %17, label %55, label %89

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %57, ptr noundef %6, ptr noundef %7, i32 noundef %8)
  switch i32 %58, label %89 [
    i32 1, label %59
    i32 2, label %64
  ]

59:                                               ; preds = %55
  %60 = load i32, ptr %0, align 8, !tbaa !71
  %61 = load ptr, ptr %7, align 8, !tbaa !44
  %62 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %61, ptr noundef %1) #18
  %63 = tail call fastcc ptr @add_to_evolution(i32 noundef %60, ptr noundef %62, i32 noundef %4, ptr noundef nonnull %3, ptr noundef %1)
  br label %86

64:                                               ; preds = %55
  %65 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %86

66:                                               ; preds = %9
  %67 = load i64, ptr %3, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i64, ptr %5, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 141
  %74 = zext i1 %73 to i32
  %75 = add nsw i32 %74, %8
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %77, ptr noundef %6, ptr noundef %7, i32 noundef %75)
  switch i32 %78, label %89 [
    i32 1, label %79
    i32 2, label %84
  ]

79:                                               ; preds = %70
  %80 = load i32, ptr %0, align 8, !tbaa !71
  %81 = load ptr, ptr %7, align 8, !tbaa !44
  %82 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %81, ptr noundef %1) #18
  %83 = tail call fastcc ptr @add_to_evolution(i32 noundef %80, ptr noundef %82, i32 noundef 64, ptr noundef nonnull %5, ptr noundef %1)
  br label %86

84:                                               ; preds = %70
  %85 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %86

86:                                               ; preds = %64, %59, %39, %34, %41, %25, %52, %47, %79, %84
  %87 = phi ptr [ %85, %84 ], [ %83, %79 ], [ %51, %47 ], [ %53, %52 ], [ %29, %25 ], [ %42, %41 ], [ %38, %34 ], [ %40, %39 ], [ %63, %59 ], [ %65, %64 ]
  %88 = phi i32 [ 2, %84 ], [ 1, %79 ], [ 1, %47 ], [ 2, %52 ], [ 1, %25 ], [ 2, %41 ], [ 1, %34 ], [ 2, %39 ], [ 1, %59 ], [ 2, %64 ]
  store ptr %87, ptr %7, align 8, !tbaa !44
  br label %89

89:                                               ; preds = %86, %9, %66, %70, %54, %55, %43, %19, %30
  %90 = phi i32 [ %33, %30 ], [ %24, %19 ], [ %46, %43 ], [ %58, %55 ], [ 0, %54 ], [ %78, %70 ], [ 0, %66 ], [ 0, %9 ], [ %88, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  ret i32 %90
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @add_to_evolution(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !43 {
  %6 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %7 = icmp ne ptr %6, %3
  %8 = load ptr, ptr @chrec_known, align 8
  %9 = icmp ne ptr %8, %3
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi ptr [ %13, %11 ], [ null, %5 ]
  %16 = icmp eq ptr %3, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %3, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 146
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 19, i64 1, ptr nonnull %22)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef %0)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %33 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 18, i64 1, ptr %32)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %34, ptr noundef %1, i32 noundef 0) #18
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %36 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 14, i64 1, ptr %35)
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 0) #18
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %39 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %38)
  br label %40

40:                                               ; preds = %28, %24, %21
  %41 = icmp eq i32 %2, 64
  br i1 %41, label %42, label %53

42:                                               ; preds = %40
  %43 = load i64, ptr %15, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 9
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call ptr @build_real(ptr noundef nonnull %15, ptr noundef nonnull byval(%struct.real_value) align 8 @dconstm1) #18
  br label %50

48:                                               ; preds = %42
  %49 = tail call ptr @build_int_cst_type(ptr noundef nonnull %15, i64 noundef -1) #18
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  %52 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %15, ptr noundef nonnull %3, ptr noundef %51) #18
  br label %53

53:                                               ; preds = %50, %40
  %54 = phi ptr [ %52, %50 ], [ %3, %40 ]
  %55 = tail call fastcc ptr @add_to_evolution_1(i32 noundef %0, ptr noundef %1, ptr noundef %54, ptr noundef %4)
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 9, i64 1, ptr nonnull %56)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %64, ptr noundef %55, i32 noundef 0) #18
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %66 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 3, i64 1, ptr %65)
  br label %67

67:                                               ; preds = %17, %53, %58, %62, %14
  %68 = phi ptr [ %1, %14 ], [ %55, %62 ], [ %55, %58 ], [ %55, %53 ], [ %6, %17 ]
  ret ptr %68
}

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @add_to_evolution_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !43 {
  %5 = load ptr, ptr @cfun, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %9, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 146
  br i1 %15, label %16, label %100

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !55
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %9, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %23, ptr noundef %12) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %25, %16
  %29 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %30 = icmp ne ptr %29, %1
  %31 = load ptr, ptr @chrec_known, align 8
  %32 = icmp ne ptr %31, %1
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  br label %37

37:                                               ; preds = %28, %34
  %38 = phi ptr [ %36, %34 ], [ null, %28 ]
  br i1 %24, label %47, label %39

39:                                               ; preds = %37
  %40 = load i64, ptr %38, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 9
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call ptr @build_real(ptr noundef nonnull %38, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #18
  br label %56

45:                                               ; preds = %39
  %46 = tail call ptr @build_int_cst(ptr noundef nonnull %38, i64 noundef 0) #18
  br label %56

47:                                               ; preds = %37
  %48 = load ptr, ptr %17, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !55
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  br label %56

56:                                               ; preds = %43, %45, %47
  %57 = phi ptr [ %53, %47 ], [ %1, %45 ], [ %1, %43 ]
  %58 = phi ptr [ %55, %47 ], [ %46, %45 ], [ %44, %43 ]
  %59 = phi i32 [ %51, %47 ], [ %0, %45 ], [ %0, %43 ]
  %60 = tail call ptr @chrec_convert(ptr noundef %38, ptr noundef %2, ptr noundef %3) #18
  %61 = tail call ptr @chrec_convert_rhs(ptr noundef %38, ptr noundef %58, ptr noundef %3) #18
  %62 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %63 = icmp ne ptr %62, %61
  %64 = load ptr, ptr @chrec_known, align 8
  %65 = icmp ne ptr %64, %61
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !55
  br label %70

70:                                               ; preds = %56, %67
  %71 = phi ptr [ %69, %67 ], [ null, %56 ]
  %72 = tail call ptr @chrec_fold_plus(ptr noundef %71, ptr noundef %61, ptr noundef %60) #18
  %73 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %59, ptr noundef %57, ptr noundef %72)
  br label %113

74:                                               ; preds = %25
  %75 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %12, ptr noundef %23) #18
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 705, ptr noundef nonnull @.str.13) #18
  br label %78

78:                                               ; preds = %74, %77
  %79 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !55
  %81 = tail call fastcc ptr @add_to_evolution_1(i32 noundef %0, ptr noundef %80, ptr noundef %2, ptr noundef %3)
  %82 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !55
  %84 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %85 = icmp ne ptr %84, %81
  %86 = load ptr, ptr @chrec_known, align 8
  %87 = icmp ne ptr %86, %81
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !55
  br label %92

92:                                               ; preds = %78, %89
  %93 = phi ptr [ %91, %89 ], [ null, %78 ]
  %94 = tail call ptr @chrec_convert_rhs(ptr noundef %93, ptr noundef %83, ptr noundef %3) #18
  %95 = load ptr, ptr %17, align 8, !tbaa !55
  %96 = getelementptr inbounds %struct.tree_int_cst, ptr %95, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !55
  %98 = trunc i64 %97 to i32
  %99 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %98, ptr noundef %81, ptr noundef %94)
  br label %113

100:                                              ; preds = %4
  %101 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %102 = icmp eq ptr %101, %1
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr @chrec_known, align 8
  %105 = icmp eq ptr %104, %1
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !55
  br label %109

109:                                              ; preds = %103, %106
  %110 = phi ptr [ %108, %106 ], [ null, %103 ]
  %111 = tail call ptr @chrec_convert_rhs(ptr noundef %110, ptr noundef %2, ptr noundef %3) #18
  %112 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %111)
  br label %113

113:                                              ; preds = %100, %109, %92, %70
  %114 = phi ptr [ %73, %70 ], [ %99, %92 ], [ %112, %109 ], [ %101, %100 ]
  ret ptr %114
}

declare ptr @chrec_convert_rhs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !43 {
  %4 = load ptr, ptr @chrec_dont_know, align 8
  %5 = icmp eq ptr %4, %1
  %6 = icmp eq ptr %4, %2
  %7 = or i1 %5, %6
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %1, i32 noundef %0), !range !70
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #18
  %16 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %15, i32 noundef %0) #18
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 146
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %22 = icmp ne ptr %21, %16
  %23 = load ptr, ptr @chrec_known, align 8
  %24 = icmp ne ptr %23, %16
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %8, %11, %14, %20
  %27 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %63

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %34 [
    i16 10, label %33
    i16 12, label %33
  ]

33:                                               ; preds = %28, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 143, ptr noundef nonnull @.str.13) #18
  br label %34

34:                                               ; preds = %28, %33
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i16
  switch i16 %38, label %43 [
    i16 10, label %39
    i16 12, label %39
  ]

39:                                               ; preds = %34, %34
  %40 = load ptr, ptr @sizetype_tab, align 16, !tbaa !44
  %41 = load ptr, ptr %29, align 8, !tbaa !55
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %48, label %46

43:                                               ; preds = %34
  %44 = load ptr, ptr %29, align 8, !tbaa !55
  %45 = icmp eq ptr %36, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ 147, %39 ], [ 149, %43 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef %47, ptr noundef nonnull @.str.13) #18
  br label %48

48:                                               ; preds = %46, %43, %39
  %49 = icmp eq ptr %2, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %48
  %51 = load i64, ptr %2, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #18
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48, %50, %54
  %59 = load ptr, ptr %35, align 8, !tbaa !55
  %60 = zext i32 %0 to i64
  %61 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %60) #18
  %62 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %59, ptr noundef %61, ptr noundef %1, ptr noundef %2) #18
  br label %63

63:                                               ; preds = %3, %54, %58, %26
  %64 = phi ptr [ %62, %58 ], [ %27, %26 ], [ %1, %54 ], [ %4, %3 ]
  ret ptr %64
}

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = alloca %struct.scev_info_str, align 8
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %92, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !112
  %18 = icmp eq ptr %17, null
  br i1 %18, label %92, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %17, align 8, !tbaa !103
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %92, label %22

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef nonnull %11) #18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %92

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %26 = getelementptr inbounds %struct.scev_info_str, ptr %7, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !86
  store ptr %0, ptr %7, align 8, !tbaa !88
  %27 = call ptr @htab_find(ptr noundef %4, ptr noundef nonnull %7) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.scev_info_str, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  br label %32

32:                                               ; preds = %25, %29
  %33 = phi ptr [ %31, %29 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %92

35:                                               ; preds = %32
  %36 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  call fastcc void @set_instantiated_value(ptr noundef %4, ptr noundef %0, ptr noundef %2, ptr noundef %36)
  %37 = load ptr, ptr %14, align 8, !tbaa !63
  %38 = call ptr @find_common_loop(ptr noundef %1, ptr noundef %37) #18
  %39 = call ptr @analyze_scalar_evolution(ptr noundef %38, ptr noundef %2)
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 141
  br i1 %42, label %43, label %85

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.gimple_statement_base, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !112
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8, !tbaa !103
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi i32 [ %58, %57 ], [ 0, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !112
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr %62, align 8, !tbaa !103
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi i32 [ %65, %64 ], [ 0, %59 ]
  %68 = icmp ugt i32 %60, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %43, %66, %49
  %70 = icmp eq ptr %39, %2
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = call fastcc ptr @loop_closed_phi_def(ptr noundef %2)
  br label %73

73:                                               ; preds = %69, %71
  %74 = phi ptr [ %72, %71 ], [ %2, %69 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.gimple_statement_base, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !55
  %81 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %80) #18
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76, %73
  %84 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  br label %90

85:                                               ; preds = %66, %35
  %86 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %87 = icmp eq ptr %39, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %39, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  br label %90

90:                                               ; preds = %85, %88, %76, %83
  %91 = phi ptr [ %84, %83 ], [ %74, %76 ], [ %89, %88 ], [ %39, %85 ]
  call fastcc void @set_instantiated_value(ptr noundef %4, ptr noundef %0, ptr noundef %2, ptr noundef %91)
  br label %92

92:                                               ; preds = %13, %32, %6, %19, %22, %90
  %93 = phi ptr [ %91, %90 ], [ %2, %22 ], [ %2, %19 ], [ %2, %6 ], [ %33, %32 ], [ %2, %13 ]
  ret ptr %93
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_poly(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %9, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %11 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %73, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %15, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %17 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %73, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %8, align 8, !tbaa !55
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !55
  %24 = icmp eq ptr %23, %16
  br i1 %24, label %73, label %25

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr %7, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !55
  %29 = trunc i64 %28 to i32
  %30 = load i64, ptr %10, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 146
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = icmp ne ptr %17, %10
  %35 = load ptr, ptr @chrec_known, align 8
  %36 = icmp ne ptr %35, %10
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %45, label %38

38:                                               ; preds = %33, %25
  %39 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.tree_int_cst, ptr %40, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !55
  %43 = and i64 %28, 4294967295
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %38, %33
  %46 = load i64, ptr %16, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 146
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = icmp ne ptr %17, %16
  %51 = load ptr, ptr @chrec_known, align 8
  %52 = icmp ne ptr %51, %16
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !55
  %59 = and i64 %28, 4294967295
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %54, %49
  %62 = icmp ne ptr %17, %10
  %63 = load ptr, ptr @chrec_known, align 8
  %64 = icmp ne ptr %63, %10
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !55
  br label %69

69:                                               ; preds = %61, %66
  %70 = phi ptr [ %68, %66 ], [ null, %61 ]
  %71 = tail call ptr @chrec_convert_rhs(ptr noundef %70, ptr noundef nonnull %16, ptr noundef null) #18
  %72 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %29, ptr noundef nonnull %10, ptr noundef %71)
  br label %73

73:                                               ; preds = %38, %54, %69, %22, %13, %6
  %74 = phi ptr [ %11, %6 ], [ %17, %13 ], [ %2, %22 ], [ %72, %69 ], [ %17, %54 ], [ %17, %38 ]
  ret ptr %74
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_convert(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef %7) unnamed_addr #9 !prof !43 {
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef %7)
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = icmp eq i8 %5, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call ptr @chrec_convert_aggressive(ptr noundef %3, ptr noundef %9) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %12
  %18 = icmp ne ptr %2, null
  %19 = icmp eq ptr %9, %4
  %20 = and i1 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  br i1 %13, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %9) #18
  br label %26

24:                                               ; preds = %21
  %25 = tail call ptr @chrec_convert(ptr noundef %3, ptr noundef %9, ptr noundef null) #18
  br label %26

26:                                               ; preds = %17, %8, %14, %24, %22
  %27 = phi ptr [ %23, %22 ], [ %25, %24 ], [ %15, %14 ], [ %10, %8 ], [ %2, %17 ]
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_not(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i32 noundef %8) unnamed_addr #9 !prof !43 {
  %10 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i32 noundef %8)
  %11 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %10, %5
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @chrec_convert(ptr noundef %4, ptr noundef %10, ptr noundef null) #18
  switch i32 %3, label %25 [
    i32 90, label %17
    i32 79, label %21
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !44
  %19 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4, ptr noundef %18) #18
  %20 = tail call ptr @chrec_fold_minus(ptr noundef %4, ptr noundef %19, ptr noundef %16) #18
  br label %31

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !44
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4, ptr noundef %22) #18
  %24 = tail call ptr @chrec_fold_multiply(ptr noundef %4, ptr noundef %23, ptr noundef %16) #18
  br label %31

25:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2412, ptr noundef nonnull @.str.13) #18
  br label %26

26:                                               ; preds = %25, %13
  %27 = phi ptr [ %16, %25 ], [ %10, %13 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %3, ptr noundef %4, ptr noundef %27) #18
  br label %31

31:                                               ; preds = %29, %26, %9, %21, %17
  %32 = phi ptr [ %24, %21 ], [ %20, %17 ], [ %11, %9 ], [ %30, %29 ], [ %2, %26 ]
  ret ptr %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_3(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %40, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %14, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %20, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %22 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %7, align 8, !tbaa !55
  %26 = icmp eq ptr %9, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load ptr, ptr %13, align 8, !tbaa !55
  %29 = icmp eq ptr %15, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %19, align 8, !tbaa !55
  %32 = icmp eq ptr %21, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %30, %27, %24
  %34 = load i64, ptr %2, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef %36, ptr noundef %38, ptr noundef %9, ptr noundef %15, ptr noundef %21) #18
  br label %40

40:                                               ; preds = %30, %18, %12, %6, %33
  %41 = phi ptr [ %39, %33 ], [ %10, %6 ], [ %16, %12 ], [ %22, %18 ], [ %2, %30 ]
  ret ptr %41
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_2(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %14, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !tbaa !55
  %20 = icmp eq ptr %9, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %13, align 8, !tbaa !55
  %23 = icmp eq ptr %15, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %18
  %25 = load i64, ptr %2, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %27, ptr noundef %29, ptr noundef %9, ptr noundef %15) #18
  br label %31

31:                                               ; preds = %21, %12, %6, %24
  %32 = phi ptr [ %30, %24 ], [ %10, %6 ], [ %16, %12 ], [ %2, %21 ]
  ret ptr %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @instantiate_scev_1(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #9 !prof !43 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5)
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !44
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !55
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %18, ptr noundef %20, ptr noundef %9) #18
  br label %22

22:                                               ; preds = %12, %6, %15
  %23 = phi ptr [ %21, %15 ], [ %10, %6 ], [ %2, %12 ]
  ret ptr %23
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_instantiated_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !43 {
  %5 = alloca %struct.scev_info_str, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.scev_info_str, ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !86
  store ptr %1, ptr %5, align 8, !tbaa !88
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #18
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = call ptr @ggc_alloc_stat(i64 noundef 24) #18
  %12 = getelementptr inbounds %struct.scev_info_str, ptr %11, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !86
  %13 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.scev_info_str, ptr %11, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !91
  store ptr %1, ptr %11, align 8, !tbaa !88
  store ptr %11, ptr %7, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %10, %4
  %16 = load ptr, ptr %7, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.scev_info_str, ptr %16, i64 0, i32 2
  store ptr %3, ptr %17, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @loop_closed_phi_def(ptr noundef readonly %0) unnamed_addr #9 !prof !43 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %16, %14 ], [ null, %8 ]
  %19 = tail call ptr @single_exit(ptr noundef %18) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %22 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !165
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #18
  %24 = load ptr, ptr %2, align 8, !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 6
  br label %28

28:                                               ; preds = %26, %45
  %29 = phi ptr [ %24, %26 ], [ %47, %45 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !128
  %31 = load i32, ptr %27, align 4, !tbaa !183
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !55
  %34 = icmp ult i32 %33, %31
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.13) #18
  br label %36

36:                                               ; preds = %28, %35
  %37 = zext i32 %31 to i64
  %38 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 4, i64 %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !184
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  br label %49

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %29, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !llvm.loop !200

49:                                               ; preds = %45, %21, %17, %1, %4, %42
  %50 = phi ptr [ %44, %42 ], [ null, %4 ], [ null, %1 ], [ null, %17 ], [ null, %21 ], [ null, %45 ]
  ret ptr %50
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chrec_convert_aggressive(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gather_chrec_stats(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !43 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 16, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !44
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef %0, i32 noundef 0) #18
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = load i32, ptr %1, align 4, !tbaa !97
  %16 = add i32 %15, 1
  store i32 %16, ptr %1, align 4, !tbaa !97
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !98
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !98
  br label %108

22:                                               ; preds = %14
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 146
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = load ptr, ptr %27, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !55
  %33 = trunc i64 %32 to i32
  %34 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %29, i32 noundef %33) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = load ptr, ptr %27, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.tree_int_cst, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !55
  %42 = trunc i64 %41 to i32
  %43 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %38, i32 noundef %42) #18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36, %26
  %46 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %0, i32 noundef 0) #18
  %47 = icmp eq i8 %46, 0
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %47, label %70, label %61

50:                                               ; preds = %36
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 20, i64 1, ptr nonnull %51)
  br label %59

59:                                               ; preds = %57, %53, %50
  %60 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 1
  br label %79

61:                                               ; preds = %45
  br i1 %49, label %68, label %62

62:                                               ; preds = %61
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %48)
  br label %68

68:                                               ; preds = %66, %62, %61
  %69 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 2
  br label %79

70:                                               ; preds = %45
  br i1 %49, label %77, label %71

71:                                               ; preds = %70
  %72 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 27, i64 1, ptr nonnull %48)
  br label %77

77:                                               ; preds = %75, %71, %70
  %78 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 3
  br label %79

79:                                               ; preds = %68, %77, %59
  %80 = phi ptr [ %60, %59 ], [ %78, %77 ], [ %69, %68 ]
  %81 = load i32, ptr %80, align 4, !tbaa !59
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !59
  br label %83

83:                                               ; preds = %79, %22
  %84 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %0) #18
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr nonnull %87)
  br label %95

95:                                               ; preds = %93, %89, %86
  %96 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !98
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 4, !tbaa !98
  br label %99

99:                                               ; preds = %95, %83
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %100)
  br label %108

108:                                              ; preds = %18, %106, %102, %99
  ret void
}

declare zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @get_exit_conditions_rec(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !43 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  tail call fastcc void @get_exit_conditions_rec(ptr noundef %6, ptr noundef %1)
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  tail call fastcc void @get_exit_conditions_rec(ptr noundef %8, ptr noundef %1)
  %9 = tail call ptr @single_exit(ptr noundef nonnull %0) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @get_loop_exit_condition(ptr noundef nonnull %0)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.VEC_gimple_base, ptr %15, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !201
  %20 = load i32, ptr %15, align 8, !tbaa !125
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %17
  %23 = tail call ptr @vec_heap_p_reserve(ptr noundef %15, i32 noundef 1) #18
  store ptr %23, ptr %1, align 8, !tbaa !44
  br label %24

24:                                               ; preds = %17, %22
  %25 = load ptr, ptr %1, align 8, !tbaa !44
  %26 = load i32, ptr %25, align 8, !tbaa !125
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !125
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.VEC_gimple_base, ptr %25, i64 0, i32 2, i64 %28
  store ptr %12, ptr %29, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %11, %24, %2, %4
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_loops(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @scev_initialize, ptr @htab_create_alloc, i64 230}
!36 = !{ptr @scev_initialize, ptr @make_node_stat, i64 2}
!37 = !{ptr @scev_initialize, ptr @vec_heap_o_reserve_exact, i64 192}
!38 = !{ptr @scev_initialize, ptr @free, i64 192}
!39 = !{ptr @scev_reset, ptr @vec_heap_o_reserve_exact, i64 43}
!40 = !{ptr @scev_reset, ptr @free, i64 43}
!41 = !{ptr @scev_finalize, ptr @htab_delete, i64 230}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!64, !45, i64 24}
!64 = !{!"basic_block_def", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !46, i64 32, !45, i64 48, !45, i64 56, !46, i64 64, !51, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96}
!65 = !{!66, !45, i64 32}
!66 = !{!"function", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !45, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!67 = !{!68, !45, i64 8}
!68 = !{!"loops", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!69 = distinct !{!69, !61, !62}
!70 = !{i8 0, i8 2}
!71 = !{!72, !50, i64 0}
!72 = !{!"loop", !50, i64 0, !50, i64 4, !45, i64 8, !45, i64 16, !73, i64 24, !50, i64 32, !50, i64 36, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !74, i64 80, !74, i64 96, !46, i64 112, !46, i64 113, !50, i64 116, !45, i64 120, !45, i64 128, !46, i64 136, !45, i64 144}
!73 = !{!"lpt_decision", !50, i64 0, !50, i64 4}
!74 = !{!"", !51, i64 0, !51, i64 8}
!75 = !{!66, !45, i64 8}
!76 = !{!72, !45, i64 72}
!77 = !{!78, !45, i64 16}
!78 = !{!"tree_niter_desc", !45, i64 0, !45, i64 8, !45, i64 16, !74, i64 24, !79, i64 40, !45, i64 64, !50, i64 72}
!79 = !{!"", !45, i64 0, !45, i64 8, !46, i64 16}
!80 = !{!78, !45, i64 8}
!81 = !{!82, !45, i64 0}
!82 = !{!"edge_def", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !45, i64 32, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !51, i64 56}
!83 = !{}
!84 = !{!72, !45, i64 8}
!85 = !{!64, !50, i64 80}
!86 = !{!87, !45, i64 8}
!87 = !{!"scev_info_str", !45, i64 0, !45, i64 8, !45, i64 16}
!88 = !{!87, !45, i64 0}
!89 = !{!90, !50, i64 8}
!90 = !{!"param_info", !45, i64 0, !50, i64 8, !46, i64 12, !50, i64 16, !50, i64 20, !45, i64 24}
!91 = !{!87, !45, i64 16}
!92 = !{!93, !50, i64 4}
!93 = !{!"chrec_stats", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20}
!94 = !{!93, !50, i64 8}
!95 = !{!93, !50, i64 12}
!96 = !{!93, !50, i64 16}
!97 = !{!93, !50, i64 0}
!98 = !{!93, !50, i64 20}
!99 = !{!"function_entry_count", i64 230}
!100 = !{!"branch_weights", i32 1, i32 229}
!101 = !{!"branch_weights", i32 38, i32 192}
!102 = !{!"branch_weights", i32 0, i32 192}
!103 = !{!104, !50, i64 0}
!104 = !{!"VEC_loop_p_base", !50, i64 0, !50, i64 4, !46, i64 8}
!105 = !{!68, !45, i64 24}
!106 = !{!"branch_weights", i32 192, i32 0}
!107 = !{!108, !50, i64 0}
!108 = !{!"VEC_int_base", !50, i64 0, !50, i64 4, !46, i64 8}
!109 = !{!72, !45, i64 48}
!110 = distinct !{!110, !62}
!111 = !{!72, !45, i64 56}
!112 = !{!72, !45, i64 40}
!113 = distinct !{!113, !61, !62}
!114 = distinct !{!114, !61, !62}
!115 = !{!"branch_weights", i32 1, i32 0}
!116 = distinct !{!116, !61, !62}
!117 = !{!"function_entry_count", i64 43}
!118 = !{!"branch_weights", i32 43, i32 0}
!119 = !{!"branch_weights", i32 0, i32 43}
!120 = distinct !{!120, !61, !62}
!121 = !{!79, !45, i64 0}
!122 = !{!79, !45, i64 8}
!123 = !{!79, !46, i64 16}
!124 = distinct !{!124, !62}
!125 = !{!126, !50, i64 0}
!126 = !{!"VEC_gimple_base", !50, i64 0, !50, i64 4, !46, i64 8}
!127 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!128 = !{!129, !45, i64 0}
!129 = !{!"gimple_seq_node_d", !45, i64 0, !45, i64 8, !45, i64 16}
!130 = !{!129, !45, i64 16}
!131 = distinct !{!131, !61, !62}
!132 = distinct !{!132, !61, !62}
!133 = distinct !{!133, !61, !62}
!134 = !{!"function_entry_count", i64 268}
!135 = !{!"branch_weights", i32 38, i32 230}
!136 = !{!"function_entry_count", i64 38}
!137 = !{!"branch_weights", i32 0, i32 38}
!138 = !{!"branch_weights", i32 38, i32 0}
!139 = !{!140, !45, i64 0}
!140 = !{!"control_flow_graph", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !45, i64 40, !50, i64 48, !46, i64 52, !46, i64 60, !50, i64 68, !50, i64 72}
!141 = !{!64, !45, i64 56}
!142 = !{!140, !45, i64 8}
!143 = distinct !{!143, !61, !62}
!144 = !{!145, !45, i64 0}
!145 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16}
!146 = distinct !{!146, !61, !62}
!147 = !{!148, !45, i64 0}
!148 = !{!"bitmap_head_def", !45, i64 0, !45, i64 8, !50, i64 16, !45, i64 24}
!149 = !{!150, !50, i64 16}
!150 = !{!"bitmap_element_def", !45, i64 0, !45, i64 8, !50, i64 16, !46, i64 24}
!151 = !{!51, !51, i64 0}
!152 = distinct !{!152, !61, !62}
!153 = distinct !{!153, !61, !62}
!154 = !{!150, !45, i64 0}
!155 = distinct !{!155, !62}
!156 = !{!66, !45, i64 24}
!157 = !{!158, !45, i64 16}
!158 = !{!"gimple_df", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !159, i64 32, !159, i64 48, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !50, i64 96, !160, i64 104}
!159 = !{!"pt_solution", !50, i64 0, !50, i64 0, !50, i64 0, !50, i64 0, !50, i64 0, !50, i64 0, !45, i64 8}
!160 = !{!"ssa_operands", !45, i64 0, !50, i64 8, !50, i64 12, !46, i64 16, !45, i64 24, !45, i64 32}
!161 = distinct !{!161, !61, !62}
!162 = distinct !{!162, !61, !62}
!163 = distinct !{!163, !61, !62}
!164 = distinct !{!164, !62}
!165 = !{!82, !45, i64 8}
!166 = !{!64, !45, i64 0}
!167 = !{!168, !50, i64 0}
!168 = !{!"VEC_edge_base", !50, i64 0, !50, i64 4, !46, i64 8}
!169 = !{!64, !50, i64 96}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"gsi_start_bb: argument 0"}
!172 = distinct !{!172, !"gsi_start_bb"}
!173 = distinct !{!173, !174, !"gsi_after_labels: argument 0"}
!174 = distinct !{!174, !"gsi_after_labels"}
!175 = !{!176, !45, i64 0}
!176 = !{!"gimple_bb_info", !45, i64 0, !45, i64 8}
!177 = !{!178, !45, i64 0}
!178 = !{!"gimple_seq_d", !45, i64 0, !45, i64 8, !45, i64 16}
!179 = !{!173}
!180 = distinct !{!180, !61, !62}
!181 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!182 = !{i64 0, i64 8, !44}
!183 = !{!82, !50, i64 44}
!184 = !{!185, !45, i64 24}
!185 = !{!"ssa_use_operand_d", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24}
!186 = distinct !{!186, !61, !62}
!187 = distinct !{!187, !61, !62}
!188 = !{!189, !45, i64 24}
!189 = !{!"htab", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !50, i64 56, !50, i64 60, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104}
!190 = !{!189, !51, i64 32}
!191 = distinct !{!191, !61, !62}
!192 = distinct !{!192, !61, !62}
!193 = distinct !{!193, !61, !62}
!194 = distinct !{!194, !61, !62}
!195 = distinct !{!195, !61, !62}
!196 = !{!82, !50, i64 48}
!197 = distinct !{!197, !61, !62}
!198 = distinct !{!198, !61, !62}
!199 = distinct !{!199, !61, !62}
!200 = distinct !{!200, !61, !62}
!201 = !{!126, !50, i64 4}
