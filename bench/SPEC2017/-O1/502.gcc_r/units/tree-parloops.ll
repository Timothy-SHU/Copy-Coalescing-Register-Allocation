; ModuleID = 'tree-parloops.c'
source_filename = "tree-parloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.int_tree_map = type { i32, ptr }
%struct.name_to_copy_elt = type { i32, ptr, ptr }
%struct.clsn_data = type { ptr, ptr, ptr, ptr }
%struct.elv_data = type { %struct.walk_stmt_info, ptr, ptr, i8 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.reduction_info = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.double_int = type { i64, i64 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_tree_parallelize_loops = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"Trying loop %d as candidate\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"loop %d is not innermost\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"loop %d is innermost\0A\00", align 1
@flag_loop_parallelize_all = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"loop is not parallel according to graphite\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"loop is !single_dom_exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"parallelizing outer loop %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"parallelizing inner loop %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0Aloop at %s:%d: \00", align 1
@parallelized_functions = internal global ptr null, align 8
@gt_ggc_r_gt_tree_parloops_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @parallelized_functions, i64 1, i64 8, ptr @gt_ggc_mx_bitmap_head_def, ptr @gt_pch_nx_bitmap_head_def }, %struct.ggc_root_tab zeroinitializer], align 16
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"tree-parloops.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"  FAILED: number of iterations not known\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"phi is \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"arg of phi to exit:   value \00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" used outside loop\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"  checking if it a part of reduction pattern:  \0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"  FAILED: it is not a part of reduction.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"reduction phi is  \00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"reduction stmt is  \00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"  FAILED: scalar dependency between iterations\0A\00", align 1
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [41 x i8] c"Detected reduction. reduction stmt is: \0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"Considering loop %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"loop is innermost\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"loop NOT innermost\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"  SUCCESS: may be parallelized\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"  FAILED: data dependencies exist across iterations\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c".paral_data\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c".paral_data_store\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c".paral_data_load\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@create_loop_fn.loopfn_num = internal unnamed_addr global i32 0, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"%s.$loopfn\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c".paral_data_param\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
define dso_local zeroext i8 @parallelize_loops() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.int_tree_map, align 8
  %7 = alloca %struct.name_to_copy_elt, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.clsn_data, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.elv_data, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct.reduction_info, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca %struct.gimple_stmt_iterator, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %struct.clsn_data, align 8
  %21 = alloca %struct.reduction_info, align 8
  %22 = alloca %struct.reduction_info, align 8
  %23 = alloca %struct.gimple_stmt_iterator, align 8
  %24 = alloca %struct.affine_iv, align 8
  %25 = alloca i8, align 1
  %26 = alloca %struct.gimple_stmt_iterator, align 8
  %27 = alloca %struct.gimple_stmt_iterator, align 8
  %28 = alloca %struct.affine_iv, align 8
  %29 = alloca %struct.gimple_stmt_iterator, align 8
  %30 = alloca %struct.tree_niter_desc, align 8
  %31 = alloca %struct.expanded_location, align 8
  %32 = alloca %struct.expanded_location, align 8
  %33 = load i32, ptr @flag_tree_parallelize_loops, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %30) #17
  %34 = load ptr, ptr @cfun, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = load ptr, ptr @parallelized_functions, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %0
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 4096
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !46
  %47 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %37, i32 noundef %46) #17
  %48 = and i32 %47, 255
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %2070

50:                                               ; preds = %39, %0, %44
  %51 = load ptr, ptr @cfun, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 20
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %2070

56:                                               ; preds = %50
  %57 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @reduction_info_hash, ptr noundef nonnull @reduction_info_eq, ptr noundef nonnull @free) #17
  tail call void @init_stmt_vec_info_vec() #17
  %58 = load ptr, ptr @cfun, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !56
  %61 = icmp eq ptr %60, null
  br i1 %61, label %137, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.loops, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %64, align 8, !tbaa !59
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %67, %66 ], [ 0, %62 ]
  %70 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %69, i64 noundef 8, i64 noundef 4) #17
  %71 = load ptr, ptr @cfun, align 8, !tbaa !35
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = getelementptr inbounds %struct.loops, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !61
  br label %76

76:                                               ; preds = %89, %68
  %77 = phi ptr [ %75, %68 ], [ %90, %89 ]
  %78 = load i32, ptr %77, align 8, !tbaa !62
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, ptr %70, align 4, !tbaa !66
  %82 = add i32 %81, 1
  store i32 %82, ptr %70, align 4, !tbaa !66
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds %struct.VEC_int_base, ptr %70, i64 0, i32 2, i64 %83
  store i32 %78, ptr %84, align 4, !tbaa !50
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.loop, ptr %77, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %94, %85
  %90 = phi ptr [ %87, %85 ], [ %97, %94 ]
  br label %76, !llvm.loop !69

91:                                               ; preds = %113
  %92 = icmp eq ptr %70, null
  %93 = getelementptr inbounds %struct.loops, ptr %73, i64 0, i32 1
  br label %116

94:                                               ; preds = %85, %113
  %95 = phi ptr [ %114, %113 ], [ %77, %85 ]
  %96 = getelementptr inbounds %struct.loop, ptr %95, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !70
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %89, !llvm.loop !69

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.loop, ptr %95, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !71
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %101, align 8, !tbaa !59
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i32 [ %104, %103 ], [ 0, %99 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = add i32 %106, -1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %101, i64 0, i32 2, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  br label %113

113:                                              ; preds = %108, %105
  %114 = phi ptr [ %112, %108 ], [ null, %105 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %91, label %94, !llvm.loop !72

116:                                              ; preds = %91, %128
  %117 = phi i32 [ %129, %128 ], [ 0, %91 ]
  br i1 %92, label %125, label %118

118:                                              ; preds = %116
  %119 = load i32, ptr %70, align 4, !tbaa !66
  %120 = icmp ugt i32 %119, %117
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = zext i32 %117 to i64
  %123 = getelementptr inbounds %struct.VEC_int_base, ptr %70, i64 0, i32 2, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !50
  br label %125

125:                                              ; preds = %121, %118, %116
  %126 = phi i32 [ %124, %121 ], [ 0, %118 ], [ 0, %116 ]
  %127 = phi i1 [ false, %121 ], [ true, %118 ], [ true, %116 ]
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = add i32 %117, 1
  %130 = load ptr, ptr %93, align 8, !tbaa !57
  %131 = zext i32 %126 to i64
  %132 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %130, i64 0, i32 2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  %134 = icmp eq ptr %133, null
  br i1 %134, label %116, label %137, !llvm.loop !73

135:                                              ; preds = %125
  br i1 %92, label %137, label %136

136:                                              ; preds = %135
  tail call void @free(ptr noundef %70)
  br label %137

137:                                              ; preds = %128, %135, %136, %56
  %138 = phi ptr [ null, %56 ], [ null, %136 ], [ null, %135 ], [ %133, %128 ]
  %139 = phi i32 [ 0, %56 ], [ %117, %136 ], [ %117, %135 ], [ %129, %128 ]
  %140 = phi ptr [ null, %56 ], [ null, %136 ], [ null, %135 ], [ %70, %128 ]
  %141 = icmp eq ptr %138, null
  br i1 %141, label %2058, label %142

142:                                              ; preds = %137, %2053
  %143 = phi i8 [ %2026, %2053 ], [ 0, %137 ]
  %144 = phi ptr [ %2056, %2053 ], [ %140, %137 ]
  %145 = phi i32 [ %2055, %2053 ], [ %139, %137 ]
  %146 = phi ptr [ %2054, %2053 ], [ %138, %137 ]
  call void @htab_empty(ptr noundef %57) #17
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %142
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %146, align 8, !tbaa !62
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %147, ptr noundef nonnull @.str, i32 noundef %154)
  %156 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 8
  %157 = load ptr, ptr %156, align 8, !tbaa !68
  %158 = icmp eq ptr %157, null
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %160 = load i32, ptr %146, align 8, !tbaa !62
  %161 = select i1 %158, ptr @.str.2, ptr @.str.1
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull %161, i32 noundef %160)
  br label %163

163:                                              ; preds = %153, %149, %142
  %164 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !50
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 19
  %168 = load i8, ptr %167, align 8, !tbaa !74
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %172 = icmp eq ptr %171, null
  br i1 %172, label %2025, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %175 = and i32 %174, 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %2025, label %177

177:                                              ; preds = %173
  %178 = call i64 @fwrite(ptr nonnull @.str.3, i64 43, i64 1, ptr nonnull %171)
  br label %2025

179:                                              ; preds = %166, %163
  %180 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %2025, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %2025, label %189

189:                                              ; preds = %185
  %190 = call i64 @fwrite(ptr nonnull @.str.4, i64 25, i64 1, ptr nonnull %183)
  br label %2025

191:                                              ; preds = %179
  %192 = call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %146) #17
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %2025, label %194

194:                                              ; preds = %191
  %195 = call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %146) #17
  %196 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 6
  %197 = load i32, ptr %196, align 4, !tbaa !75
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %222

199:                                              ; preds = %194
  %200 = zext i32 %197 to i64
  %201 = zext i32 %197 to i64
  %202 = load ptr, ptr %195, align 8, !tbaa !35
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 13
  %204 = load i32, ptr %203, align 8, !tbaa !76
  %205 = and i32 %204, 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %199, %211
  %208 = phi i64 [ %209, %211 ], [ 0, %199 ]
  %209 = add nuw nsw i64 %208, 1
  %210 = icmp eq i64 %209, %201
  br i1 %210, label %222, label %211, !llvm.loop !78

211:                                              ; preds = %207
  %212 = getelementptr inbounds ptr, ptr %195, i64 %209
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  %214 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 13
  %215 = load i32, ptr %214, align 8, !tbaa !76
  %216 = and i32 %215, 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %207, label %218, !llvm.loop !78

218:                                              ; preds = %211
  %219 = icmp ult i64 %209, %200
  br label %220

220:                                              ; preds = %218, %199
  %221 = phi i1 [ %219, %218 ], [ %198, %199 ]
  call void @free(ptr noundef %195)
  br i1 %221, label %2025, label %223

222:                                              ; preds = %207, %194
  call void @free(ptr noundef %195)
  br label %223

223:                                              ; preds = %222, %220
  %224 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 6
  %225 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %226 = load ptr, ptr %225, align 8, !tbaa !79
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 13
  %228 = load i32, ptr %227, align 8, !tbaa !76
  %229 = and i32 %228, 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %2025

231:                                              ; preds = %223
  %232 = call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %146) #17
  %233 = load i32, ptr %224, align 4, !tbaa !75
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %262

235:                                              ; preds = %231, %256
  %236 = phi i64 [ %257, %256 ], [ 0, %231 ]
  %237 = phi i1 [ %260, %256 ], [ %234, %231 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #17
  %238 = getelementptr inbounds ptr, ptr %232, i64 %236
  %239 = load ptr, ptr %238, align 8, !tbaa !35
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %29, ptr noundef %239) #17
  %240 = load ptr, ptr %29, align 8, !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #17
  %241 = icmp eq ptr %240, null
  br i1 %241, label %256, label %242

242:                                              ; preds = %235, %252
  %243 = phi ptr [ %254, %252 ], [ %240, %235 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !82
  %245 = getelementptr inbounds %struct.gimple_statement_phi, ptr %244, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !35
  %247 = getelementptr inbounds %struct.tree_common, ptr %246, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !46
  %249 = load i64, ptr %248, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 14
  br i1 %251, label %261, label %252

252:                                              ; preds = %242
  %253 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %243, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !84
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %242, !llvm.loop !85

256:                                              ; preds = %252, %235
  %257 = add nuw nsw i64 %236, 1
  %258 = load i32, ptr %224, align 4, !tbaa !75
  %259 = zext i32 %258 to i64
  %260 = icmp ult i64 %257, %259
  br i1 %260, label %235, label %262, !llvm.loop !86

261:                                              ; preds = %242
  call void @free(ptr noundef %232)
  br i1 %237, label %2025, label %263

262:                                              ; preds = %256, %231
  call void @free(ptr noundef %232)
  br label %263

263:                                              ; preds = %262, %261
  %264 = call i64 @estimated_loop_iterations_int(ptr noundef nonnull %146, i8 noundef zeroext 0) #17
  %265 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !50
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %263
  %268 = zext i32 %33 to i64
  %269 = mul nuw nsw i64 %268, 100
  %270 = icmp eq i64 %264, -1
  %271 = icmp sgt i64 %264, %269
  %272 = select i1 %270, i1 true, i1 %271
  br i1 %272, label %273, label %2025

273:                                              ; preds = %267
  %274 = call zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef nonnull %146) #17
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %2025

276:                                              ; preds = %273, %263
  %277 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1766, ptr noundef nonnull @.str.9) #17
  br label %280

280:                                              ; preds = %279, %276
  %281 = call zeroext i8 @number_of_iterations_exit(ptr noundef nonnull %146, ptr noundef %277, ptr noundef nonnull %30, i8 noundef zeroext 0) #17
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %280
  %284 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %285 = icmp eq ptr %284, null
  br i1 %285, label %292, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %288 = and i32 %287, 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = call i64 @fwrite(ptr nonnull @.str.10, i64 41, i64 1, ptr nonnull %284)
  br label %292

292:                                              ; preds = %283, %286, %290
  br i1 %282, label %2025, label %293

293:                                              ; preds = %280, %292
  %294 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1790, ptr noundef nonnull @.str.9) #17
  br label %297

297:                                              ; preds = %296, %293
  store ptr null, ptr @vect_dump, align 8, !tbaa !35
  %298 = call ptr @vect_analyze_loop_form(ptr noundef nonnull %146) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #17
  %299 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !87
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %23, ptr noundef %300) #17
  %301 = load ptr, ptr %23, align 8, !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #17
  %302 = icmp eq ptr %301, null
  br i1 %302, label %376, label %303

303:                                              ; preds = %297
  %304 = icmp ne ptr %298, null
  br label %305

305:                                              ; preds = %303, %372
  %306 = phi ptr [ %301, %303 ], [ %374, %372 ]
  %307 = load ptr, ptr %306, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #17
  %308 = getelementptr inbounds %struct.gimple_statement_phi, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #17
  %310 = call zeroext i8 @is_gimple_reg(ptr noundef %309) #17
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %372, label %312

312:                                              ; preds = %305
  %313 = call zeroext i8 @simple_iv(ptr noundef nonnull %146, ptr noundef nonnull %146, ptr noundef %309, ptr noundef nonnull %24, i8 noundef zeroext 1) #17
  %314 = icmp eq i8 %313, 0
  %315 = select i1 %314, i1 %304, i1 false
  br i1 %315, label %316, label %372

316:                                              ; preds = %312
  %317 = call ptr @vect_is_simple_reduction(ptr noundef nonnull %298, ptr noundef %307, i8 noundef zeroext 1, ptr noundef nonnull %25) #17
  %318 = icmp eq ptr %317, null
  %319 = load i8, ptr %25, align 1
  %320 = icmp ne i8 %319, 0
  %321 = select i1 %318, i1 true, i1 %320
  br i1 %321, label %372, label %322

322:                                              ; preds = %316
  %323 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %324 = icmp eq ptr %323, null
  br i1 %324, label %334, label %325

325:                                              ; preds = %322
  %326 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %327 = and i32 %326, 8
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %325
  %330 = call i64 @fwrite(ptr nonnull @.str.19, i64 40, i64 1, ptr nonnull %323)
  %331 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %331, ptr noundef %317, i32 noundef 0, i32 noundef 0) #17
  %332 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %333 = call i32 @fputc(i32 10, ptr %332)
  br label %334

334:                                              ; preds = %329, %325, %322
  %335 = call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #17
  store ptr %317, ptr %335, align 8, !tbaa !88
  %336 = getelementptr inbounds %struct.reduction_info, ptr %335, i64 0, i32 1
  store ptr %307, ptr %336, align 8, !tbaa !90
  %337 = load i32, ptr %317, align 8
  %338 = trunc i32 %337 to i8
  switch i8 %338, label %341 [
    i8 6, label %339
    i8 1, label %339
    i8 8, label %342
  ]

339:                                              ; preds = %334, %334
  %340 = lshr i32 %337, 16
  br label %342

341:                                              ; preds = %334
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.9) #17
  br label %342

342:                                              ; preds = %341, %339, %334
  %343 = phi i32 [ %340, %339 ], [ 0, %341 ], [ 59, %334 ]
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !46
  %347 = icmp eq i8 %346, 3
  br i1 %347, label %348, label %368

348:                                              ; preds = %342
  %349 = load i32, ptr %317, align 8
  %350 = and i32 %349, 255
  %351 = add nsw i32 %350, -1
  %352 = icmp ult i32 %351, 9
  call void @llvm.assume(i1 %352)
  %353 = zext nneg i32 %350 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !50
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !91
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %348
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %361

361:                                              ; preds = %360, %348
  %362 = getelementptr inbounds i8, ptr %317, i64 %358
  %363 = getelementptr inbounds ptr, ptr %362, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !35
  %365 = load i64, ptr %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = and i32 %366, 65535
  br label %368

368:                                              ; preds = %361, %342
  %369 = phi i32 [ %367, %361 ], [ %343, %342 ]
  %370 = getelementptr inbounds %struct.reduction_info, ptr %335, i64 0, i32 2
  store i32 %369, ptr %370, align 8, !tbaa !92
  %371 = call ptr @htab_find_slot(ptr noundef %57, ptr noundef nonnull %335, i32 noundef 1) #17
  store ptr %335, ptr %371, align 8, !tbaa !35
  br label %372

372:                                              ; preds = %368, %316, %312, %305
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #17
  %373 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %306, i64 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !84
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %305, !llvm.loop !93

376:                                              ; preds = %372, %297
  call void @destroy_loop_vec_info(ptr noundef %298, i8 noundef zeroext 1) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #17
  %377 = getelementptr inbounds %struct.edge_def, ptr %294, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !94
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %26, ptr noundef %378) #17
  %379 = load ptr, ptr %26, align 8, !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #17
  %380 = icmp eq ptr %379, null
  br i1 %380, label %487, label %381

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.reduction_info, ptr %22, i64 0, i32 1
  %383 = getelementptr inbounds %struct.edge_def, ptr %294, i64 0, i32 6
  br label %384

384:                                              ; preds = %381, %483
  %385 = phi ptr [ %379, %381 ], [ %485, %483 ]
  %386 = load ptr, ptr %385, align 8, !tbaa !82
  %387 = load i32, ptr %383, align 4, !tbaa !95
  %388 = getelementptr inbounds %struct.gimple_statement_phi, ptr %386, i64 0, i32 1
  %389 = load i32, ptr %388, align 8, !tbaa !46
  %390 = icmp ult i32 %389, %387
  br i1 %390, label %391, label %392

391:                                              ; preds = %384
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %392

392:                                              ; preds = %391, %384
  %393 = zext i32 %387 to i64
  %394 = getelementptr inbounds %struct.gimple_statement_phi, ptr %386, i64 0, i32 4, i64 %393, i32 0, i32 3
  %395 = load ptr, ptr %394, align 8, !tbaa !96
  %396 = load ptr, ptr %395, align 8, !tbaa !35
  %397 = call zeroext i8 @is_gimple_reg(ptr noundef %396) #17
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %483, label %399

399:                                              ; preds = %392
  %400 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %401 = icmp eq ptr %400, null
  br i1 %401, label %416, label %402

402:                                              ; preds = %399
  %403 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %404 = and i32 %403, 8
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %416, label %406

406:                                              ; preds = %402
  %407 = call i64 @fwrite(ptr nonnull @.str.11, i64 7, i64 1, ptr nonnull %400)
  %408 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %408, ptr noundef %386, i32 noundef 0, i32 noundef 0) #17
  %409 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %410 = call i64 @fwrite(ptr nonnull @.str.12, i64 28, i64 1, ptr %409)
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %411, ptr noundef %396, i32 noundef 0) #17
  %412 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %413 = call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %412)
  %414 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %415 = call i64 @fwrite(ptr nonnull @.str.14, i64 48, i64 1, ptr %414)
  br label %416

416:                                              ; preds = %406, %402, %399
  %417 = call i64 @htab_elements(ptr noundef %57) #17
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %416
  %420 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %421 = icmp eq ptr %420, null
  br i1 %421, label %2025, label %422

422:                                              ; preds = %419
  %423 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %424 = and i32 %423, 8
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %2025, label %426

426:                                              ; preds = %422
  %427 = call i64 @fwrite(ptr nonnull @.str.15, i64 41, i64 1, ptr nonnull %420)
  br label %2025

428:                                              ; preds = %416
  %429 = getelementptr inbounds %struct.tree_ssa_name, ptr %396, i64 0, i32 5
  %430 = getelementptr inbounds %struct.tree_ssa_name, ptr %396, i64 0, i32 5, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !98
  %432 = icmp eq ptr %431, %429
  br i1 %432, label %451, label %433

433:                                              ; preds = %428, %445
  %434 = phi ptr [ %449, %445 ], [ %431, %428 ]
  %435 = phi ptr [ %447, %445 ], [ %431, %428 ]
  %436 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %434, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !46
  %438 = getelementptr inbounds %struct.gimple_statement_base, ptr %437, i64 0, i32 4
  %439 = load ptr, ptr %438, align 8, !tbaa !46
  %440 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %146, ptr noundef %439) #17
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %433
  %443 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %434, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !46
  br label %451

445:                                              ; preds = %433
  %446 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %435, i64 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !98
  %448 = icmp eq ptr %447, %429
  %449 = select i1 %448, ptr null, ptr %447
  %450 = icmp eq ptr %447, %429
  br i1 %450, label %451, label %433, !llvm.loop !99

451:                                              ; preds = %445, %428, %442
  %452 = phi ptr [ %444, %442 ], [ null, %428 ], [ null, %445 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #17
  %453 = call i64 @htab_elements(ptr noundef %57) #17
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %457, label %455

455:                                              ; preds = %451
  store ptr %452, ptr %382, align 8, !tbaa !90
  %456 = call ptr @htab_find(ptr noundef %57, ptr noundef nonnull %22) #17
  br label %457

457:                                              ; preds = %455, %451
  %458 = phi ptr [ %456, %455 ], [ null, %451 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #17
  %459 = icmp eq ptr %458, null
  %460 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %461 = icmp eq ptr %460, null
  br i1 %459, label %462, label %469

462:                                              ; preds = %457
  br i1 %461, label %2025, label %463

463:                                              ; preds = %462
  %464 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %465 = and i32 %464, 8
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %2025, label %467

467:                                              ; preds = %463
  %468 = call i64 @fwrite(ptr nonnull @.str.15, i64 41, i64 1, ptr nonnull %460)
  br label %2025

469:                                              ; preds = %457
  br i1 %461, label %483, label %470

470:                                              ; preds = %469
  %471 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %472 = and i32 %471, 8
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %483, label %474

474:                                              ; preds = %470
  %475 = call i64 @fwrite(ptr nonnull @.str.16, i64 18, i64 1, ptr nonnull %460)
  %476 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %477 = getelementptr inbounds %struct.reduction_info, ptr %458, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !90
  call void @print_gimple_stmt(ptr noundef %476, ptr noundef %478, i32 noundef 0, i32 noundef 0) #17
  %479 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %480 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %479)
  %481 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %482 = load ptr, ptr %458, align 8, !tbaa !88
  call void @print_gimple_stmt(ptr noundef %481, ptr noundef %482, i32 noundef 0, i32 noundef 0) #17
  br label %483

483:                                              ; preds = %474, %470, %469, %392
  %484 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %385, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !84
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %384, !llvm.loop !100

487:                                              ; preds = %483, %376
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #17
  %488 = load ptr, ptr %299, align 8, !tbaa !87
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %27, ptr noundef %488) #17
  %489 = load ptr, ptr %27, align 8, !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #17
  %490 = icmp eq ptr %489, null
  br i1 %490, label %525, label %491

