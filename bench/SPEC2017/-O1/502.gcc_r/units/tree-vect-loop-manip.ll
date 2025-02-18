; ModuleID = 'tree-vect-loop-manip.c'
source_filename = "tree-vect-loop-manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_adjust_info_base = type { i32, i32, [1 x %struct.adjust_info] }
%struct.adjust_info = type { ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"tree-vect-loop-manip.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\0Aloop at %s:%d: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"vect_can_advance_ivs_p:\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Analyze phi: \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"virtual phi. skip.\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"reduc phi. skip.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No Access function.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Access function of PHI: \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"No evolution.\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"=== vect_do_peeling_for_loop_bound ===\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"=== vect_do_peeling_for_alignment ===\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"bnd\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"ratio_mult_vf\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [47 x i8] c"Profitability threshold is %u loop iterations.\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\0A%s:%d: note: \00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"tree_duplicate_loop_to_edge_cfg failed.\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@adjust_vec = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"prologue_after_cost_adjust\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"vect_update_ivs_after_vectorizer: phi: \00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.23 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"niters\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.25 = private unnamed_addr constant [22 x i8] c"known alignment = %d.\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.26 = private unnamed_addr constant [25 x i8] c"niters for prolog loop: \00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"prolog_loop_niters\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"=== vect_update_inits_of_dr ===\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"addr2int\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"orptrs\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"andmask\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.33 = private unnamed_addr constant [42 x i8] c"create runtime check for data references \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"created %u versioning for alias checks.\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
define dso_local void @rename_variables_in_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !56, !noalias !57
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !46, !noalias !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !60, !noalias !57
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %1 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !62, !noalias !57
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %19, %18 ], [ null, %15 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %20, %56
  %24 = phi ptr [ %58, %56 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -9
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi ptr [ %32, %30 ], [ null, %23 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.use_optype_d, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %34, align 8, !tbaa !66
  br label %39

39:                                               ; preds = %33, %36
  %40 = phi i8 [ 0, %36 ], [ 1, %33 ]
  %41 = phi ptr [ %38, %36 ], [ %34, %33 ]
  %42 = phi ptr [ %37, %36 ], [ null, %33 ]
  br i1 %35, label %56, label %43

43:                                               ; preds = %39, %51
  %44 = phi ptr [ %54, %51 ], [ %42, %39 ]
  %45 = phi ptr [ %53, %51 ], [ %41, %39 ]
  %46 = phi i8 [ %52, %51 ], [ %40, %39 ]
  tail call fastcc void @rename_use_op(ptr noundef %44)
  %47 = icmp eq ptr %45, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.use_optype_d, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %45, align 8, !tbaa !66
  br label %51

51:                                               ; preds = %43, %48
  %52 = phi i8 [ %46, %48 ], [ 1, %43 ]
  %53 = phi ptr [ %50, %48 ], [ %45, %43 ]
  %54 = phi ptr [ %49, %48 ], [ null, %43 ]
  %55 = icmp eq i8 %52, 0
  br i1 %55, label %43, label %56, !llvm.loop !69

56:                                               ; preds = %51, %39
  %57 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %24, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %23, !llvm.loop !71

60:                                               ; preds = %56, %20
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %62

62:                                               ; preds = %111, %60
  %63 = phi i32 [ 0, %60 ], [ %112, %111 ]
  %64 = load ptr, ptr %61, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %64, align 8, !tbaa !72
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %67, %66 ], [ 0, %62 ]
  %70 = icmp eq i32 %69, %63
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = zext i32 %63 to i64
  %73 = getelementptr inbounds %struct.VEC_edge_base, ptr %64, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  br label %75

75:                                               ; preds = %68, %71
  %76 = phi ptr [ %74, %71 ], [ null, %68 ]
  br i1 %70, label %113, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !74
  %80 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %4, ptr noundef %79) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %83 = load ptr, ptr %78, align 8, !tbaa !74
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %83) #15
  %84 = load ptr, ptr %2, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %102, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 6
  br label %88

88:                                               ; preds = %86, %96
  %89 = phi ptr [ %84, %86 ], [ %100, %96 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  %91 = load i32, ptr %87, align 4, !tbaa !77
  %92 = getelementptr inbounds %struct.gimple_statement_phi, ptr %90, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !46
  %94 = icmp ult i32 %93, %91
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %96

96:                                               ; preds = %88, %95
  %97 = zext i32 %91 to i64
  %98 = getelementptr inbounds %struct.gimple_statement_phi, ptr %90, i64 0, i32 4, i64 %97
  call fastcc void @rename_use_op(ptr noundef nonnull %98)
  %99 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %89, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !70
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %88, !llvm.loop !78

102:                                              ; preds = %96, %82, %77
  %103 = load ptr, ptr %61, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %103, align 8, !tbaa !72
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %106, %105 ], [ 0, %102 ]
  %109 = icmp ult i32 %63, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %111

111:                                              ; preds = %107, %110
  %112 = add i32 %63, 1
  br label %62, !llvm.loop !79

113:                                              ; preds = %75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold nounwind uwtable
define internal fastcc void @rename_use_op(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = tail call ptr @get_current_def(ptr noundef nonnull %4) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !81
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !82
  %18 = load ptr, ptr %15, align 8, !tbaa !82
  store ptr %12, ptr %18, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %14, %11
  %20 = load ptr, ptr %2, align 8, !tbaa !80
  store ptr %9, ptr %20, align 8, !tbaa !35
  %21 = load i64, ptr %9, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store ptr null, ptr %0, align 8, !tbaa !81
  br label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 5
  store ptr %26, ptr %0, align 8, !tbaa !81
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 5, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !82
  %29 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !82
  %30 = load ptr, ptr %27, align 8, !tbaa !82
  store ptr %0, ptr %30, align 8, !tbaa !81
  store ptr %0, ptr %27, align 8, !tbaa !82
  br label %31

31:                                               ; preds = %25, %24, %8, %1
  ret void
}

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @rename_variables_in_loop(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %10, %6 ], [ 0, %1 ]
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  tail call void @rename_variables_in_bb(ptr noundef %9)
  %10 = add nuw nsw i64 %7, 1
  %11 = load i32, ptr %3, align 4, !tbaa !83
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %6, label %14, !llvm.loop !87

14:                                               ; preds = %6, %1
  tail call void @free(ptr noundef %2)
  ret void
}

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local void @slpeel_make_loop_iterate_ntimes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %10 = tail call ptr @single_exit(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 0) #15
  %14 = load ptr, ptr %11, align 8, !tbaa !46
  %15 = tail call ptr @build_int_cst(ptr noundef %14, i64 noundef 1) #15
  %16 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.1) #15
  br label %19

19:                                               ; preds = %2, %18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %16) #15
  call void @standard_iv_increment_position(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %20 = load i8, ptr %7, align 1, !tbaa !46
  call void @create_iv(ptr noundef %13, ptr noundef %15, ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %21 = load ptr, ptr %4, align 8, !tbaa !35
  %22 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %21, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #15
  store ptr %22, ptr %4, align 8, !tbaa !35
  %23 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #15
  %24 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !88
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 97, i32 100
  %29 = load ptr, ptr %4, align 8, !tbaa !35
  %30 = call ptr @gimple_build_cond(i32 noundef %28, ptr noundef %29, ptr noundef %23, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %30, i32 noundef 1) #15
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  %31 = call i32 @find_loop_location(ptr noundef %0)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %19
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %31) #15
  %41 = load ptr, ptr %8, align 8, !tbaa !89
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %31) #15
  %42 = getelementptr inbounds %struct.expanded_location, ptr %9, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !91
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.2, ptr noundef %41, i32 noundef %43)
  br label %45

45:                                               ; preds = %40, %38
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %46, ptr noundef %30, i32 noundef 0, i32 noundef 2) #15
  br label %47

47:                                               ; preds = %45, %34, %19
  %48 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr %23, ptr %48, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_condition(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @standard_iv_increment_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @find_loop_location(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @get_loop_exit_condition(ptr noundef nonnull %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %6, %3
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !56, !noalias !94
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !46, !noalias !94
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !60, !noalias !94
  br label %25

25:                                               ; preds = %23, %19, %14
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ null, %14 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !62, !noalias !94
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30, %39
  %34 = phi ptr [ %41, %39 ], [ %31, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !46
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %34, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !97

43:                                               ; preds = %39, %33, %30, %10, %6, %1
  %44 = phi i32 [ 0, %1 ], [ %8, %6 ], [ 0, %10 ], [ 0, %30 ], [ %37, %33 ], [ 0, %39 ]
  ret i32 %44
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %7 = tail call ptr @single_exit(ptr noundef %0) #15
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #15
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %179

12:                                               ; preds = %9, %2
  %13 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %16 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %13, i32 noundef %15) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %177, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8, !tbaa !99
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = add i32 %25, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %20, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  br label %32

32:                                               ; preds = %24, %27
  %33 = phi ptr [ %31, %27 ], [ null, %24 ]
  %34 = tail call ptr @duplicate_loop(ptr noundef %0, ptr noundef %33) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %177, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @single_exit(ptr noundef %0) #15
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %39) #15
  %41 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = icmp eq ptr %40, %42
  %44 = load i32, ptr %14, align 4, !tbaa !83
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = tail call ptr @xmalloc(i64 noundef %46) #15
  %48 = tail call ptr @single_exit(ptr noundef %0) #15
  store ptr %48, ptr %3, align 8, !tbaa !35
  %49 = load i32, ptr %14, align 4, !tbaa !83
  %50 = load ptr, ptr %1, align 8, !tbaa !101
  call void @copy_bbs(ptr noundef %13, i32 noundef %49, ptr noundef %47, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null, ptr noundef %50) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %39) #15
  %51 = load ptr, ptr %5, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %101, label %53

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 2
  %55 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 3
  br label %56

56:                                               ; preds = %53, %97
  %57 = phi ptr [ %51, %53 ], [ %99, %97 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = call ptr @single_exit(ptr noundef %0) #15
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !77
  %62 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !46
  %64 = icmp ult i32 %63, %61
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %66

66:                                               ; preds = %56, %65
  %67 = zext i32 %61 to i64
  %68 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !80
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %66
  %73 = call ptr @single_exit(ptr noundef %0) #15
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !77
  %76 = load i32, ptr %62, align 8, !tbaa !46
  %77 = icmp ult i32 %76, %75
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %79

79:                                               ; preds = %72, %78
  %80 = zext i32 %75 to i64
  %81 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 %80, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !102
  %83 = load ptr, ptr %54, align 8, !tbaa !93
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !104
  %86 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 0
  %87 = load ptr, ptr %86, align 8, !tbaa !35
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !74
  %90 = load ptr, ptr %55, align 8, !tbaa !105
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  br label %95

95:                                               ; preds = %79, %92
  %96 = phi ptr [ %94, %92 ], [ %87, %79 ]
  call void @add_phi_arg(ptr noundef %58, ptr noundef nonnull %70, ptr noundef %96, i32 noundef %82) #15
  br label %97

97:                                               ; preds = %66, %95
  %98 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %57, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !70
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %56, !llvm.loop !106

101:                                              ; preds = %97, %36
  br i1 %8, label %102, label %111

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !93
  %105 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %104) #15
  %106 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  store ptr null, ptr %106, align 8, !tbaa !46
  %107 = load ptr, ptr %103, align 8, !tbaa !93
  %108 = load ptr, ptr %1, align 8, !tbaa !101
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %107, ptr noundef %108) #15
  br i1 %43, label %109, label %176

109:                                              ; preds = %102
  %110 = load ptr, ptr %103, align 8, !tbaa !93
  br label %173

111:                                              ; preds = %101
  %112 = call ptr @loop_preheader_edge(ptr noundef %0) #15
  %113 = load ptr, ptr %112, align 8, !tbaa !101
  %114 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !93
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !104
  %118 = getelementptr inbounds %struct.VEC_edge_base, ptr %117, i64 0, i32 2, i64 0
  %119 = load ptr, ptr %118, align 8, !tbaa !35
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !74
  %122 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %34, ptr noundef %121) #15
  %123 = icmp eq i8 %122, 0
  %124 = load ptr, ptr %114, align 8, !tbaa !93
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !104
  %127 = getelementptr inbounds %struct.VEC_edge_base, ptr %126, i64 0, i32 2, i64 1
  %128 = getelementptr inbounds %struct.VEC_edge_base, ptr %126, i64 0, i32 2, i64 0
  %129 = select i1 %123, ptr %128, ptr %127
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  %131 = load ptr, ptr %41, align 8, !tbaa !93
  %132 = call ptr @redirect_edge_and_branch_force(ptr noundef %130, ptr noundef %131) #15
  %133 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 2
  store ptr null, ptr %133, align 8, !tbaa !46
  %134 = load ptr, ptr %41, align 8, !tbaa !93
  %135 = load ptr, ptr %130, align 8, !tbaa !101
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %134, ptr noundef %135) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %136 = load ptr, ptr %41, align 8, !tbaa !93
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %136) #15
  %137 = load ptr, ptr %6, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %138 = icmp eq ptr %137, null
  br i1 %138, label %168, label %139

139:                                              ; preds = %111
  %140 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 6
  br label %141

141:                                              ; preds = %139, %164
  %142 = phi ptr [ %137, %139 ], [ %166, %164 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !64
  %144 = load i32, ptr %140, align 4, !tbaa !77
  %145 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !46
  %147 = icmp ult i32 %146, %144
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %149

149:                                              ; preds = %141, %148
  %150 = zext i32 %144 to i64
  %151 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 4, i64 %150, i32 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !80
  %153 = load ptr, ptr %152, align 8, !tbaa !35
  %154 = icmp eq ptr %153, null
  br i1 %154, label %164, label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %140, align 4, !tbaa !77
  %157 = load i32, ptr %145, align 8, !tbaa !46
  %158 = icmp ult i32 %157, %156
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %160

160:                                              ; preds = %155, %159
  %161 = zext i32 %156 to i64
  %162 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 4, i64 %161, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !102
  call void @add_phi_arg(ptr noundef %143, ptr noundef nonnull %153, ptr noundef nonnull %130, i32 noundef %163) #15
  br label %164

164:                                              ; preds = %149, %160
  %165 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %142, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !70
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %141, !llvm.loop !107

168:                                              ; preds = %164, %111
  %169 = load ptr, ptr %114, align 8, !tbaa !93
  %170 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %112, ptr noundef %169) #15
  %171 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 2
  store ptr null, ptr %171, align 8, !tbaa !46
  %172 = load ptr, ptr %114, align 8, !tbaa !93
  br label %173

173:                                              ; preds = %168, %109
  %174 = phi ptr [ %110, %109 ], [ %113, %168 ]
  %175 = phi ptr [ %39, %109 ], [ %172, %168 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %175, ptr noundef %174) #15
  br label %176

176:                                              ; preds = %173, %102
  call void @free(ptr noundef %47)
  br label %177

177:                                              ; preds = %32, %12, %176
  %178 = phi ptr [ %34, %176 ], [ null, %12 ], [ null, %32 ]
  call void @free(ptr noundef %13)
  br label %179