491:                                              ; preds = %487
  %492 = getelementptr inbounds %struct.reduction_info, ptr %21, i64 0, i32 1
  br label %493

493:                                              ; preds = %491, %520
  %494 = phi ptr [ %522, %520 ], [ %489, %491 ]
  %495 = load ptr, ptr %494, align 8, !tbaa !82
  %496 = getelementptr inbounds %struct.gimple_statement_phi, ptr %495, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #17
  %498 = call zeroext i8 @is_gimple_reg(ptr noundef %497) #17
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %520, label %500

500:                                              ; preds = %493
  %501 = call zeroext i8 @simple_iv(ptr noundef nonnull %146, ptr noundef nonnull %146, ptr noundef %497, ptr noundef nonnull %28, i8 noundef zeroext 1) #17
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %520

503:                                              ; preds = %500
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #17
  %504 = call i64 @htab_elements(ptr noundef %57) #17
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %508, label %506

506:                                              ; preds = %503
  store ptr %495, ptr %492, align 8, !tbaa !90
  %507 = call ptr @htab_find(ptr noundef %57, ptr noundef nonnull %21) #17
  br label %508

508:                                              ; preds = %506, %503
  %509 = phi ptr [ %507, %506 ], [ null, %503 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #17
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %520

511:                                              ; preds = %508
  %512 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %513 = icmp eq ptr %512, null
  br i1 %513, label %524, label %514

514:                                              ; preds = %511
  %515 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %516 = and i32 %515, 8
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %524, label %518

518:                                              ; preds = %514
  %519 = call i64 @fwrite(ptr nonnull @.str.18, i64 47, i64 1, ptr nonnull %512)
  br label %524

520:                                              ; preds = %508, %500, %493
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #17
  %521 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %494, i64 0, i32 2
  %522 = load ptr, ptr %521, align 8, !tbaa !84
  %523 = icmp eq ptr %522, null
  br i1 %523, label %525, label %493, !llvm.loop !101

524:                                              ; preds = %518, %514, %511
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #17
  br label %2025

525:                                              ; preds = %520, %487
  %526 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !50
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = call fastcc zeroext i8 @loop_parallel_p(ptr noundef nonnull %146), !range !102
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %2025, label %531

531:                                              ; preds = %528, %525
  %532 = getelementptr inbounds %struct.elv_data, ptr %12, i64 0, i32 1
  %533 = getelementptr inbounds %struct.elv_data, ptr %12, i64 0, i32 2
  %534 = getelementptr inbounds %struct.elv_data, ptr %12, i64 0, i32 3
  %535 = getelementptr inbounds i8, ptr %8, i64 8
  %536 = getelementptr inbounds i8, ptr %8, i64 16
  %537 = getelementptr inbounds i8, ptr %1, i64 8
  %538 = getelementptr inbounds i8, ptr %1, i64 16
  %539 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %540 = icmp eq ptr %539, null
  br i1 %540, label %562, label %541

541:                                              ; preds = %531
  %542 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %543 = and i32 %542, 8
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %562, label %545

545:                                              ; preds = %541
  %546 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 8
  %547 = load ptr, ptr %546, align 8, !tbaa !68
  %548 = icmp eq ptr %547, null
  %549 = load ptr, ptr %299, align 8, !tbaa !87
  %550 = getelementptr inbounds %struct.basic_block_def, ptr %549, i64 0, i32 9
  %551 = load i32, ptr %550, align 8, !tbaa !103
  %552 = select i1 %548, ptr @.str.6, ptr @.str.5
  %553 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %539, ptr noundef nonnull %552, i32 noundef %551)
  %554 = call i32 @find_loop_location(ptr noundef nonnull %146) #17
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %562, label %556

556:                                              ; preds = %545
  %557 = getelementptr inbounds %struct.expanded_location, ptr %32, i64 0, i32 1
  %558 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %31, i32 noundef %554) #17
  %559 = load ptr, ptr %31, align 8, !tbaa !104
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %32, i32 noundef %554) #17
  %560 = load i32, ptr %557, align 8, !tbaa !106
  %561 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %558, ptr noundef nonnull @.str.7, ptr noundef %559, i32 noundef %560)
  br label %562

562:                                              ; preds = %545, %556, %541, %531
  %563 = getelementptr inbounds %struct.tree_niter_desc, ptr %30, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #17
  %564 = load ptr, ptr %563, align 8, !tbaa !107
  %565 = getelementptr inbounds %struct.tree_common, ptr %564, i64 0, i32 2
  %566 = load ptr, ptr %565, align 8, !tbaa !46
  %567 = call ptr @unshare_expr(ptr noundef %564) #17
  %568 = call ptr @force_gimple_operand(ptr noundef %567, ptr noundef nonnull %19, i8 noundef zeroext 1, ptr noundef null) #17
  store ptr %568, ptr %18, align 8, !tbaa !35
  %569 = load ptr, ptr %19, align 8, !tbaa !35
  %570 = icmp eq ptr %569, null
  br i1 %570, label %575, label %571

571:                                              ; preds = %562
  %572 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %573 = load ptr, ptr %19, align 8, !tbaa !35
  %574 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %572, ptr noundef %573) #17
  br label %575

575:                                              ; preds = %571, %562
  %576 = mul i32 %33, 100
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds %struct.tree_niter_desc, ptr %30, i64 0, i32 1
  %579 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %580 = load ptr, ptr %18, align 8, !tbaa !35
  %581 = call ptr @build_int_cst(ptr noundef %566, i64 noundef %577) #17
  %582 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %579, ptr noundef %580, ptr noundef %581) #17
  %583 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %584 = load ptr, ptr %578, align 8, !tbaa !110
  %585 = call ptr @unshare_expr(ptr noundef %584) #17
  %586 = call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef %585) #17
  %587 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %583, ptr noundef %586, ptr noundef %582) #17
  %588 = call ptr @force_gimple_operand(ptr noundef %587, ptr noundef nonnull %19, i8 noundef zeroext 0, ptr noundef null) #17
  %589 = load ptr, ptr %19, align 8, !tbaa !35
  %590 = icmp eq ptr %589, null
  br i1 %590, label %595, label %591

591:                                              ; preds = %575
  %592 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %593 = load ptr, ptr %19, align 8, !tbaa !35
  %594 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %592, ptr noundef %593) #17
  br label %595

595:                                              ; preds = %591, %575
  %596 = call zeroext i8 @is_gimple_condexpr(ptr noundef %588) #17
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %598, label %606

598:                                              ; preds = %595
  %599 = call ptr @force_gimple_operand(ptr noundef %588, ptr noundef nonnull %19, i8 noundef zeroext 1, ptr noundef null) #17
  %600 = load ptr, ptr %19, align 8, !tbaa !35
  %601 = icmp eq ptr %600, null
  br i1 %601, label %606, label %602

602:                                              ; preds = %598
  %603 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %604 = load ptr, ptr %19, align 8, !tbaa !35
  %605 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %603, ptr noundef %604) #17
  br label %606

606:                                              ; preds = %602, %598, %595
  %607 = phi ptr [ %588, %595 ], [ %599, %602 ], [ %599, %598 ]
  call void @initialize_original_copy_tables() #17
  %608 = call ptr @loop_version(ptr noundef nonnull %146, ptr noundef %607, ptr noundef null, i32 noundef 8000, i32 noundef 8000, i32 noundef 2000, i8 noundef zeroext 1) #17
  call void @update_ssa(i32 noundef 2048) #17
  call void @free_original_copy_tables() #17
  %609 = call ptr @canonicalize_loop_ivs(ptr noundef nonnull %146, ptr noundef nonnull %18, i8 noundef zeroext 1) #17
  %610 = load ptr, ptr %18, align 8, !tbaa !35
  %611 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #17
  %612 = load ptr, ptr %299, align 8, !tbaa !87
  %613 = call ptr @split_block_after_labels(ptr noundef %612) #17
  %614 = load ptr, ptr %299, align 8, !tbaa !87
  %615 = getelementptr inbounds %struct.basic_block_def, ptr %614, i64 0, i32 1
  %616 = load ptr, ptr %615, align 8, !tbaa !111
  %617 = icmp eq ptr %616, null
  br i1 %617, label %621, label %618

618:                                              ; preds = %606
  %619 = load i32, ptr %616, align 8, !tbaa !112
  %620 = icmp eq i32 %619, 1
  br i1 %620, label %622, label %621

621:                                              ; preds = %618, %606
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.9) #17
  br label %622

622:                                              ; preds = %621, %618
  %623 = load ptr, ptr %615, align 8, !tbaa !111
  %624 = getelementptr inbounds %struct.VEC_edge_base, ptr %623, i64 0, i32 2, i64 0
  %625 = load ptr, ptr %624, align 8, !tbaa !35
  %626 = getelementptr inbounds %struct.edge_def, ptr %625, i64 0, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !94
  %628 = load ptr, ptr %299, align 8, !tbaa !87
  %629 = getelementptr inbounds %struct.basic_block_def, ptr %628, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !111
  %631 = icmp eq ptr %630, null
  br i1 %631, label %635, label %632

632:                                              ; preds = %622
  %633 = load i32, ptr %630, align 8, !tbaa !112
  %634 = icmp eq i32 %633, 1
  br i1 %634, label %636, label %635

635:                                              ; preds = %632, %622
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.9) #17
  br label %636

636:                                              ; preds = %635, %632
  %637 = load ptr, ptr %629, align 8, !tbaa !111
  %638 = getelementptr inbounds %struct.VEC_edge_base, ptr %637, i64 0, i32 2, i64 0
  %639 = load ptr, ptr %638, align 8, !tbaa !35
  %640 = load ptr, ptr %611, align 8, !tbaa !79
  %641 = call ptr @last_stmt(ptr noundef %640) #17
  %642 = load i32, ptr %641, align 8
  %643 = and i32 %642, 255
  %644 = add nsw i32 %643, -10
  %645 = icmp ult i32 %644, -9
  br i1 %645, label %658, label %646

646:                                              ; preds = %636
  %647 = zext nneg i32 %643 to i64
  %648 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %647
  %649 = load i32, ptr %648, align 4, !tbaa !50
  %650 = zext i32 %649 to i64
  %651 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %650
  %652 = load i64, ptr %651, align 8, !tbaa !91
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %646
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %655

655:                                              ; preds = %654, %646
  %656 = getelementptr inbounds i8, ptr %641, i64 %652
  %657 = load ptr, ptr %656, align 8, !tbaa !35
  br label %658

658:                                              ; preds = %655, %636
  %659 = phi ptr [ %657, %655 ], [ null, %636 ]
  %660 = load i32, ptr %641, align 8
  %661 = and i32 %660, 255
  %662 = add nsw i32 %661, -10
  %663 = icmp ult i32 %662, -9
  br i1 %663, label %677, label %664

664:                                              ; preds = %658
  %665 = zext nneg i32 %661 to i64
  %666 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !50
  %668 = zext i32 %667 to i64
  %669 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %668
  %670 = load i64, ptr %669, align 8, !tbaa !91
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %672, label %673

672:                                              ; preds = %664
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %673

673:                                              ; preds = %672, %664
  %674 = getelementptr inbounds i8, ptr %641, i64 %670
  %675 = getelementptr inbounds ptr, ptr %674, i64 1
  %676 = load ptr, ptr %675, align 8, !tbaa !35
  br label %677

677:                                              ; preds = %673, %658
  %678 = phi ptr [ %676, %673 ], [ null, %658 ]
  %679 = icmp eq ptr %678, %610
  br i1 %679, label %681, label %680

680:                                              ; preds = %677
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1311, ptr noundef nonnull @.str.9) #17
  br label %681

681:                                              ; preds = %680, %677
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #17
  %682 = load ptr, ptr %299, align 8, !tbaa !87
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %16, ptr noundef %682) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #17
  %683 = load ptr, ptr %15, align 8
  %684 = icmp eq ptr %683, null
  br i1 %684, label %733, label %685

685:                                              ; preds = %681
  %686 = getelementptr inbounds %struct.gimple_statement_base, ptr %641, i64 0, i32 3
  br label %687

687:                                              ; preds = %685, %727
  %688 = phi ptr [ %683, %685 ], [ %731, %727 ]
  %689 = phi ptr [ %659, %685 ], [ %728, %727 ]
  %690 = load ptr, ptr %688, align 8, !tbaa !82
  %691 = getelementptr inbounds %struct.gimple_statement_phi, ptr %690, i64 0, i32 3
  %692 = load ptr, ptr %691, align 8, !tbaa !35
  %693 = getelementptr inbounds %struct.tree_ssa_name, ptr %692, i64 0, i32 1
  %694 = load ptr, ptr %693, align 8, !tbaa !46
  %695 = load ptr, ptr @cfun, align 8, !tbaa !35
  %696 = call ptr @make_ssa_name_fn(ptr noundef %695, ptr noundef %694, ptr noundef %690) #17
  store ptr %696, ptr %691, align 8, !tbaa !35
  %697 = call ptr @create_phi_node(ptr noundef %692, ptr noundef %627) #17
  %698 = getelementptr inbounds %struct.tree_ssa_name, ptr %692, i64 0, i32 2
  store ptr %697, ptr %698, align 8, !tbaa !46
  call void @add_phi_arg(ptr noundef %697, ptr noundef %696, ptr noundef %639, i32 noundef 0) #17
  %699 = icmp eq ptr %692, %689
  br i1 %699, label %700, label %727

700:                                              ; preds = %687
  %701 = load i32, ptr %641, align 8
  %702 = and i32 %701, 255
  %703 = add nsw i32 %702, -10
  %704 = icmp ult i32 %703, -9
  br i1 %704, label %708, label %705

705:                                              ; preds = %700
  %706 = load i32, ptr %686, align 4, !tbaa !46
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %709

708:                                              ; preds = %705, %700
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.9) #17
  br label %709

709:                                              ; preds = %708, %705
  %710 = load i32, ptr %641, align 8
  %711 = and i32 %710, 255
  %712 = zext nneg i32 %711 to i64
  %713 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %712
  %714 = load i32, ptr %713, align 4, !tbaa !50
  %715 = zext i32 %714 to i64
  %716 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %715
  %717 = load i64, ptr %716, align 8, !tbaa !91
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %720

719:                                              ; preds = %709
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %720

720:                                              ; preds = %719, %709
  %721 = getelementptr inbounds i8, ptr %641, i64 %717
  store ptr %696, ptr %721, align 8, !tbaa !35
  %722 = load i32, ptr %641, align 8
  %723 = and i32 %722, 255
  %724 = add nsw i32 %723, -10
  %725 = icmp ult i32 %724, -9
  br i1 %725, label %727, label %726

726:                                              ; preds = %720
  call void @gimple_set_modified(ptr noundef nonnull %641, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %641) #17
  br label %727

727:                                              ; preds = %726, %720, %687
  %728 = phi ptr [ %689, %687 ], [ %696, %720 ], [ %696, %726 ]
  %729 = load ptr, ptr %15, align 8, !tbaa !114
  %730 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %729, i64 0, i32 2
  %731 = load ptr, ptr %730, align 8, !tbaa !84
  store ptr %731, ptr %15, align 8, !tbaa !114
  %732 = icmp eq ptr %731, null
  br i1 %732, label %733, label %687, !llvm.loop !116

733:                                              ; preds = %727, %681
  %734 = phi ptr [ %659, %681 ], [ %728, %727 ]
  %735 = call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %146) #17
  %736 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 3
  %737 = load ptr, ptr %736, align 8, !tbaa !117
  br label %738

738:                                              ; preds = %738, %733
  %739 = phi i32 [ 0, %733 ], [ %744, %738 ]
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds ptr, ptr %735, i64 %740
  %742 = load ptr, ptr %741, align 8, !tbaa !35
  %743 = icmp eq ptr %742, %737
  %744 = add i32 %739, 1
  br i1 %743, label %745, label %738, !llvm.loop !118

745:                                              ; preds = %738
  %746 = getelementptr inbounds %struct.loop, ptr %146, i64 0, i32 3
  %747 = shl nuw nsw i64 %740, 3
  %748 = call ptr @xmalloc(i64 noundef %747) #17
  %749 = load ptr, ptr %299, align 8, !tbaa !87
  %750 = getelementptr inbounds %struct.basic_block_def, ptr %749, i64 0, i32 1
  %751 = load ptr, ptr %750, align 8, !tbaa !111
  %752 = icmp eq ptr %751, null
  br i1 %752, label %756, label %753

753:                                              ; preds = %745
  %754 = load i32, ptr %751, align 8, !tbaa !112
  %755 = icmp eq i32 %754, 1
  br i1 %755, label %757, label %756

756:                                              ; preds = %753, %745
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.9) #17
  br label %757

757:                                              ; preds = %756, %753
  %758 = load ptr, ptr %750, align 8, !tbaa !111
  %759 = getelementptr inbounds %struct.VEC_edge_base, ptr %758, i64 0, i32 2, i64 0
  %760 = load ptr, ptr %759, align 8, !tbaa !35
  %761 = getelementptr inbounds ptr, ptr %735, i64 1
  %762 = call zeroext i8 @gimple_duplicate_sese_tail(ptr noundef %760, ptr noundef nonnull %611, ptr noundef nonnull %761, i32 noundef %739, ptr noundef %748) #17
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %764, label %765

764:                                              ; preds = %757
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1339, ptr noundef nonnull @.str.9) #17
  br label %765

765:                                              ; preds = %764, %757
  call void @free(ptr noundef %735)
  %766 = load ptr, ptr %748, align 8, !tbaa !35
  call void @free(ptr noundef %748)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %17, ptr noundef %766) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #17
  %767 = load ptr, ptr %15, align 8
  %768 = icmp eq ptr %767, null
  br i1 %768, label %833, label %769

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.reduction_info, ptr %14, i64 0, i32 1
  br label %771

771:                                              ; preds = %769, %830
  %772 = phi ptr [ %767, %769 ], [ %831, %830 ]
  %773 = phi ptr [ %611, %769 ], [ %791, %830 ]
  %774 = phi ptr [ null, %769 ], [ %782, %830 ]
  br label %775

775:                                              ; preds = %771, %815
  %776 = phi ptr [ %772, %771 ], [ %819, %815 ]
  %777 = phi ptr [ %773, %771 ], [ %791, %815 ]
  br label %778

778:                                              ; preds = %775, %785
  %779 = phi ptr [ %776, %775 ], [ %788, %785 ]
  %780 = load ptr, ptr %779, align 8, !tbaa !82
  %781 = getelementptr inbounds %struct.gimple_statement_phi, ptr %780, i64 0, i32 3
  %782 = load ptr, ptr %781, align 8, !tbaa !35
  %783 = call zeroext i8 @is_gimple_reg(ptr noundef %782) #17
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %778
  %786 = load ptr, ptr %15, align 8, !tbaa !114
  %787 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %786, i64 0, i32 2
  %788 = load ptr, ptr %787, align 8, !tbaa !84
  store ptr %788, ptr %15, align 8, !tbaa !114
  %789 = icmp eq ptr %788, null
  br i1 %789, label %833, label %778, !llvm.loop !119

790:                                              ; preds = %778
  %791 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %792 = call i64 @htab_elements(ptr noundef %57) #17
  %793 = icmp eq i64 %792, 0
  br i1 %793, label %821, label %794

794:                                              ; preds = %790
  %795 = getelementptr inbounds %struct.edge_def, ptr %791, i64 0, i32 6
  %796 = load i32, ptr %795, align 4, !tbaa !95
  %797 = getelementptr inbounds %struct.gimple_statement_phi, ptr %780, i64 0, i32 1
  %798 = load i32, ptr %797, align 8, !tbaa !46
  %799 = icmp ult i32 %798, %796
  br i1 %799, label %800, label %801

800:                                              ; preds = %794
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %801

801:                                              ; preds = %800, %794
  %802 = zext i32 %796 to i64
  %803 = getelementptr inbounds %struct.gimple_statement_phi, ptr %780, i64 0, i32 4, i64 %802, i32 0, i32 3
  %804 = load ptr, ptr %803, align 8, !tbaa !96
  %805 = load ptr, ptr %804, align 8, !tbaa !35
  %806 = getelementptr inbounds %struct.tree_ssa_name, ptr %805, i64 0, i32 2
  %807 = load ptr, ptr %806, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #17
  %808 = call i64 @htab_elements(ptr noundef %57) #17
  %809 = icmp eq i64 %808, 0
  br i1 %809, label %812, label %810

810:                                              ; preds = %801
  store ptr %807, ptr %770, align 8, !tbaa !90
  %811 = call ptr @htab_find(ptr noundef %57, ptr noundef nonnull %14) #17
  br label %812

812:                                              ; preds = %810, %801
  %813 = phi ptr [ %811, %810 ], [ null, %801 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #17
  %814 = icmp eq ptr %813, null
  br i1 %814, label %821, label %815

815:                                              ; preds = %812
  %816 = getelementptr inbounds %struct.reduction_info, ptr %813, i64 0, i32 3
  store ptr %780, ptr %816, align 8, !tbaa !120
  %817 = load ptr, ptr %15, align 8, !tbaa !114
  %818 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %817, i64 0, i32 2
  %819 = load ptr, ptr %818, align 8, !tbaa !84
  store ptr %819, ptr %15, align 8, !tbaa !114
  %820 = icmp eq ptr %819, null
  br i1 %820, label %833, label %775

821:                                              ; preds = %812, %790
  %822 = icmp eq ptr %774, null
  br i1 %822, label %823, label %829

823:                                              ; preds = %821
  %824 = getelementptr inbounds %struct.tree_ssa_name, ptr %734, i64 0, i32 1
  %825 = getelementptr inbounds %struct.tree_ssa_name, ptr %782, i64 0, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !46
  %827 = load ptr, ptr %824, align 8, !tbaa !46
  %828 = icmp eq ptr %826, %827
  br i1 %828, label %830, label %829

829:                                              ; preds = %823, %821
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1379, ptr noundef nonnull @.str.9) #17
  br label %830

830:                                              ; preds = %829, %823
  call void @remove_phi_node(ptr noundef nonnull %15, i8 noundef zeroext 0) #17
  %831 = load ptr, ptr %15, align 8
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %771, !llvm.loop !119

833:                                              ; preds = %830, %815, %785, %765
  %834 = phi ptr [ null, %765 ], [ %774, %785 ], [ %774, %815 ], [ %782, %830 ]
  %835 = phi ptr [ %611, %765 ], [ %777, %785 ], [ %791, %815 ], [ %791, %830 ]
  %836 = icmp eq ptr %834, null
  br i1 %836, label %837, label %838

837:                                              ; preds = %833
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1383, ptr noundef nonnull @.str.9) #17
  br label %838

838:                                              ; preds = %837, %833
  %839 = getelementptr inbounds %struct.basic_block_def, ptr %766, i64 0, i32 13
  %840 = load i32, ptr %839, align 8, !tbaa !76, !noalias !121
  %841 = and i32 %840, 512
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %849

843:                                              ; preds = %838
  %844 = getelementptr inbounds %struct.basic_block_def, ptr %766, i64 0, i32 7
  %845 = load ptr, ptr %844, align 8, !tbaa !46, !noalias !121
  %846 = icmp eq ptr %845, null
  br i1 %846, label %849, label %847

847:                                              ; preds = %843
  %848 = load ptr, ptr %845, align 8, !tbaa !126, !noalias !121
  br label %849

849:                                              ; preds = %847, %843, %838
  %850 = phi ptr [ %848, %847 ], [ null, %843 ], [ null, %838 ]
  %851 = icmp eq ptr %850, null
  br i1 %851, label %854, label %852

852:                                              ; preds = %849
  %853 = load ptr, ptr %850, align 8, !tbaa !128, !noalias !121
  br label %854

854:                                              ; preds = %852, %849
  %855 = phi ptr [ %853, %852 ], [ null, %849 ]
  %856 = icmp eq ptr %855, null
  br i1 %856, label %867, label %857

857:                                              ; preds = %854, %863
  %858 = phi ptr [ %865, %863 ], [ %855, %854 ]
  %859 = load ptr, ptr %858, align 8, !tbaa !82, !noalias !130
  %860 = load i32, ptr %859, align 8, !noalias !130
  %861 = and i32 %860, 255
  %862 = icmp eq i32 %861, 4
  br i1 %862, label %863, label %867

863:                                              ; preds = %857
  %864 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %858, i64 0, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !84, !noalias !130
  %866 = icmp eq ptr %865, null
  br i1 %866, label %867, label %857, !llvm.loop !131

867:                                              ; preds = %863, %857, %854
  %868 = phi ptr [ %855, %854 ], [ %865, %863 ], [ %858, %857 ]
  %869 = getelementptr inbounds i8, ptr %15, i64 8
  %870 = getelementptr inbounds i8, ptr %15, i64 16
  store ptr %868, ptr %15, align 8, !tbaa.struct !81
  store ptr %850, ptr %869, align 8, !tbaa.struct !132
  store ptr %766, ptr %870, align 8, !tbaa.struct !133
  %871 = load ptr, ptr %835, align 8, !tbaa !79
  %872 = call ptr @last_stmt(ptr noundef %871) #17
  %873 = load i32, ptr %872, align 8
  %874 = and i32 %873, 255
  %875 = add nsw i32 %874, -10
  %876 = icmp ult i32 %875, -9
  br i1 %876, label %890, label %877

877:                                              ; preds = %867
  %878 = zext nneg i32 %874 to i64
  %879 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %878
  %880 = load i32, ptr %879, align 4, !tbaa !50
  %881 = zext i32 %880 to i64
  %882 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %881
  %883 = load i64, ptr %882, align 8, !tbaa !91
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %877
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %886

886:                                              ; preds = %885, %877
  %887 = getelementptr inbounds i8, ptr %872, i64 %883
  %888 = getelementptr inbounds ptr, ptr %887, i64 1
  %889 = load ptr, ptr %888, align 8, !tbaa !35
  br label %890

890:                                              ; preds = %886, %867
  %891 = phi ptr [ %889, %886 ], [ null, %867 ]
  %892 = getelementptr inbounds %struct.tree_common, ptr %834, i64 0, i32 2
  %893 = load ptr, ptr %892, align 8, !tbaa !46
  %894 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %893, ptr noundef %891) #17
  %895 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %15, ptr noundef %894, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #17
  %896 = call ptr @gimple_build_assign_stat(ptr noundef %834, ptr noundef %895) #17
  call void @gsi_insert_before(ptr noundef nonnull %15, ptr noundef %896, i32 noundef 0) #17
  %897 = getelementptr inbounds %struct.tree_ssa_name, ptr %834, i64 0, i32 2
  store ptr %896, ptr %897, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #17
  %898 = call i64 @htab_elements(ptr noundef %57) #17
  %899 = icmp eq i64 %898, 0
  br i1 %899, label %901, label %900

900:                                              ; preds = %890
  call void @htab_traverse(ptr noundef %57, ptr noundef nonnull @initialize_reductions, ptr noundef nonnull %146) #17
  br label %901

901:                                              ; preds = %900, %890
  %902 = call ptr @single_exit(ptr noundef nonnull %146) #17
  %903 = icmp eq ptr %902, null
  br i1 %903, label %904, label %905

904:                                              ; preds = %901
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1643, ptr noundef nonnull @.str.9) #17
  br label %905

905:                                              ; preds = %904, %901
  %906 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %907 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %908 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #17
  store ptr %908, ptr %13, align 8, !tbaa !35
  %909 = call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @int_tree_map_hash, ptr noundef nonnull @int_tree_map_eq, ptr noundef nonnull @free) #17
  %910 = load ptr, ptr %906, align 8, !tbaa !79
  %911 = getelementptr inbounds %struct.edge_def, ptr %907, i64 0, i32 1
  %912 = load ptr, ptr %911, align 8, !tbaa !94
  call void @gather_blocks_in_sese_region(ptr noundef %910, ptr noundef %912, ptr noundef nonnull %13) #17
  br label %913

913:                                              ; preds = %982, %905
  %914 = phi i32 [ 0, %905 ], [ %983, %982 ]
  %915 = load ptr, ptr %13, align 8
  %916 = icmp eq ptr %915, null
  br i1 %916, label %924, label %917

917:                                              ; preds = %913
  %918 = load i32, ptr %915, align 8, !tbaa !134
  %919 = icmp ugt i32 %918, %914
  br i1 %919, label %920, label %924

920:                                              ; preds = %917
  %921 = zext i32 %914 to i64
  %922 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %915, i64 0, i32 2, i64 %921
  %923 = load ptr, ptr %922, align 8, !tbaa !35
  br label %924

924:                                              ; preds = %920, %917, %913
  %925 = phi ptr [ %923, %920 ], [ null, %917 ], [ null, %913 ]
  %926 = phi i1 [ false, %920 ], [ true, %917 ], [ true, %913 ]
  br i1 %926, label %984, label %927

927:                                              ; preds = %924
  %928 = icmp eq ptr %925, %910
  %929 = icmp eq ptr %925, %912
  %930 = or i1 %928, %929
  br i1 %930, label %982, label %931

931:                                              ; preds = %927
  %932 = getelementptr inbounds %struct.basic_block_def, ptr %925, i64 0, i32 13
  %933 = load i32, ptr %932, align 8, !tbaa !76, !noalias !136
  %934 = and i32 %933, 512
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %942

936:                                              ; preds = %931
  %937 = getelementptr inbounds %struct.basic_block_def, ptr %925, i64 0, i32 7
  %938 = load ptr, ptr %937, align 8, !tbaa !46, !noalias !136
  %939 = icmp eq ptr %938, null
  br i1 %939, label %942, label %940

940:                                              ; preds = %936
  %941 = load ptr, ptr %938, align 8, !tbaa !126, !noalias !136
  br label %942

942:                                              ; preds = %940, %936, %931
  %943 = phi ptr [ %941, %940 ], [ null, %936 ], [ null, %931 ]
  %944 = icmp eq ptr %943, null
  br i1 %944, label %947, label %945

945:                                              ; preds = %942
  %946 = load ptr, ptr %943, align 8, !tbaa !128, !noalias !136
  br label %947

947:                                              ; preds = %945, %942
  %948 = phi ptr [ %946, %945 ], [ null, %942 ]
  %949 = icmp eq ptr %948, null
  br i1 %949, label %982, label %950

950:                                              ; preds = %947, %978
  %951 = phi ptr [ %980, %978 ], [ %948, %947 ]
  %952 = load ptr, ptr %951, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %12) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 56, i1 false)
  store ptr %906, ptr %532, align 8, !tbaa !139
  store ptr %909, ptr %533, align 8, !tbaa !142
  store i8 0, ptr %534, align 8, !tbaa !143
  %953 = load i32, ptr %952, align 8
  %954 = and i32 %953, -65281
  %955 = icmp eq i32 %954, 2
  br i1 %955, label %956, label %967

956:                                              ; preds = %950
  %957 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 2), align 4, !tbaa !50
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %958
  %960 = load i64, ptr %959, align 8, !tbaa !91
  %961 = icmp eq i64 %960, 0
  br i1 %961, label %962, label %963

962:                                              ; preds = %956
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %963

963:                                              ; preds = %962, %956
  %964 = getelementptr inbounds i8, ptr %952, i64 %960
  %965 = getelementptr inbounds ptr, ptr %964, i64 1
  %966 = call ptr @walk_tree_1(ptr noundef nonnull %965, ptr noundef nonnull @eliminate_local_variables_1, ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #17
  br label %969

967:                                              ; preds = %950
  %968 = call ptr @walk_gimple_op(ptr noundef nonnull %952, ptr noundef nonnull @eliminate_local_variables_1, ptr noundef nonnull %12) #17
  br label %969

969:                                              ; preds = %967, %963
  %970 = load i8, ptr %534, align 8, !tbaa !143
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %978, label %972

972:                                              ; preds = %969
  %973 = load i32, ptr %952, align 8
  %974 = and i32 %973, 255
  %975 = add nsw i32 %974, -10
  %976 = icmp ult i32 %975, -9
  br i1 %976, label %978, label %977

977:                                              ; preds = %972
  call void @gimple_set_modified(ptr noundef nonnull %952, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %952) #17
  br label %978

978:                                              ; preds = %977, %972, %969
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #17
  %979 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %951, i64 0, i32 2
  %980 = load ptr, ptr %979, align 8, !tbaa !84
  %981 = icmp eq ptr %980, null
  br i1 %981, label %982, label %950, !llvm.loop !144

982:                                              ; preds = %978, %947, %927
  %983 = add i32 %914, 1
  br label %913, !llvm.loop !145

984:                                              ; preds = %924
  call void @htab_delete(ptr noundef %909) #17
  %985 = load ptr, ptr %13, align 8, !tbaa !35
  %986 = icmp eq ptr %985, null
  br i1 %986, label %988, label %987

987:                                              ; preds = %984
  call void @free(ptr noundef %985)
  br label %988

988:                                              ; preds = %987, %984
  store ptr null, ptr %13, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  %989 = call ptr @split_edge(ptr noundef nonnull %906) #17
  %990 = load ptr, ptr %989, align 8, !tbaa !146
  %991 = icmp eq ptr %990, null
  br i1 %991, label %995, label %992

992:                                              ; preds = %988
  %993 = load i32, ptr %990, align 8, !tbaa !112
  %994 = icmp eq i32 %993, 1
  br i1 %994, label %996, label %995

995:                                              ; preds = %992, %988
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 655, ptr noundef nonnull @.str.9) #17
  br label %996

996:                                              ; preds = %995, %992
  %997 = load ptr, ptr %989, align 8, !tbaa !146
  %998 = getelementptr inbounds %struct.VEC_edge_base, ptr %997, i64 0, i32 2, i64 0
  %999 = load ptr, ptr %998, align 8, !tbaa !35
  %1000 = load ptr, ptr %999, align 8, !tbaa !79
  %1001 = call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @name_to_copy_elt_hash, ptr noundef nonnull @name_to_copy_elt_eq, ptr noundef nonnull @free) #17
  %1002 = call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @int_tree_map_hash, ptr noundef nonnull @int_tree_map_eq, ptr noundef nonnull @free) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %1003 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #17
  store ptr %1003, ptr %10, align 8, !tbaa !35
  %1004 = load ptr, ptr %911, align 8, !tbaa !94
  %1005 = getelementptr inbounds %struct.basic_block_def, ptr %989, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !111
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1011, label %1008

1008:                                             ; preds = %996
  %1009 = load i32, ptr %1006, align 8, !tbaa !112
  %1010 = icmp eq i32 %1009, 1
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1008, %996
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.9) #17
  br label %1012

1012:                                             ; preds = %1011, %1008
  %1013 = load ptr, ptr %1005, align 8, !tbaa !111
  %1014 = getelementptr inbounds %struct.VEC_edge_base, ptr %1013, i64 0, i32 2, i64 0
  %1015 = load ptr, ptr %1014, align 8, !tbaa !35
  call void @gather_blocks_in_sese_region(ptr noundef nonnull %989, ptr noundef %1004, ptr noundef nonnull %10) #17
  br label %1016

1016:                                             ; preds = %1078, %1012
  %1017 = phi i8 [ 0, %1012 ], [ %1079, %1078 ]
  %1018 = phi i32 [ 0, %1012 ], [ %1080, %1078 ]
  %1019 = load ptr, ptr %10, align 8
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1028, label %1021

1021:                                             ; preds = %1016
  %1022 = load i32, ptr %1019, align 8, !tbaa !134
  %1023 = icmp ugt i32 %1022, %1018
  br i1 %1023, label %1024, label %1028

1024:                                             ; preds = %1021
  %1025 = zext i32 %1018 to i64
  %1026 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1019, i64 0, i32 2, i64 %1025
  %1027 = load ptr, ptr %1026, align 8, !tbaa !35
  br label %1028

1028:                                             ; preds = %1024, %1021, %1016
  %1029 = phi ptr [ %1027, %1024 ], [ null, %1021 ], [ null, %1016 ]
  %1030 = phi i1 [ false, %1024 ], [ true, %1021 ], [ true, %1016 ]
  br i1 %1030, label %1081, label %1031

1031:                                             ; preds = %1028
  %1032 = icmp eq ptr %1029, %989
  %1033 = icmp eq ptr %1029, %1004
  %1034 = select i1 %1032, i1 true, i1 %1033
  br i1 %1034, label %1078, label %1035

1035:                                             ; preds = %1031
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %1029) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #17
  %1036 = load ptr, ptr %8, align 8
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1045, label %1038

1038:                                             ; preds = %1035, %1038
  %1039 = phi ptr [ %1043, %1038 ], [ %1036, %1035 ]
  %1040 = load ptr, ptr %1039, align 8, !tbaa !82
  call fastcc void @separate_decls_in_region_stmt(ptr noundef %1015, ptr noundef %907, ptr noundef %1040, ptr noundef %1001, ptr noundef %1002)
  %1041 = load ptr, ptr %8, align 8, !tbaa !114
  %1042 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1041, i64 0, i32 2
  %1043 = load ptr, ptr %1042, align 8, !tbaa !84
  store ptr %1043, ptr %8, align 8, !tbaa !114
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1045, label %1038, !llvm.loop !147

1045:                                             ; preds = %1038, %1035
  %1046 = getelementptr inbounds %struct.basic_block_def, ptr %1029, i64 0, i32 13
  %1047 = load i32, ptr %1046, align 8, !tbaa !76, !noalias !148
  %1048 = and i32 %1047, 512
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1056

1050:                                             ; preds = %1045
  %1051 = getelementptr inbounds %struct.basic_block_def, ptr %1029, i64 0, i32 7
  %1052 = load ptr, ptr %1051, align 8, !tbaa !46, !noalias !148
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1056, label %1054

1054:                                             ; preds = %1050
  %1055 = load ptr, ptr %1052, align 8, !tbaa !126, !noalias !148
  br label %1056

1056:                                             ; preds = %1054, %1050, %1045
  %1057 = phi ptr [ %1055, %1054 ], [ null, %1050 ], [ null, %1045 ]
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1061, label %1059

1059:                                             ; preds = %1056
  %1060 = load ptr, ptr %1057, align 8, !tbaa !128, !noalias !148
  br label %1061

1061:                                             ; preds = %1059, %1056
  %1062 = phi ptr [ %1060, %1059 ], [ null, %1056 ]
  store ptr %1062, ptr %8, align 8, !tbaa.struct !81
  store ptr %1057, ptr %535, align 8, !tbaa.struct !132
  store ptr %1029, ptr %536, align 8, !tbaa.struct !133
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1078, label %1064

1064:                                             ; preds = %1061, %1072
  %1065 = phi ptr [ %1076, %1072 ], [ %1062, %1061 ]
  %1066 = phi i8 [ %1073, %1072 ], [ %1017, %1061 ]
  %1067 = load ptr, ptr %1065, align 8, !tbaa !82
  %1068 = load i32, ptr %1067, align 8
  %1069 = and i32 %1068, 255
  %1070 = icmp eq i32 %1069, 2
  br i1 %1070, label %1072, label %1071

1071:                                             ; preds = %1064
  call fastcc void @separate_decls_in_region_stmt(ptr noundef %1015, ptr noundef %907, ptr noundef nonnull %1067, ptr noundef %1001, ptr noundef %1002)
  br label %1072

1072:                                             ; preds = %1071, %1064
  %1073 = phi i8 [ %1066, %1071 ], [ 1, %1064 ]
  %1074 = load ptr, ptr %8, align 8, !tbaa !114
  %1075 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1074, i64 0, i32 2
  %1076 = load ptr, ptr %1075, align 8, !tbaa !84
  store ptr %1076, ptr %8, align 8, !tbaa !114
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1078, label %1064, !llvm.loop !151

1078:                                             ; preds = %1072, %1061, %1031
  %1079 = phi i8 [ %1017, %1031 ], [ %1017, %1061 ], [ %1073, %1072 ]
  %1080 = add i32 %1018, 1
  br label %1016, !llvm.loop !152

1081:                                             ; preds = %1028
  %1082 = icmp eq i8 %1017, 0
  br i1 %1082, label %1345, label %1083

1083:                                             ; preds = %1081
  %1084 = getelementptr inbounds i8, ptr %8, i64 8
  %1085 = getelementptr inbounds i8, ptr %8, i64 16
  br label %1086

1086:                                             ; preds = %1083, %1343
  %1087 = phi i32 [ %1344, %1343 ], [ 0, %1083 ]
  %1088 = load ptr, ptr %10, align 8
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1097, label %1090

1090:                                             ; preds = %1086
  %1091 = load i32, ptr %1088, align 8, !tbaa !134
  %1092 = icmp ugt i32 %1091, %1087
  br i1 %1092, label %1093, label %1097

1093:                                             ; preds = %1090
  %1094 = zext i32 %1087 to i64
  %1095 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1088, i64 0, i32 2, i64 %1094
  %1096 = load ptr, ptr %1095, align 8, !tbaa !35
  br label %1097

1097:                                             ; preds = %1093, %1090, %1086
  %1098 = phi ptr [ %1096, %1093 ], [ null, %1090 ], [ null, %1086 ]
  %1099 = phi i1 [ false, %1093 ], [ true, %1090 ], [ true, %1086 ]
  br i1 %1099, label %1345, label %1100

1100:                                             ; preds = %1097
  %1101 = icmp eq ptr %1098, %989
  %1102 = icmp eq ptr %1098, %1004
  %1103 = select i1 %1101, i1 true, i1 %1102
  br i1 %1103, label %1343, label %1104

1104:                                             ; preds = %1100
  %1105 = getelementptr inbounds %struct.basic_block_def, ptr %1098, i64 0, i32 13
  %1106 = load i32, ptr %1105, align 8, !tbaa !76, !noalias !153
  %1107 = and i32 %1106, 512
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1115

1109:                                             ; preds = %1104
  %1110 = getelementptr inbounds %struct.basic_block_def, ptr %1098, i64 0, i32 7
  %1111 = load ptr, ptr %1110, align 8, !tbaa !46, !noalias !153
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1115, label %1113

1113:                                             ; preds = %1109
  %1114 = load ptr, ptr %1111, align 8, !tbaa !126, !noalias !153
  br label %1115

1115:                                             ; preds = %1113, %1109, %1104
  %1116 = phi ptr [ %1114, %1113 ], [ null, %1109 ], [ null, %1104 ]
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1120, label %1118

1118:                                             ; preds = %1115
  %1119 = load ptr, ptr %1116, align 8, !tbaa !128, !noalias !153
  br label %1120

1120:                                             ; preds = %1118, %1115
  %1121 = phi ptr [ %1119, %1118 ], [ null, %1115 ]
  store ptr %1121, ptr %8, align 8, !tbaa.struct !81
  store ptr %1116, ptr %1084, align 8, !tbaa.struct !132
  store ptr %1098, ptr %1085, align 8, !tbaa.struct !133
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1343, label %1123

1123:                                             ; preds = %1120, %1340
  %1124 = phi ptr [ %1341, %1340 ], [ %1121, %1120 ]
  %1125 = load ptr, ptr %1124, align 8, !tbaa !82
  %1126 = load i32, ptr %1125, align 8
  %1127 = and i32 %1126, -65281
  %1128 = icmp eq i32 %1127, 2
  br i1 %1128, label %1129, label %1336

1129:                                             ; preds = %1123
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  %1130 = load i32, ptr %1125, align 8
  %1131 = and i32 %1130, 255
  %1132 = add nsw i32 %1131, -10
  %1133 = icmp ult i32 %1132, -9
  br i1 %1133, label %1146, label %1134

1134:                                             ; preds = %1129
  %1135 = zext nneg i32 %1131 to i64
  %1136 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1135
  %1137 = load i32, ptr %1136, align 4, !tbaa !50
  %1138 = zext i32 %1137 to i64
  %1139 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1138
  %1140 = load i64, ptr %1139, align 8, !tbaa !91
  %1141 = icmp eq i64 %1140, 0
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1134
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %1143

1143:                                             ; preds = %1142, %1134
  %1144 = getelementptr inbounds i8, ptr %1125, i64 %1140
  %1145 = load ptr, ptr %1144, align 8, !tbaa !35
  br label %1146

1146:                                             ; preds = %1143, %1129
  %1147 = phi ptr [ %1145, %1143 ], [ null, %1129 ]
  %1148 = load i64, ptr %1147, align 8
  %1149 = and i64 %1148, 65535
  %1150 = icmp eq i64 %1149, 37
  br i1 %1150, label %1335, label %1151

1151:                                             ; preds = %1146
  %1152 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1149
  %1153 = load i32, ptr %1152, align 4, !tbaa !50
  %1154 = icmp eq i32 %1153, 3
  br i1 %1154, label %1155, label %1162

1155:                                             ; preds = %1151
  %1156 = trunc i64 %1148 to i16
  switch i16 %1156, label %1162 [
    i16 32, label %1163
    i16 34, label %1163
    i16 36, label %1163
    i16 141, label %1157
  ]

1157:                                             ; preds = %1155
  %1158 = getelementptr inbounds %struct.tree_ssa_name, ptr %1147, i64 0, i32 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !46
  %1160 = load i64, ptr %1159, align 8
  %1161 = trunc i64 %1160 to i16
  switch i16 %1161, label %1162 [
    i16 32, label %1163
    i16 34, label %1163
    i16 36, label %1163
  ]

1162:                                             ; preds = %1157, %1155, %1151
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 727, ptr noundef nonnull @.str.9) #17
  br label %1163

1163:                                             ; preds = %1157, %1157, %1155, %1155, %1162, %1157, %1155
  %1164 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1147, i64 0, i32 2
  %1165 = load i32, ptr %1164, align 4, !tbaa !46
  store i32 %1165, ptr %6, align 8, !tbaa !156
  %1166 = call ptr @htab_find_slot_with_hash(ptr noundef %1002, ptr noundef nonnull %6, i32 noundef %1165, i32 noundef 0) #17
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1335, label %1168

1168:                                             ; preds = %1163
  %1169 = load ptr, ptr %1166, align 8, !tbaa !35
  %1170 = getelementptr inbounds %struct.int_tree_map, ptr %1169, i64 0, i32 1
  %1171 = load ptr, ptr %1170, align 8, !tbaa !158
  %1172 = load i32, ptr %1125, align 8
  %1173 = and i32 %1172, 255
  %1174 = add nsw i32 %1173, -10
  %1175 = icmp ult i32 %1174, -9
  br i1 %1175, label %1180, label %1176

1176:                                             ; preds = %1168
  %1177 = getelementptr inbounds %struct.gimple_statement_base, ptr %1125, i64 0, i32 3
  %1178 = load i32, ptr %1177, align 4, !tbaa !46
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1180, label %1181

1180:                                             ; preds = %1176, %1168
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.9) #17
  br label %1181

1181:                                             ; preds = %1180, %1176
  %1182 = load i32, ptr %1125, align 8
  %1183 = and i32 %1182, 255
  %1184 = zext nneg i32 %1183 to i64
  %1185 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1184
  %1186 = load i32, ptr %1185, align 4, !tbaa !50
  %1187 = zext i32 %1186 to i64
  %1188 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1187
  %1189 = load i64, ptr %1188, align 8, !tbaa !91
  %1190 = icmp eq i64 %1189, 0
  br i1 %1190, label %1191, label %1192

1191:                                             ; preds = %1181
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %1192

1192:                                             ; preds = %1191, %1181
  %1193 = getelementptr inbounds i8, ptr %1125, i64 %1189
  store ptr %1171, ptr %1193, align 8, !tbaa !35
  %1194 = load i32, ptr %1125, align 8
  %1195 = and i32 %1194, 255
  %1196 = icmp eq i32 %1195, 16
  br i1 %1196, label %1197, label %1208