179:                                              ; preds = %177, %9
  %180 = phi ptr [ null, %9 ], [ %178, %177 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %180
}

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @duplicate_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @copy_bbs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @single_exit(ptr noundef %0) #15
  %4 = tail call ptr @loop_preheader_edge(ptr noundef %0) #15
  %5 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !56, !noalias !108
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !46, !noalias !108
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !60, !noalias !108
  br label %17

17:                                               ; preds = %15, %11, %2
  %18 = phi ptr [ %16, %15 ], [ null, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gimple_seq_d, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !111, !noalias !108
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = load ptr, ptr @cfun, align 8, !tbaa !35
  %26 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %25) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !99
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %38
  %42 = add i32 %39, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %34, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !83
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = tail call zeroext i8 @empty_block_p(ptr noundef %53) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = tail call ptr @single_exit(ptr noundef %0) #15
  %58 = icmp ne ptr %57, null
  %59 = icmp ne ptr %5, null
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load ptr, ptr %24, align 8, !tbaa !64
  %63 = icmp eq ptr %5, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = icmp eq ptr %3, %1
  %66 = icmp eq ptr %4, %1
  %67 = select i1 %65, i1 true, i1 %66
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %38, %64, %28, %41, %47, %51, %56, %61, %23
  %70 = phi i8 [ 0, %23 ], [ 0, %61 ], [ 0, %56 ], [ 0, %51 ], [ 0, %47 ], [ 0, %41 ], [ 0, %28 ], [ %68, %64 ], [ 0, %38 ]
  ret i8 %70
}

declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_can_advance_ivs_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #15
  %12 = load ptr, ptr %2, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %117, label %14

14:                                               ; preds = %11, %113
  %15 = phi ptr [ %115, %113 ], [ %12, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %21 = call i64 @fwrite(ptr nonnull @.str.4, i64 13, i64 1, ptr %20)
  %22 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %22, ptr noundef %16, i32 noundef 0, i32 noundef 2) #15
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = call zeroext i8 @is_gimple_reg(ptr noundef %27) #15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %111, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %35 = call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %34)
  br label %111

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.gimple_statement_base, ptr %16, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !46
  %39 = icmp ne i32 %38, 0
  call void @llvm.assume(i1 %39)
  %40 = load ptr, ptr @stmt_vec_info_vec, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %40, align 8, !tbaa !115
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %46 = icmp ugt i32 %38, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %48

48:                                               ; preds = %47, %44
  %49 = load ptr, ptr @stmt_vec_info_vec, align 8
  %50 = add i32 %38, -1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %49, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct._stmt_vec_info, ptr %53, i64 0, i32 16
  %55 = load i32, ptr %54, align 8, !tbaa !117
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %62 = call i64 @fwrite(ptr nonnull @.str.6, i64 16, i64 1, ptr %61)
  br label %111

63:                                               ; preds = %48
  %64 = load ptr, ptr %24, align 8, !tbaa !35
  %65 = call ptr @analyze_scalar_evolution(ptr noundef %3, ptr noundef %64) #15
  %66 = call ptr @loop_preheader_edge(ptr noundef %3) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load ptr, ptr @cfun, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !120
  br label %72

72:                                               ; preds = %63, %68
  %73 = phi ptr [ %71, %68 ], [ %66, %63 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = call ptr @instantiate_scev(ptr noundef %74, ptr noundef %3, ptr noundef %65) #15
  %76 = icmp eq ptr %75, null
  %77 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %78 = icmp eq i8 %77, 0
  br i1 %76, label %79, label %83

79:                                               ; preds = %72
  br i1 %78, label %111, label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %82 = call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %81)
  br label %111

83:                                               ; preds = %72
  br i1 %78, label %88, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %86 = call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr %85)
  %87 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %87, ptr noundef nonnull %75, i32 noundef 2) #15
  br label %88

88:                                               ; preds = %84, %83
  %89 = load i32, ptr %3, align 8, !tbaa !122
  %90 = call ptr @evolution_part_in_loop_num(ptr noundef nonnull %75, i32 noundef %89) #15
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %97 = call i64 @fwrite(ptr nonnull @.str.9, i64 13, i64 1, ptr %96)
  br label %111

98:                                               ; preds = %88
  %99 = load i64, ptr %90, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 146
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %104 = icmp eq ptr %103, %90
  %105 = load ptr, ptr @chrec_known, align 8
  %106 = icmp eq ptr %105, %90
  %107 = select i1 %104, i1 true, i1 %106
  br label %108

108:                                              ; preds = %98, %102
  %109 = phi i1 [ true, %98 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  br label %111

111:                                              ; preds = %108, %92, %95, %79, %80, %57, %60, %30, %33
  %112 = phi i32 [ 4, %33 ], [ 4, %30 ], [ 4, %60 ], [ 4, %57 ], [ 1, %80 ], [ 1, %79 ], [ 1, %95 ], [ 1, %92 ], [ %110, %108 ]
  switch i32 %112, label %117 [
    i32 0, label %113
    i32 4, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !70
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %14, !llvm.loop !123

117:                                              ; preds = %111, %113, %11
  %118 = phi i8 [ 1, %11 ], [ 0, %111 ], [ 1, %113 ]
  ret i8 %118
}

declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_do_peeling_for_loop_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !113
  %11 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %15 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %14)
  br label %16

16:                                               ; preds = %13, %4
  tail call void @initialize_original_copy_tables() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %3, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %17 = load ptr, ptr %0, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !125
  %22 = tail call ptr @loop_preheader_edge(ptr noundef %17) #15
  %23 = load ptr, ptr %8, align 8, !tbaa !35
  %24 = tail call fastcc ptr @vect_build_loop_niters(ptr noundef nonnull %0, ptr noundef %23)
  %25 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = sext i32 %21 to i64
  %28 = tail call i32 @exact_log2(i64 noundef %27) #15
  %29 = sext i32 %28 to i64
  %30 = tail call ptr @build_int_cst(ptr noundef %26, i64 noundef %29) #15
  %31 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %32, ptr noundef %24, ptr noundef %30) #15
  %34 = tail call zeroext i8 @is_gimple_val(ptr noundef %33) #15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %16
  %37 = load ptr, ptr %25, align 8, !tbaa !46
  %38 = tail call ptr @create_tmp_var(ptr noundef %37, ptr noundef nonnull @.str.16) #15
  %39 = tail call zeroext i8 @add_referenced_var(ptr noundef %38) #15
  store ptr null, ptr %9, align 8, !tbaa !35
  %40 = call ptr @force_gimple_operand(ptr noundef %33, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef %38) #15
  %41 = load ptr, ptr %8, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %8, ptr noundef %44) #15
  br label %51

45:                                               ; preds = %36
  %46 = call ptr @loop_preheader_edge(ptr noundef %17) #15
  %47 = load ptr, ptr %9, align 8, !tbaa !35
  %48 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %46, ptr noundef %47) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1552, ptr noundef nonnull @.str.1) #15
  br label %51

51:                                               ; preds = %50, %45, %43, %16
  %52 = phi ptr [ %33, %16 ], [ %40, %43 ], [ %40, %50 ], [ %40, %45 ]
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %54, ptr noundef %52, ptr noundef %30) #15
  %56 = call zeroext i8 @is_gimple_val(ptr noundef %55) #15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load ptr, ptr %25, align 8, !tbaa !46
  %60 = call ptr @create_tmp_var(ptr noundef %59, ptr noundef nonnull @.str.17) #15
  %61 = call zeroext i8 @add_referenced_var(ptr noundef %60) #15
  store ptr null, ptr %9, align 8, !tbaa !35
  %62 = call ptr @force_gimple_operand(ptr noundef %55, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef %60) #15
  %63 = load ptr, ptr %8, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %8, ptr noundef %66) #15
  br label %73

67:                                               ; preds = %58
  %68 = call ptr @loop_preheader_edge(ptr noundef %17) #15
  %69 = load ptr, ptr %9, align 8, !tbaa !35
  %70 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %68, ptr noundef %69) #15
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1574, ptr noundef nonnull @.str.1) #15
  br label %73

73:                                               ; preds = %51, %65, %67, %72
  %74 = phi ptr [ %55, %51 ], [ %62, %65 ], [ %62, %72 ], [ %62, %67 ]
  store ptr %52, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %75 = load i32, ptr %10, align 8, !tbaa !122
  %76 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %77 = load ptr, ptr %76, align 8, !tbaa !126
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, ptr %77, align 8, !tbaa !127
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %73, %79
  %83 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !129
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %84, align 8, !tbaa !130
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82, %86
  %90 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %91 = load i32, ptr %90, align 8, !tbaa !132
  %92 = icmp ne i32 %91, 0
  %93 = icmp ne ptr %2, null
  %94 = or i1 %93, %92
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !133
  %98 = call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %97)
  br label %99

99:                                               ; preds = %95, %89, %86, %79
  %100 = phi i8 [ 0, %79 ], [ 0, %86 ], [ 0, %89 ], [ 1, %95 ]
  %101 = phi i32 [ 0, %79 ], [ 0, %86 ], [ 0, %89 ], [ %98, %95 ]
  %102 = call ptr @single_exit(ptr noundef nonnull %10) #15
  %103 = call fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef nonnull %10, ptr noundef %102, ptr noundef %74, ptr noundef %24, i8 noundef zeroext 0, i32 noundef %101, i8 noundef zeroext %100, ptr noundef %2, ptr noundef %3)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1904, ptr noundef nonnull @.str.1) #15
  br label %106

106:                                              ; preds = %99, %105
  %107 = load i32, ptr %10, align 8, !tbaa !122
  %108 = icmp eq i32 %75, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1905, ptr noundef nonnull @.str.1) #15
  br label %110

110:                                              ; preds = %106, %109
  %111 = call ptr @loop_preheader_edge(ptr noundef %103) #15
  %112 = load ptr, ptr %111, align 8, !tbaa !101
  %113 = load ptr, ptr %112, align 8, !tbaa !134
  %114 = getelementptr inbounds %struct.VEC_edge_base, ptr %113, i64 0, i32 2, i64 0
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = load ptr, ptr %115, align 8, !tbaa !101
  %117 = call ptr @single_exit(ptr noundef nonnull %10) #15
  %118 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !74
  %120 = icmp eq ptr %116, %119
  %121 = load ptr, ptr %112, align 8, !tbaa !134
  %122 = getelementptr inbounds %struct.VEC_edge_base, ptr %121, i64 0, i32 2, i64 0
  %123 = getelementptr inbounds %struct.VEC_edge_base, ptr %121, i64 0, i32 2, i64 1
  %124 = select i1 %120, ptr %122, ptr %123
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = load ptr, ptr %0, align 8, !tbaa !113
  %127 = call ptr @single_exit(ptr noundef %126) #15
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !74
  %130 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !74
  %132 = load ptr, ptr %129, align 8, !tbaa !134
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %110
  %135 = load i32, ptr %132, align 8, !tbaa !72
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %138, label %137

137:                                              ; preds = %110, %134
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1730, ptr noundef nonnull @.str.1) #15
  br label %138

138:                                              ; preds = %137, %134
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %139 = getelementptr inbounds %struct.loop, ptr %126, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !93
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %140) #15
  %141 = load ptr, ptr %5, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %131) #15
  %142 = load ptr, ptr %6, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %143 = icmp eq ptr %141, null
  %144 = icmp eq ptr %142, null
  %145 = select i1 %143, i1 true, i1 %144
  br i1 %145, label %281, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 13
  %148 = getelementptr inbounds i8, ptr %7, i64 8
  %149 = getelementptr inbounds i8, ptr %7, i64 16
  br label %150

150:                                              ; preds = %146, %273
  %151 = phi ptr [ %141, %146 ], [ %275, %273 ]
  %152 = phi ptr [ %142, %146 ], [ %277, %273 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %153 = load ptr, ptr %151, align 8, !tbaa !64
  %154 = load ptr, ptr %152, align 8, !tbaa !64
  %155 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %159 = call i64 @fwrite(ptr nonnull @.str.22, i64 39, i64 1, ptr %158)
  %160 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %160, ptr noundef %153, i32 noundef 0, i32 noundef 2) #15
  br label %161

161:                                              ; preds = %157, %150
  %162 = getelementptr inbounds %struct.gimple_statement_phi, ptr %153, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  %164 = getelementptr inbounds %struct.tree_ssa_name, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = call zeroext i8 @is_gimple_reg(ptr noundef %165) #15
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %273, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %173 = call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %172)
  br label %273

174:                                              ; preds = %161
  %175 = getelementptr inbounds %struct.gimple_statement_base, ptr %153, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !46
  %177 = icmp ne i32 %176, 0
  call void @llvm.assume(i1 %177)
  %178 = load ptr, ptr @stmt_vec_info_vec, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = load i32, ptr %178, align 8, !tbaa !115
  br label %182

182:                                              ; preds = %180, %174
  %183 = phi i32 [ %181, %180 ], [ 0, %174 ]
  %184 = icmp ugt i32 %176, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %186

186:                                              ; preds = %185, %182
  %187 = load ptr, ptr @stmt_vec_info_vec, align 8
  %188 = add i32 %176, -1
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %187, i64 0, i32 2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct._stmt_vec_info, ptr %191, i64 0, i32 16
  %193 = load i32, ptr %192, align 8, !tbaa !117
  %194 = icmp eq i32 %193, 5
  br i1 %194, label %195, label %201

195:                                              ; preds = %186
  %196 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %273, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %200 = call i64 @fwrite(ptr nonnull @.str.6, i64 16, i64 1, ptr %199)
  br label %273

201:                                              ; preds = %186
  %202 = load ptr, ptr %162, align 8, !tbaa !35
  %203 = call ptr @analyze_scalar_evolution(ptr noundef %126, ptr noundef %202) #15
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1769, ptr noundef nonnull @.str.1) #15
  br label %206

206:                                              ; preds = %205, %201
  %207 = getelementptr inbounds %struct.tree_common, ptr %203, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !46
  %209 = call ptr @tree_strip_nop_conversions(ptr noundef %203) #15
  %210 = load i32, ptr %126, align 8, !tbaa !122
  %211 = call ptr @evolution_part_in_loop_num(ptr noundef %209, i32 noundef %210) #15
  %212 = call ptr @unshare_expr(ptr noundef %211) #15
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1778, ptr noundef nonnull @.str.1) #15
  br label %215

215:                                              ; preds = %214, %206
  %216 = load i64, ptr %212, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 146
  br i1 %218, label %226, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %221 = icmp eq ptr %220, %212
  %222 = load ptr, ptr @chrec_known, align 8
  %223 = icmp eq ptr %222, %212
  %224 = select i1 %221, i1 true, i1 %223
  %225 = zext i1 %224 to i8
  br label %226

226:                                              ; preds = %219, %215
  %227 = phi i8 [ 1, %215 ], [ %225, %219 ]
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1782, ptr noundef nonnull @.str.1) #15
  br label %230