1197:                                             ; preds = %1192
  %1198 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1125, i64 0, i32 3
  %1199 = load ptr, ptr %1198, align 8, !tbaa !46
  %1200 = call zeroext i8 @is_gimple_reg(ptr noundef %1199) #17
  %1201 = icmp eq i8 %1200, 0
  br i1 %1201, label %1233, label %1202

1202:                                             ; preds = %1197
  %1203 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1125, i64 0, i32 2
  %1204 = load i32, ptr %1203, align 4, !tbaa !46
  %1205 = icmp sgt i32 %1204, 0
  br i1 %1205, label %1206, label %1233

1206:                                             ; preds = %1202
  %1207 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1125, i64 0, i32 4, i64 0
  br label %1233

1208:                                             ; preds = %1192
  %1209 = add nsw i32 %1195, -10
  %1210 = icmp ult i32 %1209, -9
  br i1 %1210, label %1214, label %1211

1211:                                             ; preds = %1208
  %1212 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1125, i64 0, i32 2
  %1213 = load ptr, ptr %1212, align 8, !tbaa !46
  br label %1214

1214:                                             ; preds = %1211, %1208
  %1215 = phi ptr [ %1213, %1211 ], [ null, %1208 ]
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1227, label %1217

1217:                                             ; preds = %1214
  %1218 = and i32 %1194, 254
  %1219 = add nsw i32 %1218, -10
  %1220 = icmp ult i32 %1219, -4
  br i1 %1220, label %1227, label %1221

1221:                                             ; preds = %1217
  %1222 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1125, i64 0, i32 2
  %1223 = load ptr, ptr %1222, align 8, !tbaa !46
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1227, label %1225

1225:                                             ; preds = %1221
  %1226 = load ptr, ptr %1215, align 8, !tbaa !159
  br label %1227

1227:                                             ; preds = %1225, %1221, %1217, %1214
  %1228 = phi ptr [ %1215, %1214 ], [ %1215, %1217 ], [ %1215, %1221 ], [ %1226, %1225 ]
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1233, label %1230

1230:                                             ; preds = %1227
  %1231 = getelementptr inbounds %struct.use_optype_d, ptr %1228, i64 0, i32 1
  %1232 = load ptr, ptr %1228, align 8, !tbaa !159
  br label %1233

1233:                                             ; preds = %1230, %1227, %1206, %1202, %1197
  %1234 = phi i32 [ %1204, %1206 ], [ 0, %1197 ], [ %1204, %1202 ], [ 0, %1227 ], [ 0, %1230 ]
  %1235 = phi i32 [ 1, %1206 ], [ 0, %1197 ], [ 0, %1202 ], [ 0, %1227 ], [ 0, %1230 ]
  %1236 = phi ptr [ null, %1206 ], [ null, %1197 ], [ null, %1202 ], [ %1228, %1227 ], [ %1232, %1230 ]
  %1237 = phi ptr [ %1125, %1206 ], [ null, %1197 ], [ %1125, %1202 ], [ null, %1227 ], [ null, %1230 ]
  %1238 = phi i1 [ true, %1206 ], [ false, %1197 ], [ false, %1202 ], [ false, %1227 ], [ true, %1230 ]
  %1239 = phi i8 [ 0, %1206 ], [ 1, %1197 ], [ 1, %1202 ], [ 1, %1227 ], [ 0, %1230 ]
  %1240 = phi ptr [ %1207, %1206 ], [ null, %1197 ], [ null, %1202 ], [ null, %1227 ], [ %1231, %1230 ]
  br i1 %1238, label %1241, label %1334

1241:                                             ; preds = %1233
  %1242 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1237, i64 0, i32 1
  br label %1243

1243:                                             ; preds = %1241, %1328
  %1244 = phi ptr [ %1240, %1241 ], [ %1332, %1328 ]
  %1245 = phi i8 [ %1239, %1241 ], [ %1331, %1328 ]
  %1246 = phi ptr [ %1236, %1241 ], [ %1330, %1328 ]
  %1247 = phi i32 [ %1235, %1241 ], [ %1329, %1328 ]
  %1248 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1244, i64 0, i32 3
  %1249 = load ptr, ptr %1248, align 8, !tbaa !96
  %1250 = load ptr, ptr %1249, align 8, !tbaa !35
  %1251 = load i64, ptr %1250, align 8
  %1252 = and i64 %1251, 65535
  %1253 = icmp eq i64 %1252, 141
  br i1 %1253, label %1254, label %1313

1254:                                             ; preds = %1243
  %1255 = getelementptr inbounds %struct.tree_ssa_name, ptr %1250, i64 0, i32 3
  %1256 = load i32, ptr %1255, align 8, !tbaa !46
  store i32 %1256, ptr %7, align 8, !tbaa !161
  %1257 = call ptr @htab_find_slot_with_hash(ptr noundef %1001, ptr noundef nonnull %7, i32 noundef %1256, i32 noundef 0) #17
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1259, label %1288

1259:                                             ; preds = %1254
  %1260 = load i32, ptr %1125, align 8
  %1261 = and i32 %1260, 255
  %1262 = add nsw i32 %1261, -10
  %1263 = icmp ult i32 %1262, -9
  br i1 %1263, label %1268, label %1264

1264:                                             ; preds = %1259
  %1265 = getelementptr inbounds %struct.gimple_statement_base, ptr %1125, i64 0, i32 3
  %1266 = load i32, ptr %1265, align 4, !tbaa !46
  %1267 = icmp ugt i32 %1266, 1
  br i1 %1267, label %1269, label %1268

1268:                                             ; preds = %1264, %1259
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.9) #17
  br label %1269

1269:                                             ; preds = %1268, %1264
  %1270 = load i32, ptr %1125, align 8
  %1271 = and i32 %1270, 255
  %1272 = zext nneg i32 %1271 to i64
  %1273 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1272
  %1274 = load i32, ptr %1273, align 4, !tbaa !50
  %1275 = zext i32 %1274 to i64
  %1276 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1275
  %1277 = load i64, ptr %1276, align 8, !tbaa !91
  %1278 = icmp eq i64 %1277, 0
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1269
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %1280

1280:                                             ; preds = %1279, %1269
  %1281 = getelementptr inbounds i8, ptr %1125, i64 %1277
  %1282 = getelementptr inbounds ptr, ptr %1281, i64 1
  store ptr null, ptr %1282, align 8, !tbaa !35
  %1283 = load i32, ptr %1125, align 8
  %1284 = and i32 %1283, 255
  %1285 = add nsw i32 %1284, -10
  %1286 = icmp ult i32 %1285, -9
  br i1 %1286, label %1334, label %1287

1287:                                             ; preds = %1280
  call void @gimple_set_modified(ptr noundef nonnull %1125, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %1125) #17
  br label %1334

1288:                                             ; preds = %1254
  %1289 = load ptr, ptr %1257, align 8, !tbaa !35
  %1290 = getelementptr inbounds %struct.name_to_copy_elt, ptr %1289, i64 0, i32 1
  %1291 = load ptr, ptr %1290, align 8, !tbaa !163
  %1292 = load ptr, ptr %1244, align 8, !tbaa !164
  %1293 = icmp eq ptr %1292, null
  br i1 %1293, label %1299, label %1294

1294:                                             ; preds = %1288
  %1295 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1244, i64 0, i32 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !98
  %1297 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1292, i64 0, i32 1
  store ptr %1296, ptr %1297, align 8, !tbaa !98
  %1298 = load ptr, ptr %1295, align 8, !tbaa !98
  store ptr %1292, ptr %1298, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1244, i8 0, i64 16, i1 false)
  br label %1299

1299:                                             ; preds = %1294, %1288
  %1300 = load ptr, ptr %1248, align 8, !tbaa !96
  store ptr %1291, ptr %1300, align 8, !tbaa !35
  %1301 = icmp eq ptr %1291, null
  br i1 %1301, label %1306, label %1302

1302:                                             ; preds = %1299
  %1303 = load i64, ptr %1291, align 8
  %1304 = and i64 %1303, 65535
  %1305 = icmp eq i64 %1304, 141
  br i1 %1305, label %1307, label %1306

1306:                                             ; preds = %1302, %1299
  store ptr null, ptr %1244, align 8, !tbaa !164
  br label %1313

1307:                                             ; preds = %1302
  %1308 = getelementptr inbounds %struct.tree_ssa_name, ptr %1291, i64 0, i32 5
  store ptr %1308, ptr %1244, align 8, !tbaa !164
  %1309 = getelementptr inbounds %struct.tree_ssa_name, ptr %1291, i64 0, i32 5, i32 1
  %1310 = load ptr, ptr %1309, align 8, !tbaa !98
  %1311 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1244, i64 0, i32 1
  store ptr %1310, ptr %1311, align 8, !tbaa !98
  %1312 = load ptr, ptr %1309, align 8, !tbaa !98
  store ptr %1244, ptr %1312, align 8, !tbaa !164
  store ptr %1244, ptr %1309, align 8, !tbaa !98
  br label %1313

1313:                                             ; preds = %1307, %1306, %1243
  %1314 = icmp eq ptr %1246, null
  br i1 %1314, label %1318, label %1315

1315:                                             ; preds = %1313
  %1316 = getelementptr inbounds %struct.use_optype_d, ptr %1246, i64 0, i32 1
  %1317 = load ptr, ptr %1246, align 8, !tbaa !159
  br label %1328

1318:                                             ; preds = %1313
  %1319 = icmp slt i32 %1247, %1234
  br i1 %1319, label %1320, label %1328

1320:                                             ; preds = %1318
  %1321 = add nsw i32 %1247, 1
  %1322 = load i32, ptr %1242, align 8, !tbaa !46
  %1323 = icmp ult i32 %1322, %1247
  br i1 %1323, label %1324, label %1325

1324:                                             ; preds = %1320
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1325

1325:                                             ; preds = %1324, %1320
  %1326 = zext i32 %1247 to i64
  %1327 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1237, i64 0, i32 4, i64 %1326
  br label %1328

1328:                                             ; preds = %1325, %1318, %1315
  %1329 = phi i32 [ %1321, %1325 ], [ %1247, %1315 ], [ %1247, %1318 ]
  %1330 = phi ptr [ %1246, %1325 ], [ %1317, %1315 ], [ %1246, %1318 ]
  %1331 = phi i8 [ %1245, %1325 ], [ %1245, %1315 ], [ 1, %1318 ]
  %1332 = phi ptr [ %1327, %1325 ], [ %1316, %1315 ], [ null, %1318 ]
  %1333 = icmp eq i8 %1331, 0
  br i1 %1333, label %1243, label %1334, !llvm.loop !165

1334:                                             ; preds = %1328, %1233, %1287, %1280
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %1336

1335:                                             ; preds = %1163, %1146
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #17
  br label %1340, !llvm.loop !166

1336:                                             ; preds = %1334, %1123
  %1337 = load ptr, ptr %8, align 8, !tbaa !114
  %1338 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1337, i64 0, i32 2
  %1339 = load ptr, ptr %1338, align 8, !tbaa !84
  store ptr %1339, ptr %8, align 8, !tbaa !114
  br label %1340

1340:                                             ; preds = %1336, %1335
  %1341 = load ptr, ptr %8, align 8
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1343, label %1123

1343:                                             ; preds = %1340, %1120, %1100
  %1344 = add i32 %1087, 1
  br label %1086, !llvm.loop !167

1345:                                             ; preds = %1097, %1081
  %1346 = load ptr, ptr %10, align 8, !tbaa !35
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1349, label %1348

1348:                                             ; preds = %1345
  call void @free(ptr noundef %1346)
  br label %1349

1349:                                             ; preds = %1348, %1345
  store ptr null, ptr %10, align 8, !tbaa !35
  %1350 = call i64 @htab_elements(ptr noundef %1001) #17
  %1351 = icmp eq i64 %1350, 0
  br i1 %1351, label %1352, label %1355

1352:                                             ; preds = %1349
  %1353 = call i64 @htab_elements(ptr noundef %57) #17
  %1354 = icmp eq i64 %1353, 0
  br i1 %1354, label %1424, label %1355

1355:                                             ; preds = %1352, %1349
  %1356 = icmp eq ptr %57, null
  %1357 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !168
  %1358 = call ptr %1357(i32 noundef 16) #17
  %1359 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.29) #17
  %1360 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 35, ptr noundef %1359, ptr noundef %1358) #17
  %1361 = getelementptr inbounds %struct.tree_type, ptr %1358, i64 0, i32 12
  store ptr %1360, ptr %1361, align 8, !tbaa !46
  call void @htab_traverse(ptr noundef %1001, ptr noundef nonnull @add_field_for_name, ptr noundef %1358) #17
  br i1 %1356, label %1366, label %1362

1362:                                             ; preds = %1355
  %1363 = call i64 @htab_elements(ptr noundef nonnull %57) #17
  %1364 = icmp eq i64 %1363, 0
  br i1 %1364, label %1366, label %1365

1365:                                             ; preds = %1362
  call void @htab_traverse(ptr noundef nonnull %57, ptr noundef nonnull @add_field_for_reduction, ptr noundef %1358) #17
  br label %1366

1366:                                             ; preds = %1365, %1362, %1355
  %1367 = getelementptr inbounds %struct.clsn_data, ptr %20, i64 0, i32 1
  %1368 = getelementptr inbounds %struct.clsn_data, ptr %20, i64 0, i32 2
  %1369 = getelementptr inbounds %struct.clsn_data, ptr %20, i64 0, i32 3
  call void @layout_type(ptr noundef %1358) #17
  %1370 = call ptr @create_tmp_var(ptr noundef %1358, ptr noundef nonnull @.str.30) #17
  %1371 = call zeroext i8 @add_referenced_var(ptr noundef %1370) #17
  %1372 = call ptr @build_pointer_type(ptr noundef %1358) #17
  %1373 = call ptr @create_tmp_var(ptr noundef %1372, ptr noundef nonnull @.str.31) #17
  %1374 = call zeroext i8 @add_referenced_var(ptr noundef %1373) #17
  %1375 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1376 = call ptr @make_ssa_name_fn(ptr noundef %1375, ptr noundef %1373, ptr noundef null) #17
  store ptr %1370, ptr %20, align 8, !tbaa !176
  store ptr %1376, ptr %1367, align 8, !tbaa !178
  store ptr %1000, ptr %1368, align 8, !tbaa !179
  store ptr %989, ptr %1369, align 8, !tbaa !180
  call void @htab_traverse(ptr noundef %1001, ptr noundef nonnull @create_loads_and_stores_for_name, ptr noundef nonnull %20) #17
  br i1 %1356, label %1424, label %1377

1377:                                             ; preds = %1366
  %1378 = call i64 @htab_elements(ptr noundef nonnull %57) #17
  %1379 = icmp eq i64 %1378, 0
  br i1 %1379, label %1424, label %1380

1380:                                             ; preds = %1377
  %1381 = getelementptr inbounds %struct.clsn_data, ptr %9, i64 0, i32 1
  %1382 = getelementptr inbounds %struct.clsn_data, ptr %9, i64 0, i32 3
  call void @htab_traverse(ptr noundef nonnull %57, ptr noundef nonnull @create_stores_for_reduction, ptr noundef nonnull %20) #17
  %1383 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1384 = call ptr @make_ssa_name_fn(ptr noundef %1383, ptr noundef %1373, ptr noundef null) #17
  store ptr %1384, ptr %1381, align 8, !tbaa !178
  %1385 = load ptr, ptr %911, align 8, !tbaa !94
  store ptr %1385, ptr %1382, align 8, !tbaa !180
  %1386 = load ptr, ptr %20, align 8, !tbaa !176
  store ptr %1386, ptr %9, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %1387 = getelementptr inbounds %struct.basic_block_def, ptr %1385, i64 0, i32 13
  %1388 = load i32, ptr %1387, align 8, !tbaa !76, !noalias !181
  %1389 = and i32 %1388, 512
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1391, label %1397

1391:                                             ; preds = %1380
  %1392 = getelementptr inbounds %struct.basic_block_def, ptr %1385, i64 0, i32 7
  %1393 = load ptr, ptr %1392, align 8, !tbaa !46, !noalias !181
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %1397, label %1395

1395:                                             ; preds = %1391
  %1396 = load ptr, ptr %1393, align 8, !tbaa !126, !noalias !181
  br label %1397

1397:                                             ; preds = %1395, %1391, %1380
  %1398 = phi ptr [ %1396, %1395 ], [ null, %1391 ], [ null, %1380 ]
  %1399 = icmp eq ptr %1398, null
  br i1 %1399, label %1402, label %1400

1400:                                             ; preds = %1397
  %1401 = load ptr, ptr %1398, align 8, !tbaa !128, !noalias !181
  br label %1402

1402:                                             ; preds = %1400, %1397
  %1403 = phi ptr [ %1401, %1400 ], [ null, %1397 ]
  %1404 = icmp eq ptr %1403, null
  br i1 %1404, label %1415, label %1405

1405:                                             ; preds = %1402, %1411
  %1406 = phi ptr [ %1413, %1411 ], [ %1403, %1402 ]
  %1407 = load ptr, ptr %1406, align 8, !tbaa !82, !noalias !186
  %1408 = load i32, ptr %1407, align 8, !noalias !186
  %1409 = and i32 %1408, 255
  %1410 = icmp eq i32 %1409, 4
  br i1 %1410, label %1411, label %1415

1411:                                             ; preds = %1405
  %1412 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1406, i64 0, i32 2
  %1413 = load ptr, ptr %1412, align 8, !tbaa !84, !noalias !186
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1415, label %1405, !llvm.loop !131

1415:                                             ; preds = %1411, %1405, %1402
  %1416 = phi ptr [ %1403, %1402 ], [ %1413, %1411 ], [ %1406, %1405 ]
  %1417 = getelementptr inbounds i8, ptr %5, i64 8
  %1418 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %1416, ptr %5, align 8, !tbaa.struct !81
  store ptr %1398, ptr %1417, align 8, !tbaa.struct !132
  store ptr %1385, ptr %1418, align 8, !tbaa.struct !133
  %1419 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %1386) #17
  %1420 = load ptr, ptr %1381, align 8, !tbaa !178
  %1421 = call ptr @gimple_build_assign_stat(ptr noundef %1420, ptr noundef %1419) #17
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %1421, i32 noundef 0) #17
  %1422 = load ptr, ptr %1381, align 8, !tbaa !178
  %1423 = getelementptr inbounds %struct.tree_ssa_name, ptr %1422, i64 0, i32 2
  store ptr %1421, ptr %1423, align 8, !tbaa !46
  call void @htab_traverse(ptr noundef nonnull %57, ptr noundef nonnull @create_loads_for_reductions, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %1424

1424:                                             ; preds = %1352, %1415, %1377, %1366
  %1425 = phi ptr [ %1370, %1366 ], [ %1370, %1377 ], [ %1370, %1415 ], [ null, %1352 ]
  %1426 = phi ptr [ %1376, %1366 ], [ %1376, %1377 ], [ %1376, %1415 ], [ null, %1352 ]
  call void @htab_delete(ptr noundef %1002) #17
  call void @htab_delete(ptr noundef %1001) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  %1427 = call fastcc ptr @create_loop_fn()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %1428 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %1429 = load ptr, ptr %1428, align 8, !tbaa !79
  %1430 = load ptr, ptr %1429, align 8, !tbaa !146
  %1431 = icmp eq ptr %1430, null
  br i1 %1431, label %1435, label %1432

1432:                                             ; preds = %1424
  %1433 = load i32, ptr %1430, align 8, !tbaa !112
  %1434 = icmp eq i32 %1433, 1
  br i1 %1434, label %1436, label %1435

1435:                                             ; preds = %1432, %1424
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 655, ptr noundef nonnull @.str.9) #17
  br label %1436

1436:                                             ; preds = %1435, %1432
  %1437 = load ptr, ptr %1429, align 8, !tbaa !146
  %1438 = getelementptr inbounds %struct.VEC_edge_base, ptr %1437, i64 0, i32 2, i64 0
  %1439 = load ptr, ptr %1438, align 8, !tbaa !35
  %1440 = load ptr, ptr %1439, align 8, !tbaa !79
  %1441 = getelementptr inbounds %struct.basic_block_def, ptr %1440, i64 0, i32 13
  %1442 = load i32, ptr %1441, align 8, !tbaa !76, !noalias !187
  %1443 = and i32 %1442, 512
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1445, label %1451

1445:                                             ; preds = %1436
  %1446 = getelementptr inbounds %struct.basic_block_def, ptr %1440, i64 0, i32 7
  %1447 = load ptr, ptr %1446, align 8, !tbaa !46, !noalias !187
  %1448 = icmp eq ptr %1447, null
  br i1 %1448, label %1451, label %1449

1449:                                             ; preds = %1445
  %1450 = load ptr, ptr %1447, align 8, !tbaa !126, !noalias !187
  br label %1451

1451:                                             ; preds = %1449, %1445, %1436
  %1452 = phi ptr [ %1450, %1449 ], [ null, %1445 ], [ null, %1436 ]
  %1453 = icmp eq ptr %1452, null
  br i1 %1453, label %1457, label %1454

1454:                                             ; preds = %1451
  %1455 = getelementptr inbounds %struct.gimple_seq_d, ptr %1452, i64 0, i32 1
  %1456 = load ptr, ptr %1455, align 8, !tbaa !190, !noalias !187
  br label %1457

1457:                                             ; preds = %1454, %1451
  %1458 = phi ptr [ %1456, %1454 ], [ null, %1451 ]
  %1459 = zext i32 %33 to i64
  store ptr %1458, ptr %1, align 8, !tbaa.struct !81
  store ptr %1452, ptr %537, align 8, !tbaa.struct !132
  store ptr %1440, ptr %538, align 8, !tbaa.struct !133
  %1460 = call ptr @build_omp_clause(i32 noundef 1, i32 noundef 9) #17
  %1461 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %1462 = call ptr @build_int_cst(ptr noundef %1461, i64 noundef %1459) #17
  %1463 = getelementptr inbounds %struct.tree_omp_clause, ptr %1460, i64 0, i32 6
  store ptr %1462, ptr %1463, align 8, !tbaa !46
  %1464 = call ptr @gimple_build_omp_parallel(ptr noundef null, ptr noundef %1460, ptr noundef %1427, ptr noundef %1425) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %1464, i32 noundef 0) #17
  %1465 = icmp eq ptr %1425, null
  br i1 %1465, label %1509, label %1466

1466:                                             ; preds = %1457
  %1467 = getelementptr inbounds %struct.basic_block_def, ptr %1429, i64 0, i32 13
  %1468 = load i32, ptr %1467, align 8, !tbaa !76, !noalias !191
  %1469 = and i32 %1468, 512
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1471, label %1477

1471:                                             ; preds = %1466
  %1472 = getelementptr inbounds %struct.basic_block_def, ptr %1429, i64 0, i32 7
  %1473 = load ptr, ptr %1472, align 8, !tbaa !46, !noalias !191
  %1474 = icmp eq ptr %1473, null
  br i1 %1474, label %1477, label %1475

1475:                                             ; preds = %1471
  %1476 = load ptr, ptr %1473, align 8, !tbaa !126, !noalias !191
  br label %1477

1477:                                             ; preds = %1475, %1471, %1466
  %1478 = phi ptr [ %1476, %1475 ], [ null, %1471 ], [ null, %1466 ]
  %1479 = icmp eq ptr %1478, null
  br i1 %1479, label %1482, label %1480

1480:                                             ; preds = %1477
  %1481 = load ptr, ptr %1478, align 8, !tbaa !128, !noalias !191
  br label %1482

1482:                                             ; preds = %1480, %1477
  %1483 = phi ptr [ %1481, %1480 ], [ null, %1477 ]
  %1484 = icmp eq ptr %1483, null
  br i1 %1484, label %1495, label %1485

1485:                                             ; preds = %1482, %1491
  %1486 = phi ptr [ %1493, %1491 ], [ %1483, %1482 ]
  %1487 = load ptr, ptr %1486, align 8, !tbaa !82, !noalias !196
  %1488 = load i32, ptr %1487, align 8, !noalias !196
  %1489 = and i32 %1488, 255
  %1490 = icmp eq i32 %1489, 4
  br i1 %1490, label %1491, label %1495

1491:                                             ; preds = %1485
  %1492 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1486, i64 0, i32 2
  %1493 = load ptr, ptr %1492, align 8, !tbaa !84, !noalias !196
  %1494 = icmp eq ptr %1493, null
  br i1 %1494, label %1495, label %1485, !llvm.loop !131

1495:                                             ; preds = %1491, %1485, %1482
  %1496 = phi ptr [ %1483, %1482 ], [ %1493, %1491 ], [ %1486, %1485 ]
  store ptr %1496, ptr %1, align 8, !tbaa.struct !81
  store ptr %1478, ptr %537, align 8, !tbaa.struct !132
  store ptr %1429, ptr %538, align 8, !tbaa.struct !133
  %1497 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1427, i64 0, i32 2
  %1498 = load ptr, ptr %1497, align 8, !tbaa !46
  %1499 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1500 = call ptr @make_ssa_name_fn(ptr noundef %1499, ptr noundef %1498, ptr noundef null) #17
  %1501 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %1425) #17
  %1502 = call ptr @gimple_build_assign_stat(ptr noundef %1500, ptr noundef %1501) #17
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1502, i32 noundef 1) #17
  %1503 = getelementptr inbounds %struct.tree_ssa_name, ptr %1500, i64 0, i32 2
  store ptr %1502, ptr %1503, align 8, !tbaa !46
  %1504 = getelementptr inbounds %struct.tree_common, ptr %1426, i64 0, i32 2
  %1505 = load ptr, ptr %1504, align 8, !tbaa !46
  %1506 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1505, ptr noundef %1500) #17
  %1507 = call ptr @gimple_build_assign_stat(ptr noundef %1426, ptr noundef %1506) #17
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1507, i32 noundef 1) #17
  %1508 = getelementptr inbounds %struct.tree_ssa_name, ptr %1426, i64 0, i32 2
  store ptr %1507, ptr %1508, align 8, !tbaa !46
  br label %1509

1509:                                             ; preds = %1495, %1457
  %1510 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %1511 = call ptr @split_loop_exit_edge(ptr noundef %1510) #17
  %1512 = getelementptr inbounds %struct.basic_block_def, ptr %1511, i64 0, i32 13
  %1513 = load i32, ptr %1512, align 8, !tbaa !76, !noalias !197
  %1514 = and i32 %1513, 512
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1516, label %1522

1516:                                             ; preds = %1509
  %1517 = getelementptr inbounds %struct.basic_block_def, ptr %1511, i64 0, i32 7
  %1518 = load ptr, ptr %1517, align 8, !tbaa !46, !noalias !197
  %1519 = icmp eq ptr %1518, null
  br i1 %1519, label %1522, label %1520

1520:                                             ; preds = %1516
  %1521 = load ptr, ptr %1518, align 8, !tbaa !126, !noalias !197
  br label %1522

1522:                                             ; preds = %1520, %1516, %1509
  %1523 = phi ptr [ %1521, %1520 ], [ null, %1516 ], [ null, %1509 ]
  %1524 = icmp eq ptr %1523, null
  br i1 %1524, label %1528, label %1525

1525:                                             ; preds = %1522
  %1526 = getelementptr inbounds %struct.gimple_seq_d, ptr %1523, i64 0, i32 1
  %1527 = load ptr, ptr %1526, align 8, !tbaa !190, !noalias !197
  br label %1528

1528:                                             ; preds = %1525, %1522
  %1529 = phi ptr [ %1527, %1525 ], [ null, %1522 ]
  store ptr %1529, ptr %1, align 8, !tbaa.struct !81
  store ptr %1523, ptr %537, align 8, !tbaa.struct !132
  store ptr %1511, ptr %538, align 8, !tbaa.struct !133
  %1530 = call ptr @gimple_build_omp_return(i8 noundef zeroext 0) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %1530, i32 noundef 0) #17
  %1531 = load ptr, ptr %299, align 8, !tbaa !87
  %1532 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %1533 = load ptr, ptr %1532, align 8, !tbaa !79
  %1534 = icmp eq ptr %1531, %1533
  br i1 %1534, label %1536, label %1535

1535:                                             ; preds = %1528
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1449, ptr noundef nonnull @.str.9) #17
  br label %1536

1536:                                             ; preds = %1535, %1528
  %1537 = load ptr, ptr %299, align 8, !tbaa !87
  %1538 = call ptr @last_stmt(ptr noundef %1537) #17
  %1539 = load i32, ptr %1538, align 8
  %1540 = and i32 %1539, 255
  %1541 = add nsw i32 %1540, -10
  %1542 = icmp ult i32 %1541, -9
  br i1 %1542, label %1555, label %1543

1543:                                             ; preds = %1536
  %1544 = zext nneg i32 %1540 to i64
  %1545 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1544
  %1546 = load i32, ptr %1545, align 4, !tbaa !50
  %1547 = zext i32 %1546 to i64
  %1548 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1547
  %1549 = load i64, ptr %1548, align 8, !tbaa !91
  %1550 = icmp eq i64 %1549, 0
  br i1 %1550, label %1551, label %1552

1551:                                             ; preds = %1543
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %1552

1552:                                             ; preds = %1551, %1543
  %1553 = getelementptr inbounds i8, ptr %1538, i64 %1549
  %1554 = load ptr, ptr %1553, align 8, !tbaa !35
  br label %1555

1555:                                             ; preds = %1552, %1536
  %1556 = phi ptr [ %1554, %1552 ], [ null, %1536 ]
  %1557 = getelementptr inbounds %struct.tree_ssa_name, ptr %1556, i64 0, i32 1
  %1558 = load ptr, ptr %1557, align 8, !tbaa !46
  %1559 = getelementptr inbounds %struct.tree_ssa_name, ptr %1556, i64 0, i32 2
  %1560 = load ptr, ptr %1559, align 8, !tbaa !46
  %1561 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %1562 = getelementptr inbounds %struct.edge_def, ptr %1561, i64 0, i32 6
  %1563 = load i32, ptr %1562, align 4, !tbaa !95
  %1564 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1560, i64 0, i32 1
  %1565 = load i32, ptr %1564, align 8, !tbaa !46
  %1566 = icmp ult i32 %1565, %1563
  br i1 %1566, label %1567, label %1568

1567:                                             ; preds = %1555
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1568

1568:                                             ; preds = %1567, %1555
  %1569 = zext i32 %1563 to i64
  %1570 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1560, i64 0, i32 4, i64 %1569, i32 0, i32 3
  %1571 = load ptr, ptr %1570, align 8, !tbaa !96
  %1572 = load ptr, ptr %1571, align 8, !tbaa !35
  %1573 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1574 = call ptr @make_ssa_name_fn(ptr noundef %1573, ptr noundef %1558, ptr noundef null) #17
  %1575 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %1576 = getelementptr inbounds %struct.edge_def, ptr %1575, i64 0, i32 6
  %1577 = load i32, ptr %1576, align 4, !tbaa !95
  %1578 = load i32, ptr %1564, align 8, !tbaa !46
  %1579 = icmp ult i32 %1578, %1577
  br i1 %1579, label %1580, label %1581

1580:                                             ; preds = %1568
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1581

1581:                                             ; preds = %1580, %1568
  %1582 = zext i32 %1577 to i64
  %1583 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1560, i64 0, i32 4, i64 %1582
  %1584 = load ptr, ptr %1583, align 8, !tbaa !164
  %1585 = icmp eq ptr %1584, null
  br i1 %1585, label %1591, label %1586

1586:                                             ; preds = %1581
  %1587 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1583, i64 0, i32 1
  %1588 = load ptr, ptr %1587, align 8, !tbaa !98
  %1589 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1584, i64 0, i32 1
  store ptr %1588, ptr %1589, align 8, !tbaa !98
  %1590 = load ptr, ptr %1587, align 8, !tbaa !98
  store ptr %1584, ptr %1590, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1583, i8 0, i64 16, i1 false)
  br label %1591

1591:                                             ; preds = %1586, %1581
  %1592 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1583, i64 0, i32 3
  %1593 = load ptr, ptr %1592, align 8, !tbaa !96
  store ptr %1574, ptr %1593, align 8, !tbaa !35
  %1594 = icmp eq ptr %1574, null
  br i1 %1594, label %1599, label %1595

1595:                                             ; preds = %1591
  %1596 = load i64, ptr %1574, align 8
  %1597 = and i64 %1596, 65535
  %1598 = icmp eq i64 %1597, 141
  br i1 %1598, label %1600, label %1599

1599:                                             ; preds = %1595, %1591
  store ptr null, ptr %1583, align 8, !tbaa !164
  br label %1606

1600:                                             ; preds = %1595
  %1601 = getelementptr inbounds %struct.tree_ssa_name, ptr %1574, i64 0, i32 5
  store ptr %1601, ptr %1583, align 8, !tbaa !164
  %1602 = getelementptr inbounds %struct.tree_ssa_name, ptr %1574, i64 0, i32 5, i32 1
  %1603 = load ptr, ptr %1602, align 8, !tbaa !98
  %1604 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1583, i64 0, i32 1
  store ptr %1603, ptr %1604, align 8, !tbaa !98
  %1605 = load ptr, ptr %1602, align 8, !tbaa !98
  store ptr %1583, ptr %1605, align 8, !tbaa !164
  store ptr %1583, ptr %1602, align 8, !tbaa !98
  br label %1606

1606:                                             ; preds = %1600, %1599
  %1607 = call ptr @loop_latch_edge(ptr noundef nonnull %146) #17
  %1608 = getelementptr inbounds %struct.edge_def, ptr %1607, i64 0, i32 6
  %1609 = load i32, ptr %1608, align 4, !tbaa !95
  %1610 = load i32, ptr %1564, align 8, !tbaa !46
  %1611 = icmp ult i32 %1610, %1609
  br i1 %1611, label %1612, label %1613

1612:                                             ; preds = %1606
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1613

1613:                                             ; preds = %1612, %1606
  %1614 = zext i32 %1609 to i64
  %1615 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1560, i64 0, i32 4, i64 %1614, i32 0, i32 3
  %1616 = load ptr, ptr %1615, align 8, !tbaa !96
  %1617 = load ptr, ptr %1616, align 8, !tbaa !35
  %1618 = load ptr, ptr %746, align 8, !tbaa !117
  %1619 = getelementptr inbounds %struct.basic_block_def, ptr %1618, i64 0, i32 13
  %1620 = load i32, ptr %1619, align 8, !tbaa !76, !noalias !200
  %1621 = and i32 %1620, 512
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1623, label %1629

1623:                                             ; preds = %1613
  %1624 = getelementptr inbounds %struct.basic_block_def, ptr %1618, i64 0, i32 7
  %1625 = load ptr, ptr %1624, align 8, !tbaa !46, !noalias !200
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1629, label %1627

1627:                                             ; preds = %1623
  %1628 = load ptr, ptr %1625, align 8, !tbaa !126, !noalias !200
  br label %1629

1629:                                             ; preds = %1627, %1623, %1613
  %1630 = phi ptr [ %1628, %1627 ], [ null, %1623 ], [ null, %1613 ]
  %1631 = icmp ne ptr %1630, null
  call void @llvm.assume(i1 %1631)
  %1632 = getelementptr inbounds %struct.gimple_seq_d, ptr %1630, i64 0, i32 1
  %1633 = load ptr, ptr %1632, align 8, !tbaa !190, !noalias !200
  store ptr %1633, ptr %1, align 8, !tbaa.struct !81
  store ptr %1630, ptr %537, align 8, !tbaa.struct !132
  store ptr %1618, ptr %538, align 8, !tbaa.struct !133
  %1634 = load ptr, ptr %1633, align 8, !tbaa !82
  %1635 = getelementptr inbounds %struct.tree_ssa_name, ptr %1617, i64 0, i32 2
  %1636 = load ptr, ptr %1635, align 8, !tbaa !46
  %1637 = icmp eq ptr %1634, %1636
  br i1 %1637, label %1639, label %1638

1638:                                             ; preds = %1629
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1462, ptr noundef nonnull @.str.9) #17
  br label %1639

1639:                                             ; preds = %1638, %1629
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %1640 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %1641 = call ptr @split_edge(ptr noundef %1640) #17
  %1642 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %1643 = call ptr @split_loop_exit_edge(ptr noundef %1642) #17
  %1644 = load ptr, ptr %299, align 8, !tbaa !87
  call void @extract_true_false_edges_from_block(ptr noundef %1644, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %1645 = load ptr, ptr %2, align 8, !tbaa !35
  %1646 = call ptr @single_dom_exit(ptr noundef nonnull %146) #17
  %1647 = icmp eq ptr %1645, %1646
  br i1 %1647, label %1649, label %1648

1648:                                             ; preds = %1639
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1469, ptr noundef nonnull @.str.9) #17
  br label %1649

1649:                                             ; preds = %1648, %1639
  %1650 = call ptr @make_edge(ptr noundef %1641, ptr noundef %1643, i32 noundef 0) #17
  %1651 = load ptr, ptr %746, align 8, !tbaa !117
  %1652 = getelementptr inbounds %struct.basic_block_def, ptr %1651, i64 0, i32 1
  %1653 = load ptr, ptr %1652, align 8, !tbaa !111
  %1654 = icmp eq ptr %1653, null
  br i1 %1654, label %1658, label %1655

1655:                                             ; preds = %1649
  %1656 = load i32, ptr %1653, align 8, !tbaa !112
  %1657 = icmp eq i32 %1656, 1
  br i1 %1657, label %1659, label %1658

1658:                                             ; preds = %1655, %1649
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.9) #17
  br label %1659

1659:                                             ; preds = %1658, %1655
  %1660 = load ptr, ptr %1652, align 8, !tbaa !111
  %1661 = getelementptr inbounds %struct.VEC_edge_base, ptr %1660, i64 0, i32 2, i64 0
  %1662 = load ptr, ptr %1661, align 8, !tbaa !35
  %1663 = getelementptr inbounds %struct.edge_def, ptr %1662, i64 0, i32 7
  store i32 0, ptr %1663, align 8, !tbaa !203
  %1664 = load ptr, ptr %746, align 8, !tbaa !117
  %1665 = call ptr @make_edge(ptr noundef %1664, ptr noundef %1643, i32 noundef 1) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1643) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %1666 = load ptr, ptr %1, align 8
  %1667 = icmp eq ptr %1666, null
  br i1 %1667, label %1732, label %1668

1668:                                             ; preds = %1659, %1724
  %1669 = phi ptr [ %1730, %1724 ], [ %1666, %1659 ]
  %1670 = load ptr, ptr %1669, align 8, !tbaa !82
  %1671 = load ptr, ptr %2, align 8, !tbaa !35
  %1672 = getelementptr inbounds %struct.edge_def, ptr %1671, i64 0, i32 6
  %1673 = load i32, ptr %1672, align 4, !tbaa !95
  %1674 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1670, i64 0, i32 1
  %1675 = load i32, ptr %1674, align 8, !tbaa !46
  %1676 = icmp ult i32 %1675, %1673
  br i1 %1676, label %1677, label %1678

1677:                                             ; preds = %1668
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1678

1678:                                             ; preds = %1677, %1668
  %1679 = zext i32 %1673 to i64
  %1680 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1670, i64 0, i32 4, i64 %1679, i32 0, i32 3
  %1681 = load ptr, ptr %1680, align 8, !tbaa !96
  %1682 = load ptr, ptr %1681, align 8, !tbaa !35
  %1683 = getelementptr inbounds %struct.tree_ssa_name, ptr %1682, i64 0, i32 2
  %1684 = load ptr, ptr %1683, align 8, !tbaa !46
  %1685 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %1686 = getelementptr inbounds %struct.edge_def, ptr %1685, i64 0, i32 6
  %1687 = load i32, ptr %1686, align 4, !tbaa !95
  %1688 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1684, i64 0, i32 1
  %1689 = load i32, ptr %1688, align 8, !tbaa !46
  %1690 = icmp ult i32 %1689, %1687
  br i1 %1690, label %1691, label %1692

1691:                                             ; preds = %1678
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1692

1692:                                             ; preds = %1691, %1678
  %1693 = zext i32 %1687 to i64
  %1694 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1684, i64 0, i32 4, i64 %1693, i32 0, i32 3
  %1695 = load ptr, ptr %1694, align 8, !tbaa !96
  %1696 = load ptr, ptr %1695, align 8, !tbaa !35
  %1697 = call ptr @loop_preheader_edge(ptr noundef nonnull %146) #17
  %1698 = getelementptr inbounds %struct.edge_def, ptr %1697, i64 0, i32 6
  %1699 = load i32, ptr %1698, align 4, !tbaa !95
  %1700 = load i32, ptr %1688, align 8, !tbaa !46
  %1701 = icmp ult i32 %1700, %1699
  br i1 %1701, label %1702, label %1703

1702:                                             ; preds = %1692
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1703

1703:                                             ; preds = %1702, %1692
  %1704 = zext i32 %1699 to i64
  %1705 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1684, i64 0, i32 4, i64 %1704, i32 2
  %1706 = load i32, ptr %1705, align 8, !tbaa !204
  call void @add_phi_arg(ptr noundef %1670, ptr noundef %1696, ptr noundef %1650, i32 noundef %1706) #17
  %1707 = call ptr @loop_latch_edge(ptr noundef nonnull %146) #17
  %1708 = getelementptr inbounds %struct.edge_def, ptr %1707, i64 0, i32 6
  %1709 = load i32, ptr %1708, align 4, !tbaa !95
  %1710 = load i32, ptr %1688, align 8, !tbaa !46
  %1711 = icmp ult i32 %1710, %1709
  br i1 %1711, label %1712, label %1713

1712:                                             ; preds = %1703
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1713

1713:                                             ; preds = %1712, %1703
  %1714 = zext i32 %1709 to i64
  %1715 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1684, i64 0, i32 4, i64 %1714, i32 0, i32 3
  %1716 = load ptr, ptr %1715, align 8, !tbaa !96
  %1717 = load ptr, ptr %1716, align 8, !tbaa !35
  %1718 = call ptr @loop_latch_edge(ptr noundef nonnull %146) #17
  %1719 = getelementptr inbounds %struct.edge_def, ptr %1718, i64 0, i32 6
  %1720 = load i32, ptr %1719, align 4, !tbaa !95
  %1721 = load i32, ptr %1688, align 8, !tbaa !46
  %1722 = icmp ult i32 %1721, %1720
  br i1 %1722, label %1723, label %1724

1723:                                             ; preds = %1713
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %1724

1724:                                             ; preds = %1723, %1713
  %1725 = zext i32 %1720 to i64
  %1726 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1684, i64 0, i32 4, i64 %1725, i32 2
  %1727 = load i32, ptr %1726, align 8, !tbaa !204
  call void @add_phi_arg(ptr noundef %1670, ptr noundef %1717, ptr noundef %1665, i32 noundef %1727) #17
  %1728 = load ptr, ptr %1, align 8, !tbaa !114
  %1729 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1728, i64 0, i32 2
  %1730 = load ptr, ptr %1729, align 8, !tbaa !84
  store ptr %1730, ptr %1, align 8, !tbaa !114
  %1731 = icmp eq ptr %1730, null
  br i1 %1731, label %1732, label %1668, !llvm.loop !206

1732:                                             ; preds = %1724, %1659
  %1733 = load ptr, ptr %2, align 8, !tbaa !35
  %1734 = load ptr, ptr %3, align 8, !tbaa !35
  %1735 = getelementptr inbounds %struct.edge_def, ptr %1734, i64 0, i32 1
  %1736 = load ptr, ptr %1735, align 8, !tbaa !94
  %1737 = call ptr @redirect_edge_and_branch(ptr noundef %1733, ptr noundef %1736) #17
  %1738 = getelementptr inbounds %struct.edge_def, ptr %1737, i64 0, i32 2
  store ptr null, ptr %1738, align 8, !tbaa !46
  %1739 = load i32, ptr %1538, align 8
  %1740 = and i32 %1739, 255
  %1741 = add nsw i32 %1740, -10
  %1742 = icmp ult i32 %1741, -9
  br i1 %1742, label %1747, label %1743

1743:                                             ; preds = %1732
  %1744 = getelementptr inbounds %struct.gimple_statement_base, ptr %1538, i64 0, i32 3
  %1745 = load i32, ptr %1744, align 4, !tbaa !46
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1747, label %1748

1747:                                             ; preds = %1743, %1732
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.9) #17
  br label %1748

1748:                                             ; preds = %1747, %1743
  %1749 = load i32, ptr %1538, align 8
  %1750 = and i32 %1749, 255
  %1751 = zext nneg i32 %1750 to i64
  %1752 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1751
  %1753 = load i32, ptr %1752, align 4, !tbaa !50
  %1754 = zext i32 %1753 to i64
  %1755 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1754
  %1756 = load i64, ptr %1755, align 8, !tbaa !91
  %1757 = icmp eq i64 %1756, 0
  br i1 %1757, label %1758, label %1759

1758:                                             ; preds = %1748
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %1759

1759:                                             ; preds = %1758, %1748
  %1760 = getelementptr inbounds i8, ptr %1538, i64 %1756
  store ptr %1558, ptr %1760, align 8, !tbaa !35
  %1761 = getelementptr inbounds %struct.tree_common, ptr %1556, i64 0, i32 2
  %1762 = load ptr, ptr %1761, align 8, !tbaa !46
  %1763 = call ptr @build_omp_clause(i32 noundef 1, i32 noundef 10) #17
  %1764 = getelementptr inbounds %struct.tree_omp_clause, ptr %1763, i64 0, i32 3
  store i32 0, ptr %1764, align 8, !tbaa !46
  %1765 = call ptr @gimple_build_omp_for(ptr noundef null, ptr noundef %1763, i64 noundef 1, ptr noundef null) #17
  %1766 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1765, i64 0, i32 2
  %1767 = load i64, ptr %1766, align 8, !tbaa !46
  %1768 = icmp eq i64 %1767, 0
  br i1 %1768, label %1769, label %1770

1769:                                             ; preds = %1759
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3475, ptr noundef nonnull @.str.9) #17
  br label %1770

1770:                                             ; preds = %1769, %1759
  %1771 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1765, i64 0, i32 3
  %1772 = load ptr, ptr %1771, align 8, !tbaa !46
  %1773 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %1772, i64 0, i32 1
  store ptr %1574, ptr %1773, align 8, !tbaa !207
  %1774 = load i64, ptr %1766, align 8, !tbaa !46
  %1775 = icmp eq i64 %1774, 0
  br i1 %1775, label %1776, label %1777

1776:                                             ; preds = %1770
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3508, ptr noundef nonnull @.str.9) #17
  br label %1777

1777:                                             ; preds = %1776, %1770
  %1778 = load ptr, ptr %1771, align 8, !tbaa !46
  %1779 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %1778, i64 0, i32 2
  store ptr %1572, ptr %1779, align 8, !tbaa !209
  %1780 = load i32, ptr %1538, align 8
  %1781 = and i32 %1780, 255
  %1782 = add nsw i32 %1781, -10
  %1783 = icmp ult i32 %1782, -9
  br i1 %1783, label %1797, label %1784

1784:                                             ; preds = %1777
  %1785 = zext nneg i32 %1781 to i64
  %1786 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1785
  %1787 = load i32, ptr %1786, align 4, !tbaa !50
  %1788 = zext i32 %1787 to i64
  %1789 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1788
  %1790 = load i64, ptr %1789, align 8, !tbaa !91
  %1791 = icmp eq i64 %1790, 0
  br i1 %1791, label %1792, label %1793