230:                                              ; preds = %229, %226
  %231 = load i32, ptr %126, align 8, !tbaa !122
  %232 = call ptr @initial_condition_in_loop_num(ptr noundef %209, i32 noundef %231) #15
  %233 = call ptr @unshare_expr(ptr noundef %232) #15
  %234 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %208, ptr noundef %233) #15
  %235 = getelementptr inbounds %struct.tree_common, ptr %212, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  %237 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %236, ptr noundef %74) #15
  %238 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %236, ptr noundef %237, ptr noundef nonnull %212) #15
  %239 = getelementptr inbounds %struct.tree_common, ptr %234, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !46
  %241 = load i64, ptr %240, align 8
  %242 = trunc i64 %241 to i16
  switch i16 %242, label %247 [
    i16 10, label %243
    i16 12, label %243
  ]

243:                                              ; preds = %230, %230
  %244 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %245 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %244, ptr noundef %238) #15
  %246 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %240, ptr noundef %234, ptr noundef %245) #15
  br label %250

247:                                              ; preds = %230
  %248 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %240, ptr noundef %238) #15
  %249 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %240, ptr noundef %234, ptr noundef %248) #15
  br label %250

250:                                              ; preds = %247, %243
  %251 = phi ptr [ %246, %243 ], [ %249, %247 ]
  %252 = load ptr, ptr %239, align 8, !tbaa !46
  %253 = call ptr @create_tmp_var(ptr noundef %252, ptr noundef nonnull @.str.23) #15
  %254 = call zeroext i8 @add_referenced_var(ptr noundef %253) #15
  %255 = load i32, ptr %147, align 8, !tbaa !56, !noalias !135
  %256 = and i32 %255, 512
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 7
  %260 = load ptr, ptr %259, align 8, !tbaa !46, !noalias !135
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %260, align 8, !tbaa !60, !noalias !135
  br label %264

264:                                              ; preds = %262, %258, %250
  %265 = phi ptr [ %263, %262 ], [ null, %258 ], [ null, %250 ]
  %266 = icmp eq ptr %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.gimple_seq_d, ptr %265, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !111, !noalias !135
  br label %270

270:                                              ; preds = %267, %264
  %271 = phi ptr [ %269, %267 ], [ null, %264 ]
  store ptr %271, ptr %7, align 8, !tbaa.struct !76
  store ptr %265, ptr %148, align 8, !tbaa.struct !138
  store ptr %129, ptr %149, align 8, !tbaa.struct !139
  %272 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %251, i8 noundef zeroext 0, ptr noundef %253, i8 noundef zeroext 1, i32 noundef 1) #15
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %154, ptr noundef %125, ptr noundef %272)
  br label %273

273:                                              ; preds = %270, %198, %195, %171, %168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %274 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %151, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !70
  %276 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %152, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !70
  %278 = icmp eq ptr %275, null
  %279 = icmp eq ptr %277, null
  %280 = select i1 %278, i1 true, i1 %279
  br i1 %280, label %281, label %150, !llvm.loop !140

281:                                              ; preds = %273, %138
  call void @scev_reset() #15
  call void @free_original_copy_tables() #15
  ret void
}

declare void @initialize_original_copy_tables() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @conservative_cost_threshold(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 11, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !141
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !125
  %8 = mul nsw i32 %7, %5
  %9 = add nsw i32 %8, -1
  %10 = icmp eq i32 %1, 0
  %11 = icmp ne i32 %9, 0
  %12 = icmp sgt i32 %8, %1
  %13 = and i1 %12, %11
  %14 = select i1 %10, i1 true, i1 %13
  %15 = select i1 %14, i32 %9, i32 %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 3) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %15)
  br label %23

23:                                               ; preds = %20, %17, %2
  ret i32 %15
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7, ptr noundef %8) unnamed_addr #9 !prof !34 {
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.gimple_stmt_iterator, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  %18 = alloca %struct.expanded_location, align 8
  %19 = alloca %struct.expanded_location, align 8
  %20 = tail call ptr @single_exit(ptr noundef %0) #15
  %21 = tail call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %0, ptr noundef %1), !range !143
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %628, label %23

23:                                               ; preds = %9
  tail call void @gimple_register_cfg_hooks() #15
  %24 = tail call ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %1)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = tail call i32 @find_loop_location(ptr noundef %0)
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %628, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %628, label %34

34:                                               ; preds = %30
  %35 = icmp eq i32 %27, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %18, i32 noundef %27) #15
  %37 = load ptr, ptr %18, align 8, !tbaa !89
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %19, i32 noundef %27) #15
  %38 = getelementptr inbounds %struct.expanded_location, ptr %19, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !91
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.19, ptr noundef %37, i32 noundef %39)
  br label %41

41:                                               ; preds = %36, %34
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %43 = call i64 @fwrite(ptr nonnull @.str.20, i64 40, i64 1, ptr %42)
  br label %628

44:                                               ; preds = %23
  %45 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @adjust_vec, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1218, ptr noundef nonnull @.str.1) #15
  br label %51

51:                                               ; preds = %47, %50
  %52 = alloca [776 x i8], align 16
  %53 = call ptr @vec_stack_p_reserve_exact_1(i32 noundef 32, ptr noundef nonnull %52) #15
  store ptr %53, ptr @adjust_vec, align 8, !tbaa !35
  br label %54

54:                                               ; preds = %51, %44
  %55 = icmp eq ptr %20, %1
  %56 = select i1 %55, ptr %24, ptr %0
  %57 = select i1 %55, ptr %0, ptr %24
  %58 = call ptr @ssa_names_to_replace() #15
  %59 = call ptr @loop_latch_edge(ptr noundef %0) #15
  %60 = call ptr @loop_preheader_edge(ptr noundef %0) #15
  %61 = call ptr @single_exit(ptr noundef nonnull %24) #15
  %62 = call ptr @loop_preheader_edge(ptr noundef nonnull %24) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #15
  %63 = getelementptr inbounds %struct.loop, ptr %24, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %16, ptr noundef %64) #15
  %65 = load ptr, ptr %16, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #15
  %66 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !93
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %17, ptr noundef %67) #15
  %68 = load ptr, ptr %17, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  %69 = icmp eq ptr %65, null
  %70 = icmp eq ptr %68, null
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %143, label %72

72:                                               ; preds = %54
  %73 = select i1 %55, ptr %59, ptr %60
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 6
  %75 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 6
  %76 = icmp eq ptr %61, %60
  br label %77

77:                                               ; preds = %72, %135
  %78 = phi ptr [ %68, %72 ], [ %139, %135 ]
  %79 = phi ptr [ %65, %72 ], [ %137, %135 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !64
  %81 = load ptr, ptr %78, align 8, !tbaa !64
  %82 = load i32, ptr %74, align 4, !tbaa !77
  %83 = getelementptr inbounds %struct.gimple_statement_phi, ptr %81, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !46
  %85 = icmp ult i32 %84, %82
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %87

87:                                               ; preds = %86, %77
  %88 = zext i32 %82 to i64
  %89 = getelementptr inbounds %struct.gimple_statement_phi, ptr %81, i64 0, i32 4, i64 %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = load i32, ptr %74, align 4, !tbaa !77
  %93 = load i32, ptr %83, align 8, !tbaa !46
  %94 = icmp ult i32 %93, %92
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %96

96:                                               ; preds = %95, %87
  %97 = zext i32 %92 to i64
  %98 = getelementptr inbounds %struct.gimple_statement_phi, ptr %81, i64 0, i32 4, i64 %97, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !102
  call void @add_phi_arg(ptr noundef %80, ptr noundef %91, ptr noundef %62, i32 noundef %99) #15
  %100 = load i32, ptr %75, align 4, !tbaa !77
  %101 = load i32, ptr %83, align 8, !tbaa !46
  %102 = icmp ult i32 %101, %100
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %104

104:                                              ; preds = %103, %96
  %105 = zext i32 %100 to i64
  %106 = getelementptr inbounds %struct.gimple_statement_phi, ptr %81, i64 0, i32 4, i64 %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !80
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load i32, ptr %75, align 4, !tbaa !77
  %110 = load i32, ptr %83, align 8, !tbaa !46
  %111 = icmp ult i32 %110, %109
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %113

113:                                              ; preds = %112, %104
  %114 = zext i32 %109 to i64
  %115 = getelementptr inbounds %struct.gimple_statement_phi, ptr %81, i64 0, i32 4, i64 %114, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !102
  %117 = load i64, ptr %108, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 141
  br i1 %119, label %120, label %135

120:                                              ; preds = %113
  %121 = call ptr @get_current_def(ptr noundef nonnull %108) #15
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.gimple_statement_phi, ptr %80, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi ptr [ %121, %120 ], [ %125, %123 ]
  %128 = call ptr @loop_latch_edge(ptr noundef nonnull %24) #15
  call void @add_phi_arg(ptr noundef %80, ptr noundef %127, ptr noundef %128, i32 noundef %116) #15
  %129 = call ptr @single_exit(ptr noundef %0) #15
  %130 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !74
  call fastcc void @adjust_debug_stmts(ptr noundef nonnull %108, ptr noundef null, ptr noundef %131)
  br i1 %55, label %135, label %132

132:                                              ; preds = %126
  br i1 %76, label %134, label %133

133:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #15
  br label %134

134:                                              ; preds = %133, %132
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %81, ptr noundef %61, ptr noundef %127)
  br label %135

135:                                              ; preds = %134, %126, %113
  %136 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %79, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !70
  %138 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %78, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !70
  %140 = icmp eq ptr %137, null
  %141 = icmp eq ptr %139, null
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %143, label %77, !llvm.loop !144

143:                                              ; preds = %135, %54
  call void @rename_variables_in_loop(ptr noundef nonnull %24)
  %144 = call ptr @loop_preheader_edge(ptr noundef %57) #15
  %145 = call ptr @split_edge(ptr noundef %144) #15
  %146 = call ptr @single_exit(ptr noundef %57) #15
  %147 = call ptr @split_edge(ptr noundef %146) #15
  %148 = icmp eq i8 %4, 0
  br i1 %148, label %149, label %177

149:                                              ; preds = %143
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %151 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = call ptr @build_int_cst(ptr noundef %152, i64 noundef 0) #15
  %154 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %150, ptr noundef %2, ptr noundef %153) #15
  %155 = icmp eq i8 %6, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %158 = load ptr, ptr %157, align 8, !tbaa !145
  %159 = getelementptr inbounds %struct._loop_vec_info, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !146
  %161 = call ptr @unshare_expr(ptr noundef %160) #15
  %162 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %163 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  %165 = zext i32 %5 to i64
  %166 = call ptr @build_int_cst(ptr noundef %164, i64 noundef %165) #15
  %167 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %162, ptr noundef %161, ptr noundef %166) #15
  %168 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %169 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %168, ptr noundef %167, ptr noundef %154) #15
  br label %170

170:                                              ; preds = %156, %149
  %171 = phi ptr [ %169, %156 ], [ %154, %149 ]
  %172 = icmp eq ptr %7, null
  br i1 %172, label %304, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %175 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 96, ptr noundef %174, ptr noundef nonnull %7) #15
  %176 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %174, ptr noundef %171, ptr noundef %175) #15
  br label %304

177:                                              ; preds = %143
  %178 = icmp eq i8 %6, 0
  br i1 %178, label %298, label %179

179:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  store ptr null, ptr %14, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  store ptr null, ptr %15, align 8, !tbaa !35
  %180 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %181 = load ptr, ptr %180, align 8, !tbaa !145
  %182 = getelementptr inbounds %struct._loop_vec_info, ptr %181, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !146
  %184 = call ptr @unshare_expr(ptr noundef %183) #15
  %185 = load ptr, ptr %145, align 8, !tbaa !134
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %179
  %188 = load i32, ptr %185, align 8, !tbaa !72
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %191, label %190

190:                                              ; preds = %187, %179
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %191

191:                                              ; preds = %190, %187
  %192 = load ptr, ptr %145, align 8, !tbaa !134
  %193 = getelementptr inbounds %struct.VEC_edge_base, ptr %192, i64 0, i32 2, i64 0
  %194 = load ptr, ptr %193, align 8, !tbaa !35
  %195 = call ptr @split_edge(ptr noundef %194) #15
  %196 = load ptr, ptr %145, align 8, !tbaa !134
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %191
  %199 = load i32, ptr %196, align 8, !tbaa !72
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %202, label %201

201:                                              ; preds = %198, %191
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %202

202:                                              ; preds = %201, %198
  %203 = load ptr, ptr %145, align 8, !tbaa !134
  %204 = getelementptr inbounds %struct.VEC_edge_base, ptr %203, i64 0, i32 2, i64 0
  %205 = load ptr, ptr %204, align 8, !tbaa !35
  %206 = call ptr @split_edge(ptr noundef %205) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %206, ptr noundef %195) #15
  %207 = call ptr @make_single_succ_edge(ptr noundef %195, ptr noundef nonnull %145, i32 noundef 2048) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %145, ptr noundef %195) #15
  %208 = load ptr, ptr %206, align 8, !tbaa !134
  %209 = getelementptr inbounds %struct.VEC_edge_base, ptr %208, i64 0, i32 2, i64 0
  %210 = load ptr, ptr %209, align 8, !tbaa !35
  %211 = getelementptr inbounds %struct.edge_def, ptr %210, i64 0, i32 7
  %212 = load i32, ptr %211, align 8, !tbaa !88
  %213 = and i32 %212, -1026
  %214 = or disjoint i32 %213, 1024
  store i32 %214, ptr %211, align 8, !tbaa !88
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !104
  %217 = getelementptr inbounds %struct.VEC_edge_base, ptr %216, i64 0, i32 2, i64 0
  %218 = load ptr, ptr %217, align 8, !tbaa !35
  %219 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %220 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  %222 = zext i32 %5 to i64
  %223 = call ptr @build_int_cst(ptr noundef %221, i64 noundef %222) #15
  %224 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %219, ptr noundef %184, ptr noundef %223) #15
  %225 = call ptr @force_gimple_operand(ptr noundef %224, ptr noundef nonnull %14, i8 noundef zeroext 1, ptr noundef null) #15
  %226 = getelementptr inbounds %struct.tree_common, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  %228 = call ptr @build_int_cst(ptr noundef %227, i64 noundef 0) #15
  %229 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %225, ptr noundef %228, ptr noundef null, ptr noundef null) #15
  %230 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 13
  %231 = load i32, ptr %230, align 8, !tbaa !56, !noalias !147
  %232 = and i32 %231, 512
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %202
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !46, !noalias !147
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %236, align 8, !tbaa !60, !noalias !147
  br label %240

240:                                              ; preds = %238, %234, %202
  %241 = phi ptr [ %239, %238 ], [ null, %234 ], [ null, %202 ]
  %242 = icmp eq ptr %241, null
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.gimple_seq_d, ptr %241, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !111, !noalias !147
  br label %246