1792:                                             ; preds = %1784
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %1793

1793:                                             ; preds = %1792, %1784
  %1794 = getelementptr inbounds i8, ptr %1538, i64 %1790
  %1795 = getelementptr inbounds ptr, ptr %1794, i64 1
  %1796 = load ptr, ptr %1795, align 8, !tbaa !35
  br label %1797

1797:                                             ; preds = %1793, %1777
  %1798 = phi ptr [ %1796, %1793 ], [ null, %1777 ]
  %1799 = load i64, ptr %1766, align 8, !tbaa !46
  %1800 = icmp eq i64 %1799, 0
  br i1 %1800, label %1801, label %1802

1801:                                             ; preds = %1797
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3541, ptr noundef nonnull @.str.9) #17
  br label %1802

1802:                                             ; preds = %1801, %1797
  %1803 = load ptr, ptr %1771, align 8, !tbaa !46
  %1804 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %1803, i64 0, i32 3
  store ptr %1798, ptr %1804, align 8, !tbaa !210
  %1805 = load i32, ptr %1538, align 8
  %1806 = lshr i32 %1805, 16
  %1807 = zext nneg i32 %1806 to i64
  %1808 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1807
  %1809 = load i32, ptr %1808, align 4, !tbaa !50
  %1810 = icmp eq i32 %1809, 5
  br i1 %1810, label %1812, label %1811

1811:                                             ; preds = %1802
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4076, ptr noundef nonnull @.str.9) #17
  br label %1812

1812:                                             ; preds = %1811, %1802
  %1813 = load i64, ptr %1766, align 8, !tbaa !46
  %1814 = icmp eq i64 %1813, 0
  br i1 %1814, label %1815, label %1816

1815:                                             ; preds = %1812
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4077, ptr noundef nonnull @.str.9) #17
  br label %1816

1816:                                             ; preds = %1815, %1812
  %1817 = load ptr, ptr %1771, align 8, !tbaa !46
  store i32 %1806, ptr %1817, align 8, !tbaa !211
  %1818 = call ptr @build_int_cst(ptr noundef %1762, i64 noundef 1) #17
  %1819 = call ptr @build2_stat(i32 noundef 63, ptr noundef %1762, ptr noundef %1558, ptr noundef %1818) #17
  %1820 = load i64, ptr %1766, align 8, !tbaa !46
  %1821 = icmp eq i64 %1820, 0
  br i1 %1821, label %1822, label %1823

1822:                                             ; preds = %1816
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3574, ptr noundef nonnull @.str.9) #17
  br label %1823

1823:                                             ; preds = %1822, %1816
  %1824 = load ptr, ptr %1771, align 8, !tbaa !46
  %1825 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %1824, i64 0, i32 4
  store ptr %1819, ptr %1825, align 8, !tbaa !212
  %1826 = getelementptr inbounds %struct.basic_block_def, ptr %1641, i64 0, i32 13
  %1827 = load i32, ptr %1826, align 8, !tbaa !76, !noalias !213
  %1828 = and i32 %1827, 512
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1830, label %1836

1830:                                             ; preds = %1823
  %1831 = getelementptr inbounds %struct.basic_block_def, ptr %1641, i64 0, i32 7
  %1832 = load ptr, ptr %1831, align 8, !tbaa !46, !noalias !213
  %1833 = icmp eq ptr %1832, null
  br i1 %1833, label %1836, label %1834

1834:                                             ; preds = %1830
  %1835 = load ptr, ptr %1832, align 8, !tbaa !126, !noalias !213
  br label %1836

1836:                                             ; preds = %1834, %1830, %1823
  %1837 = phi ptr [ %1835, %1834 ], [ null, %1830 ], [ null, %1823 ]
  %1838 = icmp eq ptr %1837, null
  br i1 %1838, label %1842, label %1839

1839:                                             ; preds = %1836
  %1840 = getelementptr inbounds %struct.gimple_seq_d, ptr %1837, i64 0, i32 1
  %1841 = load ptr, ptr %1840, align 8, !tbaa !190, !noalias !213
  br label %1842

1842:                                             ; preds = %1839, %1836
  %1843 = phi ptr [ %1841, %1839 ], [ null, %1836 ]
  store ptr %1843, ptr %1, align 8, !tbaa.struct !81
  store ptr %1837, ptr %537, align 8, !tbaa.struct !132
  store ptr %1641, ptr %538, align 8, !tbaa.struct !133
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %1765, i32 noundef 0) #17
  %1844 = getelementptr inbounds %struct.tree_ssa_name, ptr %1574, i64 0, i32 2
  store ptr %1765, ptr %1844, align 8, !tbaa !46
  %1845 = load ptr, ptr %746, align 8, !tbaa !117
  %1846 = getelementptr inbounds %struct.basic_block_def, ptr %1845, i64 0, i32 13
  %1847 = load i32, ptr %1846, align 8, !tbaa !76, !noalias !216
  %1848 = and i32 %1847, 512
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1850, label %1856

1850:                                             ; preds = %1842
  %1851 = getelementptr inbounds %struct.basic_block_def, ptr %1845, i64 0, i32 7
  %1852 = load ptr, ptr %1851, align 8, !tbaa !46, !noalias !216
  %1853 = icmp eq ptr %1852, null
  br i1 %1853, label %1856, label %1854

1854:                                             ; preds = %1850
  %1855 = load ptr, ptr %1852, align 8, !tbaa !126, !noalias !216
  br label %1856

1856:                                             ; preds = %1854, %1850, %1842
  %1857 = phi ptr [ %1855, %1854 ], [ null, %1850 ], [ null, %1842 ]
  %1858 = icmp eq ptr %1857, null
  br i1 %1858, label %1862, label %1859

1859:                                             ; preds = %1856
  %1860 = getelementptr inbounds %struct.gimple_seq_d, ptr %1857, i64 0, i32 1
  %1861 = load ptr, ptr %1860, align 8, !tbaa !190, !noalias !216
  br label %1862

1862:                                             ; preds = %1859, %1856
  %1863 = phi ptr [ %1861, %1859 ], [ null, %1856 ]
  store ptr %1863, ptr %1, align 8, !tbaa.struct !81
  store ptr %1857, ptr %537, align 8, !tbaa.struct !132
  store ptr %1845, ptr %538, align 8, !tbaa.struct !133
  %1864 = call ptr @gimple_build_omp_continue(ptr noundef %1617, ptr noundef %1556) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %1864, i32 noundef 0) #17
  store ptr %1864, ptr %1635, align 8, !tbaa !46
  %1865 = getelementptr inbounds %struct.basic_block_def, ptr %1643, i64 0, i32 13
  %1866 = load i32, ptr %1865, align 8, !tbaa !76, !noalias !219
  %1867 = and i32 %1866, 512
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1869, label %1875

1869:                                             ; preds = %1862
  %1870 = getelementptr inbounds %struct.basic_block_def, ptr %1643, i64 0, i32 7
  %1871 = load ptr, ptr %1870, align 8, !tbaa !46, !noalias !219
  %1872 = icmp eq ptr %1871, null
  br i1 %1872, label %1875, label %1873

1873:                                             ; preds = %1869
  %1874 = load ptr, ptr %1871, align 8, !tbaa !126, !noalias !219
  br label %1875

1875:                                             ; preds = %1873, %1869, %1862
  %1876 = phi ptr [ %1874, %1873 ], [ null, %1869 ], [ null, %1862 ]
  %1877 = icmp eq ptr %1876, null
  br i1 %1877, label %1881, label %1878

1878:                                             ; preds = %1875
  %1879 = getelementptr inbounds %struct.gimple_seq_d, ptr %1876, i64 0, i32 1
  %1880 = load ptr, ptr %1879, align 8, !tbaa !190, !noalias !219
  br label %1881

1881:                                             ; preds = %1878, %1875
  %1882 = phi ptr [ %1880, %1878 ], [ null, %1875 ]
  store ptr %1882, ptr %1, align 8, !tbaa.struct !81
  store ptr %1876, ptr %537, align 8, !tbaa.struct !132
  store ptr %1643, ptr %538, align 8, !tbaa.struct !133
  %1883 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %1883, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  %1884 = call i64 @htab_elements(ptr noundef %57) #17
  %1885 = icmp eq i64 %1884, 0
  br i1 %1885, label %1904, label %1886

1886:                                             ; preds = %1881
  call void @htab_traverse(ptr noundef %57, ptr noundef nonnull @create_phi_for_local_result, ptr noundef nonnull %146) #17
  %1887 = load ptr, ptr %746, align 8, !tbaa !117
  %1888 = getelementptr inbounds %struct.basic_block_def, ptr %1887, i64 0, i32 1
  %1889 = load ptr, ptr %1888, align 8, !tbaa !111
  %1890 = getelementptr inbounds %struct.VEC_edge_base, ptr %1889, i64 0, i32 2, i64 0
  %1891 = load ptr, ptr %1890, align 8, !tbaa !35
  %1892 = getelementptr inbounds %struct.edge_def, ptr %1891, i64 0, i32 7
  %1893 = load i32, ptr %1892, align 8, !tbaa !203
  %1894 = and i32 %1893, 1
  %1895 = icmp eq i32 %1894, 0
  br i1 %1895, label %1896, label %1899

1896:                                             ; preds = %1886
  %1897 = getelementptr inbounds %struct.VEC_edge_base, ptr %1889, i64 0, i32 2, i64 1
  %1898 = load ptr, ptr %1897, align 8, !tbaa !35
  br label %1899

1899:                                             ; preds = %1896, %1886
  %1900 = phi ptr [ %1898, %1896 ], [ %1891, %1886 ]
  %1901 = getelementptr inbounds %struct.clsn_data, ptr %20, i64 0, i32 3
  %1902 = getelementptr inbounds %struct.edge_def, ptr %1900, i64 0, i32 1
  %1903 = load ptr, ptr %1902, align 8, !tbaa !94
  store ptr %1903, ptr %1901, align 8, !tbaa !180
  call void @htab_traverse(ptr noundef %57, ptr noundef nonnull @create_call_for_reduction_1, ptr noundef nonnull %20) #17
  br label %1904

1904:                                             ; preds = %1899, %1881
  call void @scev_reset() #17
  call void @cancel_loop_tree(ptr noundef nonnull %146) #17
  %1905 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1906 = getelementptr inbounds %struct.function, ptr %1905, i64 0, i32 4
  %1907 = load ptr, ptr %1906, align 8, !tbaa !56
  %1908 = icmp eq ptr %1907, null
  br i1 %1908, label %1984, label %1909

1909:                                             ; preds = %1904
  %1910 = getelementptr inbounds %struct.loops, ptr %1907, i64 0, i32 1
  %1911 = load ptr, ptr %1910, align 8, !tbaa !57
  %1912 = icmp eq ptr %1911, null
  br i1 %1912, label %1915, label %1913

1913:                                             ; preds = %1909
  %1914 = load i32, ptr %1911, align 8, !tbaa !59
  br label %1915

1915:                                             ; preds = %1913, %1909
  %1916 = phi i32 [ %1914, %1913 ], [ 0, %1909 ]
  %1917 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %1916, i64 noundef 8, i64 noundef 4) #17
  %1918 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1919 = getelementptr inbounds %struct.function, ptr %1918, i64 0, i32 4
  %1920 = load ptr, ptr %1919, align 8, !tbaa !56
  %1921 = getelementptr inbounds %struct.loops, ptr %1920, i64 0, i32 3
  %1922 = load ptr, ptr %1921, align 8, !tbaa !61
  br label %1923

1923:                                             ; preds = %1936, %1915
  %1924 = phi ptr [ %1922, %1915 ], [ %1937, %1936 ]
  %1925 = load i32, ptr %1924, align 8, !tbaa !62
  %1926 = icmp sgt i32 %1925, 0
  br i1 %1926, label %1927, label %1932

1927:                                             ; preds = %1923
  %1928 = load i32, ptr %1917, align 4, !tbaa !66
  %1929 = add i32 %1928, 1
  store i32 %1929, ptr %1917, align 4, !tbaa !66
  %1930 = zext i32 %1928 to i64
  %1931 = getelementptr inbounds %struct.VEC_int_base, ptr %1917, i64 0, i32 2, i64 %1930
  store i32 %1925, ptr %1931, align 4, !tbaa !50
  br label %1932

1932:                                             ; preds = %1927, %1923
  %1933 = getelementptr inbounds %struct.loop, ptr %1924, i64 0, i32 8
  %1934 = load ptr, ptr %1933, align 8, !tbaa !68
  %1935 = icmp eq ptr %1934, null
  br i1 %1935, label %1938, label %1936

1936:                                             ; preds = %1938, %1932
  %1937 = phi ptr [ %1934, %1932 ], [ %1941, %1938 ]
  br label %1923, !llvm.loop !69

1938:                                             ; preds = %1932, %1957
  %1939 = phi ptr [ %1958, %1957 ], [ %1924, %1932 ]
  %1940 = getelementptr inbounds %struct.loop, ptr %1939, i64 0, i32 9
  %1941 = load ptr, ptr %1940, align 8, !tbaa !70
  %1942 = icmp eq ptr %1941, null
  br i1 %1942, label %1943, label %1936, !llvm.loop !69

1943:                                             ; preds = %1938
  %1944 = getelementptr inbounds %struct.loop, ptr %1939, i64 0, i32 7
  %1945 = load ptr, ptr %1944, align 8, !tbaa !71
  %1946 = icmp eq ptr %1945, null
  br i1 %1946, label %1949, label %1947

1947:                                             ; preds = %1943
  %1948 = load i32, ptr %1945, align 8, !tbaa !59
  br label %1949

1949:                                             ; preds = %1947, %1943
  %1950 = phi i32 [ %1948, %1947 ], [ 0, %1943 ]
  %1951 = icmp eq i32 %1950, 0
  br i1 %1951, label %1957, label %1952

1952:                                             ; preds = %1949
  %1953 = add i32 %1950, -1
  %1954 = zext i32 %1953 to i64
  %1955 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1945, i64 0, i32 2, i64 %1954
  %1956 = load ptr, ptr %1955, align 8, !tbaa !35
  br label %1957

1957:                                             ; preds = %1952, %1949
  %1958 = phi ptr [ %1956, %1952 ], [ null, %1949 ]
  %1959 = icmp eq ptr %1958, null
  br i1 %1959, label %1960, label %1938, !llvm.loop !72

1960:                                             ; preds = %1957
  %1961 = icmp eq ptr %1917, null
  %1962 = getelementptr inbounds %struct.loops, ptr %1920, i64 0, i32 1
  br label %1963

1963:                                             ; preds = %1960, %1975
  %1964 = phi i32 [ %1976, %1975 ], [ 0, %1960 ]
  br i1 %1961, label %1972, label %1965

1965:                                             ; preds = %1963
  %1966 = load i32, ptr %1917, align 4, !tbaa !66
  %1967 = icmp ugt i32 %1966, %1964
  br i1 %1967, label %1968, label %1972

1968:                                             ; preds = %1965
  %1969 = zext i32 %1964 to i64
  %1970 = getelementptr inbounds %struct.VEC_int_base, ptr %1917, i64 0, i32 2, i64 %1969
  %1971 = load i32, ptr %1970, align 4, !tbaa !50
  br label %1972

1972:                                             ; preds = %1968, %1965, %1963
  %1973 = phi i32 [ %1971, %1968 ], [ 0, %1965 ], [ 0, %1963 ]
  %1974 = phi i1 [ false, %1968 ], [ true, %1965 ], [ true, %1963 ]
  br i1 %1974, label %1982, label %1975

1975:                                             ; preds = %1972
  %1976 = add i32 %1964, 1
  %1977 = load ptr, ptr %1962, align 8, !tbaa !57
  %1978 = zext i32 %1973 to i64
  %1979 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1977, i64 0, i32 2, i64 %1978
  %1980 = load ptr, ptr %1979, align 8, !tbaa !35
  %1981 = icmp eq ptr %1980, null
  br i1 %1981, label %1963, label %1984, !llvm.loop !73

1982:                                             ; preds = %1972
  br i1 %1961, label %1984, label %1983

1983:                                             ; preds = %1982
  call void @free(ptr noundef %1917)
  br label %1984

1984:                                             ; preds = %1975, %1983, %1982, %1904
  %1985 = phi ptr [ null, %1904 ], [ null, %1983 ], [ null, %1982 ], [ %1980, %1975 ]
  %1986 = phi i32 [ 0, %1904 ], [ %1964, %1983 ], [ %1964, %1982 ], [ %1976, %1975 ]
  %1987 = phi ptr [ null, %1904 ], [ null, %1983 ], [ null, %1982 ], [ %1917, %1975 ]
  %1988 = icmp eq ptr %1985, null
  br i1 %1988, label %2024, label %1989

1989:                                             ; preds = %1984, %2019
  %1990 = phi ptr [ %2022, %2019 ], [ %1987, %1984 ]
  %1991 = phi i32 [ %2021, %2019 ], [ %1986, %1984 ]
  %1992 = phi ptr [ %2020, %2019 ], [ %1985, %1984 ]
  call void @free_numbers_of_iterations_estimates_loop(ptr noundef nonnull %1992) #17
  %1993 = icmp eq ptr %1990, null
  %1994 = load ptr, ptr @cfun, align 8
  %1995 = getelementptr inbounds %struct.function, ptr %1994, i64 0, i32 4
  br label %1996

1996:                                             ; preds = %2008, %1989
  %1997 = phi i32 [ %1991, %1989 ], [ %2009, %2008 ]
  br i1 %1993, label %2005, label %1998

1998:                                             ; preds = %1996
  %1999 = load i32, ptr %1990, align 4, !tbaa !66
  %2000 = icmp ugt i32 %1999, %1997
  br i1 %2000, label %2001, label %2005

2001:                                             ; preds = %1998
  %2002 = zext i32 %1997 to i64
  %2003 = getelementptr inbounds %struct.VEC_int_base, ptr %1990, i64 0, i32 2, i64 %2002
  %2004 = load i32, ptr %2003, align 4, !tbaa !50
  br label %2005

2005:                                             ; preds = %2001, %1998, %1996
  %2006 = phi i32 [ %2004, %2001 ], [ 0, %1998 ], [ 0, %1996 ]
  %2007 = phi i1 [ false, %2001 ], [ true, %1998 ], [ true, %1996 ]
  br i1 %2007, label %2017, label %2008

2008:                                             ; preds = %2005
  %2009 = add i32 %1997, 1
  %2010 = load ptr, ptr %1995, align 8, !tbaa !56
  %2011 = getelementptr inbounds %struct.loops, ptr %2010, i64 0, i32 1
  %2012 = load ptr, ptr %2011, align 8, !tbaa !57
  %2013 = zext i32 %2006 to i64
  %2014 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %2012, i64 0, i32 2, i64 %2013
  %2015 = load ptr, ptr %2014, align 8, !tbaa !35
  %2016 = icmp eq ptr %2015, null
  br i1 %2016, label %1996, label %2019, !llvm.loop !73

2017:                                             ; preds = %2005
  br i1 %1993, label %2019, label %2018

2018:                                             ; preds = %2017
  call void @free(ptr noundef %1990)
  br label %2019

2019:                                             ; preds = %2008, %2018, %2017
  %2020 = phi ptr [ null, %2018 ], [ null, %2017 ], [ %2015, %2008 ]
  %2021 = phi i32 [ %1997, %2018 ], [ %1997, %2017 ], [ %2009, %2008 ]
  %2022 = phi ptr [ null, %2018 ], [ null, %2017 ], [ %1990, %2008 ]
  %2023 = icmp eq ptr %2020, null
  br i1 %2023, label %2024, label %1989, !llvm.loop !222

2024:                                             ; preds = %2019, %1984
  call void @omp_expand_local(ptr noundef %1440) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #17
  call void @verify_flow_info() #17
  call void @verify_dominators(i32 noundef 1) #17
  call void @verify_loop_structure() #17
  call void @verify_loop_closed_ssa() #17
  br label %2025

2025:                                             ; preds = %524, %462, %463, %467, %419, %422, %426, %267, %528, %292, %273, %191, %220, %223, %261, %182, %185, %189, %170, %173, %177, %2024
  %2026 = phi i8 [ %143, %220 ], [ %143, %223 ], [ %143, %261 ], [ 1, %2024 ], [ %143, %528 ], [ %143, %292 ], [ %143, %273 ], [ %143, %191 ], [ %143, %189 ], [ %143, %185 ], [ %143, %182 ], [ %143, %177 ], [ %143, %173 ], [ %143, %170 ], [ %143, %267 ], [ %143, %426 ], [ %143, %422 ], [ %143, %419 ], [ %143, %467 ], [ %143, %463 ], [ %143, %462 ], [ %143, %524 ]
  %2027 = icmp eq ptr %144, null
  %2028 = load ptr, ptr @cfun, align 8
  %2029 = getelementptr inbounds %struct.function, ptr %2028, i64 0, i32 4
  br label %2030

2030:                                             ; preds = %2042, %2025
  %2031 = phi i32 [ %145, %2025 ], [ %2043, %2042 ]
  br i1 %2027, label %2039, label %2032

2032:                                             ; preds = %2030
  %2033 = load i32, ptr %144, align 4, !tbaa !66
  %2034 = icmp ugt i32 %2033, %2031
  br i1 %2034, label %2035, label %2039

2035:                                             ; preds = %2032
  %2036 = zext i32 %2031 to i64
  %2037 = getelementptr inbounds %struct.VEC_int_base, ptr %144, i64 0, i32 2, i64 %2036
  %2038 = load i32, ptr %2037, align 4, !tbaa !50
  br label %2039

2039:                                             ; preds = %2035, %2032, %2030
  %2040 = phi i32 [ %2038, %2035 ], [ 0, %2032 ], [ 0, %2030 ]
  %2041 = phi i1 [ false, %2035 ], [ true, %2032 ], [ true, %2030 ]
  br i1 %2041, label %2051, label %2042

2042:                                             ; preds = %2039
  %2043 = add i32 %2031, 1
  %2044 = load ptr, ptr %2029, align 8, !tbaa !56
  %2045 = getelementptr inbounds %struct.loops, ptr %2044, i64 0, i32 1
  %2046 = load ptr, ptr %2045, align 8, !tbaa !57
  %2047 = zext i32 %2040 to i64
  %2048 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %2046, i64 0, i32 2, i64 %2047
  %2049 = load ptr, ptr %2048, align 8, !tbaa !35
  %2050 = icmp eq ptr %2049, null
  br i1 %2050, label %2030, label %2053, !llvm.loop !73

2051:                                             ; preds = %2039
  br i1 %2027, label %2053, label %2052

2052:                                             ; preds = %2051
  call void @free(ptr noundef %144)
  br label %2053

2053:                                             ; preds = %2042, %2051, %2052
  %2054 = phi ptr [ null, %2052 ], [ null, %2051 ], [ %2049, %2042 ]
  %2055 = phi i32 [ %2031, %2052 ], [ %2031, %2051 ], [ %2043, %2042 ]
  %2056 = phi ptr [ null, %2052 ], [ null, %2051 ], [ %144, %2042 ]
  %2057 = icmp eq ptr %2054, null
  br i1 %2057, label %2058, label %142, !llvm.loop !223

2058:                                             ; preds = %2053, %137
  %2059 = phi i8 [ 0, %137 ], [ %2026, %2053 ]
  call void @free_stmt_vec_info_vec() #17
  call void @htab_delete(ptr noundef %57) #17
  %2060 = icmp eq i8 %2059, 0
  br i1 %2060, label %2070, label %2061