246:                                              ; preds = %243, %240
  %247 = phi ptr [ %245, %243 ], [ null, %240 ]
  store ptr %247, ptr %13, align 8, !tbaa.struct !76
  %248 = getelementptr inbounds i8, ptr %13, i64 8
  store ptr %241, ptr %248, align 8, !tbaa.struct !138
  %249 = getelementptr inbounds i8, ptr %13, i64 16
  store ptr %195, ptr %249, align 8, !tbaa.struct !139
  %250 = load ptr, ptr %14, align 8, !tbaa !35
  %251 = icmp eq ptr %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  call void @gsi_insert_seq_after(ptr noundef nonnull %13, ptr noundef nonnull %250, i32 noundef 0) #15
  br label %253

253:                                              ; preds = %252, %246
  %254 = load i32, ptr %230, align 8, !tbaa !56, !noalias !150
  %255 = and i32 %254, 512
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %259 = load ptr, ptr %258, align 8, !tbaa !46, !noalias !150
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = load ptr, ptr %259, align 8, !tbaa !60, !noalias !150
  br label %263

263:                                              ; preds = %261, %257, %253
  %264 = phi ptr [ %262, %261 ], [ null, %257 ], [ null, %253 ]
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.gimple_seq_d, ptr %264, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !111, !noalias !150
  br label %269

269:                                              ; preds = %266, %263
  %270 = phi ptr [ %268, %266 ], [ null, %263 ]
  store ptr %270, ptr %13, align 8, !tbaa.struct !76
  store ptr %264, ptr %248, align 8, !tbaa.struct !138
  store ptr %195, ptr %249, align 8, !tbaa.struct !139
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef %229, i32 noundef 0) #15
  %271 = load ptr, ptr %220, align 8, !tbaa !46
  %272 = call ptr @create_tmp_var(ptr noundef %271, ptr noundef nonnull @.str.21) #15
  %273 = call zeroext i8 @add_referenced_var(ptr noundef %272) #15
  %274 = call ptr @force_gimple_operand(ptr noundef %184, ptr noundef nonnull %15, i8 noundef zeroext 0, ptr noundef %272) #15
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 13
  %276 = load i32, ptr %275, align 8, !tbaa !56, !noalias !153
  %277 = and i32 %276, 512
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %269
  %280 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 7
  %281 = load ptr, ptr %280, align 8, !tbaa !46, !noalias !153
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr %281, align 8, !tbaa !60, !noalias !153
  br label %285

285:                                              ; preds = %283, %279, %269
  %286 = phi ptr [ %284, %283 ], [ null, %279 ], [ null, %269 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.gimple_seq_d, ptr %286, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !111, !noalias !153
  br label %291

291:                                              ; preds = %288, %285
  %292 = phi ptr [ %290, %288 ], [ null, %285 ]
  store ptr %292, ptr %13, align 8, !tbaa.struct !76
  store ptr %286, ptr %248, align 8, !tbaa.struct !138
  store ptr %206, ptr %249, align 8, !tbaa.struct !139
  %293 = load ptr, ptr %15, align 8, !tbaa !35
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  call void @gsi_insert_seq_after(ptr noundef nonnull %13, ptr noundef nonnull %293, i32 noundef 0) #15
  br label %296

296:                                              ; preds = %291, %295
  %297 = call ptr @create_phi_node(ptr noundef %272, ptr noundef nonnull %145) #15
  call void @add_phi_arg(ptr noundef %297, ptr noundef %274, ptr noundef %218, i32 noundef 0) #15
  call void @add_phi_arg(ptr noundef %297, ptr noundef %2, ptr noundef %207, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #15
  br label %298

298:                                              ; preds = %296, %177
  %299 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %300 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  %302 = call ptr @build_int_cst(ptr noundef %301, i64 noundef 0) #15
  %303 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %299, ptr noundef %2, ptr noundef %302) #15
  br label %304

304:                                              ; preds = %170, %173, %298
  %305 = phi ptr [ %303, %298 ], [ %176, %173 ], [ %171, %170 ]
  %306 = call fastcc ptr @slpeel_add_loop_guard(ptr noundef %145, ptr noundef %305, ptr noundef %8, ptr noundef %147, ptr noundef %145)
  %307 = icmp eq ptr %57, %24
  %308 = getelementptr inbounds %struct.edge_def, ptr %306, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !74
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !104
  %312 = getelementptr inbounds %struct.VEC_edge_base, ptr %311, i64 0, i32 2, i64 0
  %313 = load ptr, ptr %312, align 8, !tbaa !35
  %314 = getelementptr inbounds %struct.edge_def, ptr %313, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !74
  %316 = getelementptr inbounds %struct.loop, ptr %57, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !93
  %318 = call ptr @single_exit(ptr noundef %57) #15
  %319 = call ptr @split_edge(ptr noundef %318) #15
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !104
  %322 = getelementptr inbounds %struct.VEC_edge_base, ptr %321, i64 0, i32 2, i64 0
  %323 = load ptr, ptr %322, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %317) #15
  %324 = load ptr, ptr %11, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %315) #15
  %325 = load ptr, ptr %12, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  %326 = icmp eq ptr %324, null
  %327 = icmp eq ptr %325, null
  %328 = select i1 %326, i1 true, i1 %327
  br i1 %328, label %465, label %329

329:                                              ; preds = %304
  %330 = getelementptr inbounds %struct.loop, ptr %57, i64 0, i32 3
  %331 = getelementptr inbounds %struct.edge_def, ptr %313, i64 0, i32 6
  %332 = getelementptr inbounds %struct.edge_def, ptr %323, i64 0, i32 6
  br label %333

333:                                              ; preds = %329, %457
  %334 = phi ptr [ %325, %329 ], [ %461, %457 ]
  %335 = phi ptr [ %324, %329 ], [ %459, %457 ]
  %336 = load ptr, ptr %335, align 8, !tbaa !64
  %337 = load ptr, ptr %334, align 8, !tbaa !64
  %338 = getelementptr inbounds %struct.gimple_statement_phi, ptr %336, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !35
  %340 = getelementptr inbounds %struct.tree_ssa_name, ptr %339, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !46
  %342 = call ptr @create_phi_node(ptr noundef %341, ptr noundef %309) #15
  %343 = load ptr, ptr %330, align 8, !tbaa !105
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %343, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !104
  %346 = getelementptr inbounds %struct.VEC_edge_base, ptr %345, i64 0, i32 2, i64 0
  %347 = load ptr, ptr %346, align 8, !tbaa !35
  %348 = getelementptr inbounds %struct.edge_def, ptr %347, i64 0, i32 6
  %349 = load i32, ptr %348, align 4, !tbaa !77
  %350 = getelementptr inbounds %struct.gimple_statement_phi, ptr %336, i64 0, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !46
  %352 = icmp ult i32 %351, %349
  br i1 %352, label %353, label %354

353:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %354

354:                                              ; preds = %353, %333
  %355 = zext i32 %349 to i64
  %356 = getelementptr inbounds %struct.gimple_statement_phi, ptr %336, i64 0, i32 4, i64 %355, i32 0, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !80
  %358 = load ptr, ptr %357, align 8, !tbaa !35
  %359 = load ptr, ptr %330, align 8, !tbaa !105
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %359, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !104
  %362 = getelementptr inbounds %struct.VEC_edge_base, ptr %361, i64 0, i32 2, i64 0
  %363 = load ptr, ptr %362, align 8, !tbaa !35
  %364 = getelementptr inbounds %struct.edge_def, ptr %363, i64 0, i32 6
  %365 = load i32, ptr %364, align 4, !tbaa !77
  %366 = load i32, ptr %350, align 8, !tbaa !46
  %367 = icmp ult i32 %366, %365
  br i1 %367, label %368, label %369

368:                                              ; preds = %354
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %369

369:                                              ; preds = %368, %354
  %370 = zext i32 %365 to i64
  %371 = getelementptr inbounds %struct.gimple_statement_phi, ptr %336, i64 0, i32 4, i64 %370, i32 2
  %372 = load i32, ptr %371, align 8, !tbaa !102
  %373 = call ptr @loop_preheader_edge(ptr noundef %57) #15
  %374 = getelementptr inbounds %struct.edge_def, ptr %373, i64 0, i32 6
  %375 = load i32, ptr %374, align 4, !tbaa !77
  %376 = load i32, ptr %350, align 8, !tbaa !46
  %377 = icmp ult i32 %376, %375
  br i1 %377, label %378, label %379

378:                                              ; preds = %369
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %379

379:                                              ; preds = %378, %369
  %380 = zext i32 %375 to i64
  %381 = getelementptr inbounds %struct.gimple_statement_phi, ptr %336, i64 0, i32 4, i64 %380, i32 0, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !80
  %383 = load ptr, ptr %382, align 8, !tbaa !35
  %384 = call ptr @loop_preheader_edge(ptr noundef %57) #15
  %385 = getelementptr inbounds %struct.edge_def, ptr %384, i64 0, i32 6
  %386 = load i32, ptr %385, align 4, !tbaa !77
  %387 = load i32, ptr %350, align 8, !tbaa !46
  %388 = icmp ult i32 %387, %386
  br i1 %388, label %389, label %390

389:                                              ; preds = %379
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %390

390:                                              ; preds = %389, %379
  %391 = zext i32 %386 to i64
  %392 = getelementptr inbounds %struct.gimple_statement_phi, ptr %336, i64 0, i32 4, i64 %391, i32 2
  %393 = load i32, ptr %392, align 8, !tbaa !102
  call void @add_phi_arg(ptr noundef %342, ptr noundef %358, ptr noundef %323, i32 noundef %372) #15
  call void @add_phi_arg(ptr noundef %342, ptr noundef %383, ptr noundef %306, i32 noundef %393) #15
  %394 = load i32, ptr %331, align 4, !tbaa !77
  %395 = getelementptr inbounds %struct.gimple_statement_phi, ptr %337, i64 0, i32 1
  %396 = load i32, ptr %395, align 8, !tbaa !46
  %397 = icmp ult i32 %396, %394
  br i1 %397, label %398, label %399

398:                                              ; preds = %390
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %399

399:                                              ; preds = %398, %390
  %400 = zext i32 %394 to i64
  %401 = getelementptr inbounds %struct.gimple_statement_phi, ptr %337, i64 0, i32 4, i64 %400, i32 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !80
  %403 = load ptr, ptr %402, align 8, !tbaa !35
  %404 = icmp eq ptr %403, %358
  br i1 %404, label %417, label %405

405:                                              ; preds = %399
  %406 = load i32, ptr %331, align 4, !tbaa !77
  %407 = load i32, ptr %395, align 8, !tbaa !46
  %408 = icmp ult i32 %407, %406
  br i1 %408, label %409, label %410

409:                                              ; preds = %405
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %410

410:                                              ; preds = %409, %405
  %411 = zext i32 %406 to i64
  %412 = getelementptr inbounds %struct.gimple_statement_phi, ptr %337, i64 0, i32 4, i64 %411, i32 0, i32 3
  %413 = load ptr, ptr %412, align 8, !tbaa !80
  %414 = load ptr, ptr %413, align 8, !tbaa !35
  %415 = icmp eq ptr %414, %383
  br i1 %415, label %417, label %416

416:                                              ; preds = %410
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 542, ptr noundef nonnull @.str.1) #15
  br label %417

417:                                              ; preds = %416, %410, %399
  %418 = getelementptr inbounds %struct.gimple_statement_phi, ptr %342, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !35
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %337, ptr noundef %313, ptr noundef %419)
  %420 = load ptr, ptr %338, align 8, !tbaa !35
  %421 = call zeroext i8 @is_gimple_reg(ptr noundef %420) #15
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %457, label %423

423:                                              ; preds = %417
  %424 = load ptr, ptr %338, align 8, !tbaa !35
  %425 = getelementptr inbounds %struct.tree_ssa_name, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !46
  %427 = call ptr @create_phi_node(ptr noundef %426, ptr noundef %319) #15
  %428 = call ptr @single_exit(ptr noundef %57) #15
  call void @add_phi_arg(ptr noundef %427, ptr noundef %358, ptr noundef %428, i32 noundef %372) #15
  %429 = load i32, ptr %332, align 4, !tbaa !77
  %430 = getelementptr inbounds %struct.gimple_statement_phi, ptr %342, i64 0, i32 1
  %431 = load i32, ptr %430, align 8, !tbaa !46
  %432 = icmp ult i32 %431, %429
  br i1 %432, label %433, label %434

433:                                              ; preds = %423
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %434

434:                                              ; preds = %433, %423
  %435 = zext i32 %429 to i64
  %436 = getelementptr inbounds %struct.gimple_statement_phi, ptr %342, i64 0, i32 4, i64 %435, i32 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !80
  %438 = load ptr, ptr %437, align 8, !tbaa !35
  %439 = icmp eq ptr %438, %358
  br i1 %439, label %441, label %440

440:                                              ; preds = %434
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 560, ptr noundef nonnull @.str.1) #15
  br label %441

441:                                              ; preds = %440, %434
  %442 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8, !tbaa !35
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %342, ptr noundef %323, ptr noundef %443)
  br i1 %307, label %447, label %444

444:                                              ; preds = %441
  %445 = call ptr @get_current_def(ptr noundef %358) #15
  %446 = icmp eq ptr %445, null
  br i1 %446, label %457, label %447

447:                                              ; preds = %444, %441
  %448 = phi ptr [ %445, %444 ], [ %358, %441 ]
  %449 = call ptr @get_current_def(ptr noundef %448) #15
  %450 = icmp eq ptr %449, null
  br i1 %450, label %452, label %451

451:                                              ; preds = %447
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 586, ptr noundef nonnull @.str.1) #15
  br label %452

452:                                              ; preds = %451, %447
  %453 = load ptr, ptr %442, align 8, !tbaa !35
  call void @set_current_def(ptr noundef %448, ptr noundef %453) #15
  %454 = getelementptr inbounds %struct.tree_ssa_name, ptr %448, i64 0, i32 3
  %455 = load i32, ptr %454, align 8, !tbaa !46
  %456 = call zeroext i8 @bitmap_set_bit(ptr noundef %58, i32 noundef %455) #15
  br label %457

457:                                              ; preds = %452, %444, %417
  %458 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %335, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !70
  %460 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %334, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !70
  %462 = icmp eq ptr %459, null
  %463 = icmp eq ptr %461, null
  %464 = select i1 %462, i1 true, i1 %463
  br i1 %464, label %465, label %333, !llvm.loop !156

465:                                              ; preds = %457, %304
  %466 = call ptr @single_exit(ptr noundef %56) #15
  %467 = call ptr @split_edge(ptr noundef %466) #15
  %468 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %469 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %468, ptr noundef %2, ptr noundef %3) #15
  %470 = call fastcc ptr @slpeel_add_loop_guard(ptr noundef %319, ptr noundef %469, ptr noundef null, ptr noundef %467, ptr noundef %145)
  %471 = icmp eq ptr %56, %24
  %472 = getelementptr inbounds %struct.edge_def, ptr %470, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !74
  %474 = getelementptr inbounds %struct.basic_block_def, ptr %473, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !104
  %476 = getelementptr inbounds %struct.VEC_edge_base, ptr %475, i64 0, i32 2, i64 0
  %477 = load ptr, ptr %476, align 8, !tbaa !35
  %478 = getelementptr inbounds %struct.edge_def, ptr %477, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !74
  %480 = call ptr @single_exit(ptr noundef %56) #15
  %481 = call ptr @split_edge(ptr noundef %480) #15
  %482 = getelementptr inbounds %struct.basic_block_def, ptr %481, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !104
  %484 = getelementptr inbounds %struct.VEC_edge_base, ptr %483, i64 0, i32 2, i64 0
  %485 = load ptr, ptr %484, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %479) #15
  %486 = load ptr, ptr %10, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  %487 = icmp eq ptr %486, null
  br i1 %487, label %598, label %488

488:                                              ; preds = %465
  %489 = getelementptr inbounds %struct.edge_def, ptr %477, i64 0, i32 6
  %490 = getelementptr inbounds %struct.edge_def, ptr %485, i64 0, i32 6
  br label %491

491:                                              ; preds = %488, %594
  %492 = phi ptr [ %486, %488 ], [ %596, %594 ]
  %493 = load ptr, ptr %492, align 8, !tbaa !64
  %494 = load i32, ptr %489, align 4, !tbaa !77
  %495 = getelementptr inbounds %struct.gimple_statement_phi, ptr %493, i64 0, i32 1
  %496 = load i32, ptr %495, align 8, !tbaa !46
  %497 = icmp ult i32 %496, %494
  br i1 %497, label %498, label %499

498:                                              ; preds = %491
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %499

499:                                              ; preds = %498, %491
  %500 = zext i32 %494 to i64
  %501 = getelementptr inbounds %struct.gimple_statement_phi, ptr %493, i64 0, i32 4, i64 %500, i32 0, i32 3
  %502 = load ptr, ptr %501, align 8, !tbaa !80
  %503 = load ptr, ptr %502, align 8, !tbaa !35
  %504 = load i64, ptr %503, align 8
  %505 = and i64 %504, 65535
  %506 = icmp eq i64 %505, 141
  br i1 %506, label %507, label %594

507:                                              ; preds = %499
  %508 = call ptr @get_current_def(ptr noundef nonnull %503) #15
  %509 = getelementptr inbounds %struct.gimple_statement_phi, ptr %493, i64 0, i32 3
  %510 = load ptr, ptr %509, align 8, !tbaa !35
  %511 = getelementptr inbounds %struct.tree_ssa_name, ptr %510, i64 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !46
  %513 = call ptr @create_phi_node(ptr noundef %512, ptr noundef %473) #15
  %514 = icmp eq ptr %508, null
  br i1 %514, label %517, label %515

515:                                              ; preds = %507
  %516 = call ptr @get_current_def(ptr noundef nonnull %508) #15
  br label %517

517:                                              ; preds = %515, %507
  %518 = phi ptr [ %508, %515 ], [ %503, %507 ]
  %519 = phi ptr [ %516, %515 ], [ null, %507 ]
  %520 = select i1 %471, ptr %518, ptr %503
  %521 = select i1 %471, ptr %503, ptr %518
  %522 = icmp eq ptr %519, null
  %523 = select i1 %522, ptr %521, ptr %519
  call void @add_phi_arg(ptr noundef %513, ptr noundef nonnull %520, ptr noundef %485, i32 noundef 0) #15
  call void @add_phi_arg(ptr noundef %513, ptr noundef nonnull %523, ptr noundef %470, i32 noundef 0) #15
  %524 = load i32, ptr %489, align 4, !tbaa !77
  %525 = load i32, ptr %495, align 8, !tbaa !46
  %526 = icmp ult i32 %525, %524
  br i1 %526, label %527, label %528

527:                                              ; preds = %517
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %528

528:                                              ; preds = %527, %517
  %529 = zext i32 %524 to i64
  %530 = getelementptr inbounds %struct.gimple_statement_phi, ptr %493, i64 0, i32 4, i64 %529, i32 0, i32 3
  %531 = load ptr, ptr %530, align 8, !tbaa !80
  %532 = load ptr, ptr %531, align 8, !tbaa !35
  %533 = icmp eq ptr %532, %503
  br i1 %533, label %535, label %534

534:                                              ; preds = %528
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.1) #15
  br label %535

535:                                              ; preds = %534, %528
  %536 = getelementptr inbounds %struct.gimple_statement_phi, ptr %513, i64 0, i32 3
  %537 = load ptr, ptr %536, align 8, !tbaa !35
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %493, ptr noundef %477, ptr noundef %537)
  %538 = load ptr, ptr %509, align 8, !tbaa !35
  %539 = getelementptr inbounds %struct.tree_ssa_name, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !46
  %541 = call ptr @create_phi_node(ptr noundef %540, ptr noundef %481) #15
  %542 = call ptr @single_exit(ptr noundef %56) #15
  call void @add_phi_arg(ptr noundef %541, ptr noundef nonnull %520, ptr noundef %542, i32 noundef 0) #15
  %543 = load i32, ptr %490, align 4, !tbaa !77
  %544 = getelementptr inbounds %struct.gimple_statement_phi, ptr %513, i64 0, i32 1
  %545 = load i32, ptr %544, align 8, !tbaa !46
  %546 = icmp ult i32 %545, %543
  br i1 %546, label %547, label %548

547:                                              ; preds = %535
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %548

548:                                              ; preds = %547, %535
  %549 = zext i32 %543 to i64
  %550 = getelementptr inbounds %struct.gimple_statement_phi, ptr %513, i64 0, i32 4, i64 %549, i32 0, i32 3
  %551 = load ptr, ptr %550, align 8, !tbaa !80
  %552 = load ptr, ptr %551, align 8, !tbaa !35
  %553 = icmp eq ptr %552, %520
  br i1 %553, label %555, label %554

554:                                              ; preds = %548
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 705, ptr noundef nonnull @.str.1) #15
  br label %555

555:                                              ; preds = %554, %548
  %556 = getelementptr inbounds %struct.gimple_statement_phi, ptr %541, i64 0, i32 3
  %557 = load ptr, ptr %556, align 8, !tbaa !35
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %513, ptr noundef %485, ptr noundef %557)
  %558 = icmp eq ptr %523, %519
  br i1 %558, label %594, label %559

559:                                              ; preds = %555
  %560 = load ptr, ptr %509, align 8, !tbaa !35
  %561 = getelementptr inbounds %struct.tree_ssa_name, ptr %560, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !46
  %563 = load ptr, ptr %470, align 8, !tbaa !101
  %564 = call ptr @create_phi_node(ptr noundef %562, ptr noundef %563) #15
  %565 = load ptr, ptr %470, align 8, !tbaa !101
  %566 = load ptr, ptr %565, align 8, !tbaa !134
  %567 = icmp eq ptr %566, null
  br i1 %567, label %570, label %568

568:                                              ; preds = %559
  %569 = load i32, ptr %566, align 8, !tbaa !72
  br label %570

570:                                              ; preds = %568, %559
  %571 = phi i32 [ %569, %568 ], [ 0, %559 ]
  %572 = icmp eq i32 %571, 1
  br i1 %572, label %574, label %573

573:                                              ; preds = %570
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.1) #15
  br label %574

574:                                              ; preds = %573, %570
  %575 = getelementptr inbounds %struct.edge_def, ptr %470, i64 0, i32 6
  %576 = load ptr, ptr %470, align 8, !tbaa !101
  %577 = load ptr, ptr %576, align 8, !tbaa !134
  %578 = getelementptr inbounds %struct.VEC_edge_base, ptr %577, i64 0, i32 2, i64 0
  %579 = load ptr, ptr %578, align 8, !tbaa !35
  call void @add_phi_arg(ptr noundef %564, ptr noundef nonnull %523, ptr noundef %579, i32 noundef 0) #15
  %580 = load i32, ptr %575, align 4, !tbaa !77
  %581 = load i32, ptr %544, align 8, !tbaa !46
  %582 = icmp ult i32 %581, %580
  br i1 %582, label %583, label %584

583:                                              ; preds = %574
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %584

584:                                              ; preds = %583, %574
  %585 = zext i32 %580 to i64
  %586 = getelementptr inbounds %struct.gimple_statement_phi, ptr %513, i64 0, i32 4, i64 %585, i32 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !80
  %588 = load ptr, ptr %587, align 8, !tbaa !35
  %589 = icmp eq ptr %588, %523
  br i1 %589, label %591, label %590

590:                                              ; preds = %584
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 743, ptr noundef nonnull @.str.1) #15
  br label %591

591:                                              ; preds = %590, %584
  %592 = getelementptr inbounds %struct.gimple_statement_phi, ptr %564, i64 0, i32 3
  %593 = load ptr, ptr %592, align 8, !tbaa !35
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %513, ptr noundef nonnull %470, ptr noundef %593)
  br label %594

594:                                              ; preds = %591, %555, %499
  %595 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %492, i64 0, i32 2
  %596 = load ptr, ptr %595, align 8, !tbaa !70
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %491, !llvm.loop !157

598:                                              ; preds = %594, %465
  br i1 %148, label %600, label %599

599:                                              ; preds = %598
  call void @slpeel_make_loop_iterate_ntimes(ptr noundef %57, ptr noundef %2)
  br label %600

600:                                              ; preds = %599, %598
  %601 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %627, label %603

603:                                              ; preds = %600
  %604 = load ptr, ptr @adjust_vec, align 8, !tbaa !35
  %605 = icmp eq ptr %604, null
  br i1 %605, label %606, label %607

606:                                              ; preds = %603
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.1) #15
  br label %607

607:                                              ; preds = %606, %603
  br label %608

608:                                              ; preds = %607, %616
  %609 = load ptr, ptr @adjust_vec, align 8
  %610 = icmp eq ptr %609, null
  br i1 %610, label %613, label %611

611:                                              ; preds = %608
  %612 = load i32, ptr %609, align 8, !tbaa !158
  br label %613

613:                                              ; preds = %611, %608
  %614 = phi i32 [ %612, %611 ], [ 0, %608 ]
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %624, label %616

616:                                              ; preds = %613
  %617 = load i32, ptr %609, align 8, !tbaa !158
  %618 = add i32 %617, -1
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %609, i64 0, i32 2, i64 %619
  call fastcc void @adjust_debug_stmts_now(ptr noundef nonnull %620)
  %621 = load ptr, ptr @adjust_vec, align 8
  %622 = load i32, ptr %621, align 8, !tbaa !158
  %623 = add i32 %622, -1
  store i32 %623, ptr %621, align 8, !tbaa !158
  br label %608, !llvm.loop !160

624:                                              ; preds = %613
  br i1 %610, label %626, label %625

625:                                              ; preds = %624
  call void @vec_stack_free(ptr noundef nonnull %609) #15
  br label %626

626:                                              ; preds = %625, %624
  store ptr null, ptr @adjust_vec, align 8, !tbaa !35
  br label %627

627:                                              ; preds = %600, %626
  call void @bitmap_obstack_free(ptr noundef %58) #15
  call void @delete_update_ssa() #15
  br label %628

628:                                              ; preds = %26, %30, %41, %9, %627
  %629 = phi ptr [ %24, %627 ], [ null, %9 ], [ null, %41 ], [ null, %30 ], [ null, %26 ]
  ret ptr %629
}

declare void @scev_reset() local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_do_peeling_for_alignment(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !113
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %10 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 37, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %1
  tail call void @initialize_original_copy_tables() #15
  %12 = tail call fastcc ptr @vect_build_loop_niters(ptr noundef nonnull %0, ptr noundef null)
  %13 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  %15 = load ptr, ptr %0, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %16 = load ptr, ptr %14, align 8, !tbaa !162
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !115
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp ugt i32 %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr @stmt_vec_info_vec, align 8
  %31 = add i32 %18, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %30, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %29, %11
  %36 = phi ptr [ %34, %29 ], [ null, %11 ]
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !167
  %39 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !46
  %41 = lshr i32 %40, 3
  %42 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.data_reference, ptr %14, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !168
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 14
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %47) #15
  br label %58

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %58

58:                                               ; preds = %53, %51
  %59 = phi i32 [ %52, %51 ], [ %57, %53 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !46
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1023
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !169
  %72 = icmp eq ptr %71, null
  br i1 %72, label %93, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %71, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !46
  %76 = icmp ne i32 %75, 0
  tail call void @llvm.assume(i1 %76)
  %77 = load ptr, ptr @stmt_vec_info_vec, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32, ptr %77, align 8, !tbaa !115
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi i32 [ %80, %79 ], [ 0, %73 ]
  %83 = icmp ugt i32 %75, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %85

85:                                               ; preds = %84, %81
  %86 = load ptr, ptr @stmt_vec_info_vec, align 8
  %87 = add i32 %75, -1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %86, i64 0, i32 2, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct._stmt_vec_info, ptr %90, i64 0, i32 19
  %92 = load i32, ptr %91, align 8, !tbaa !170
  br label %93

93:                                               ; preds = %85, %58
  %94 = phi i32 [ %92, %85 ], [ 1, %58 ]
  %95 = tail call ptr @loop_preheader_edge(ptr noundef %15) #15
  %96 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  %97 = load i32, ptr %96, align 8, !tbaa !132
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = udiv i32 %97, %63
  %101 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.25, i32 noundef %97)
  br label %106

106:                                              ; preds = %103, %99
  %107 = sub nsw i32 %69, %100
  %108 = add nsw i32 %69, -1
  %109 = and i32 %107, %108
  %110 = sdiv i32 %109, %94
  %111 = sext i32 %110 to i64
  %112 = tail call ptr @build_int_cst(ptr noundef %43, i64 noundef %111) #15
  br label %148

113:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !35
  %114 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %16, ptr noundef nonnull %3, ptr noundef null, ptr noundef %15) #15
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = getelementptr inbounds %struct.tree_type, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !171
  %120 = call i64 @tree_low_cst(ptr noundef %118, i32 noundef 1) #15
  %121 = trunc i64 %120 to i32
  %122 = call ptr %119(i32 noundef %121, i32 noundef 1) #15
  %123 = add nsw i32 %41, -1
  %124 = sext i32 %123 to i64
  %125 = call ptr @build_int_cst(ptr noundef %122, i64 noundef %124) #15
  %126 = udiv i32 %41, %69
  %127 = zext nneg i32 %126 to i64
  %128 = call i32 @exact_log2(i64 noundef %127) #15
  %129 = sext i32 %128 to i64
  %130 = call ptr @build_int_cst(ptr noundef %122, i64 noundef %129) #15
  %131 = shl i64 4294967296, %67
  %132 = add i64 %131, -4294967296
  %133 = ashr exact i64 %132, 32
  %134 = call ptr @build_int_cst(ptr noundef %122, i64 noundef %133) #15
  %135 = ashr exact i64 %131, 32
  %136 = call ptr @build_int_cst(ptr noundef %122, i64 noundef %135) #15
  %137 = load ptr, ptr %3, align 8, !tbaa !35
  %138 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %95, ptr noundef %137) #15
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2016, ptr noundef nonnull @.str.1) #15
  br label %141