2061:                                             ; preds = %2058
  %2062 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2063 = getelementptr inbounds %struct.function, ptr %2062, i64 0, i32 3
  %2064 = load ptr, ptr %2063, align 8, !tbaa !224
  %2065 = getelementptr inbounds %struct.gimple_df, ptr %2064, i64 0, i32 4
  call void @pt_solution_reset(ptr noundef nonnull %2065) #17
  %2066 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2067 = getelementptr inbounds %struct.function, ptr %2066, i64 0, i32 3
  %2068 = load ptr, ptr %2067, align 8, !tbaa !224
  %2069 = getelementptr inbounds %struct.gimple_df, ptr %2068, i64 0, i32 5
  call void @pt_solution_reset(ptr noundef nonnull %2069) #17
  br label %2070

2070:                                             ; preds = %2058, %2061, %50, %44
  %2071 = phi i8 [ 0, %44 ], [ 0, %50 ], [ %2059, %2061 ], [ %2059, %2058 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %30) #17
  ret i8 %2071
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @reduction_info_hash(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.reduction_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = tail call i32 %2(ptr noundef %4) #17
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @reduction_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = getelementptr inbounds %struct.reduction_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.reduction_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #11

declare void @init_stmt_vec_info_vec() local_unnamed_addr #3

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare i64 @estimated_loop_iterations_int(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @loop_parallel_p(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !62
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.22, i32 noundef %11)
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %15, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 18, i64 1, ptr %16)
  br label %21

19:                                               ; preds = %10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 19, i64 1, ptr %16)
  br label %21

21:                                               ; preds = %17, %19, %6, %1
  %22 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #17
  store ptr %22, ptr %3, align 8, !tbaa !35
  %23 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #17
  store ptr %23, ptr %2, align 8, !tbaa !35
  %24 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 8, !tbaa !35
  call void @dump_data_dependence_relations(ptr noundef nonnull %25, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %31, %27, %21
  %34 = call ptr @lambda_trans_matrix_new(i32 noundef 1, i32 noundef 1) #17
  %35 = load ptr, ptr %34, align 8, !tbaa !225
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  store i32 -1, ptr %36, align 4, !tbaa !50
  %37 = load ptr, ptr %2, align 8, !tbaa !35
  %38 = call zeroext i8 @lambda_transform_legal_p(ptr noundef nonnull %34, i32 noundef 1, ptr noundef %37) #17
  %39 = icmp eq i8 %38, 0
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %39, label %49, label %42

42:                                               ; preds = %33
  br i1 %41, label %56, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = call i64 @fwrite(ptr nonnull @.str.25, i64 31, i64 1, ptr nonnull %40)
  br label %56

49:                                               ; preds = %33
  br i1 %41, label %56, label %50

50:                                               ; preds = %49
  %51 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i64 @fwrite(ptr nonnull @.str.26, i64 52, i64 1, ptr nonnull %40)
  br label %56

56:                                               ; preds = %49, %50, %54, %42, %43, %47
  %57 = phi i8 [ 1, %47 ], [ 1, %43 ], [ 1, %42 ], [ 0, %54 ], [ 0, %50 ], [ 0, %49 ]
  %58 = load ptr, ptr %2, align 8, !tbaa !35
  call void @free_dependence_relations(ptr noundef %58) #17
  %59 = load ptr, ptr %3, align 8, !tbaa !35
  call void @free_data_refs(ptr noundef %59) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %57
}

declare i32 @find_loop_location(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @verify_flow_info() local_unnamed_addr #3

declare void @verify_dominators(i32 noundef) local_unnamed_addr #3

declare void @verify_loop_structure() local_unnamed_addr #3

declare void @verify_loop_closed_ssa() local_unnamed_addr #3

declare void @free_stmt_vec_info_vec() local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_bitmap_head_def(ptr noundef) #3

declare void @gt_pch_nx_bitmap_head_def(ptr noundef) #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @vect_analyze_loop_form(ptr noundef) local_unnamed_addr #3

declare ptr @vect_is_simple_reduction(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @destroy_loop_vec_info(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_data_dependence_relations(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lambda_trans_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @lambda_transform_legal_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare ptr @canonicalize_loop_ivs(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @initialize_reductions(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.28) #17
  %11 = tail call zeroext i8 @add_referenced_var(ptr noundef %10) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = tail call ptr @build_omp_clause(i32 noundef %14, i32 noundef 5) #17
  %16 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = getelementptr inbounds %struct.tree_omp_clause, ptr %15, i64 0, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !46
  %19 = load ptr, ptr %3, align 8, !tbaa !88
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -1
  %23 = icmp ult i32 %22, 9
  tail call void @llvm.assume(i1 %23)
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !91
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %32

32:                                               ; preds = %31, %2
  %33 = getelementptr inbounds i8, ptr %19, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.tree_omp_clause, ptr %15, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = tail call ptr @omp_reduction_init(ptr noundef %15, ptr noundef %39) #17
  %41 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !227
  %42 = tail call ptr @loop_preheader_edge(ptr noundef %1) #17
  %43 = load ptr, ptr %4, align 8, !tbaa !90
  %44 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !95
  %46 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !46
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %50

50:                                               ; preds = %32, %49
  %51 = zext i32 %45 to i64
  %52 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 4, i64 %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = load ptr, ptr %4, align 8, !tbaa !90
  %56 = tail call ptr @loop_preheader_edge(ptr noundef %1) #17
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !95
  %59 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !46
  %61 = icmp ult i32 %60, %58
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %63

63:                                               ; preds = %50, %62
  %64 = zext i32 %58 to i64
  %65 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 4, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !164
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %65, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !98
  %71 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %66, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !98
  %72 = load ptr, ptr %69, align 8, !tbaa !98
  store ptr %66, ptr %72, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  br label %73

73:                                               ; preds = %68, %63
  %74 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %65, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !96
  store ptr %40, ptr %75, align 8, !tbaa !35
  %76 = icmp eq ptr %40, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %40, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %73
  store ptr null, ptr %65, align 8, !tbaa !164
  br label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 5
  store ptr %83, ptr %65, align 8, !tbaa !164
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 5, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !98
  %86 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %65, i64 0, i32 1
  store ptr %85, ptr %86, align 8, !tbaa !98
  %87 = load ptr, ptr %84, align 8, !tbaa !98
  store ptr %65, ptr %87, align 8, !tbaa !164
  store ptr %65, ptr %84, align 8, !tbaa !98
  br label %88

88:                                               ; preds = %81, %82
  %89 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 4
  store ptr %54, ptr %89, align 8, !tbaa !228
  ret i32 1
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @create_loop_fn() unnamed_addr #9 !prof !34 {
  %1 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %1) #17
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = tail call ptr @current_function_name() #17
  %4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 100, ptr noundef nonnull @.str.33, ptr noundef %3)
  %5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %6 = add i64 %5, 32
  %7 = alloca i8, i64 %6, align 16
  %8 = load i32, ptr @create_loop_fn.loopfn_num, align 4, !tbaa !50
  %9 = add i32 %8, 1
  store i32 %9, ptr @create_loop_fn.loopfn_num, align 4, !tbaa !50
  %10 = zext i32 %8 to i64
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %1, i64 noundef %10)
  call void @clean_symbol_name(ptr noundef nonnull %7) #17
  %12 = call ptr @get_identifier(ptr noundef nonnull %7) #17
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %15 = call ptr (ptr, ...) @build_function_type_list(ptr noundef %13, ptr noundef %14, ptr noundef null) #17
  %16 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %12, ptr noundef %15) #17
  %17 = load ptr, ptr @parallelized_functions, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call ptr @bitmap_gc_alloc_stat() #17
  store ptr %20, ptr @parallelized_functions, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %19, %0
  %22 = load ptr, ptr @parallelized_functions, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %24) #17
  %26 = load i64, ptr %16, align 8
  %27 = or i64 %26, 83886080
  store i64 %27, ptr %16, align 8
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, -5121
  %31 = or disjoint i64 %30, 4096
  store i64 %31, ptr %28, align 8
  %32 = and i64 %27, -134217729
  store i64 %32, ptr %16, align 8
  %33 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 32768
  store i32 %35, ptr %33, align 8
  %36 = and i64 %31, -33555457
  store i64 %36, ptr %28, align 8
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !46
  %38 = call ptr @make_node_stat(i32 noundef 4) #17
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  store ptr %38, ptr %39, align 8, !tbaa !46
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %41 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 36, ptr noundef null, ptr noundef %40) #17
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 5120
  store i64 %44, ptr %42, align 8
  %45 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 3
  store ptr %41, ptr %45, align 8, !tbaa !46
  %46 = call ptr @get_identifier(ptr noundef nonnull @.str.35) #17
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %48 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 34, ptr noundef %46, ptr noundef %47) #17
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = or i64 %50, 4096
  store i64 %51, ptr %49, align 8
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %48, i64 0, i32 4
  store ptr %16, ptr %54, align 8, !tbaa !46
  %55 = load i64, ptr %48, align 8
  %56 = or i64 %55, 16777216
  store i64 %56, ptr %48, align 8
  %57 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 2
  store ptr %48, ptr %57, align 8, !tbaa !46
  call void @allocate_struct_function(ptr noundef nonnull %16, i8 noundef zeroext 0) #17
  call void @set_cfun(ptr noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %1) #17
  ret ptr %16
}

declare void @scev_reset() local_unnamed_addr #3

declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #3

declare void @free_numbers_of_iterations_estimates_loop(ptr noundef) local_unnamed_addr #3

declare void @omp_expand_local(ptr noundef) local_unnamed_addr #3

declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_duplicate_sese_tail(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @omp_reduction_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @int_tree_map_hash(ptr noundef) #3

declare i32 @int_tree_map_eq(ptr noundef, ptr noundef) #3

declare void @gather_blocks_in_sese_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @eliminate_local_variables_1(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !50
  %11 = load i64, ptr %4, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %73 [
    i16 32, label %18
    i16 34, label %18
    i16 36, label %18
    i16 141, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %73 [
    i16 32, label %18
    i16 34, label %18
    i16 36, label %18
  ]

18:                                               ; preds = %13, %13, %10, %10, %13, %10
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 33554432
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call ptr @build_pointer_type(ptr noundef %25) #17
  %27 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  %29 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !142
  %31 = tail call fastcc ptr @take_address_of(ptr noundef nonnull %4, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  %32 = load ptr, ptr %0, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %34, ptr noundef %31) #17
  store ptr %35, ptr %0, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 3
  store i8 1, ptr %36, align 8, !tbaa !143
  br label %73

37:                                               ; preds = %3
  %38 = icmp eq i64 %6, 121
  br i1 %38, label %39, label %69

39:                                               ; preds = %37
  %40 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %4) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  store i32 0, ptr %1, align 4, !tbaa !50
  %43 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call ptr @get_base_address(ptr noundef %44) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %73 [
    i16 32, label %55
    i16 34, label %55
    i16 36, label %55
    i16 141, label %50
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %73 [
    i16 32, label %55
    i16 34, label %55
    i16 36, label %55
  ]

55:                                               ; preds = %50, %50, %47, %47, %50, %47
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 33554432
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !139
  %65 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !142
  %67 = tail call fastcc ptr @take_address_of(ptr noundef %44, ptr noundef %62, ptr noundef %64, ptr noundef %66)
  store ptr %67, ptr %0, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 3
  store i8 1, ptr %68, align 8, !tbaa !143
  br label %73

69:                                               ; preds = %37
  %70 = add i32 %8, -4
  %71 = icmp ult i32 %70, 7
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %73

73:                                               ; preds = %50, %47, %13, %10, %72, %69, %42, %55, %39, %18, %60, %23
  ret ptr null
}

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @take_address_of(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.int_tree_map, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %8 = tail call ptr @unshare_expr(ptr noundef %0) #17
  store ptr %8, ptr %5, align 8, !tbaa !35
  br label %9

9:                                                ; preds = %20, %4
  %10 = phi ptr [ %5, %4 ], [ %21, %20 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 42, label %20
    i16 41, label %20
    i16 45, label %20
    i16 46, label %20
    i16 118, label %20
    i16 43, label %20
    i16 44, label %20
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !46
  store i32 %16, ptr %6, align 8, !tbaa !156
  %17 = call ptr @htab_find_slot_with_hash(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %16, i32 noundef 1) #17
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %68

20:                                               ; preds = %9, %9, %9, %9, %9, %9, %9
  %21 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  br label %9, !llvm.loop !229

22:                                               ; preds = %14
  %23 = load ptr, ptr %10, align 8, !tbaa !35
  %24 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %25 = call ptr @build_addr(ptr noundef %23, ptr noundef %24) #17
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr %10, align 8, !tbaa !35
  %29 = call ptr @get_name(ptr noundef %28) #17
  %30 = call ptr @create_tmp_var(ptr noundef %27, ptr noundef %29) #17
  %31 = call zeroext i8 @add_referenced_var(ptr noundef %30) #17
  %32 = call ptr @gimple_build_assign_stat(ptr noundef %30, ptr noundef %25) #17
  %33 = load ptr, ptr @cfun, align 8, !tbaa !35
  %34 = call ptr @make_ssa_name_fn(ptr noundef %33, ptr noundef %30, ptr noundef %32) #17
  %35 = load i32, ptr %32, align 8
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -10
  %38 = icmp ult i32 %37, -9
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.gimple_statement_base, ptr %32, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !46
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %22
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.9) #17
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, ptr %32, align 8
  %46 = and i32 %45, 255
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !91
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %55

55:                                               ; preds = %54, %44
  %56 = getelementptr inbounds i8, ptr %32, i64 %52
  store ptr %34, ptr %56, align 8, !tbaa !35
  %57 = icmp eq ptr %34, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %34, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 2
  store ptr %32, ptr %63, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %55, %58, %62
  %65 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %2, ptr noundef nonnull %32) #17
  %66 = call ptr @xmalloc(i64 noundef 16) #17
  store i32 %16, ptr %66, align 8, !tbaa !156
  %67 = getelementptr inbounds %struct.int_tree_map, ptr %66, i64 0, i32 1
  store ptr %34, ptr %67, align 8, !tbaa !158
  store ptr %66, ptr %17, align 8, !tbaa !35
  br label %71

68:                                               ; preds = %14
  %69 = getelementptr inbounds %struct.int_tree_map, ptr %18, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !158
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi ptr [ %70, %68 ], [ %34, %64 ]
  %73 = icmp eq ptr %10, %5
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %10, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = call ptr @build1_stat(i32 noundef 47, ptr noundef %77, ptr noundef %72) #17
  store ptr %78, ptr %10, align 8, !tbaa !35
  %79 = load ptr, ptr %5, align 8, !tbaa !35
  %80 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %81 = call ptr @build_addr(ptr noundef %79, ptr noundef %80) #17
  %82 = call ptr @force_gimple_operand(ptr noundef %81, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #17
  %83 = load ptr, ptr %7, align 8, !tbaa !35
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %74
  %86 = load ptr, ptr %83, align 8, !tbaa !128
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2, ptr noundef nonnull %83) #17
  br label %90

90:                                               ; preds = %74, %85, %88, %71
  %91 = phi ptr [ %82, %85 ], [ %82, %88 ], [ %72, %71 ], [ %82, %74 ]
  %92 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = icmp eq ptr %93, %1
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef %91) #17
  %97 = call ptr @force_gimple_operand(ptr noundef %96, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #17
  %98 = load ptr, ptr %7, align 8, !tbaa !35
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %98, align 8, !tbaa !128
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2, ptr noundef nonnull %98) #17
  br label %105

105:                                              ; preds = %95, %100, %103, %90
  %106 = phi ptr [ %97, %100 ], [ %97, %103 ], [ %91, %90 ], [ %97, %95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret ptr %106
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @name_to_copy_elt_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !161
  ret i32 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @name_to_copy_elt_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !161
  %4 = load i32, ptr %1, align 8, !tbaa !161
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @separate_decls_in_region_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %2) #17
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = tail call zeroext i8 @is_gimple_reg(ptr noundef %11) #17
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i8
  %15 = select i1 %13, ptr null, ptr %10
  br label %42

16:                                               ; preds = %5
  %17 = add nsw i32 %7, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %2, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = and i32 %6, 254
  %27 = add nsw i32 %26, -10
  %28 = icmp ult i32 %27, -4
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %23, align 8, !tbaa !230
  br label %35

35:                                               ; preds = %33, %29, %25, %22
  %36 = phi ptr [ %23, %22 ], [ %23, %25 ], [ %23, %29 ], [ %34, %33 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.def_optype_d, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !232
  %41 = load ptr, ptr %36, align 8, !tbaa !230
  br label %42

42:                                               ; preds = %38, %35, %9
  %43 = phi ptr [ null, %9 ], [ %41, %38 ], [ %36, %35 ]
  %44 = phi i8 [ %14, %9 ], [ 0, %38 ], [ 1, %35 ]
  %45 = phi ptr [ %15, %9 ], [ %40, %38 ], [ null, %35 ]
  %46 = icmp eq i8 %44, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42, %66
  %48 = phi ptr [ %69, %66 ], [ %45, %42 ]
  %49 = phi i8 [ %68, %66 ], [ %44, %42 ]
  %50 = phi ptr [ %67, %66 ], [ %43, %42 ]
  %51 = load ptr, ptr %48, align 8, !tbaa !35
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef nonnull @.str.9) #17
  br label %56

56:                                               ; preds = %47, %55
  %57 = tail call fastcc ptr @separate_decls_in_region_name(ptr noundef nonnull %51, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0)
  %58 = icmp eq ptr %57, %51
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 690, ptr noundef nonnull @.str.9) #17
  br label %60

60:                                               ; preds = %56, %59
  %61 = icmp eq ptr %50, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.def_optype_d, ptr %50, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !232
  %65 = load ptr, ptr %50, align 8, !tbaa !230
  br label %66

66:                                               ; preds = %60, %62
  %67 = phi ptr [ %65, %62 ], [ %50, %60 ]
  %68 = phi i8 [ %49, %62 ], [ 1, %60 ]
  %69 = phi ptr [ %64, %62 ], [ null, %60 ]
  %70 = icmp eq i8 %68, 0
  br i1 %70, label %47, label %71, !llvm.loop !233

71:                                               ; preds = %66, %42
  %72 = load i32, ptr %2, align 8
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 16
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = tail call zeroext i8 @is_gimple_reg(ptr noundef %77) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !46
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2, i64 0, i32 4, i64 0
  br label %111

86:                                               ; preds = %71
  %87 = add nsw i32 %73, -10
  %88 = icmp ult i32 %87, -9
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %2, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi ptr [ %91, %89 ], [ null, %86 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = and i32 %72, 254
  %97 = add nsw i32 %96, -10
  %98 = icmp ult i32 %97, -4
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %2, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %93, align 8, !tbaa !159
  br label %105

105:                                              ; preds = %103, %99, %95, %92
  %106 = phi ptr [ %93, %92 ], [ %93, %95 ], [ %93, %99 ], [ %104, %103 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.use_optype_d, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %106, align 8, !tbaa !159
  br label %111

111:                                              ; preds = %108, %105, %84, %75, %80
  %112 = phi i32 [ %82, %84 ], [ 0, %75 ], [ %82, %80 ], [ 0, %105 ], [ 0, %108 ]
  %113 = phi i32 [ 1, %84 ], [ 0, %75 ], [ 0, %80 ], [ 0, %105 ], [ 0, %108 ]
  %114 = phi ptr [ null, %84 ], [ null, %75 ], [ null, %80 ], [ %106, %105 ], [ %110, %108 ]
  %115 = phi ptr [ %2, %84 ], [ null, %75 ], [ %2, %80 ], [ null, %105 ], [ null, %108 ]
  %116 = phi i1 [ true, %84 ], [ false, %75 ], [ false, %80 ], [ false, %105 ], [ true, %108 ]
  %117 = phi i8 [ 0, %84 ], [ 1, %75 ], [ 1, %80 ], [ 1, %105 ], [ 0, %108 ]
  %118 = phi ptr [ %85, %84 ], [ null, %75 ], [ null, %80 ], [ null, %105 ], [ %109, %108 ]
  br i1 %116, label %119, label %200

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %121 = getelementptr inbounds %struct.gimple_statement_phi, ptr %115, i64 0, i32 1
  br label %122

122:                                              ; preds = %119, %194
  %123 = phi ptr [ %118, %119 ], [ %198, %194 ]
  %124 = phi i8 [ %117, %119 ], [ %197, %194 ]
  %125 = phi ptr [ %114, %119 ], [ %196, %194 ]
  %126 = phi i32 [ %113, %119 ], [ %195, %194 ]
  %127 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %123, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !96
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 141
  br i1 %132, label %133, label %179

133:                                              ; preds = %122
  %134 = load ptr, ptr %0, align 8, !tbaa !79
  %135 = load ptr, ptr %120, align 8, !tbaa !94
  %136 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %129) #17
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %133
  %139 = load i64, ptr %129, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 141
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.tree_ssa_name, ptr %129, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = getelementptr inbounds %struct.gimple_statement_base, ptr %144, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !46
  %147 = icmp eq ptr %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %146, ptr noundef %134) #17
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %146, ptr noundef %135) #17
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151, %148, %142
  br label %155

155:                                              ; preds = %133, %138, %151, %154
  %156 = phi i8 [ 1, %154 ], [ 1, %133 ], [ 0, %151 ], [ 0, %138 ]
  %157 = tail call fastcc ptr @separate_decls_in_region_name(ptr noundef nonnull %129, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %156)
  %158 = load ptr, ptr %123, align 8, !tbaa !164
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %123, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !98
  %163 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %158, i64 0, i32 1
  store ptr %162, ptr %163, align 8, !tbaa !98
  %164 = load ptr, ptr %161, align 8, !tbaa !98
  store ptr %158, ptr %164, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load ptr, ptr %127, align 8, !tbaa !96
  store ptr %157, ptr %166, align 8, !tbaa !35
  %167 = icmp eq ptr %157, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load i64, ptr %157, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 141
  br i1 %171, label %173, label %172

172:                                              ; preds = %168, %165
  store ptr null, ptr %123, align 8, !tbaa !164
  br label %179

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.tree_ssa_name, ptr %157, i64 0, i32 5
  store ptr %174, ptr %123, align 8, !tbaa !164
  %175 = getelementptr inbounds %struct.tree_ssa_name, ptr %157, i64 0, i32 5, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !98
  %177 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %123, i64 0, i32 1
  store ptr %176, ptr %177, align 8, !tbaa !98
  %178 = load ptr, ptr %175, align 8, !tbaa !98
  store ptr %123, ptr %178, align 8, !tbaa !164
  store ptr %123, ptr %175, align 8, !tbaa !98
  br label %179

179:                                              ; preds = %173, %172, %122
  %180 = icmp eq ptr %125, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.use_optype_d, ptr %125, i64 0, i32 1
  %183 = load ptr, ptr %125, align 8, !tbaa !159
  br label %194

184:                                              ; preds = %179
  %185 = icmp slt i32 %126, %112
  br i1 %185, label %186, label %194

186:                                              ; preds = %184
  %187 = add nsw i32 %126, 1
  %188 = load i32, ptr %121, align 8, !tbaa !46
  %189 = icmp ult i32 %188, %126
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %191

191:                                              ; preds = %190, %186
  %192 = zext i32 %126 to i64
  %193 = getelementptr inbounds %struct.gimple_statement_phi, ptr %115, i64 0, i32 4, i64 %192
  br label %194

194:                                              ; preds = %184, %181, %191
  %195 = phi i32 [ %187, %191 ], [ %126, %181 ], [ %126, %184 ]
  %196 = phi ptr [ %125, %191 ], [ %183, %181 ], [ %125, %184 ]
  %197 = phi i8 [ %124, %191 ], [ %124, %181 ], [ 1, %184 ]
  %198 = phi ptr [ %193, %191 ], [ %182, %181 ], [ null, %184 ]
  %199 = icmp eq i8 %197, 0
  br i1 %199, label %122, label %200, !llvm.loop !234