141:                                              ; preds = %140, %113
  %142 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %122, ptr noundef %114) #15
  %143 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %122, ptr noundef %142, ptr noundef %125) #15
  %144 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %122, ptr noundef %143, ptr noundef %130) #15
  %145 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %122, ptr noundef %136, ptr noundef %144) #15
  %146 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %122, ptr noundef %145, ptr noundef %134) #15
  %147 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %43, ptr noundef %146) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %148

148:                                              ; preds = %141, %106
  %149 = phi ptr [ %112, %106 ], [ %147, %141 ]
  %150 = load i64, ptr %12, align 8
  %151 = and i64 %150, 65535
  %152 = icmp eq i64 %151, 23
  br i1 %152, label %155, label %153

153:                                              ; preds = %148
  %154 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef %43, ptr noundef %149, ptr noundef nonnull %12) #15
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %154, %153 ], [ %149, %148 ]
  %157 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %161 = call i64 @fwrite(ptr nonnull @.str.26, i64 24, i64 1, ptr %160)
  %162 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %162, ptr noundef %156, i32 noundef 2) #15
  br label %163

163:                                              ; preds = %159, %155
  %164 = call ptr @create_tmp_var(ptr noundef %43, ptr noundef nonnull @.str.27) #15
  %165 = call zeroext i8 @add_referenced_var(ptr noundef %164) #15
  store ptr null, ptr %2, align 8, !tbaa !35
  %166 = call ptr @force_gimple_operand(ptr noundef %156, ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef %164) #15
  %167 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %168 = call zeroext i8 @types_compatible_p(ptr noundef %167, ptr noundef %43) #15
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !35
  %171 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %172 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %171, ptr noundef %156) #15
  %173 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %174 = call ptr @create_tmp_var(ptr noundef %173, ptr noundef nonnull @.str.27) #15
  %175 = call zeroext i8 @add_referenced_var(ptr noundef %174) #15
  %176 = call ptr @force_gimple_operand(ptr noundef %172, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %174) #15
  %177 = load ptr, ptr %4, align 8, !tbaa !35
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %170
  call void @gimple_seq_add_seq(ptr noundef nonnull %2, ptr noundef nonnull %177) #15
  br label %180

180:                                              ; preds = %179, %170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %181

181:                                              ; preds = %163, %180
  %182 = phi ptr [ %176, %180 ], [ %166, %163 ]
  %183 = load ptr, ptr %2, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %95, ptr noundef nonnull %183) #15
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2067, ptr noundef nonnull @.str.1) #15
  br label %189

189:                                              ; preds = %181, %185, %188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %190 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %191 = load i32, ptr %190, align 8, !tbaa !133
  %192 = call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %191)
  %193 = call ptr @loop_preheader_edge(ptr noundef %5) #15
  %194 = call fastcc ptr @slpeel_tree_peel_loop_to_edge(ptr noundef %5, ptr noundef %193, ptr noundef %166, ptr noundef nonnull %12, i8 noundef zeroext 1, i32 noundef %192, i8 noundef zeroext 1, ptr noundef null, ptr noundef null)
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2158, ptr noundef nonnull @.str.1) #15
  br label %197

197:                                              ; preds = %189, %196
  %198 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !124
  %200 = getelementptr inbounds %struct.tree_common, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %201, ptr noundef %199, ptr noundef %166) #15
  store ptr %202, ptr %198, align 8, !tbaa !124
  %203 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %204 = load ptr, ptr %203, align 8, !tbaa !179
  %205 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #15
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %197
  %208 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %209 = call i64 @fwrite(ptr nonnull @.str.28, i64 31, i64 1, ptr %208)
  br label %210

210:                                              ; preds = %207, %197
  %211 = icmp eq ptr %204, null
  br label %212

212:                                              ; preds = %224, %210
  %213 = phi i32 [ 0, %210 ], [ %237, %224 ]
  br i1 %211, label %221, label %214

214:                                              ; preds = %212
  %215 = load i32, ptr %204, align 8, !tbaa !180
  %216 = icmp ugt i32 %215, %213
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = zext i32 %213 to i64
  %219 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %204, i64 0, i32 2, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !35
  br label %221

221:                                              ; preds = %217, %214, %212
  %222 = phi ptr [ %220, %217 ], [ null, %214 ], [ null, %212 ]
  %223 = phi i1 [ false, %217 ], [ true, %214 ], [ true, %212 ]
  br i1 %223, label %238, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.data_reference, ptr %222, i64 0, i32 4, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !182
  %227 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %228 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %227, ptr noundef %182) #15
  %229 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %230 = getelementptr inbounds %struct.data_reference, ptr %222, i64 0, i32 4, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !183
  %232 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %229, ptr noundef %231) #15
  %233 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %227, ptr noundef %228, ptr noundef %232) #15
  %234 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %235 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %234, ptr noundef %226) #15
  %236 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %234, ptr noundef %235, ptr noundef %233) #15
  store ptr %236, ptr %225, align 8, !tbaa !182
  %237 = add i32 %213, 1
  br label %212, !llvm.loop !184

238:                                              ; preds = %221
  call void @scev_reset() #15
  call void @free_original_copy_tables() #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @vect_build_loop_niters(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !35
  %5 = load ptr, ptr %0, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = tail call ptr @unshare_expr(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef nonnull @.str.24) #15
  %12 = tail call zeroext i8 @add_referenced_var(ptr noundef %11) #15
  %13 = call ptr @force_gimple_operand(ptr noundef %8, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %11) #15
  %14 = call ptr @loop_preheader_edge(ptr noundef %5) #15
  %15 = load ptr, ptr %4, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef nonnull %15) #15
  br label %25

21:                                               ; preds = %17
  %22 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %14, ptr noundef nonnull %15) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1491, ptr noundef nonnull @.str.1) #15
  br label %25

25:                                               ; preds = %24, %21, %20, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %13
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_loop_versioning(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca [20 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store ptr null, ptr %9, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !133
  %16 = tail call fastcc i32 @conservative_cost_threshold(ptr noundef nonnull %0, i32 noundef %15)
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = zext i32 %16 to i64
  %21 = tail call ptr @build_int_cst(ptr noundef %19, i64 noundef %20) #15
  %22 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %17, ptr noundef %13, ptr noundef %21) #15
  store ptr %22, ptr %2, align 8, !tbaa !35
  %23 = tail call ptr @force_gimple_operand(ptr noundef %22, ptr noundef %3, i8 noundef zeroext 0, ptr noundef null) #15
  store ptr %23, ptr %2, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, ptr %25, align 8, !tbaa !127
  br label %29

29:                                               ; preds = %4, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %4 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %107, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !113
  %34 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !185
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = add nsw i32 %35, 1
  %39 = and i32 %38, %35
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2226, ptr noundef nonnull @.str.1) #15
  br label %42

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !171
  %47 = tail call i64 @tree_low_cst(ptr noundef %45, i32 noundef 1) #15
  %48 = trunc i64 %47 to i32
  %49 = tail call ptr %46(i32 noundef %48, i32 noundef 0) #15
  br label %50

50:                                               ; preds = %85, %42
  %51 = phi ptr [ null, %42 ], [ %86, %85 ]
  %52 = phi i32 [ 0, %42 ], [ %87, %85 ]
  br i1 %26, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %25, align 8, !tbaa !127
  %55 = icmp ugt i32 %54, %52
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = zext i32 %52 to i64
  %58 = getelementptr inbounds %struct.VEC_gimple_base, ptr %25, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  br label %60

60:                                               ; preds = %56, %53, %50
  %61 = phi ptr [ %59, %56 ], [ null, %53 ], [ null, %50 ]
  %62 = phi i1 [ false, %56 ], [ true, %53 ], [ true, %50 ]
  br i1 %62, label %88, label %63

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !35
  %64 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %61, ptr noundef nonnull %6, ptr noundef null, ptr noundef %33) #15
  %65 = load ptr, ptr %6, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  call void @gimple_seq_add_seq(ptr noundef %3, ptr noundef nonnull %65) #15
  br label %68

68:                                               ; preds = %67, %63
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.30, i32 noundef %52)
  %70 = call ptr @create_tmp_var(ptr noundef %49, ptr noundef nonnull %5) #15
  %71 = call zeroext i8 @add_referenced_var(ptr noundef %70) #15
  %72 = load ptr, ptr @cfun, align 8, !tbaa !35
  %73 = call ptr @make_ssa_name_fn(ptr noundef %72, ptr noundef %70, ptr noundef null) #15
  %74 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 116, ptr noundef %73, ptr noundef %64, ptr noundef null) #15
  %75 = getelementptr inbounds %struct.tree_ssa_name, ptr %73, i64 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef %3, ptr noundef %74) #15
  %76 = icmp eq ptr %51, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %68
  %78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.31, i32 noundef %52)
  %79 = call ptr @create_tmp_var(ptr noundef %49, ptr noundef nonnull %5) #15
  %80 = call zeroext i8 @add_referenced_var(ptr noundef %79) #15
  %81 = load ptr, ptr @cfun, align 8, !tbaa !35
  %82 = call ptr @make_ssa_name_fn(ptr noundef %81, ptr noundef %79, ptr noundef null) #15
  %83 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 87, ptr noundef %82, ptr noundef nonnull %51, ptr noundef %73) #15
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %82, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef %3, ptr noundef %83) #15
  br label %85

85:                                               ; preds = %77, %68
  %86 = phi ptr [ %82, %77 ], [ %73, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %87 = add i32 %52, 1
  br label %50, !llvm.loop !186

88:                                               ; preds = %60
  %89 = sext i32 %35 to i64
  %90 = call ptr @build_int_cst(ptr noundef %49, i64 noundef %89) #15
  %91 = call ptr @create_tmp_var(ptr noundef %49, ptr noundef nonnull @.str.32) #15
  %92 = call zeroext i8 @add_referenced_var(ptr noundef %91) #15
  %93 = load ptr, ptr @cfun, align 8, !tbaa !35
  %94 = call ptr @make_ssa_name_fn(ptr noundef %93, ptr noundef %91, ptr noundef null) #15
  %95 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %94, ptr noundef %51, ptr noundef %90) #15
  %96 = getelementptr inbounds %struct.tree_ssa_name, ptr %94, i64 0, i32 2
  store ptr %95, ptr %96, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef %3, ptr noundef %95) #15
  %97 = call ptr @build_int_cst(ptr noundef %49, i64 noundef 0) #15
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %99 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %98, ptr noundef %94, ptr noundef %97) #15
  %100 = load ptr, ptr %2, align 8, !tbaa !35
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %88
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %103, ptr noundef nonnull %100, ptr noundef %99) #15
  br label %105

105:                                              ; preds = %88, %102
  %106 = phi ptr [ %104, %102 ], [ %99, %88 ]
  store ptr %106, ptr %2, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %107

107:                                              ; preds = %105, %29
  %108 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !129
  %110 = icmp eq ptr %109, null
  br i1 %110, label %273, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %109, align 8, !tbaa !130
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %273, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %0, align 8, !tbaa !113
  %116 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %117 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !125
  %119 = sext i32 %118 to i64
  %120 = call ptr @build_int_cst(ptr noundef %116, i64 noundef %119) #15
  br i1 %110, label %273, label %121

121:                                              ; preds = %114
  %122 = load i32, ptr %109, align 8, !tbaa !130
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %273, label %124

124:                                              ; preds = %121, %260
  %125 = phi i32 [ %262, %260 ], [ 0, %121 ]
  br i1 %110, label %133, label %126

126:                                              ; preds = %124
  %127 = load i32, ptr %109, align 8, !tbaa !130
  %128 = icmp ugt i32 %127, %125
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = zext i32 %125 to i64
  %131 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %109, i64 0, i32 2, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  br label %133

133:                                              ; preds = %129, %126, %124
  %134 = phi ptr [ %132, %129 ], [ null, %126 ], [ null, %124 ]
  %135 = phi i1 [ false, %129 ], [ true, %126 ], [ true, %124 ]
  br i1 %135, label %263, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %134, align 8, !tbaa !187
  %138 = load ptr, ptr %137, align 8, !tbaa !162
  %139 = getelementptr inbounds %struct.gimple_statement_base, ptr %138, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !46
  %141 = icmp ne i32 %140, 0
  call void @llvm.assume(i1 %141)
  %142 = load ptr, ptr @stmt_vec_info_vec, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = load i32, ptr %142, align 8, !tbaa !115
  br label %146

146:                                              ; preds = %144, %136
  %147 = phi i32 [ %145, %144 ], [ 0, %136 ]
  %148 = icmp ugt i32 %140, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %150

150:                                              ; preds = %149, %146
  %151 = load ptr, ptr @stmt_vec_info_vec, align 8
  %152 = add i32 %140, -1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %151, i64 0, i32 2, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !35
  %156 = getelementptr inbounds %struct._stmt_vec_info, ptr %155, i64 0, i32 17
  %157 = load ptr, ptr %156, align 8, !tbaa !169
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.gimple_statement_base, ptr %157, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !46
  %162 = icmp ne i32 %161, 0
  call void @llvm.assume(i1 %162)
  %163 = icmp eq ptr %151, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = load i32, ptr %151, align 8, !tbaa !115
  br label %166

166:                                              ; preds = %164, %159
  %167 = phi i32 [ %165, %164 ], [ 0, %159 ]
  %168 = icmp ugt i32 %161, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %170

170:                                              ; preds = %169, %166
  %171 = load ptr, ptr @stmt_vec_info_vec, align 8
  %172 = add i32 %161, -1
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %171, i64 0, i32 2, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct._stmt_vec_info, ptr %175, i64 0, i32 7
  %177 = load ptr, ptr %176, align 8, !tbaa !189
  br label %178

178:                                              ; preds = %170, %150
  %179 = phi ptr [ %177, %170 ], [ %137, %150 ]
  %180 = phi ptr [ %157, %170 ], [ %138, %150 ]
  %181 = getelementptr inbounds %struct.data_dependence_relation, ptr %134, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !190
  %183 = load ptr, ptr %182, align 8, !tbaa !162
  %184 = getelementptr inbounds %struct.gimple_statement_base, ptr %183, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !46
  %186 = icmp ne i32 %185, 0
  call void @llvm.assume(i1 %186)
  %187 = load ptr, ptr @stmt_vec_info_vec, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %178
  %190 = load i32, ptr %187, align 8, !tbaa !115
  br label %191

191:                                              ; preds = %189, %178
  %192 = phi i32 [ %190, %189 ], [ 0, %178 ]
  %193 = icmp ugt i32 %185, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %195

195:                                              ; preds = %194, %191
  %196 = load ptr, ptr @stmt_vec_info_vec, align 8
  %197 = add i32 %185, -1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %196, i64 0, i32 2, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !35
  %201 = getelementptr inbounds %struct._stmt_vec_info, ptr %200, i64 0, i32 17
  %202 = load ptr, ptr %201, align 8, !tbaa !169
  %203 = icmp eq ptr %202, null
  br i1 %203, label %223, label %204

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.gimple_statement_base, ptr %202, i64 0, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !46
  %207 = icmp ne i32 %206, 0
  call void @llvm.assume(i1 %207)
  %208 = icmp eq ptr %196, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = load i32, ptr %196, align 8, !tbaa !115
  br label %211

211:                                              ; preds = %209, %204
  %212 = phi i32 [ %210, %209 ], [ 0, %204 ]
  %213 = icmp ugt i32 %206, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %215

215:                                              ; preds = %214, %211
  %216 = load ptr, ptr @stmt_vec_info_vec, align 8
  %217 = add i32 %206, -1
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %216, i64 0, i32 2, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !35
  %221 = getelementptr inbounds %struct._stmt_vec_info, ptr %220, i64 0, i32 7
  %222 = load ptr, ptr %221, align 8, !tbaa !189
  br label %223

223:                                              ; preds = %215, %195
  %224 = phi ptr [ %222, %215 ], [ %182, %195 ]
  %225 = phi ptr [ %202, %215 ], [ %183, %195 ]
  %226 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %180, ptr noundef %3, ptr noundef null, ptr noundef %115) #15
  %227 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %225, ptr noundef %3, ptr noundef null, ptr noundef %115) #15
  %228 = call fastcc ptr @vect_vfa_segment_size(ptr noundef %179, ptr noundef %120)
  %229 = call fastcc ptr @vect_vfa_segment_size(ptr noundef %224, ptr noundef %120)
  %230 = call zeroext i8 @vect_print_dump_info(i32 noundef 5) #15
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %223
  %233 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %234 = call i64 @fwrite(ptr nonnull @.str.33, i64 41, i64 1, ptr %233)
  %235 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %236 = getelementptr inbounds %struct.data_reference, ptr %179, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !168
  call void @print_generic_expr(ptr noundef %235, ptr noundef %237, i32 noundef 2) #15
  %238 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %239 = call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %238)
  %240 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %241 = getelementptr inbounds %struct.data_reference, ptr %224, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !168
  call void @print_generic_expr(ptr noundef %240, ptr noundef %242, i32 noundef 2) #15
  br label %243

243:                                              ; preds = %232, %223
  %244 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %245 = getelementptr inbounds %struct.tree_common, ptr %226, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %246, ptr noundef %226, ptr noundef %228) #15
  %248 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %244, ptr noundef %247, ptr noundef %227) #15
  %249 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %250 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  %252 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %251, ptr noundef %227, ptr noundef %229) #15
  %253 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %249, ptr noundef %252, ptr noundef %226) #15
  %254 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %244, ptr noundef %248, ptr noundef %253) #15
  %255 = load ptr, ptr %2, align 8, !tbaa !35
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %243
  %258 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %259 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %258, ptr noundef nonnull %255, ptr noundef %254) #15
  br label %260

260:                                              ; preds = %257, %243
  %261 = phi ptr [ %259, %257 ], [ %254, %243 ]
  store ptr %261, ptr %2, align 8, !tbaa !35
  %262 = add i32 %125, 1
  br label %124, !llvm.loop !191

263:                                              ; preds = %133
  %264 = call zeroext i8 @vect_print_dump_info(i32 noundef 1) #15
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  br i1 %110, label %270, label %268

268:                                              ; preds = %266
  %269 = load i32, ptr %109, align 8, !tbaa !130
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %269, %268 ], [ 0, %266 ]
  %272 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef nonnull @.str.35, i32 noundef %271)
  br label %273

273:                                              ; preds = %114, %107, %270, %263, %121, %111
  %274 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %275 = load ptr, ptr %2, align 8, !tbaa !35
  %276 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %277 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %274, ptr noundef %275, ptr noundef %276) #15
  store ptr %277, ptr %2, align 8, !tbaa !35
  %278 = call ptr @force_gimple_operand(ptr noundef %277, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #15
  store ptr %278, ptr %2, align 8, !tbaa !35
  %279 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef %3, ptr noundef %279) #15
  %280 = icmp eq i8 %1, 0
  br i1 %280, label %362, label %281

281:                                              ; preds = %273
  call void @initialize_original_copy_tables() #15
  %282 = load ptr, ptr %2, align 8, !tbaa !35
  %283 = call ptr @loop_version(ptr noundef %11, ptr noundef %282, ptr noundef nonnull %7, i32 noundef 8000, i32 noundef 8000, i32 noundef 2000, i8 noundef zeroext 1) #15
  call void @free_original_copy_tables() #15
  %284 = call ptr @single_exit(ptr noundef %11) #15
  %285 = getelementptr inbounds %struct.edge_def, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !74
  %287 = load ptr, ptr %286, align 8, !tbaa !134
  %288 = icmp eq ptr %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %281
  %290 = load i32, ptr %287, align 8, !tbaa !72
  %291 = icmp eq i32 %290, 2
  br i1 %291, label %293, label %292

292:                                              ; preds = %281, %289
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2543, ptr noundef nonnull @.str.1) #15
  br label %293

293:                                              ; preds = %289, %292
  %294 = call ptr @single_exit(ptr noundef %11) #15
  %295 = call ptr @split_edge(ptr noundef %294) #15
  %296 = call ptr @single_exit(ptr noundef %11) #15
  %297 = getelementptr inbounds %struct.basic_block_def, ptr %295, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !104
  %299 = getelementptr inbounds %struct.VEC_edge_base, ptr %298, i64 0, i32 2, i64 0
  %300 = load ptr, ptr %299, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef nonnull %286) #15
  %301 = load ptr, ptr %10, align 8, !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  %302 = icmp eq ptr %301, null
  br i1 %302, label %336, label %303

303:                                              ; preds = %293
  %304 = getelementptr inbounds %struct.edge_def, ptr %300, i64 0, i32 6
  br label %305

305:                                              ; preds = %303, %327
  %306 = phi ptr [ %301, %303 ], [ %334, %327 ]
  %307 = load ptr, ptr %306, align 8, !tbaa !64
  %308 = getelementptr inbounds %struct.gimple_statement_phi, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !35
  %310 = getelementptr inbounds %struct.tree_ssa_name, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !46
  %312 = call ptr @create_phi_node(ptr noundef %311, ptr noundef %295) #15
  %313 = load i32, ptr %304, align 4, !tbaa !77
  %314 = getelementptr inbounds %struct.gimple_statement_phi, ptr %307, i64 0, i32 1
  %315 = load i32, ptr %314, align 8, !tbaa !46
  %316 = icmp ult i32 %315, %313
  br i1 %316, label %317, label %318

317:                                              ; preds = %305
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %318

318:                                              ; preds = %305, %317
  %319 = zext i32 %313 to i64
  %320 = getelementptr inbounds %struct.gimple_statement_phi, ptr %307, i64 0, i32 4, i64 %319, i32 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !80
  %322 = load ptr, ptr %321, align 8, !tbaa !35
  %323 = load i32, ptr %304, align 4, !tbaa !77
  %324 = load i32, ptr %314, align 8, !tbaa !46
  %325 = icmp ult i32 %324, %323
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %327

327:                                              ; preds = %318, %326
  %328 = zext i32 %323 to i64
  %329 = getelementptr inbounds %struct.gimple_statement_phi, ptr %307, i64 0, i32 4, i64 %328, i32 2
  %330 = load i32, ptr %329, align 8, !tbaa !102
  call void @add_phi_arg(ptr noundef %312, ptr noundef %322, ptr noundef %296, i32 noundef %330) #15
  %331 = getelementptr inbounds %struct.gimple_statement_phi, ptr %312, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !35
  call fastcc void @adjust_phi_and_debug_stmts(ptr noundef %307, ptr noundef %300, ptr noundef %332)
  %333 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %306, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !70
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %305, !llvm.loop !192

336:                                              ; preds = %327, %293
  call void @update_ssa(i32 noundef 2048) #15
  %337 = load ptr, ptr %3, align 8, !tbaa !35
  %338 = icmp eq ptr %337, null
  br i1 %338, label %361, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr %7, align 8, !tbaa !35
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 13
  %342 = load i32, ptr %341, align 8, !tbaa !56, !noalias !193
  %343 = and i32 %342, 512
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %339
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 7
  %347 = load ptr, ptr %346, align 8, !tbaa !46, !noalias !193
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %347, align 8, !tbaa !60, !noalias !193
  br label %351

351:                                              ; preds = %349, %345, %339
  %352 = phi ptr [ %350, %349 ], [ null, %345 ], [ null, %339 ]
  %353 = icmp eq ptr %352, null
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.gimple_seq_d, ptr %352, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !111, !noalias !193
  br label %357

357:                                              ; preds = %351, %354
  %358 = phi ptr [ %356, %354 ], [ null, %351 ]
  store ptr %358, ptr %8, align 8, !tbaa.struct !76
  %359 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %352, ptr %359, align 8, !tbaa.struct !138
  %360 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr %340, ptr %360, align 8, !tbaa.struct !139
  call void @gsi_insert_seq_before(ptr noundef nonnull %8, ptr noundef nonnull %337, i32 noundef 1) #15
  store ptr null, ptr %3, align 8, !tbaa !35
  br label %361

361:                                              ; preds = %357, %336
  store ptr null, ptr %2, align 8, !tbaa !35
  br label %362

362:                                              ; preds = %273, %361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret void
}

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @adjust_phi_and_debug_stmts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp ult i32 %7, %5
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %3, %9
  %11 = zext i32 %5 to i64
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = load i32, ptr %4, align 4, !tbaa !77
  %16 = load i32, ptr %6, align 8, !tbaa !46
  %17 = icmp ult i32 %16, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %19

19:                                               ; preds = %10, %18
  %20 = zext i32 %15 to i64
  %21 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %22, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !82
  %28 = load ptr, ptr %25, align 8, !tbaa !82
  store ptr %22, ptr %28, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  store ptr %2, ptr %31, align 8, !tbaa !35
  %32 = icmp eq ptr %2, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %2, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29
  store ptr null, ptr %21, align 8, !tbaa !81
  br label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 5
  store ptr %39, ptr %21, align 8, !tbaa !81
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 5, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %21, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !82
  %43 = load ptr, ptr %40, align 8, !tbaa !82
  store ptr %21, ptr %43, align 8, !tbaa !81
  store ptr %21, ptr %40, align 8, !tbaa !82
  br label %44

44:                                               ; preds = %37, %38
  %45 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  tail call fastcc void @adjust_debug_stmts(ptr noundef %14, ptr noundef %49, ptr noundef %51)
  br label %52

52:                                               ; preds = %47, %44
  ret void
}

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_current_def(ptr noundef) local_unnamed_addr #3

declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

declare ptr @ssa_names_to_replace() local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @slpeel_add_loop_guard(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  store ptr %2, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store ptr null, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.VEC_edge_base, ptr %10, i64 0, i32 2, i64 0
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = and i32 %14, -2050
  %16 = or disjoint i32 %15, 2048
  store i32 %16, ptr %13, align 8, !tbaa !88
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !56, !noalias !196
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !46, !noalias !196
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !60, !noalias !196
  br label %27

27:                                               ; preds = %25, %21, %5
  %28 = phi ptr [ %26, %25 ], [ null, %21 ], [ null, %5 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gimple_seq_d, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !111, !noalias !196
  br label %33

33:                                               ; preds = %27, %30
  %34 = phi ptr [ %32, %30 ], [ null, %27 ]
  store ptr %34, ptr %7, align 8, !tbaa.struct !76
  %35 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %28, ptr %35, align 8, !tbaa.struct !138
  %36 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr %0, ptr %36, align 8, !tbaa.struct !139
  %37 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #15
  %38 = load ptr, ptr %8, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef nonnull %38) #15
  br label %41

41:                                               ; preds = %40, %33
  %42 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = call ptr @build_int_cst(ptr noundef %43, i64 noundef 0) #15
  %45 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %37, ptr noundef %44, ptr noundef null, ptr noundef null) #15
  %46 = load ptr, ptr %6, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  call void @gsi_insert_seq_after(ptr noundef nonnull %7, ptr noundef nonnull %46, i32 noundef 0) #15
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, ptr %17, align 8, !tbaa !56, !noalias !199
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !46, !noalias !199
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 8, !tbaa !60, !noalias !199
  br label %59

59:                                               ; preds = %57, %53, %49
  %60 = phi ptr [ %58, %57 ], [ null, %53 ], [ null, %49 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.gimple_seq_d, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !111, !noalias !199
  br label %65

65:                                               ; preds = %59, %62
  %66 = phi ptr [ %64, %62 ], [ null, %59 ]
  store ptr %66, ptr %7, align 8, !tbaa.struct !76
  store ptr %60, ptr %35, align 8, !tbaa.struct !138
  store ptr %0, ptr %36, align 8, !tbaa.struct !139
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef %45, i32 noundef 0) #15
  %67 = call ptr @make_edge(ptr noundef %0, ptr noundef %3, i32 noundef 1024) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %3, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret ptr %67
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @delete_update_ssa() local_unnamed_addr #3