200:                                              ; preds = %194, %111
  ret void
}

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @add_field_for_name(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !224
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !235
  %9 = load i32, ptr %3, align 8, !tbaa !161
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_tree_base, ptr %8, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call ptr @build_decl_stat(i32 noundef %16, i32 noundef 31, ptr noundef %18, ptr noundef %20) #17
  tail call void @insert_field_into_struct(ptr noundef %1, ptr noundef %21) #17
  %22 = getelementptr inbounds %struct.name_to_copy_elt, ptr %3, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !239
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @add_field_for_reduction(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 9
  tail call void @llvm.assume(i1 %8)
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !91
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr inbounds i8, ptr %4, i64 %14
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = load ptr, ptr %3, align 8, !tbaa !88
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call ptr @build_decl_stat(i32 noundef %24, i32 noundef 31, ptr noundef %26, ptr noundef %28) #17
  tail call void @insert_field_into_struct(ptr noundef %1, ptr noundef %29) #17
  %30 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !240
  ret i32 1
}

declare void @layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_loads_and_stores_for_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.name_to_copy_elt, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !76, !noalias !241
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !46, !noalias !241
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !126, !noalias !241
  br label %27

27:                                               ; preds = %25, %21, %2
  %28 = phi ptr [ %26, %25 ], [ null, %21 ], [ null, %2 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gimple_seq_d, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !190, !noalias !241
  br label %33

33:                                               ; preds = %27, %30
  %34 = phi ptr [ %32, %30 ], [ null, %27 ]
  store ptr %34, ptr %3, align 8, !tbaa.struct !81
  %35 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %28, ptr %35, align 8, !tbaa.struct !132
  %36 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %16, ptr %36, align 8, !tbaa.struct !133
  %37 = load ptr, ptr %1, align 8, !tbaa !176
  %38 = getelementptr inbounds %struct.name_to_copy_elt, ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !239
  %40 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %8, ptr noundef %37, ptr noundef %39, ptr noundef null) #17
  %41 = load ptr, ptr @cfun, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !224
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !235
  %46 = load i32, ptr %4, align 8, !tbaa !161
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %45, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = tail call ptr @gimple_build_assign_stat(ptr noundef %40, ptr noundef %49) #17
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %50) #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %50, i32 noundef 0) #17
  %51 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !180
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 13
  %54 = load i32, ptr %53, align 8, !tbaa !76, !noalias !244
  %55 = and i32 %54, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !46, !noalias !244
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !126, !noalias !244
  br label %63

63:                                               ; preds = %61, %57, %33
  %64 = phi ptr [ %62, %61 ], [ null, %57 ], [ null, %33 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.gimple_seq_d, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !190, !noalias !244
  br label %69

69:                                               ; preds = %63, %66
  %70 = phi ptr [ %68, %66 ], [ null, %63 ]
  store ptr %70, ptr %3, align 8, !tbaa.struct !81
  store ptr %64, ptr %35, align 8, !tbaa.struct !132
  store ptr %52, ptr %36, align 8, !tbaa.struct !133
  %71 = load ptr, ptr %9, align 8, !tbaa !178
  %72 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %14, ptr noundef %71) #17
  %73 = load ptr, ptr %38, align 8, !tbaa !239
  %74 = call ptr @build3_stat(i32 noundef 41, ptr noundef %8, ptr noundef %72, ptr noundef %73, ptr noundef null) #17
  %75 = load ptr, ptr %5, align 8, !tbaa !163
  %76 = call ptr @gimple_build_assign_stat(ptr noundef %75, ptr noundef %74) #17
  %77 = load ptr, ptr %5, align 8, !tbaa !163
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %77, i64 0, i32 2
  store ptr %76, ptr %78, align 8, !tbaa !46
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %76, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_stores_for_reduction(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -1
  %9 = icmp ult i32 %8, 9
  tail call void @llvm.assume(i1 %9)
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !91
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %18

18:                                               ; preds = %17, %2
  %19 = getelementptr inbounds i8, ptr %5, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !179
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !76, !noalias !247
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !46, !noalias !247
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !126, !noalias !247
  br label %35

35:                                               ; preds = %33, %29, %18
  %36 = phi ptr [ %34, %33 ], [ null, %29 ], [ null, %18 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.gimple_seq_d, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !190, !noalias !247
  br label %41

41:                                               ; preds = %35, %38
  %42 = phi ptr [ %40, %38 ], [ null, %35 ]
  store ptr %42, ptr %3, align 8, !tbaa.struct !81
  %43 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %36, ptr %43, align 8, !tbaa.struct !132
  %44 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %24, ptr %44, align 8, !tbaa.struct !133
  %45 = load ptr, ptr %1, align 8, !tbaa !176
  %46 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !240
  %48 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %22, ptr noundef %45, ptr noundef %47, ptr noundef null) #17
  %49 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !228
  %51 = tail call ptr @gimple_build_assign_stat(ptr noundef %48, ptr noundef %50) #17
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %51) #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %51, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 1
}

declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @separate_decls_in_region_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.int_tree_map, align 8
  %6 = alloca %struct.name_to_copy_elt, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %71

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !46
  store i32 %12, ptr %6, align 8, !tbaa !161
  %13 = icmp ne i8 %3, 0
  %14 = zext i1 %13 to i32
  %15 = call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %12, i32 noundef %14) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.name_to_copy_elt, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !163
  br label %71

23:                                               ; preds = %17, %10
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !46
  store i32 %27, ptr %5, align 8, !tbaa !156
  %28 = call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %27, i32 noundef 1) #17
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = call ptr @get_name(ptr noundef %25) #17
  %35 = call ptr @create_tmp_var(ptr noundef %33, ptr noundef %34) #17
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 134217728
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, -134217729
  %42 = or disjoint i64 %41, %38
  store i64 %42, ptr %39, align 8
  %43 = call zeroext i8 @add_referenced_var(ptr noundef %35) #17
  %44 = call ptr @xmalloc(i64 noundef 16) #17
  store i32 %27, ptr %44, align 8, !tbaa !156
  %45 = getelementptr inbounds %struct.int_tree_map, ptr %44, i64 0, i32 1
  store ptr %35, ptr %45, align 8, !tbaa !158
  store ptr %44, ptr %28, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !46
  store i32 %47, ptr %5, align 8, !tbaa !156
  %48 = call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %47, i32 noundef 1) #17
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 637, ptr noundef nonnull @.str.9) #17
  br label %52

52:                                               ; preds = %31, %51
  %53 = call ptr @xmalloc(i64 noundef 16) #17
  store i32 %47, ptr %53, align 8, !tbaa !156
  %54 = getelementptr inbounds %struct.int_tree_map, ptr %53, i64 0, i32 1
  store ptr %35, ptr %54, align 8, !tbaa !158
  store ptr %53, ptr %48, align 8, !tbaa !35
  br label %58

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.int_tree_map, ptr %29, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !158
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi ptr [ %57, %55 ], [ %35, %52 ]
  %60 = icmp eq i8 %3, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = call ptr @duplicate_ssa_name(ptr noundef nonnull %0, ptr noundef null) #17
  %63 = call ptr @xmalloc(i64 noundef 24) #17
  store i32 %12, ptr %63, align 8, !tbaa !161
  %64 = getelementptr inbounds %struct.name_to_copy_elt, ptr %63, i64 0, i32 1
  store ptr %62, ptr %64, align 8, !tbaa !163
  %65 = getelementptr inbounds %struct.name_to_copy_elt, ptr %63, i64 0, i32 2
  store ptr null, ptr %65, align 8, !tbaa !239
  store ptr %63, ptr %15, align 8, !tbaa !35
  br label %68

66:                                               ; preds = %58
  br i1 %16, label %68, label %67

67:                                               ; preds = %66
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 657, ptr noundef nonnull @.str.9) #17
  br label %68

68:                                               ; preds = %67, %66, %61
  %69 = phi ptr [ %62, %61 ], [ %0, %66 ], [ %0, %67 ]
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 1
  store ptr %59, ptr %70, align 8, !tbaa !46
  br label %71

71:                                               ; preds = %4, %68, %20
  %72 = phi ptr [ %22, %20 ], [ %69, %68 ], [ %0, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret ptr %72
}

declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @insert_field_into_struct(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_loads_for_reductions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -1
  %10 = icmp ult i32 %9, 9
  tail call void @llvm.assume(i1 %10)
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !91
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds i8, ptr %6, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !180
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !76, !noalias !250
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !46, !noalias !250
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !126, !noalias !250
  br label %42

42:                                               ; preds = %40, %36, %19
  %43 = phi ptr [ %41, %40 ], [ null, %36 ], [ null, %19 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !128, !noalias !250
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi ptr [ %46, %45 ], [ null, %42 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47, %56
  %51 = phi ptr [ %58, %56 ], [ %48, %47 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !82, !noalias !255
  %53 = load i32, ptr %52, align 8, !noalias !255
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %51, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !84, !noalias !255
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !131

60:                                               ; preds = %50, %56, %47
  %61 = phi ptr [ %48, %47 ], [ %51, %50 ], [ %58, %56 ]
  store ptr %61, ptr %3, align 8, !tbaa.struct !81
  %62 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %43, ptr %62, align 8, !tbaa.struct !132
  %63 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %31, ptr %63, align 8, !tbaa.struct !133
  %64 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %29, ptr noundef %25) #17
  %65 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !240
  %67 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %23, ptr noundef %64, ptr noundef %66, ptr noundef null) #17
  %68 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct.gimple_statement_phi, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = tail call ptr @gimple_build_assign_stat(ptr noundef %71, ptr noundef %67) #17
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !46
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %72, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %74 = load ptr, ptr %68, align 8, !tbaa !120
  %75 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %76) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %77 = load ptr, ptr %3, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %60
  %80 = load ptr, ptr %68, align 8, !tbaa !120
  br label %81

81:                                               ; preds = %79, %86
  %82 = phi ptr [ %77, %79 ], [ %88, %86 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !82
  %84 = icmp eq ptr %83, %80
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  br label %91

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %82, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !84
  store ptr %88, ptr %3, align 8, !tbaa !114
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %81, !llvm.loop !256

90:                                               ; preds = %86, %60
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 953, ptr noundef nonnull @.str.9) #17
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ 1, %85 ], [ 0, %90 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 %92
}

declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_return(i8 noundef zeroext) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_continue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @current_function_name() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @clean_symbol_name(ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare void @allocate_struct_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @set_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_phi_for_local_result(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 0
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !203
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %2, %14
  %18 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = load ptr, ptr %20, align 8, !tbaa !146
  %22 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 2, i64 0
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br i1 %13, label %24, label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %17, %24
  %28 = phi ptr [ %26, %24 ], [ %9, %17 ]
  %29 = icmp eq ptr %23, %28
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 2, i64 1
  %31 = select i1 %29, ptr %30, ptr %22
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load ptr, ptr %3, align 8, !tbaa !88
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -1
  %37 = icmp ult i32 %36, 9
  tail call void @llvm.assume(i1 %37)
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !91
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %46

46:                                               ; preds = %45, %27
  %47 = getelementptr inbounds i8, ptr %33, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = load ptr, ptr @cfun, align 8, !tbaa !35
  %52 = tail call ptr @make_ssa_name_fn(ptr noundef %51, ptr noundef %50, ptr noundef null) #17
  %53 = load ptr, ptr %3, align 8, !tbaa !88
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !46
  %56 = tail call ptr @create_phi_node(ptr noundef %52, ptr noundef nonnull %20) #17
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !227
  tail call void @add_phi_arg(ptr noundef %56, ptr noundef %59, ptr noundef %32, i32 noundef %55) #17
  %60 = load ptr, ptr %3, align 8, !tbaa !88
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 255
  %63 = add nsw i32 %62, -10
  %64 = icmp ult i32 %63, -9
  br i1 %64, label %77, label %65

65:                                               ; preds = %46
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !91
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %74

74:                                               ; preds = %73, %65
  %75 = getelementptr inbounds i8, ptr %60, i64 %71
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  br label %77

77:                                               ; preds = %46, %74
  %78 = phi ptr [ %76, %74 ], [ null, %46 ]
  %79 = load ptr, ptr %4, align 8, !tbaa !117
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !111
  %82 = getelementptr inbounds %struct.VEC_edge_base, ptr %81, i64 0, i32 2, i64 0
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !203
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.VEC_edge_base, ptr %81, i64 0, i32 2, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  br label %91

91:                                               ; preds = %77, %88
  %92 = phi ptr [ %90, %88 ], [ %83, %77 ]
  tail call void @add_phi_arg(ptr noundef %56, ptr noundef %78, ptr noundef %92, i32 noundef %55) #17
  %93 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 7
  store ptr %56, ptr %93, align 8, !tbaa !257
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_call_for_reduction_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.gimple_statement_phi, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %16, ptr noundef %12) #17
  %18 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !240
  %20 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef null) #17
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %22 = tail call ptr @build_addr(ptr noundef %20, ptr noundef %21) #17
  %23 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = tail call ptr @split_block(ptr noundef %24, ptr noundef %20) #17
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = tail call ptr @create_tmp_var(ptr noundef %31, ptr noundef null) #17
  %33 = tail call zeroext i8 @add_referenced_var(ptr noundef %32) #17
  %34 = load ptr, ptr @cfun, align 8, !tbaa !35
  %35 = tail call ptr @make_ssa_name_fn(ptr noundef %34, ptr noundef %32, ptr noundef null) #17
  %36 = tail call ptr @gimple_build_omp_atomic_load(ptr noundef %35, ptr noundef %22) #17
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 13
  %39 = load i32, ptr %38, align 8, !tbaa !76, !noalias !258
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !46, !noalias !258
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 8, !tbaa !126, !noalias !258
  br label %48

48:                                               ; preds = %46, %42, %2
  %49 = phi ptr [ %47, %46 ], [ null, %42 ], [ null, %2 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %49, align 8, !tbaa !128, !noalias !258
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi ptr [ %52, %51 ], [ null, %48 ]
  store ptr %54, ptr %3, align 8, !tbaa.struct !81
  %55 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %49, ptr %55, align 8, !tbaa.struct !132
  %56 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %27, ptr %56, align 8, !tbaa.struct !133
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %36, i32 noundef 0) #17
  %57 = call ptr @split_block(ptr noundef %27, ptr noundef %36) #17
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !94
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !76, !noalias !261
  %62 = and i32 %61, 512
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !46, !noalias !261
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %66, align 8, !tbaa !126, !noalias !261
  br label %70

70:                                               ; preds = %68, %64, %53
  %71 = phi ptr [ %69, %68 ], [ null, %64 ], [ null, %53 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 8, !tbaa !128, !noalias !261
  br label %75

75:                                               ; preds = %70, %73
  %76 = phi ptr [ %74, %73 ], [ null, %70 ]
  store ptr %76, ptr %3, align 8, !tbaa.struct !81
  store ptr %71, ptr %55, align 8, !tbaa.struct !132
  store ptr %59, ptr %56, align 8, !tbaa.struct !133
  %77 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !92
  %79 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !257
  %81 = getelementptr inbounds %struct.gimple_statement_phi, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %78, ptr noundef %84, ptr noundef %35, ptr noundef %82) #17
  %86 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %85, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 2) #17
  %87 = call ptr @gimple_build_omp_atomic_store(ptr noundef %86) #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %87, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 1
}

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_atomic_load(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_atomic_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

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
!54 = !{!55, !36, i64 48}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!55, !36, i64 32}
!57 = !{!58, !36, i64 8}
!58 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!59 = !{!60, !41, i64 0}
!60 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!61 = !{!58, !36, i64 24}
!62 = !{!63, !41, i64 0}
!63 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !64, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !65, i64 80, !65, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!64 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!65 = !{!"", !42, i64 0, !42, i64 8}
!66 = !{!67, !41, i64 0}
!67 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!68 = !{!63, !36, i64 48}
!69 = distinct !{!69, !53}
!70 = !{!63, !36, i64 56}
!71 = !{!63, !36, i64 40}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = !{!63, !37, i64 136}
!75 = !{!63, !41, i64 36}
!76 = !{!77, !41, i64 96}
!77 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!78 = distinct !{!78, !52, !53}
!79 = !{!80, !36, i64 0}
!80 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!81 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!82 = !{!83, !36, i64 0}
!83 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!84 = !{!83, !36, i64 16}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = !{!63, !36, i64 8}
!88 = !{!89, !36, i64 0}
!89 = !{!"reduction_info", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!90 = !{!89, !36, i64 8}
!91 = !{!42, !42, i64 0}
!92 = !{!89, !41, i64 16}
!93 = distinct !{!93, !52, !53}
!94 = !{!80, !36, i64 8}
!95 = !{!80, !41, i64 44}
!96 = !{!97, !36, i64 24}
!97 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!98 = !{!97, !36, i64 8}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = !{i8 0, i8 2}
!103 = !{!77, !41, i64 80}
!104 = !{!105, !36, i64 0}
!105 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!106 = !{!105, !41, i64 8}
!107 = !{!108, !36, i64 16}
!108 = !{!"tree_niter_desc", !36, i64 0, !36, i64 8, !36, i64 16, !65, i64 24, !109, i64 40, !36, i64 64, !41, i64 72}
!109 = !{!"", !36, i64 0, !36, i64 8, !37, i64 16}
!110 = !{!108, !36, i64 8}
!111 = !{!77, !36, i64 8}
!112 = !{!113, !41, i64 0}
!113 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!114 = !{!115, !36, i64 0}
!115 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!116 = distinct !{!116, !52, !53}
!117 = !{!63, !36, i64 16}
!118 = distinct !{!118, !52, !53}
!119 = distinct !{!119, !52, !53}
!120 = !{!89, !36, i64 24}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"gsi_start_bb: argument 0"}
!123 = distinct !{!123, !"gsi_start_bb"}
!124 = distinct !{!124, !125, !"gsi_after_labels: argument 0"}
!125 = distinct !{!125, !"gsi_after_labels"}
!126 = !{!127, !36, i64 0}
!127 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!128 = !{!129, !36, i64 0}
!129 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!130 = !{!124}
!131 = distinct !{!131, !52, !53}
!132 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!133 = !{i64 0, i64 8, !35}
!134 = !{!135, !41, i64 0}
!135 = !{!"VEC_basic_block_base", !41, i64 0, !41, i64 4, !37, i64 8}
!136 = !{!137}
!137 = distinct !{!137, !138, !"gsi_start_bb: argument 0"}
!138 = distinct !{!138, !"gsi_start_bb"}
!139 = !{!140, !36, i64 56}
!140 = !{!"elv_data", !141, i64 0, !36, i64 56, !36, i64 64, !37, i64 72}
!141 = !{!"walk_stmt_info", !115, i64 0, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !36, i64 48}
!142 = !{!140, !36, i64 64}
!143 = !{!140, !37, i64 72}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = !{!77, !36, i64 0}
!147 = distinct !{!147, !52, !53}
!148 = !{!149}
!149 = distinct !{!149, !150, !"gsi_start_bb: argument 0"}
!150 = distinct !{!150, !"gsi_start_bb"}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = !{!154}
!154 = distinct !{!154, !155, !"gsi_start_bb: argument 0"}
!155 = distinct !{!155, !"gsi_start_bb"}
!156 = !{!157, !41, i64 0}
!157 = !{!"int_tree_map", !41, i64 0, !36, i64 8}
!158 = !{!157, !36, i64 8}
!159 = !{!160, !36, i64 0}
!160 = !{!"use_optype_d", !36, i64 0, !97, i64 8}
!161 = !{!162, !41, i64 0}
!162 = !{!"name_to_copy_elt", !41, i64 0, !36, i64 8, !36, i64 16}
!163 = !{!162, !36, i64 8}
!164 = !{!97, !36, i64 0}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = !{!169, !36, i64 432}
!169 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !170, i64 240, !171, i64 248, !172, i64 256, !173, i64 272, !174, i64 432, !175, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!170 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!171 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!172 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!173 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!174 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!175 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!176 = !{!177, !36, i64 0}
!177 = !{!"clsn_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!178 = !{!177, !36, i64 8}
!179 = !{!177, !36, i64 16}
!180 = !{!177, !36, i64 24}
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"gsi_start_bb: argument 0"}
!183 = distinct !{!183, !"gsi_start_bb"}
!184 = distinct !{!184, !185, !"gsi_after_labels: argument 0"}
!185 = distinct !{!185, !"gsi_after_labels"}
!186 = !{!184}
!187 = !{!188}
!188 = distinct !{!188, !189, !"gsi_last_bb: argument 0"}
!189 = distinct !{!189, !"gsi_last_bb"}
!190 = !{!129, !36, i64 8}
!191 = !{!192, !194}
!192 = distinct !{!192, !193, !"gsi_start_bb: argument 0"}
!193 = distinct !{!193, !"gsi_start_bb"}
!194 = distinct !{!194, !195, !"gsi_after_labels: argument 0"}
!195 = distinct !{!195, !"gsi_after_labels"}
!196 = !{!194}
!197 = !{!198}
!198 = distinct !{!198, !199, !"gsi_last_bb: argument 0"}
!199 = distinct !{!199, !"gsi_last_bb"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"gsi_last_bb: argument 0"}
!202 = distinct !{!202, !"gsi_last_bb"}
!203 = !{!80, !41, i64 48}
!204 = !{!205, !41, i64 40}
!205 = !{!"phi_arg_d", !97, i64 0, !36, i64 32, !41, i64 40}
!206 = distinct !{!206, !52, !53}
!207 = !{!208, !36, i64 8}
!208 = !{!"gimple_omp_for_iter", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!209 = !{!208, !36, i64 16}
!210 = !{!208, !36, i64 24}
!211 = !{!208, !41, i64 0}
!212 = !{!208, !36, i64 32}
!213 = !{!214}
!214 = distinct !{!214, !215, !"gsi_last_bb: argument 0"}
!215 = distinct !{!215, !"gsi_last_bb"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"gsi_last_bb: argument 0"}
!218 = distinct !{!218, !"gsi_last_bb"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"gsi_last_bb: argument 0"}
!221 = distinct !{!221, !"gsi_last_bb"}
!222 = distinct !{!222, !52, !53}
!223 = distinct !{!223, !52, !53}
!224 = !{!55, !36, i64 24}
!225 = !{!226, !36, i64 0}
!226 = !{!"lambda_trans_matrix_s", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!227 = !{!89, !36, i64 48}
!228 = !{!89, !36, i64 32}
!229 = distinct !{!229, !52, !53}
!230 = !{!231, !36, i64 0}
!231 = !{!"def_optype_d", !36, i64 0, !36, i64 8}
!232 = !{!231, !36, i64 8}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = !{!236, !36, i64 16}
!236 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !237, i64 32, !237, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !238, i64 104}
!237 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!238 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!239 = !{!162, !36, i64 16}
!240 = !{!89, !36, i64 40}
!241 = !{!242}
!242 = distinct !{!242, !243, !"gsi_last_bb: argument 0"}
!243 = distinct !{!243, !"gsi_last_bb"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"gsi_last_bb: argument 0"}
!246 = distinct !{!246, !"gsi_last_bb"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"gsi_last_bb: argument 0"}
!249 = distinct !{!249, !"gsi_last_bb"}
!250 = !{!251, !253}
!251 = distinct !{!251, !252, !"gsi_start_bb: argument 0"}
!252 = distinct !{!252, !"gsi_start_bb"}
!253 = distinct !{!253, !254, !"gsi_after_labels: argument 0"}
!254 = distinct !{!254, !"gsi_after_labels"}
!255 = !{!253}
!256 = distinct !{!256, !52, !53}
!257 = !{!89, !36, i64 56}
!258 = !{!259}
!259 = distinct !{!259, !260, !"gsi_start_bb: argument 0"}
!260 = distinct !{!260, !"gsi_start_bb"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"gsi_start_bb: argument 0"}
!263 = distinct !{!263, !"gsi_start_bb"}