declare ptr @vec_stack_p_reserve_exact_1(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @adjust_debug_stmts(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.adjust_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr @cfun, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 51, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !202
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !203
  %26 = icmp eq ptr %13, %25
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  store ptr %0, ptr %4, align 8, !tbaa !207
  %28 = getelementptr inbounds %struct.adjust_info, ptr %4, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !209
  %29 = getelementptr inbounds %struct.adjust_info, ptr %4, i64 0, i32 2
  store ptr %2, ptr %29, align 8, !tbaa !210
  %30 = load ptr, ptr @adjust_vec, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !211
  %35 = load i32, ptr %30, align 8, !tbaa !158
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call ptr @vec_stack_o_reserve(ptr noundef nonnull %30, i32 noundef 1, i64 noundef 8, i64 noundef 24) #15
  store ptr %38, ptr @adjust_vec, align 8, !tbaa !35
  br label %39

39:                                               ; preds = %32, %37
  %40 = load ptr, ptr @adjust_vec, align 8, !tbaa !35
  %41 = load i32, ptr %40, align 8, !tbaa !158
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !158
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VEC_adjust_info_base, ptr %40, i64 0, i32 2, i64 %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !76
  br label %46

45:                                               ; preds = %27
  call fastcc void @adjust_debug_stmts_now(ptr noundef nonnull %4)
  br label %46

46:                                               ; preds = %39, %45, %21, %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @adjust_debug_stmts_now(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = getelementptr inbounds %struct.adjust_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = load ptr, ptr %0, align 8, !tbaa !207
  %6 = getelementptr inbounds %struct.adjust_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %1, %14
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 5
  %17 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !212
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 5, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  store ptr %19, ptr %2, align 8, !tbaa !214
  %20 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 3
  %21 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2
  %22 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2, i32 1
  %23 = icmp eq ptr %19, %16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, i8 0, i64 40, i1 false)
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  call fastcc void @link_use_stmts_after(ptr noundef %19, ptr noundef nonnull %2)
  %25 = load ptr, ptr %2, align 8, !tbaa !214
  %26 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %15, %24
  %29 = phi ptr [ %27, %24 ], [ null, %15 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !214
  %31 = load ptr, ptr %17, align 8, !tbaa !212
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %144, label %33

33:                                               ; preds = %28
  %34 = icmp eq ptr %7, null
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 5
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 5, i32 1
  br label %37

37:                                               ; preds = %33, %139
  %38 = phi ptr [ %29, %33 ], [ %140, %139 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %125

42:                                               ; preds = %37
  %43 = and i32 %39, -65534
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #15
  br label %46

46:                                               ; preds = %42, %45
  %47 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, %4
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %48, ptr noundef %4) #15
  %52 = icmp eq i8 %51, 0
  %53 = icmp eq ptr %48, %11
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %125, label %57

55:                                               ; preds = %46
  %56 = icmp eq ptr %48, %11
  br i1 %56, label %125, label %57

57:                                               ; preds = %50, %55
  %58 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %48, ptr noundef %11) #15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %125

60:                                               ; preds = %57
  br i1 %34, label %96, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %2, align 8, !tbaa !214
  %63 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !82
  store ptr %64, ptr %20, align 8, !tbaa !215
  %65 = icmp eq ptr %62, %21
  br i1 %65, label %125, label %66

66:                                               ; preds = %61, %92
  %67 = phi ptr [ %93, %92 ], [ %62, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !82
  %73 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %68, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !82
  %74 = load ptr, ptr %71, align 8, !tbaa !82
  store ptr %68, ptr %74, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  br label %75

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %67, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !80
  store ptr %7, ptr %77, align 8, !tbaa !35
  %78 = load i64, ptr %7, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store ptr null, ptr %67, align 8, !tbaa !81
  br label %86

82:                                               ; preds = %75
  store ptr %35, ptr %67, align 8, !tbaa !81
  %83 = load ptr, ptr %36, align 8, !tbaa !82
  %84 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %67, i64 0, i32 1
  store ptr %83, ptr %84, align 8, !tbaa !82
  %85 = load ptr, ptr %36, align 8, !tbaa !82
  store ptr %67, ptr %85, align 8, !tbaa !81
  store ptr %67, ptr %36, align 8, !tbaa !82
  br label %86

86:                                               ; preds = %81, %82
  %87 = load ptr, ptr %20, align 8, !tbaa !215
  store ptr %87, ptr %2, align 8, !tbaa !214
  %88 = icmp eq ptr %87, %21
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !82
  store ptr %91, ptr %20, align 8, !tbaa !215
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi ptr [ %87, %89 ], [ null, %86 ]
  %94 = load ptr, ptr %2, align 8, !tbaa !214
  %95 = icmp eq ptr %94, %21
  br i1 %95, label %125, label %66, !llvm.loop !216

96:                                               ; preds = %60
  %97 = load i32, ptr %38, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -10
  %100 = icmp ult i32 %99, -9
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !46
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %106, label %105

105:                                              ; preds = %101, %96
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1665, ptr noundef nonnull @.str.1) #15
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i32, ptr %38, align 8
  %108 = and i32 %107, 255
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !50
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !217
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1622, ptr noundef nonnull @.str.1) #15
  br label %117

117:                                              ; preds = %106, %116
  %118 = getelementptr inbounds i8, ptr %38, i64 %114
  %119 = getelementptr inbounds ptr, ptr %118, i64 1
  store ptr null, ptr %119, align 8, !tbaa !35
  %120 = load i32, ptr %38, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -10
  %123 = icmp ult i32 %122, -9
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  call void @gimple_set_modified(ptr noundef nonnull %38, i8 noundef zeroext 1) #15
  call void @update_stmt_operands(ptr noundef nonnull %38) #15
  br label %125

125:                                              ; preds = %92, %61, %55, %124, %117, %50, %57, %37
  %126 = load ptr, ptr %22, align 8, !tbaa !82
  store ptr %126, ptr %2, align 8, !tbaa !214
  %127 = load ptr, ptr %17, align 8, !tbaa !212
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load ptr, ptr %21, align 8, !tbaa !81
  %131 = icmp eq ptr %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %130, i64 0, i32 1
  store ptr %126, ptr %133, align 8, !tbaa !82
  %134 = load ptr, ptr %22, align 8, !tbaa !82
  store ptr %130, ptr %134, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %139

135:                                              ; preds = %125
  call fastcc void @link_use_stmts_after(ptr noundef %126, ptr noundef nonnull %2)
  %136 = load ptr, ptr %2, align 8, !tbaa !214
  %137 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  br label %139

139:                                              ; preds = %129, %132, %135
  %140 = phi ptr [ %138, %135 ], [ null, %132 ], [ null, %129 ]
  %141 = load ptr, ptr %2, align 8, !tbaa !214
  %142 = load ptr, ptr %17, align 8, !tbaa !212
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %144, label %37, !llvm.loop !218

144:                                              ; preds = %139, %28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret void
}

declare ptr @vec_stack_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #15
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #15
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
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !82
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !81
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !82
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !82
  %56 = load ptr, ptr %53, align 8, !tbaa !82
  store ptr %50, ptr %56, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !81
  %58 = load ptr, ptr %46, align 8, !tbaa !82
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !82
  %60 = load ptr, ptr %46, align 8, !tbaa !82
  store ptr %35, ptr %60, align 8, !tbaa !81
  store ptr %35, ptr %46, align 8, !tbaa !82
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
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
  br i1 %76, label %34, label %188, !llvm.loop !219

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
  %98 = load ptr, ptr %87, align 8, !tbaa !66
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !66
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
  %115 = load ptr, ptr %114, align 8, !tbaa !80
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !82
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !81
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !82
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !82
  %131 = load ptr, ptr %128, align 8, !tbaa !82
  store ptr %125, ptr %131, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !81
  %133 = load ptr, ptr %121, align 8, !tbaa !82
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !82
  %135 = load ptr, ptr %121, align 8, !tbaa !82
  store ptr %110, ptr %135, align 8, !tbaa !81
  store ptr %110, ptr %121, align 8, !tbaa !82
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !66
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !220

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
  %157 = load ptr, ptr %156, align 8, !tbaa !221
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
  %167 = load ptr, ptr %166, align 8, !tbaa !80
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !82
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !81
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !82
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !82
  %183 = load ptr, ptr %180, align 8, !tbaa !82
  store ptr %177, ptr %183, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !81
  %185 = load ptr, ptr %173, align 8, !tbaa !82
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !82
  %187 = load ptr, ptr %173, align 8, !tbaa !82
  store ptr %163, ptr %187, align 8, !tbaa !81
  store ptr %163, ptr %173, align 8, !tbaa !82
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !81
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !82
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !82
  %197 = load ptr, ptr %194, align 8, !tbaa !82
  store ptr %191, ptr %197, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !81
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !82
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !82
  %202 = load ptr, ptr %199, align 8, !tbaa !82
  store ptr %190, ptr %202, align 8, !tbaa !81
  store ptr %190, ptr %199, align 8, !tbaa !82
  ret void
}

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_current_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @vec_stack_free(ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @vect_create_addr_base_for_vector_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @vect_vfa_segment_size(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %3, ptr noundef %5, ptr noundef %1) #15
  %7 = tail call i32 @vect_supportable_dr_alignment(ptr noundef %0) #15
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp ne i32 %12, 0
  tail call void @llvm.assume(i1 %13)
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr %14, align 8, !tbaa !115
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi i32 [ %17, %16 ], [ 0, %9 ]
  %20 = icmp ugt i32 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 629, ptr noundef nonnull @.str.1) #15
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @stmt_vec_info_vec, align 8
  %24 = add i32 %12, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %23, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !167
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %32, ptr noundef %6, ptr noundef %31) #15
  br label %34

34:                                               ; preds = %22, %2
  %35 = phi ptr [ %33, %22 ], [ %6, %2 ]
  %36 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef %35) #15
  ret ptr %37
}

declare i32 @vect_supportable_dr_alignment(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

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
!54 = !{!55, !36, i64 24}
!55 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!56 = !{!55, !41, i64 96}
!57 = !{!58}
!58 = distinct !{!58, !59, !"gsi_start_bb: argument 0"}
!59 = distinct !{!59, !"gsi_start_bb"}
!60 = !{!61, !36, i64 0}
!61 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!62 = !{!63, !36, i64 0}
!63 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!64 = !{!65, !36, i64 0}
!65 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!66 = !{!67, !36, i64 0}
!67 = !{!"use_optype_d", !36, i64 0, !68, i64 8}
!68 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!69 = distinct !{!69, !52, !53}
!70 = !{!65, !36, i64 16}
!71 = distinct !{!71, !52, !53}
!72 = !{!73, !41, i64 0}
!73 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!74 = !{!75, !36, i64 8}
!75 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!76 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!77 = !{!75, !41, i64 44}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = !{!68, !36, i64 24}
!81 = !{!68, !36, i64 0}
!82 = !{!68, !36, i64 8}
!83 = !{!84, !41, i64 36}
!84 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !85, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !86, i64 80, !86, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!85 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!86 = !{!"", !42, i64 0, !42, i64 8}
!87 = distinct !{!87, !52, !53}
!88 = !{!75, !41, i64 48}
!89 = !{!90, !36, i64 0}
!90 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!91 = !{!90, !41, i64 8}
!92 = !{!84, !36, i64 72}
!93 = !{!84, !36, i64 8}
!94 = !{!95}
!95 = distinct !{!95, !96, !"gsi_start_bb: argument 0"}
!96 = distinct !{!96, !"gsi_start_bb"}
!97 = distinct !{!97, !52, !53}
!98 = !{!84, !36, i64 40}
!99 = !{!100, !41, i64 0}
!100 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!101 = !{!75, !36, i64 0}
!102 = !{!103, !41, i64 40}
!103 = !{!"phi_arg_d", !68, i64 0, !36, i64 32, !41, i64 40}
!104 = !{!55, !36, i64 8}
!105 = !{!84, !36, i64 16}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = !{!109}
!109 = distinct !{!109, !110, !"gsi_last_bb: argument 0"}
!110 = distinct !{!110, !"gsi_last_bb"}
!111 = !{!63, !36, i64 8}
!112 = !{!84, !36, i64 48}
!113 = !{!114, !36, i64 0}
!114 = !{!"_loop_vec_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !36, i64 104, !36, i64 112, !41, i64 120}
!115 = !{!116, !41, i64 0}
!116 = !{!"VEC_vec_void_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!117 = !{!118, !41, i64 120}
!118 = !{!"_stmt_vec_info", !41, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !36, i64 104, !36, i64 112, !41, i64 120, !36, i64 128, !36, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !36, i64 160, !37, i64 168, !119, i64 172, !41, i64 180, !36, i64 184}
!119 = !{!"", !41, i64 0, !41, i64 4}
!120 = !{!121, !36, i64 8}
!121 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!122 = !{!84, !41, i64 0}
!123 = distinct !{!123, !52, !53}
!124 = !{!114, !36, i64 16}
!125 = !{!114, !41, i64 40}
!126 = !{!114, !36, i64 88}
!127 = !{!128, !41, i64 0}
!128 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !37, i64 8}
!129 = !{!114, !36, i64 80}
!130 = !{!131, !41, i64 0}
!131 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!132 = !{!114, !41, i64 56}
!133 = !{!114, !41, i64 32}
!134 = !{!55, !36, i64 0}
!135 = !{!136}
!136 = distinct !{!136, !137, !"gsi_last_bb: argument 0"}
!137 = distinct !{!137, !"gsi_last_bb"}
!138 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!139 = !{i64 0, i64 8, !35}
!140 = distinct !{!140, !52, !53}
!141 = !{!142, !41, i64 8}
!142 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!143 = !{i8 0, i8 2}
!144 = distinct !{!144, !52, !53}
!145 = !{!84, !36, i64 64}
!146 = !{!114, !36, i64 24}
!147 = !{!148}
!148 = distinct !{!148, !149, !"gsi_last_bb: argument 0"}
!149 = distinct !{!149, !"gsi_last_bb"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_last_bb: argument 0"}
!152 = distinct !{!152, !"gsi_last_bb"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"gsi_last_bb: argument 0"}
!155 = distinct !{!155, !"gsi_last_bb"}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = !{!159, !41, i64 0}
!159 = !{!"VEC_adjust_info_base", !41, i64 0, !41, i64 4, !37, i64 8}
!160 = distinct !{!160, !52, !53}
!161 = !{!114, !36, i64 48}
!162 = !{!163, !36, i64 0}
!163 = !{!"data_reference", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !164, i64 32, !165, i64 72, !166, i64 88, !36, i64 104}
!164 = !{!"innermost_loop_behavior", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!165 = !{!"indices", !36, i64 0, !36, i64 8}
!166 = !{!"dr_alias", !36, i64 0, !36, i64 8}
!167 = !{!118, !36, i64 32}
!168 = !{!163, !36, i64 8}
!169 = !{!118, !36, i64 128}
!170 = !{!118, !41, i64 144}
!171 = !{!172, !36, i64 456}
!172 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !173, i64 240, !174, i64 248, !175, i64 256, !176, i64 272, !177, i64 432, !178, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!173 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!174 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!175 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!176 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!177 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!178 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!179 = !{!114, !36, i64 64}
!180 = !{!181, !41, i64 0}
!181 = !{!"VEC_data_reference_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!182 = !{!163, !36, i64 40}
!183 = !{!163, !36, i64 56}
!184 = distinct !{!184, !52, !53}
!185 = !{!114, !41, i64 60}
!186 = distinct !{!186, !52, !53}
!187 = !{!188, !36, i64 0}
!188 = !{!"data_dependence_relation", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60, !37, i64 61, !37, i64 62}
!189 = !{!118, !36, i64 48}
!190 = !{!188, !36, i64 8}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = !{!194}
!194 = distinct !{!194, !195, !"gsi_last_bb: argument 0"}
!195 = distinct !{!195, !"gsi_last_bb"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"gsi_last_bb: argument 0"}
!198 = distinct !{!198, !"gsi_last_bb"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"gsi_last_bb: argument 0"}
!201 = distinct !{!201, !"gsi_last_bb"}
!202 = !{!121, !36, i64 24}
!203 = !{!204, !36, i64 24}
!204 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !205, i64 32, !205, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !206, i64 104}
!205 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!206 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!207 = !{!208, !36, i64 0}
!208 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!209 = !{!208, !36, i64 8}
!210 = !{!208, !36, i64 16}
!211 = !{!159, !41, i64 4}
!212 = !{!213, !36, i64 8}
!213 = !{!"immediate_use_iterator_d", !36, i64 0, !36, i64 8, !68, i64 16, !36, i64 48}
!214 = !{!213, !36, i64 0}
!215 = !{!213, !36, i64 48}
!216 = distinct !{!216, !52, !53}
!217 = !{!42, !42, i64 0}
!218 = distinct !{!218, !52, !53}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = !{!67, !36, i64 32}
