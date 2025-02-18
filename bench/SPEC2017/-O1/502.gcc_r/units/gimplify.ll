; ModuleID = 'gimplify.c'
source_filename = "gimplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimplify_omp_ctx = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.gimple_temp_hash_elt = type { ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimplify_init_ctor_preeval_data = type { ptr, i32 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@gimplify_ctxp = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"gimplify.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@libiberty_optr = external local_unnamed_addr global ptr, align 8
@libiberty_len = external local_unnamed_addr global i64, align 8
@libiberty_nptr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@tmp_var_id_num = internal global i32 0, align 4
@input_location = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gimplify_omp_ctxp = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"vol\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@nonlocal_vlas = internal unnamed_addr global ptr null, align 8
@flag_instrument_function_entry_exit = external local_unnamed_addr global i32, align 4
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@gt_ggc_r_gt_gimplify_h = dso_local local_unnamed_addr constant [1 x %struct.ggc_root_tab] zeroinitializer, align 16
@gt_pch_rs_gt_gimplify_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @tmp_var_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@optimize = external local_unnamed_addr global i32, align 4
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"iftmp\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"too few arguments to function %<va_start%>\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"using result of function returning %<void%>\00", align 1
@flag_merge_constants = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@ix86_cost = external local_unnamed_addr global ptr, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"saved_stack\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"invalid lvalue in asm output %d\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"impossible constraint in %<asm%>\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"non-memory input %d must stay in memory\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"memory input %d is not directly addressable\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%qE not specified in enclosing parallel\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"enclosing parallel\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s variable %qE is private in outer context\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"iteration variable %qE should be private\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"iteration variable %qE should not be firstprivate\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"iteration variable %qE should not be reduction\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !204 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !205
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !204 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !205
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !204 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !215

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !209
  %11 = load i8, ptr %3, align 1, !tbaa !216
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !204 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !215

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !209
  %11 = load i8, ptr %3, align 1, !tbaa !216
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !204 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !205
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !215

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !209
  %11 = load i8, ptr %3, align 1, !tbaa !216
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !204 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !205
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !204 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !215

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !217
  store i8 %12, ptr %4, align 1, !tbaa !216
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !204 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !215

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !217
  store i8 %12, ptr %4, align 1, !tbaa !216
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !204 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !205
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !215

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !217
  store i8 %12, ptr %4, align 1, !tbaa !216
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !204 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !204 {
  %2 = load i32, ptr %0, align 8, !tbaa !219
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !204 {
  %2 = load i32, ptr %0, align 8, !tbaa !219
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !204 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !220
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !204 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !220
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !204 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !204 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !204 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !204 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
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
  br i1 %23, label %7, label %24, !llvm.loop !221

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !204 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mark_addressable(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !204 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 42, label %6
    i16 41, label %6
    i16 45, label %6
    i16 46, label %6
    i16 118, label %6
    i16 43, label %6
    i16 44, label %6
    i16 32, label %9
    i16 34, label %9
    i16 36, label %9
  ], !prof !224

6:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  br label %2, !llvm.loop !225

9:                                                ; preds = %2, %2, %2
  %10 = or i64 %4, 262144
  store i64 %10, ptr %3, align 8
  br label %11

11:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @push_gimplify_context(ptr noundef %0) local_unnamed_addr #10 !prof !226 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %2, ptr %0, align 8, !tbaa !227
  store ptr %0, ptr @gimplify_ctxp, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local void @pop_gimplify_context(ptr noundef %0) local_unnamed_addr #12 !prof !229 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !230

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !231
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !232

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !233
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !235

11:                                               ; preds = %8, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #24
  br label %12

12:                                               ; preds = %4, %8, %11
  %13 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !232

16:                                               ; preds = %12
  tail call void @free(ptr noundef %14)
  br label %17

17:                                               ; preds = %12, %16
  store ptr null, ptr %13, align 8, !tbaa !205
  %18 = load ptr, ptr %2, align 8, !tbaa !227
  store ptr %18, ptr @gimplify_ctxp, align 8, !tbaa !205
  %19 = icmp eq ptr %0, null
  %20 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !236
  br i1 %19, label %43, label %22, !prof !232

22:                                               ; preds = %17
  %23 = icmp eq ptr %21, null
  br i1 %23, label %44, label %24, !prof !237

24:                                               ; preds = %22
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %29, label %28, !prof !235

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.1) #24
  br label %29

29:                                               ; preds = %28, %24
  %30 = tail call ptr @nreverse(ptr noundef nonnull %21) #24
  %31 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34, !prof !237

34:                                               ; preds = %29
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %39, label %38, !prof !235

38:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 676, ptr noundef nonnull @.str.1) #24
  br label %39

39:                                               ; preds = %38, %34, %29
  %40 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !216
  %42 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !216
  store ptr %30, ptr %40, align 8, !tbaa !216
  br label %44

43:                                               ; preds = %17
  tail call void @record_vars(ptr noundef %21) #24
  br label %44

44:                                               ; preds = %39, %22, %43
  %45 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !238
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !239

48:                                               ; preds = %44
  tail call void @htab_delete(ptr noundef nonnull %46) #24
  br label %49

49:                                               ; preds = %48, %44
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @declare_vars(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #12 !prof !204 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5, !prof !237

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %10, label %9, !prof !235

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call ptr @nreverse(ptr noundef nonnull %0) #24
  %12 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !216
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %20, !prof !235

15:                                               ; preds = %10
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %20, label %19, !prof !235

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 676, ptr noundef nonnull @.str.1) #24
  br label %20

20:                                               ; preds = %10, %15, %19
  %21 = icmp ne i8 %2, 0
  %22 = and i1 %21, %14
  br i1 %22, label %27, label %23, !prof !237

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !216
  %26 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !216
  store ptr %11, ptr %24, align 8, !tbaa !216
  br label %37

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_block, ptr %13, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @chainon(ptr noundef nonnull %29, ptr noundef %11) #24
  store ptr %32, ptr %28, align 8, !tbaa !216
  br label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = tail call ptr @chainon(ptr noundef %35, ptr noundef %11) #24
  store ptr %36, ptr %34, align 8, !tbaa !216
  store ptr %11, ptr %28, align 8, !tbaa !216
  br label %37

37:                                               ; preds = %23, %33, %31, %3
  ret void
}

declare void @record_vars(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_current_bind_expr() local_unnamed_addr #13 !prof !204 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = load i32, ptr %3, align 8, !tbaa !233
  %5 = add i32 %4, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_gimple_base, ptr %3, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !205
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_bind_expr_stack() local_unnamed_addr #13 !prof !204 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @append_to_statement_list(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #12 !prof !240 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5, !prof !241

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65536
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %24, label %9, !prof !241

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18, !prof !242

12:                                               ; preds = %9
  %13 = and i64 %6, 65535
  %14 = icmp eq i64 %13, 147
  br i1 %14, label %15, label %16, !prof !243

15:                                               ; preds = %12
  store ptr %0, ptr %1, align 8, !tbaa !205
  br label %23

16:                                               ; preds = %12
  %17 = tail call ptr @alloc_stmt_list() #24
  store ptr %17, ptr %1, align 8, !tbaa !205
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi ptr [ %10, %9 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.tree_statement_list, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  store ptr %21, ptr %3, align 8, !tbaa.struct !244
  %22 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %19, ptr %22, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef 4) #24
  br label %23

23:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %24

24:                                               ; preds = %23, %5, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @append_to_statement_list_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !204 !PGOFuncName !246 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13, !prof !242

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 147
  br i1 %9, label %10, label %11, !prof !243

10:                                               ; preds = %6
  store ptr %0, ptr %1, align 8, !tbaa !205
  br label %18

11:                                               ; preds = %6
  %12 = tail call ptr @alloc_stmt_list() #24
  store ptr %12, ptr %1, align 8, !tbaa !205
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %4, %2 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.tree_statement_list, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  store ptr %16, ptr %3, align 8, !tbaa.struct !244
  %17 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %14, ptr %17, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 4) #24
  br label %18

18:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @append_to_statement_list_force(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #14 !prof !247 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5, !prof !248

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15, !prof !242

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 147
  br i1 %11, label %12, label %13, !prof !243

12:                                               ; preds = %8
  store ptr %0, ptr %1, align 8, !tbaa !205
  br label %20

13:                                               ; preds = %8
  %14 = tail call ptr @alloc_stmt_list() #24
  store ptr %14, ptr %1, align 8, !tbaa !205
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %6, %5 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.tree_statement_list, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !216
  store ptr %18, ptr %3, align 8, !tbaa.struct !244
  %19 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %16, ptr %19, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef 4) #24
  br label %20

20:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %21

21:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gimplify_and_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !204 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !205
  %4 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %3, ptr noundef %1), !range !249
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @gimplify_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !204 {
  %3 = load ptr, ptr %1, align 8, !tbaa !205
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !250

5:                                                ; preds = %2
  %6 = tail call ptr @gimple_seq_alloc() #24
  store ptr %6, ptr %1, align 8, !tbaa !205
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr %1, align 8, !tbaa !205
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !251

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.gimple_seq_d, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi ptr [ %12, %10 ], [ null, %7 ]
  %15 = tail call i32 @gimplify_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  %16 = load ptr, ptr %1, align 8, !tbaa !205
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !251

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gimple_seq_d, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !252
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %20, %18 ], [ null, %13 ]
  %23 = icmp ne ptr %14, %22
  %24 = zext i1 %23 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define dso_local ptr @create_tmp_var_name(ptr noundef %0) local_unnamed_addr #12 !prof !254 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3, !prof !255

3:                                                ; preds = %1
  store ptr %0, ptr @libiberty_optr, align 8, !tbaa !205
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %5 = add i64 %4, 1
  store i64 %5, ptr @libiberty_len, align 8, !tbaa !256
  %6 = alloca i8, i64 %5, align 16
  store ptr %6, ptr @libiberty_nptr, align 8, !tbaa !205
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %0, i64 %5, i1 false), !prof !257
  %7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %27, !prof !258

10:                                               ; preds = %3
  %11 = and i64 %7, 4294967295
  %12 = add nsw i32 %8, -3
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 5)
  %14 = add nuw nsw i32 %13, 3
  %15 = zext nneg i32 %14 to i64
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %27, label %19, !prof !259, !llvm.loop !260

19:                                               ; preds = %10, %16
  %20 = phi i64 [ 2, %10 ], [ %17, %16 ]
  %21 = sub nsw i64 %11, %20
  %22 = getelementptr inbounds i8, ptr %6, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !216
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %25, label %16, !prof !261

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %6, i64 %21
  store i8 0, ptr %26, align 1, !tbaa !216
  br label %27

27:                                               ; preds = %16, %3, %25, %1
  %28 = phi ptr [ null, %1 ], [ %6, %25 ], [ %6, %3 ], [ %6, %16 ]
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @.str.2, ptr %28, !prof !255
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30)
  %32 = add i64 %31, 32
  %33 = alloca i8, i64 %32, align 16
  %34 = load i32, ptr @tmp_var_id_num, align 4, !tbaa !220
  %35 = add i32 %34, 1
  store i32 %35, ptr @tmp_var_id_num, align 4, !tbaa !220
  %36 = zext i32 %34 to i64
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %30, i64 noundef %36)
  %38 = call ptr @get_identifier(ptr noundef nonnull %33) #24
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @create_tmp_var_raw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !262 {
  %3 = tail call ptr @build_qualified_type(ptr noundef %0, i32 noundef 0) #24
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !216
  %7 = load i32, ptr @input_location, align 4, !tbaa !220
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9, !prof !263

9:                                                ; preds = %2
  %10 = tail call ptr @create_tmp_var_name(ptr noundef nonnull %1)
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  %13 = tail call ptr @build_decl_stat(i32 noundef %7, i32 noundef 32, ptr noundef %12, ptr noundef %0) #24
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %15, 5120
  store i64 %16, ptr %14, align 8
  %17 = load i64, ptr %13, align 8
  %18 = and i64 %17, -1048577
  store i64 %18, ptr %13, align 8
  %19 = and i64 %16, -33554433
  store i64 %19, ptr %14, align 8
  %20 = and i64 %17, -84934657
  %21 = or disjoint i64 %20, 16777216
  store i64 %21, ptr %13, align 8
  ret ptr %13
}

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @create_tmp_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !264 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 262144
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10, !prof !265

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !266

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call ptr @build_qualified_type(ptr noundef nonnull %0, i32 noundef 0) #24
  %13 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !216
  %16 = load i32, ptr @input_location, align 4, !tbaa !220
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18, !prof !263

18:                                               ; preds = %11
  %19 = tail call ptr @create_tmp_var_name(ptr noundef nonnull %1)
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi ptr [ %19, %18 ], [ null, %11 ]
  %22 = tail call ptr @build_decl_stat(i32 noundef %16, i32 noundef 32, ptr noundef %21, ptr noundef nonnull %0) #24
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = or i64 %24, 5120
  store i64 %25, ptr %23, align 8
  %26 = load i64, ptr %22, align 8
  %27 = and i64 %26, -1048577
  store i64 %27, ptr %22, align 8
  %28 = and i64 %25, -33554433
  store i64 %28, ptr %23, align 8
  %29 = and i64 %26, -84934657
  %30 = or disjoint i64 %29, 16777216
  store i64 %30, ptr %22, align 8
  %31 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39, !prof !265

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !265

39:                                               ; preds = %34, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #24
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  %43 = tail call i32 @host_integerp(ptr noundef %42, i32 noundef 1) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %67, !prof !266

45:                                               ; preds = %40
  %46 = load i64, ptr %22, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 32
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @.str.1) #24
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !216
  %53 = tail call i64 @max_int_size_in_bytes(ptr noundef %52) #24
  %54 = icmp sgt i64 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #24
  br label %56

56:                                               ; preds = %55, %50
  %57 = load ptr, ptr %41, align 8, !tbaa !216
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !216
  %60 = tail call ptr @build_int_cst(ptr noundef %59, i64 noundef %53) #24
  store ptr %60, ptr %41, align 8, !tbaa !216
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !216
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !216
  %65 = shl nsw i64 %53, 3
  %66 = tail call ptr @build_int_cst(ptr noundef %64, i64 noundef %65) #24
  store ptr %66, ptr %61, align 8, !tbaa !216
  br label %67

67:                                               ; preds = %56, %40
  %68 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %69 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 4
  store ptr %68, ptr %69, align 8, !tbaa !216
  %70 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 256
  store i32 %72, ptr %70, align 8
  %73 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75, !prof !267

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.gimplify_ctx, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !236
  store ptr %77, ptr %31, align 8, !tbaa !216
  store ptr %22, ptr %76, align 8, !tbaa !236
  %78 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %79 = icmp eq ptr %78, null
  br i1 %79, label %105, label %80, !prof !268

80:                                               ; preds = %75, %85
  %81 = phi ptr [ %86, %85 ], [ %78, %75 ]
  %82 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %81, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !269
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load ptr, ptr %81, align 8, !tbaa !271
  %87 = icmp eq ptr %86, null
  br i1 %87, label %105, label %80, !llvm.loop !272

88:                                               ; preds = %80
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %81, ptr noundef nonnull %22, i32 noundef 129)
  br label %105

89:                                               ; preds = %67
  %90 = load ptr, ptr @cfun, align 8, !tbaa !205
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !273

92:                                               ; preds = %89
  tail call void @record_vars(ptr noundef nonnull %22) #24
  br label %105

93:                                               ; preds = %89
  %94 = tail call ptr @gimple_body(ptr noundef %68) #24
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %94, align 8, !tbaa !274
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi ptr [ %97, %96 ], [ null, %93 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %99, align 8, !tbaa !275
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi ptr [ %102, %101 ], [ null, %98 ]
  tail call void @declare_vars(ptr noundef nonnull %22, ptr noundef %104, i8 noundef zeroext 0)
  br label %105

105:                                              ; preds = %85, %75, %88, %92, %103
  ret ptr %22
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_add_tmp_var(ptr noundef %0) local_unnamed_addr #14 !prof !204 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10, !prof !265

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !265

10:                                               ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %5, %10
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !216
  %14 = tail call i32 @host_integerp(ptr noundef %13, i32 noundef 1) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38, !prof !266

16:                                               ; preds = %11
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 32
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  %24 = tail call i64 @max_int_size_in_bytes(ptr noundef %23) #24
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #24
  br label %27

27:                                               ; preds = %21, %26
  %28 = load ptr, ptr %12, align 8, !tbaa !216
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  %31 = tail call ptr @build_int_cst(ptr noundef %30, i64 noundef %24) #24
  store ptr %31, ptr %12, align 8, !tbaa !216
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = shl nsw i64 %24, 3
  %37 = tail call ptr @build_int_cst(ptr noundef %35, i64 noundef %36) #24
  store ptr %37, ptr %32, align 8, !tbaa !216
  br label %38

38:                                               ; preds = %27, %11
  %39 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !216
  %41 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 256
  store i32 %43, ptr %41, align 8
  %44 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46, !prof !267

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gimplify_ctx, ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !236
  store ptr %48, ptr %2, align 8, !tbaa !216
  store ptr %0, ptr %47, align 8, !tbaa !236
  %49 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %50 = icmp eq ptr %49, null
  br i1 %50, label %76, label %51, !prof !268

51:                                               ; preds = %46, %56
  %52 = phi ptr [ %57, %56 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %52, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !269
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load ptr, ptr %52, align 8, !tbaa !271
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %51, !llvm.loop !272

59:                                               ; preds = %51
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %52, ptr noundef %0, i32 noundef 129)
  br label %76

60:                                               ; preds = %38
  %61 = load ptr, ptr @cfun, align 8, !tbaa !205
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !273

63:                                               ; preds = %60
  tail call void @record_vars(ptr noundef %0) #24
  br label %76

64:                                               ; preds = %60
  %65 = tail call ptr @gimple_body(ptr noundef %39) #24
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %65, align 8, !tbaa !274
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi ptr [ %68, %67 ], [ null, %64 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !275
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi ptr [ %73, %72 ], [ null, %69 ]
  tail call void @declare_vars(ptr noundef %0, ptr noundef %75, i8 noundef zeroext 0)
  br label %76

76:                                               ; preds = %56, %59, %63, %74, %46
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_formal_tmp_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !204 {
  %3 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1)
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #14 !prof !277 !PGOFuncName !278 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_temp_hash_elt, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !205
  %9 = call i32 @gimplify_expr(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_reg_rhs_or_call, i32 noundef 1)
  %10 = load ptr, ptr %8, align 8, !tbaa !205
  %11 = load i32, ptr @optimize, align 4, !tbaa !220
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne i8 %3, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %19, !prof !279

15:                                               ; preds = %4
  %16 = load i64, ptr %10, align 8
  %17 = and i64 %16, 65536
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19, !prof !280

19:                                               ; preds = %15, %4
  %20 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  %22 = call ptr @get_name(ptr noundef %10) #24
  %23 = call ptr @create_tmp_var(ptr noundef %21, ptr noundef %22)
  br label %52

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  store ptr %10, ptr %7, align 8, !tbaa !281
  %25 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %26 = getelementptr inbounds %struct.gimplify_ctx, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !238
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33, !prof !283

29:                                               ; preds = %24
  %30 = call ptr @htab_create(i64 noundef 1000, ptr noundef nonnull @gimple_tree_hash, ptr noundef nonnull @gimple_tree_eq, ptr noundef nonnull @free) #24
  %31 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %32 = getelementptr inbounds %struct.gimplify_ctx, ptr %31, i64 0, i32 7
  store ptr %30, ptr %32, align 8, !tbaa !238
  br label %33

33:                                               ; preds = %29, %24
  %34 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %35 = getelementptr inbounds %struct.gimplify_ctx, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !238
  %37 = call ptr @htab_find_slot(ptr noundef %36, ptr noundef nonnull %7, i32 noundef 1) #24
  %38 = load ptr, ptr %37, align 8, !tbaa !205
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47, !prof !284

40:                                               ; preds = %33
  %41 = call ptr @xmalloc(i64 noundef 16) #24
  store ptr %10, ptr %41, align 8, !tbaa !281
  %42 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = call ptr @get_name(ptr noundef nonnull %10) #24
  %45 = call ptr @create_tmp_var(ptr noundef %43, ptr noundef %44)
  %46 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %41, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !285
  store ptr %41, ptr %37, align 8, !tbaa !205
  br label %50

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %38, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !285
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi ptr [ %45, %40 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %52

52:                                               ; preds = %19, %50
  %53 = phi ptr [ %23, %19 ], [ %51, %50 ]
  %54 = icmp eq i8 %3, 0
  br i1 %54, label %67, label %55, !prof !286

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !216
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -13
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %63, label %67, !prof !287

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = or i64 %65, 134217728
  store i64 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %55, %63, %52
  %68 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !216
  %70 = load ptr, ptr %8, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %70, ptr %6, align 8, !tbaa !205
  %71 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %72 = load ptr, ptr %6, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %73 = call ptr @build2_stat(i32 noundef 54, ptr noundef %69, ptr noundef %53, ptr noundef %72) #24
  %74 = load ptr, ptr %8, align 8, !tbaa !205
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !220
  %79 = add i32 %78, -4
  %80 = icmp ult i32 %79, 7
  br i1 %80, label %81, label %85, !prof !288

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !216
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87, !prof !289

85:                                               ; preds = %67, %81
  %86 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %87

87:                                               ; preds = %81, %85
  %88 = phi i32 [ %86, %85 ], [ %83, %81 ]
  %89 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 1
  store i32 %88, ptr %89, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %73, ptr %5, align 8, !tbaa !205
  %90 = load ptr, ptr %1, align 8, !tbaa !205
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94, !prof !250

92:                                               ; preds = %87
  %93 = call ptr @gimple_seq_alloc() #24
  store ptr %93, ptr %1, align 8, !tbaa !205
  br label %94

94:                                               ; preds = %92, %87
  %95 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @ggc_free(ptr noundef %73) #24
  %96 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %97 = getelementptr inbounds %struct.gimplify_ctx, ptr %96, i64 0, i32 10
  %98 = load i8, ptr %97, align 1, !tbaa !290
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %114, label %100, !prof !291

100:                                              ; preds = %94
  %101 = load ptr, ptr %1, align 8, !tbaa !205
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103, !prof !292

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.gimple_seq_d, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !252
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi ptr [ %105, %103 ], [ null, %100 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109, !prof !292

109:                                              ; preds = %106
  %110 = load ptr, ptr %107, align 8, !tbaa !275
  br label %111

111:                                              ; preds = %106, %109
  %112 = phi ptr [ %110, %109 ], [ null, %106 ]
  %113 = call ptr @gimple_get_lhs(ptr noundef %112) #24
  br label %114

114:                                              ; preds = %111, %94
  %115 = phi ptr [ %113, %111 ], [ %53, %94 ]
  ret ptr %115
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_initialized_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 !prof !204 {
  %4 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  ret ptr %4
}

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omp_add_variable(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #15 !prof !204 {
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %121, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %121, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %10
  %20 = or i32 %2, 1
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %2, %14 ]
  %23 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !293
  %25 = ptrtoint ptr %1 to i64
  %26 = tail call ptr @splay_tree_lookup(ptr noundef %24, i64 noundef %25) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.splay_tree_node_s, ptr %26, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !294
  %31 = and i32 %22, 252
  %32 = zext nneg i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5383, ptr noundef nonnull @.str.1) #24
  br label %36

36:                                               ; preds = %28, %35
  %37 = load i64, ptr %29, align 8, !tbaa !294
  %38 = trunc i64 %37 to i32
  %39 = or i32 %22, %38
  %40 = and i32 %39, 252
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5388, ptr noundef nonnull @.str.1) #24
  br label %43

43:                                               ; preds = %36, %42
  %44 = zext i32 %39 to i64
  store i64 %44, ptr %29, align 8, !tbaa !294
  br label %121

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !216
  %48 = icmp eq ptr %47, null
  br i1 %48, label %93, label %49

49:                                               ; preds = %45
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 23
  br i1 %52, label %93, label %53

53:                                               ; preds = %49
  %54 = and i32 %22, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = and i32 %22, 8
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 16, i32 8
  %60 = and i32 %22, 1
  %61 = or disjoint i32 %59, %60
  %62 = tail call ptr @decl_value_expr_lookup(ptr noundef %1) #24
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 47
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5407, ptr noundef nonnull @.str.1) #24
  br label %67

67:                                               ; preds = %56, %66
  %68 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !216
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !220
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5409, ptr noundef nonnull @.str.1) #24
  br label %76

76:                                               ; preds = %67, %75
  tail call fastcc void @omp_add_variable(ptr noundef %0, ptr noundef nonnull %69, i32 noundef %61)
  br label %77

77:                                               ; preds = %76, %53
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %79)
  %80 = load ptr, ptr %46, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %80)
  %81 = load ptr, ptr %7, align 8, !tbaa !216
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %81)
  %82 = and i32 %22, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = and i32 %22, 3
  %86 = or disjoint i32 %85, 264
  br label %116

87:                                               ; preds = %77
  br i1 %55, label %88, label %116

88:                                               ; preds = %87
  %89 = load ptr, ptr %7, align 8, !tbaa !216
  %90 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !216
  %92 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef %0, ptr noundef %91)
  br label %116

93:                                               ; preds = %49, %45
  %94 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !296
  %95 = tail call zeroext i8 %94(ptr noundef %1) #24
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %93
  %98 = and i32 %22, 128
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5438, ptr noundef nonnull @.str.1) #24
  br label %101

101:                                              ; preds = %97, %100
  %102 = load ptr, ptr %7, align 8, !tbaa !216
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %102)
  %103 = and i32 %22, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load ptr, ptr %7, align 8, !tbaa !216
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !216
  %109 = getelementptr inbounds %struct.tree_type, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !216
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 23
  br i1 %113, label %116, label %114

114:                                              ; preds = %105
  %115 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef %0, ptr noundef nonnull %110)
  br label %116

116:                                              ; preds = %93, %105, %114, %101, %84, %88, %87
  %117 = phi i32 [ %86, %84 ], [ %22, %87 ], [ %22, %88 ], [ %22, %114 ], [ %22, %105 ], [ %22, %101 ], [ %22, %93 ]
  %118 = load ptr, ptr %23, align 8, !tbaa !293
  %119 = zext i32 %117 to i64
  %120 = tail call ptr @splay_tree_insert(ptr noundef %118, i64 noundef %25, i64 noundef %119) #24
  br label %121

121:                                              ; preds = %3, %6, %116, %43
  ret void
}

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @annotate_all_with_location(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !204 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !274
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  br i1 %3, label %10, label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr %0, align 8, !tbaa !274, !noalias !304
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ %9, %8 ], [ null, %7 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %10, %27
  %14 = phi ptr [ %29, %27 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !275
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !216
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, ptr %15, align 8
  %21 = and i32 %20, 2048
  %22 = icmp ne i32 %21, 0
  %23 = and i32 %20, 255
  %24 = icmp eq i32 %23, 4
  %25 = or i1 %22, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 %1, ptr %16, align 8, !tbaa !216
  br label %27

27:                                               ; preds = %13, %19, %26
  %28 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %14, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !307
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %13, !llvm.loop !308

31:                                               ; preds = %27, %10, %2, %4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @unshare_expr(ptr noundef %0) local_unnamed_addr #14 !prof !309 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !205
  %3 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %4 = load ptr, ptr %2, align 8, !tbaa !205
  ret ptr %4
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noalias noundef ptr @mostly_copy_tree_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14 !prof !310 !PGOFuncName !311 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !220
  %9 = freeze i32 %8
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = trunc i64 %5 to i16
  switch i16 %13, label %16 [
    i16 120, label %14
    i16 55, label %14
    i16 4, label %14
    i16 58, label %15
  ], !prof !312

14:                                               ; preds = %3, %12, %12, %12
  store i32 0, ptr %1, align 4, !tbaa !220
  br label %18

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 870, ptr noundef nonnull @.str.1) #24
  br label %16

16:                                               ; preds = %12, %15
  %17 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #24
  br label %18

18:                                               ; preds = %16, %14
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @voidify_wrapper_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !313 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !205
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = icmp eq ptr %5, null
  br i1 %6, label %98, label %7, !prof !314

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 19
  br i1 %10, label %98, label %11, !prof !315

11:                                               ; preds = %7, %61
  %12 = phi ptr [ %62, %61 ], [ %3, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %64 [
    i16 58, label %23
    i16 61, label %30
    i16 131, label %30
    i16 130, label %30
    i16 147, label %37
    i16 52, label %18
  ]

18:                                               ; preds = %15
  %19 = load ptr, ptr %12, align 8, !tbaa !205
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 52
  br i1 %22, label %47, label %61

23:                                               ; preds = %15
  %24 = or i64 %16, 65536
  store i64 %24, ptr %13, align 8
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %26 = load ptr, ptr %12, align 8, !tbaa !205
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  store ptr %25, ptr %27, align 8, !tbaa !216
  %28 = load ptr, ptr %12, align 8, !tbaa !205
  %29 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1
  br label %61

30:                                               ; preds = %15, %15, %15
  %31 = or i64 %16, 65536
  store i64 %31, ptr %13, align 8
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %33 = load ptr, ptr %12, align 8, !tbaa !205
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  store ptr %32, ptr %34, align 8, !tbaa !216
  %35 = load ptr, ptr %12, align 8, !tbaa !205
  %36 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  br label %61

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.tree_statement_list, ptr %13, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !216
  %40 = or i64 %16, 65536
  store i64 %40, ptr %13, align 8
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %42 = load ptr, ptr %12, align 8, !tbaa !205
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  store ptr %41, ptr %43, align 8, !tbaa !216
  %44 = icmp eq ptr %39, null
  %45 = getelementptr inbounds %struct.tree_statement_list_node, ptr %39, i64 0, i32 2
  %46 = select i1 %44, ptr null, ptr %45
  br label %61

47:                                               ; preds = %18, %47
  %48 = phi i64 [ %58, %47 ], [ %20, %18 ]
  %49 = phi ptr [ %57, %47 ], [ %19, %18 ]
  %50 = phi ptr [ %56, %47 ], [ %12, %18 ]
  %51 = or i64 %48, 65536
  store i64 %51, ptr %49, align 8
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %53 = load ptr, ptr %50, align 8, !tbaa !205
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  store ptr %52, ptr %54, align 8, !tbaa !216
  %55 = load ptr, ptr %50, align 8, !tbaa !205
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !205
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 52
  br i1 %60, label %47, label %61, !llvm.loop !316

61:                                               ; preds = %47, %18, %37, %30, %23
  %62 = phi ptr [ %36, %30 ], [ %29, %23 ], [ %46, %37 ], [ %12, %18 ], [ %56, %47 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %98, label %11, !llvm.loop !317

64:                                               ; preds = %15, %11
  %65 = load i64, ptr %13, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 116
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !216
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 19
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !216
  %77 = call i32 @integer_zerop(ptr noundef %76) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %74, %68, %64
  %80 = icmp eq ptr %1, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %79
  %82 = load i64, ptr %1, align 8
  %83 = trunc i64 %82 to i32
  %84 = and i32 %83, 65535
  %85 = add nsw i32 %84, -53
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1038, ptr noundef nonnull @.str.1) #24
  br label %88

88:                                               ; preds = %81, %87
  %89 = load ptr, ptr %12, align 8, !tbaa !205
  %90 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !216
  br label %95

91:                                               ; preds = %79
  %92 = call ptr @create_tmp_var(ptr noundef nonnull %5, ptr noundef nonnull @.str.4)
  %93 = load ptr, ptr %12, align 8, !tbaa !205
  %94 = call ptr @build2_stat(i32 noundef 54, ptr noundef nonnull %5, ptr noundef %92, ptr noundef %93) #24
  br label %95

95:                                               ; preds = %88, %91
  %96 = phi ptr [ %94, %91 ], [ %1, %88 ]
  %97 = phi ptr [ %92, %91 ], [ %1, %88 ]
  store ptr %96, ptr %12, align 8, !tbaa !205
  br label %98

98:                                               ; preds = %61, %95, %2, %7, %74
  %99 = phi ptr [ null, %74 ], [ null, %7 ], [ null, %2 ], [ %97, %95 ], [ null, %61 ]
  ret ptr %99
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @sort_case_labels(ptr noundef %0) local_unnamed_addr #15 !prof !204 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !318
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %9 = select i1 %2, ptr null, ptr %8
  tail call void @spec_qsort(ptr noundef %9, i64 noundef %7, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #24
  ret void
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @compare_case_labels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !320 !PGOFuncName !321 {
  %3 = load ptr, ptr %0, align 8, !tbaa !205
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !322

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !205
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !216
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !322

12:                                               ; preds = %7
  %13 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %5, ptr noundef nonnull %10) #24
  br label %14

14:                                               ; preds = %7, %2, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %2 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @build_and_jump(ptr noundef %0) local_unnamed_addr #14 !prof !323 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !324

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !325

6:                                                ; preds = %3
  %7 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  store ptr %7, ptr %0, align 8, !tbaa !205
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %10 = load ptr, ptr %0, align 8, !tbaa !205
  %11 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %9, ptr noundef %10) #24
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ null, %1 ]
  ret ptr %13
}

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noalias noundef ptr @force_labels_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #19 !prof !326 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !220
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %11, !prof !327

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !220
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i64, ptr %4, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 30
  br i1 %14, label %15, label %17, !prof !327

15:                                               ; preds = %11
  %16 = or i64 %12, 65536
  store i64 %16, ptr %4, align 8
  br label %17

17:                                               ; preds = %15, %11
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gimple_boolify(ptr noundef %0) local_unnamed_addr #14 !prof !328 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !220
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %13, !prof !329

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !216
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ]
  %15 = icmp eq i64 %5, 102
  br i1 %15, label %16, label %84, !prof !330

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !216
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 59
  br i1 %21, label %22, label %84, !prof !331

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !216
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %84, label %27, !prof !332

27:                                               ; preds = %22
  %28 = load ptr, ptr %17, align 8, !tbaa !216
  %29 = tail call ptr @get_callee_fndecl(ptr noundef %28) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %84, label %31, !prof !332

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 8191
  %35 = icmp eq i32 %34, 6590
  br i1 %35, label %36, label %84, !prof !332

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !216
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !216
  %41 = and i64 %40, 4294967295
  %42 = icmp eq i64 %41, 5
  br i1 %42, label %43, label %84

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !216
  %46 = icmp eq ptr %45, null
  br i1 %46, label %84, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 116
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !216
  %54 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !216
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !216
  br label %60

60:                                               ; preds = %57, %51, %47
  %61 = phi ptr [ %59, %57 ], [ %45, %51 ], [ %45, %47 ]
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  %65 = and i64 %62, 65535
  %66 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !220
  %68 = icmp eq i32 %67, 5
  %69 = icmp eq i32 %64, 93
  %70 = or i1 %68, %69
  %71 = icmp eq i32 %64, 91
  %72 = or i1 %71, %70
  %73 = and i32 %63, 65533
  %74 = icmp eq i32 %73, 92
  %75 = or i1 %74, %72
  %76 = add nsw i32 %64, -95
  %77 = icmp ult i32 %76, 2
  %78 = or i1 %77, %75
  br i1 %78, label %79, label %84

79:                                               ; preds = %60
  %80 = tail call ptr @gimple_boolify(ptr noundef nonnull %61)
  %81 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !216
  %83 = tail call ptr @fold_convert_loc(i32 noundef %14, ptr noundef %82, ptr noundef %80) #24
  store ptr %83, ptr %44, align 8, !tbaa !216
  br label %84

84:                                               ; preds = %27, %31, %36, %60, %79, %43, %22, %16, %13
  %85 = load i64, ptr %3, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 7
  br i1 %87, label %104, label %88, !prof !333

88:                                               ; preds = %84
  %89 = load i64, ptr %0, align 8
  %90 = trunc i64 %89 to i16
  switch i16 %90, label %101 [
    i16 93, label %91
    i16 94, label %91
    i16 95, label %91
    i16 91, label %91
    i16 92, label %91
    i16 96, label %95
    i16 101, label %99
    i16 102, label %99
    i16 98, label %99
    i16 100, label %99
    i16 97, label %99
    i16 99, label %99
  ], !prof !334

91:                                               ; preds = %88, %88, %88, %88, %88
  %92 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !216
  %94 = tail call ptr @gimple_boolify(ptr noundef %93)
  store ptr %94, ptr %92, align 8, !tbaa !216
  br label %95

95:                                               ; preds = %88, %91
  %96 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !216
  %98 = tail call ptr @gimple_boolify(ptr noundef %97)
  store ptr %98, ptr %96, align 8, !tbaa !216
  br label %99

99:                                               ; preds = %88, %88, %88, %88, %88, %88, %95
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !205
  store ptr %100, ptr %2, align 8, !tbaa !216
  br label %104

101:                                              ; preds = %88
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !205
  %103 = tail call ptr @fold_convert_loc(i32 noundef %14, ptr noundef %102, ptr noundef nonnull %0) #24
  br label %104

104:                                              ; preds = %84, %101, %99
  %105 = phi ptr [ %103, %101 ], [ %0, %99 ], [ %0, %84 ]
  ret ptr %105
}

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @rhs_predicate_for(ptr noundef %0) local_unnamed_addr #15 !prof !204 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #24
  %3 = icmp eq i8 %2, 0
  %4 = select i1 %3, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  ret ptr %4
}

declare zeroext i8 @is_gimple_reg(ptr noundef) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @is_gimple_reg_rhs_or_call(ptr nocapture noundef readonly %0) #20 !prof !335 !PGOFuncName !336 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !216
  %6 = icmp ne i8 %5, 0
  %7 = icmp eq i64 %3, 59
  %8 = or i1 %6, %7
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @is_gimple_mem_rhs_or_call(ptr noundef %0) #15 !prof !337 !PGOFuncName !338 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %3) #24
  %5 = icmp eq i8 %4, 0
  %6 = tail call zeroext i8 @is_gimple_val(ptr noundef %0) #24
  br i1 %5, label %7, label %17, !prof !339

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @is_gimple_lvalue(ptr noundef %0) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 59
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %1, %7, %9, %12
  %18 = phi i8 [ 1, %9 ], [ 1, %7 ], [ %16, %12 ], [ %6, %1 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gimple_fold_indirect_ref(ptr noundef %0) local_unnamed_addr #12 !prof !340 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %226 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !341

11:                                               ; preds = %1, %1
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 121
  br i1 %14, label %15, label %82, !prof !342

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %19) #24
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %15
  %23 = load i64, ptr %19, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 15
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !216
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %28) #24
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !216
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !205
  %41 = icmp eq ptr %39, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !216
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %40, ptr %44
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi ptr [ %40, %37 ], [ %46, %42 ]
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp ne i64 %50, 23
  br i1 %51, label %79, label %52

52:                                               ; preds = %47
  %53 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %5, ptr noundef %17, ptr noundef nonnull %48, ptr noundef null, ptr noundef null) #24
  br label %79

54:                                               ; preds = %34, %26, %22
  %55 = load i64, ptr %19, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 13
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  %61 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %60) #24
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %5, ptr noundef %17) #24
  br label %79

65:                                               ; preds = %58, %54
  %66 = load i64, ptr %19, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 14
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !216
  %72 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %71) #24
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !216
  %77 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 2) #24
  %78 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %5, ptr noundef %17, ptr noundef %76, ptr noundef %77) #24
  br label %79

79:                                               ; preds = %52, %47, %65, %69, %15, %74, %63
  %80 = phi i1 [ false, %63 ], [ false, %74 ], [ false, %15 ], [ true, %69 ], [ true, %65 ], [ %51, %47 ], [ %51, %52 ]
  %81 = phi ptr [ %64, %63 ], [ %78, %74 ], [ %17, %15 ], [ undef, %69 ], [ undef, %65 ], [ undef, %47 ], [ %53, %52 ]
  br i1 %80, label %82, label %226

82:                                               ; preds = %79, %11
  %83 = phi ptr [ %81, %79 ], [ undef, %11 ]
  %84 = load i64, ptr %6, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 66
  br i1 %86, label %87, label %136, !prof !343

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !216
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 23
  br i1 %92, label %93, label %136, !prof !344

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !216
  %96 = tail call ptr @tree_strip_nop_conversions(ptr noundef %95) #24
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 121
  br i1 %99, label %100, label %133

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !216
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !216
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %133

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !216
  %111 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %110) #24
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %108
  %114 = tail call i64 @tree_low_cst(ptr noundef nonnull %89, i32 noundef 0) #24
  %115 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !216
  %117 = tail call i64 @tree_low_cst(ptr noundef %116, i32 noundef 0) #24
  %118 = sdiv i64 %117, 8
  %119 = shl nsw i64 %114, 3
  %120 = tail call ptr @size_int_kind(i64 noundef %119, i32 noundef 2) #24
  %121 = udiv i64 %114, %118
  %122 = load ptr, ptr %103, align 8, !tbaa !216
  %123 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 1023
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = icmp ugt i64 %121, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.tree_exp, ptr %96, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !216
  %132 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %5, ptr noundef %131, ptr noundef %116, ptr noundef %120) #24
  br label %133

133:                                              ; preds = %129, %113, %93, %100, %108
  %134 = phi i1 [ true, %108 ], [ true, %100 ], [ true, %93 ], [ %128, %113 ], [ false, %129 ]
  %135 = phi ptr [ %83, %108 ], [ %83, %100 ], [ %83, %93 ], [ %83, %113 ], [ %132, %129 ]
  br i1 %134, label %136, label %226

136:                                              ; preds = %133, %87, %82
  %137 = phi ptr [ %135, %133 ], [ %83, %87 ], [ %83, %82 ]
  %138 = load i64, ptr %6, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 66
  br i1 %140, label %141, label %179, !prof !343

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !216
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 23
  br i1 %146, label %147, label %179, !prof !344

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !216
  %150 = tail call ptr @tree_strip_nop_conversions(ptr noundef %149) #24
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 121
  br i1 %153, label %154, label %176

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !216
  %157 = getelementptr inbounds %struct.tree_common, ptr %156, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !216
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 13
  br i1 %161, label %162, label %176

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.tree_common, ptr %158, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !216
  %165 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %164) #24
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !216
  %170 = tail call i32 @tree_int_cst_equal(ptr noundef %169, ptr noundef nonnull %143) #24
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.tree_exp, ptr %150, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !216
  %175 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef %5, ptr noundef %174) #24
  br label %176

176:                                              ; preds = %172, %167, %147, %154, %162
  %177 = phi i1 [ true, %162 ], [ true, %154 ], [ true, %147 ], [ %171, %167 ], [ false, %172 ]
  %178 = phi ptr [ %137, %162 ], [ %137, %154 ], [ %137, %147 ], [ %137, %167 ], [ %175, %172 ]
  br i1 %177, label %179, label %226

179:                                              ; preds = %176, %141, %136
  %180 = phi ptr [ %178, %176 ], [ %137, %141 ], [ %137, %136 ]
  %181 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !216
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 15
  br i1 %185, label %186, label %225, !prof !342

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !216
  %189 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !216
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 23
  br i1 %193, label %194, label %225

194:                                              ; preds = %186
  %195 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %188) #24
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %225, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !205
  %199 = tail call ptr @gimple_fold_indirect_ref(ptr noundef nonnull %6)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load ptr, ptr %181, align 8, !tbaa !216
  %203 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %202, ptr noundef nonnull %6) #24
  br label %204

204:                                              ; preds = %201, %197
  %205 = phi ptr [ %199, %197 ], [ %203, %201 ]
  %206 = getelementptr inbounds %struct.tree_common, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !216
  %208 = getelementptr inbounds %struct.tree_type, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !216
  %210 = icmp eq ptr %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.tree_type, ptr %209, i64 0, i32 13
  %213 = load ptr, ptr %212, align 8, !tbaa !216
  %214 = icmp eq ptr %213, null
  %215 = select i1 %214, ptr %198, ptr %213
  br label %216

216:                                              ; preds = %211, %204
  %217 = phi ptr [ %198, %204 ], [ %215, %211 ]
  %218 = load i64, ptr %217, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 23
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %5, ptr noundef %205, ptr noundef nonnull %217, ptr noundef null, ptr noundef null) #24
  br label %223

223:                                              ; preds = %216, %221
  %224 = phi ptr [ %222, %221 ], [ %180, %216 ]
  br i1 %220, label %226, label %225

225:                                              ; preds = %223, %194, %186, %179
  br label %226

226:                                              ; preds = %176, %133, %79, %1, %223, %225
  %227 = phi ptr [ null, %225 ], [ %224, %223 ], [ null, %1 ], [ %81, %79 ], [ %135, %133 ], [ %178, %176 ]
  ret ptr %227
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @gimplify_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !345 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_temp_hash_elt, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca %struct.gimple_stmt_iterator, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  %18 = alloca %struct.gimple_stmt_iterator, align 8
  %19 = alloca %struct.gimple_stmt_iterator, align 8
  %20 = alloca %struct.gimple_stmt_iterator, align 8
  %21 = alloca %struct.gimple_stmt_iterator, align 8
  %22 = alloca %struct.gimple_stmt_iterator, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca %struct.gimple_stmt_iterator, align 8
  %39 = alloca %struct.gimple_stmt_iterator, align 8
  %40 = alloca %struct.gimple_stmt_iterator, align 8
  %41 = alloca %struct.gimple_stmt_iterator, align 8
  %42 = alloca %struct.gimple_stmt_iterator, align 8
  %43 = alloca %struct.gimple_stmt_iterator, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca ptr, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca ptr, align 8
  %62 = alloca ptr, align 8
  %63 = alloca %struct.gimplify_ctx, align 8
  %64 = alloca ptr, align 8
  %65 = alloca %struct.gimplify_ctx, align 8
  %66 = alloca %struct.tree_stmt_iterator, align 8
  %67 = alloca ptr, align 8
  %68 = alloca ptr, align 8
  %69 = alloca ptr, align 8
  %70 = alloca %struct.gimple_stmt_iterator, align 8
  %71 = alloca ptr, align 8
  %72 = alloca ptr, align 8
  %73 = alloca ptr, align 8
  %74 = alloca ptr, align 8
  %75 = alloca ptr, align 8
  %76 = alloca ptr, align 8
  %77 = alloca ptr, align 8
  %78 = alloca ptr, align 8
  %79 = alloca ptr, align 8
  %80 = alloca ptr, align 8
  %81 = alloca ptr, align 8
  %82 = alloca i32, align 4
  %83 = alloca ptr, align 8
  %84 = alloca ptr, align 8
  %85 = alloca ptr, align 8
  %86 = alloca ptr, align 8
  %87 = alloca ptr, align 8
  %88 = alloca ptr, align 8
  %89 = alloca ptr, align 8
  %90 = alloca ptr, align 8
  %91 = alloca ptr, align 8
  %92 = alloca ptr, align 8
  %93 = alloca ptr, align 8
  %94 = alloca ptr, align 8
  %95 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %87) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %88) #24
  store ptr null, ptr %88, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %89) #24
  store ptr null, ptr %89, align 8, !tbaa !205
  %96 = load ptr, ptr %0, align 8, !tbaa !205
  %97 = icmp eq ptr %96, null
  br i1 %97, label %4775, label %98, !prof !346

98:                                               ; preds = %5
  %99 = icmp eq ptr %3, @is_gimple_stmt
  %100 = icmp eq ptr %1, null
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %103, !prof !347

102:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6467, ptr noundef nonnull @.str.1) #24
  br label %103

103:                                              ; preds = %102, %98
  %104 = icmp eq ptr %3, @is_gimple_reg
  br i1 %104, label %105, label %108, !prof !348

105:                                              ; preds = %103
  %106 = and i32 %4, 3
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %142, label %144, !prof !349

108:                                              ; preds = %103
  %109 = icmp eq ptr %3, @is_gimple_val
  %110 = icmp eq ptr %3, @is_gimple_call_addr
  %111 = or i1 %109, %110
  %112 = icmp eq ptr %3, @is_gimple_condexpr
  %113 = or i1 %112, %111
  %114 = icmp eq ptr %3, @is_gimple_mem_rhs
  %115 = or i1 %114, %113
  %116 = icmp eq ptr %3, @is_gimple_mem_rhs_or_call
  %117 = or i1 %116, %115
  %118 = icmp eq ptr %3, @is_gimple_reg_rhs
  %119 = or i1 %118, %117
  %120 = icmp eq ptr %3, @is_gimple_reg_rhs_or_call
  %121 = or i1 %120, %119
  %122 = icmp eq ptr %3, @is_gimple_asm_val
  %123 = or i1 %122, %121
  br i1 %123, label %124, label %127, !prof !350

124:                                              ; preds = %108
  %125 = and i32 %4, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %142, label %144, !prof !351

127:                                              ; preds = %108
  %128 = icmp eq ptr %3, @is_gimple_min_lval
  %129 = icmp eq ptr %3, @is_gimple_lvalue
  %130 = or i1 %128, %129
  br i1 %130, label %131, label %134, !prof !352

131:                                              ; preds = %127
  %132 = and i32 %4, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %144, !prof !353

134:                                              ; preds = %127
  %135 = icmp eq ptr %3, @is_gimple_addressable
  br i1 %135, label %136, label %139, !prof !354

136:                                              ; preds = %134
  %137 = and i32 %4, 3
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %144, !prof !355

139:                                              ; preds = %134
  br i1 %99, label %140, label %142, !prof !356

140:                                              ; preds = %139
  %141 = icmp eq i32 %4, 0
  br i1 %141, label %144, label %142, !prof !356

142:                                              ; preds = %139, %140, %136, %131, %124, %105
  %143 = phi i32 [ 6471, %105 ], [ 6480, %124 ], [ 6483, %131 ], [ 6485, %136 ], [ 6487, %140 ], [ 6493, %139 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %143, ptr noundef nonnull @.str.1) #24
  br label %144

144:                                              ; preds = %142, %140, %136, %131, %124, %105
  %145 = select i1 %100, ptr %88, ptr %1, !prof !347
  %146 = icmp eq ptr %2, null
  %147 = select i1 %146, ptr %89, ptr %2, !prof !357
  %148 = load ptr, ptr %145, align 8, !tbaa !205
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150, !prof !358

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.gimple_seq_d, ptr %148, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !252, !noalias !359
  br label %153

153:                                              ; preds = %150, %144
  %154 = phi ptr [ %152, %150 ], [ null, %144 ]
  %155 = icmp eq ptr %154, null
  %156 = load ptr, ptr %147, align 8, !tbaa !205
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158, !prof !362

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.gimple_seq_d, ptr %156, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !252, !noalias !363
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi ptr [ %160, %158 ], [ null, %153 ]
  %163 = icmp eq ptr %162, null
  %164 = load i32, ptr @input_location, align 4, !tbaa !220
  %165 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %166 = icmp eq ptr %96, %165
  br i1 %166, label %187, label %167, !prof !347

167:                                              ; preds = %161
  %168 = load ptr, ptr %0, align 8, !tbaa !205
  %169 = load i64, ptr %168, align 8
  %170 = and i64 %169, 65535
  %171 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !220
  %173 = add i32 %172, -4
  %174 = icmp ult i32 %173, 7
  br i1 %174, label %175, label %178, !prof !366

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.tree_exp, ptr %168, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !216
  br label %178

178:                                              ; preds = %167, %175
  %179 = phi i32 [ %177, %175 ], [ 0, %167 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %187, label %181, !prof !367

181:                                              ; preds = %178
  br i1 %174, label %182, label %185, !prof !368

182:                                              ; preds = %181
  %183 = getelementptr inbounds %struct.tree_exp, ptr %168, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !216
  br label %185

185:                                              ; preds = %181, %182
  %186 = phi i32 [ %184, %182 ], [ 0, %181 ]
  store i32 %186, ptr @input_location, align 4, !tbaa !220
  br label %187

187:                                              ; preds = %185, %178, %161
  %188 = and i32 %4, 2
  %189 = icmp eq i32 %4, 0
  br label %190

190:                                              ; preds = %4430, %187
  %191 = phi ptr [ undef, %187 ], [ %4431, %4430 ]
  %192 = load ptr, ptr %0, align 8, !tbaa !205
  %193 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %192) #24
  store ptr %193, ptr %0, align 8, !tbaa !205
  %194 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %195 = icmp eq ptr %193, %194
  br i1 %195, label %4434, label %196, !prof !369

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !216
  %199 = icmp ne ptr %198, null
  %200 = icmp eq ptr %198, %194
  %201 = and i1 %199, %200
  br i1 %201, label %4434, label %202, !prof !369

202:                                              ; preds = %196
  %203 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 39), align 8, !tbaa !370
  %204 = call i32 %203(ptr noundef nonnull %0, ptr noundef nonnull %145, ptr noundef nonnull %147) #24, !prof !371
  switch i32 %204, label %4434 [
    i32 0, label %205
    i32 -1, label %210
  ], !prof !372

205:                                              ; preds = %202
  %206 = load ptr, ptr %0, align 8, !tbaa !205
  %207 = icmp eq ptr %206, null
  br i1 %207, label %4434, label %208

208:                                              ; preds = %205
  %209 = icmp eq ptr %206, %193
  br i1 %209, label %210, label %4430

210:                                              ; preds = %202, %208
  %211 = load ptr, ptr %0, align 8, !tbaa !205
  %212 = load i64, ptr %211, align 8
  %213 = trunc i64 %212 to i16
  switch i16 %213, label %4369 [
    i16 128, label %214
    i16 127, label %214
    i16 126, label %214
    i16 125, label %214
    i16 45, label %301
    i16 46, label %301
    i16 43, label %301
    i16 44, label %301
    i16 41, label %301
    i16 118, label %301
    i16 56, label %589
    i16 59, label %1147
    i16 2, label %1525
    i16 52, label %1526
    i16 119, label %1530
    i16 53, label %1571
    i16 54, label %1571
    i16 91, label %2256
    i16 92, label %2256
    i16 96, label %2265
    i16 121, label %2278
    i16 129, label %2376
    i16 116, label %2378
    i16 113, label %2378
    i16 77, label %2550
    i16 47, label %2555
    i16 48, label %2559
    i16 49, label %2559
    i16 23, label %4420
    i16 24, label %4420
    i16 25, label %4420
    i16 28, label %4420
    i16 26, label %4420
    i16 27, label %4420
    i16 33, label %2564
    i16 132, label %2569
    i16 58, label %2644
    i16 137, label %2860
    i16 138, label %2882
    i16 136, label %3142
    i16 134, label %3150
    i16 185, label %3191
    i16 133, label %3202
    i16 139, label %3240
    i16 135, label %3293
    i16 51, label %3420
    i16 120, label %3451
    i16 42, label %3482
    i16 152, label %3494
    i16 117, label %3517
    i16 140, label %3518
    i16 131, label %3520
    i16 130, label %3520
    i16 61, label %3564
    i16 55, label %3638
    i16 142, label %3703
    i16 143, label %3712
    i16 50, label %3729
    i16 30, label %3739
    i16 147, label %3741
    i16 150, label %3764
    i16 32, label %3772
    i16 34, label %3772
    i16 36, label %3872
    i16 141, label %4420
    i16 153, label %3877
    i16 154, label %3904
    i16 155, label %3919
    i16 156, label %4228
    i16 157, label %4228
    i16 158, label %4246
    i16 159, label %4246
    i16 160, label %4246
    i16 161, label %4246
    i16 162, label %4270
    i16 66, label %4308
  ], !prof !373

214:                                              ; preds = %210, %210, %210, %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %84) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %85) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %86) #24
  store ptr null, ptr %86, align 8, !tbaa !205
  %215 = load i64, ptr %211, align 8
  %216 = and i64 %215, 65535
  %217 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !220
  %219 = add i32 %218, -4
  %220 = icmp ult i32 %219, 7
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %223 = load i32, ptr %222, align 8, !tbaa !216
  br label %224

224:                                              ; preds = %221, %214
  %225 = phi i32 [ %223, %221 ], [ 0, %214 ]
  %226 = trunc i64 %215 to i32
  %227 = and i32 %226, 65535
  %228 = icmp ne i32 %227, 128
  %229 = add nsw i32 %227, -129
  %230 = icmp ult i32 %229, -2
  %231 = icmp ne i32 %227, 126
  %232 = add nsw i32 %227, -125
  %233 = icmp ult i32 %232, 4
  br i1 %233, label %235, label %234

234:                                              ; preds = %224
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2087, ptr noundef nonnull @.str.1) #24
  br label %235

235:                                              ; preds = %234, %224
  %236 = or i1 %189, %230
  %237 = select i1 %236, ptr %147, ptr %86
  %238 = and i1 %231, %228
  %239 = select i1 %238, i32 64, i32 63
  %240 = load ptr, ptr %0, align 8, !tbaa !205
  %241 = getelementptr inbounds %struct.tree_exp, ptr %240, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !216
  store ptr %242, ptr %85, align 8, !tbaa !205
  %243 = call i32 @gimplify_expr(ptr noundef nonnull %85, ptr noundef nonnull %145, ptr noundef nonnull %237, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2)
  %244 = icmp eq i32 %243, -2
  br i1 %244, label %299, label %245

245:                                              ; preds = %235
  %246 = load ptr, ptr %85, align 8, !tbaa !205
  store ptr %246, ptr %84, align 8, !tbaa !205
  %247 = load ptr, ptr %0, align 8, !tbaa !205
  %248 = getelementptr inbounds %struct.tree_exp, ptr %247, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !216
  br i1 %236, label %265, label %250

250:                                              ; preds = %245
  %251 = call zeroext i8 @is_gimple_min_lval(ptr noundef %246) #24
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load ptr, ptr %85, align 8, !tbaa !205
  call void @mark_addressable(ptr noundef %254)
  %255 = load i32, ptr @input_location, align 4, !tbaa !220
  %256 = load ptr, ptr %85, align 8, !tbaa !205
  %257 = call ptr @build_fold_addr_expr_loc(i32 noundef %255, ptr noundef %256) #24
  store ptr %257, ptr %85, align 8, !tbaa !205
  %258 = call i32 @gimplify_expr(ptr noundef nonnull %85, ptr noundef nonnull %145, ptr noundef nonnull %237, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %259 = load i32, ptr @input_location, align 4, !tbaa !220
  %260 = load ptr, ptr %85, align 8, !tbaa !205
  %261 = call ptr @build_fold_indirect_ref_loc(i32 noundef %259, ptr noundef %260) #24
  store ptr %261, ptr %85, align 8, !tbaa !205
  br label %262

262:                                              ; preds = %253, %250
  %263 = call i32 @gimplify_expr(ptr noundef nonnull %84, ptr noundef nonnull %145, ptr noundef nonnull %237, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %264 = icmp eq i32 %263, -2
  br i1 %264, label %299, label %265

265:                                              ; preds = %262, %245
  %266 = load ptr, ptr %84, align 8, !tbaa !205
  %267 = getelementptr inbounds %struct.tree_common, ptr %266, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !216
  %269 = load i64, ptr %268, align 8
  %270 = trunc i64 %269 to i16
  switch i16 %270, label %279 [
    i16 10, label %271
    i16 12, label %271
  ]

271:                                              ; preds = %265, %265
  %272 = load ptr, ptr @sizetype_tab, align 16, !tbaa !205
  %273 = call ptr @fold_convert_loc(i32 noundef %225, ptr noundef %272, ptr noundef %249) #24
  %274 = trunc i64 %215 to i16
  switch i16 %274, label %275 [
    i16 128, label %279
    i16 126, label %279
  ]

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.tree_common, ptr %273, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !216
  %278 = call ptr @fold_build1_stat_loc(i32 noundef %225, i32 noundef 79, ptr noundef %277, ptr noundef %273) #24
  br label %279

279:                                              ; preds = %271, %265, %275, %271
  %280 = phi ptr [ %278, %275 ], [ %273, %271 ], [ %249, %265 ], [ %273, %271 ]
  %281 = phi i32 [ 66, %275 ], [ 66, %271 ], [ %239, %265 ], [ 66, %271 ]
  %282 = load ptr, ptr %0, align 8, !tbaa !205
  %283 = getelementptr inbounds %struct.tree_common, ptr %282, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !216
  %285 = load ptr, ptr %84, align 8, !tbaa !205
  %286 = call ptr @build2_stat(i32 noundef %281, ptr noundef %284, ptr noundef %285, ptr noundef %280) #24
  %287 = load ptr, ptr %85, align 8, !tbaa !205
  br i1 %236, label %292, label %288

288:                                              ; preds = %279
  %289 = call ptr @gimplify_assign(ptr noundef %287, ptr noundef %286, ptr noundef nonnull %147) #24
  %290 = load ptr, ptr %86, align 8, !tbaa !205
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %147, ptr noundef %290)
  %291 = load ptr, ptr %84, align 8, !tbaa !205
  br label %296

292:                                              ; preds = %279
  %293 = getelementptr inbounds %struct.tree_common, ptr %287, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !216
  %295 = call ptr @build2_stat(i32 noundef 53, ptr noundef %294, ptr noundef %287, ptr noundef %286) #24
  br label %296

296:                                              ; preds = %292, %288
  %297 = phi ptr [ %291, %288 ], [ %295, %292 ]
  %298 = phi i32 [ 1, %288 ], [ 0, %292 ]
  store ptr %297, ptr %0, align 8, !tbaa !205
  br label %299

299:                                              ; preds = %296, %235, %262
  %300 = phi i32 [ -2, %235 ], [ -2, %262 ], [ %298, %296 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %86) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %85) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %84) #24
  br label %4420

301:                                              ; preds = %210, %210, %210, %210, %210, %210
  %302 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %303 = and i64 %212, 65535
  %304 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !220
  %306 = add i32 %305, -4
  %307 = icmp ult i32 %306, 7
  br i1 %307, label %308, label %311, !prof !374

308:                                              ; preds = %301
  %309 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %310 = load i32, ptr %309, align 8, !tbaa !216
  br label %311

311:                                              ; preds = %308, %301
  %312 = phi i32 [ %310, %308 ], [ 0, %301 ]
  %313 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #24
  br label %314

314:                                              ; preds = %437, %311
  %315 = phi ptr [ %313, %311 ], [ %438, %437 ]
  %316 = phi ptr [ %0, %311 ], [ %444, %437 ]
  br label %317

317:                                              ; preds = %425, %314
  %318 = load ptr, ptr %316, align 8, !tbaa !205
  %319 = load i64, ptr %318, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 47
  br i1 %321, label %322, label %324, !prof !375

322:                                              ; preds = %317
  %323 = call ptr @fold_indirect_ref_loc(i32 noundef %312, ptr noundef nonnull %318) #24
  store ptr %323, ptr %316, align 8, !tbaa !205
  br label %324

324:                                              ; preds = %322, %317
  %325 = load ptr, ptr %316, align 8, !tbaa !205
  %326 = load i64, ptr %325, align 8
  %327 = trunc i64 %326 to i16
  switch i16 %327, label %445 [
    i16 42, label %428
    i16 41, label %428
    i16 45, label %428
    i16 46, label %428
    i16 118, label %428
    i16 43, label %428
    i16 44, label %428
    i16 32, label %328
    i16 34, label %328
  ], !prof !376

328:                                              ; preds = %324, %324
  %329 = and i64 %326, 65535
  %330 = icmp eq i64 %329, 32
  br i1 %330, label %331, label %358, !prof !377

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %325, i64 0, i32 4
  %333 = load i32, ptr %332, align 8
  %334 = and i32 %333, 256
  %335 = icmp eq i32 %334, 0
  %336 = and i64 %326, 67108864
  %337 = icmp eq i64 %336, 0
  %338 = and i1 %337, %335
  br i1 %338, label %339, label %358, !prof !378

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.tree_decl_common, ptr %325, i64 0, i32 2
  %341 = load i64, ptr %340, align 8
  %342 = and i64 %341, 33554432
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %358, !prof !379

344:                                              ; preds = %339
  %345 = call ptr @decl_function_context(ptr noundef nonnull %325) #24
  %346 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %347 = icmp eq ptr %345, %346
  br i1 %347, label %348, label %358

348:                                              ; preds = %344
  %349 = load ptr, ptr @global_dc, align 8, !tbaa !205
  %350 = getelementptr inbounds %struct.diagnostic_context, ptr %349, i64 0, i32 1, i64 4
  %351 = load i32, ptr %350, align 8, !tbaa !220
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %445

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.diagnostic_context, ptr %349, i64 0, i32 1, i64 5
  %355 = load i32, ptr %354, align 4, !tbaa !220
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %445

357:                                              ; preds = %353
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #24
  br label %445

358:                                              ; preds = %344, %339, %331, %328
  %359 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %360 = icmp eq ptr %359, null
  br i1 %360, label %364, label %361, !prof !380

361:                                              ; preds = %358
  %362 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %359, ptr noundef nonnull %325)
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %445

364:                                              ; preds = %361, %358
  %365 = getelementptr inbounds %struct.tree_decl_common, ptr %325, i64 0, i32 2
  %366 = load i64, ptr %365, align 8
  %367 = and i64 %366, 67108864
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %445, label %369, !prof !380

369:                                              ; preds = %364
  %370 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %325) #24
  %371 = load i64, ptr %325, align 8
  %372 = and i64 %371, 65535
  %373 = icmp eq i64 %372, 32
  br i1 %373, label %374, label %425

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.tree_decl_common, ptr %325, i64 0, i32 4
  %376 = load ptr, ptr %375, align 8, !tbaa !216
  %377 = load i64, ptr %376, align 8
  %378 = and i64 %377, 65535
  %379 = icmp ne i64 %378, 23
  %380 = load ptr, ptr @nonlocal_vlas, align 8
  %381 = icmp ne ptr %380, null
  %382 = select i1 %379, i1 %381, i1 false
  br i1 %382, label %383, label %425

383:                                              ; preds = %374
  %384 = load i64, ptr %370, align 8
  %385 = and i64 %384, 65535
  %386 = icmp eq i64 %385, 47
  br i1 %386, label %387, label %425

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.tree_exp, ptr %370, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !216
  %390 = load i64, ptr %389, align 8
  %391 = and i64 %390, 65535
  %392 = icmp eq i64 %391, 32
  br i1 %392, label %393, label %425

393:                                              ; preds = %387
  %394 = call ptr @decl_function_context(ptr noundef nonnull %325) #24
  %395 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %396 = icmp eq ptr %394, %395
  br i1 %396, label %425, label %397

397:                                              ; preds = %393, %401
  %398 = phi ptr [ %399, %401 ], [ @gimplify_omp_ctxp, %393 ]
  %399 = load ptr, ptr %398, align 8, !tbaa !205
  %400 = icmp eq ptr %399, null
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %399, i64 0, i32 5
  %403 = load i32, ptr %402, align 8, !tbaa !269
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %397, label %425, !llvm.loop !381

405:                                              ; preds = %397
  %406 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !205
  %407 = call i32 @pointer_set_insert(ptr noundef %406, ptr noundef nonnull %325) #24
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %425

409:                                              ; preds = %405
  %410 = call ptr @copy_node_stat(ptr noundef nonnull %325) #24
  %411 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !382
  call void %411(ptr noundef %410) #24
  call void @set_decl_rtl(ptr noundef %410, ptr noundef null) #24
  %412 = load i64, ptr %410, align 8
  %413 = or i64 %412, 16777216
  store i64 %413, ptr %410, align 8
  %414 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %415 = getelementptr inbounds %struct.tree_decl_common, ptr %414, i64 0, i32 5
  %416 = load ptr, ptr %415, align 8, !tbaa !216
  %417 = getelementptr inbounds %struct.tree_block, ptr %416, i64 0, i32 3
  %418 = load ptr, ptr %417, align 8, !tbaa !216
  %419 = getelementptr inbounds %struct.tree_common, ptr %410, i64 0, i32 1
  store ptr %418, ptr %419, align 8, !tbaa !216
  store ptr %410, ptr %417, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %370, ptr %7, align 8, !tbaa !205
  %420 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %421 = load ptr, ptr %7, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @decl_value_expr_insert(ptr noundef nonnull %410, ptr noundef %421) #24
  %422 = getelementptr inbounds %struct.tree_decl_common, ptr %410, i64 0, i32 2
  %423 = load i64, ptr %422, align 8
  %424 = or i64 %423, 67108864
  store i64 %424, ptr %422, align 8
  br label %425

425:                                              ; preds = %401, %409, %405, %393, %387, %383, %374, %369
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %370, ptr %6, align 8, !tbaa !205
  %426 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %427 = load ptr, ptr %6, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  store ptr %427, ptr %316, align 8, !tbaa !205
  br label %317

428:                                              ; preds = %324, %324, %324, %324, %324, %324, %324
  %429 = icmp eq ptr %315, null
  br i1 %429, label %435, label %430, !prof !383

430:                                              ; preds = %428
  %431 = getelementptr inbounds %struct.VEC_tree_base, ptr %315, i64 0, i32 1
  %432 = load i32, ptr %431, align 4, !tbaa !384
  %433 = load i32, ptr %315, align 8, !tbaa !318
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %437, !prof !383

435:                                              ; preds = %428, %430
  %436 = call ptr @vec_heap_p_reserve(ptr noundef %315, i32 noundef 1) #24
  br label %437

437:                                              ; preds = %430, %435
  %438 = phi ptr [ %436, %435 ], [ %315, %430 ]
  %439 = load i32, ptr %438, align 8, !tbaa !318
  %440 = add i32 %439, 1
  store i32 %440, ptr %438, align 8, !tbaa !318
  %441 = zext i32 %439 to i64
  %442 = getelementptr inbounds %struct.VEC_tree_base, ptr %438, i64 0, i32 2, i64 %441
  store ptr %325, ptr %442, align 8, !tbaa !205
  %443 = load ptr, ptr %316, align 8, !tbaa !205
  %444 = getelementptr inbounds %struct.tree_exp, ptr %443, i64 0, i32 3
  br label %314, !llvm.loop !385

445:                                              ; preds = %364, %361, %324, %357, %353, %348
  %446 = icmp eq ptr %315, null
  br i1 %446, label %449, label %447, !prof !386

447:                                              ; preds = %445
  %448 = load i32, ptr %315, align 8, !tbaa !318
  br label %449

449:                                              ; preds = %445, %447
  %450 = phi i32 [ %448, %447 ], [ 0, %445 ]
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %453, !prof !386

452:                                              ; preds = %449
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1925, ptr noundef nonnull @.str.1) #24
  br label %453

453:                                              ; preds = %452, %449
  br i1 %446, label %456, label %454, !prof !386

454:                                              ; preds = %453
  %455 = load i32, ptr %315, align 8, !tbaa !318
  br label %456

456:                                              ; preds = %453, %454
  %457 = phi i32 [ %455, %454 ], [ 0, %453 ]
  %458 = add i32 %457, -1
  %459 = icmp sgt i32 %458, -1
  br i1 %459, label %460, label %536, !prof !387

460:                                              ; preds = %456
  %461 = zext nneg i32 %458 to i64
  br label %462

462:                                              ; preds = %460, %532
  %463 = phi i64 [ %461, %460 ], [ %534, %532 ]
  %464 = phi i32 [ 0, %460 ], [ %533, %532 ]
  %465 = getelementptr inbounds %struct.VEC_tree_base, ptr %315, i64 0, i32 2, i64 %463
  %466 = load ptr, ptr %465, align 8, !tbaa !205
  %467 = load i64, ptr %466, align 8
  %468 = trunc i64 %467 to i16
  switch i16 %468, label %532 [
    i16 45, label %469
    i16 46, label %469
    i16 41, label %506
  ], !prof !388

469:                                              ; preds = %462, %462
  %470 = getelementptr inbounds %struct.tree_exp, ptr %466, i64 0, i32 3
  %471 = getelementptr inbounds %struct.tree_exp, ptr %466, i64 1, i32 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !216
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %483, !prof !389

474:                                              ; preds = %469
  %475 = call ptr @array_ref_low_bound(ptr noundef nonnull %466) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53)
  store ptr %475, ptr %53, align 8, !tbaa !205
  %476 = call ptr @walk_tree_1(ptr noundef nonnull %53, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %477 = load ptr, ptr %53, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53)
  %478 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %477) #24
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %480, label %483, !prof !390

480:                                              ; preds = %474
  store ptr %477, ptr %471, align 8, !tbaa !216
  %481 = call i32 @gimplify_expr(ptr noundef nonnull %471, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_reg, i32 noundef 1)
  %482 = call i32 @llvm.smin.i32(i32 %464, i32 %481)
  br label %483

483:                                              ; preds = %480, %474, %469
  %484 = phi i32 [ %464, %469 ], [ %464, %474 ], [ %482, %480 ]
  %485 = getelementptr inbounds %struct.tree_exp, ptr %466, i64 1, i32 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !216
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %532, !prof !389

488:                                              ; preds = %483
  %489 = load ptr, ptr %470, align 8, !tbaa !216
  %490 = getelementptr inbounds %struct.tree_common, ptr %489, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !216
  %492 = getelementptr inbounds %struct.tree_common, ptr %491, i64 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !216
  %494 = call ptr @array_ref_element_size(ptr noundef nonnull %466) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54)
  store ptr %494, ptr %54, align 8, !tbaa !205
  %495 = call ptr @walk_tree_1(ptr noundef nonnull %54, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %496 = load ptr, ptr %54, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54)
  %497 = getelementptr inbounds %struct.tree_type, ptr %493, i64 0, i32 7
  %498 = load i32, ptr %497, align 8, !tbaa !216
  %499 = lshr i32 %498, 3
  %500 = zext nneg i32 %499 to i64
  %501 = call ptr @size_int_kind(i64 noundef %500, i32 noundef 0) #24
  %502 = call ptr @size_binop_loc(i32 noundef %312, i32 noundef 76, ptr noundef %496, ptr noundef %501) #24
  %503 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %502) #24
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %505, label %532, !prof !390

505:                                              ; preds = %488
  store ptr %502, ptr %485, align 8, !tbaa !216
  br label %527

506:                                              ; preds = %462
  %507 = getelementptr inbounds %struct.tree_exp, ptr %466, i64 1, i32 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !216
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %532, !prof !391

510:                                              ; preds = %506
  %511 = call ptr @component_ref_field_offset(ptr noundef nonnull %466) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %55)
  store ptr %511, ptr %55, align 8, !tbaa !205
  %512 = call ptr @walk_tree_1(ptr noundef nonnull %55, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %513 = load ptr, ptr %55, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %55)
  %514 = getelementptr inbounds %struct.tree_exp, ptr %466, i64 1
  %515 = load ptr, ptr %514, align 8, !tbaa !216
  %516 = getelementptr inbounds %struct.tree_decl_common, ptr %515, i64 0, i32 2
  %517 = load i64, ptr %516, align 8
  %518 = lshr i64 %517, 32
  %519 = and i64 %518, 255
  %520 = shl nuw i64 1, %519
  %521 = lshr i64 %520, 3
  %522 = call ptr @size_int_kind(i64 noundef %521, i32 noundef 0) #24
  %523 = call ptr @size_binop_loc(i32 noundef %312, i32 noundef 76, ptr noundef %513, ptr noundef %522) #24
  %524 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %523) #24
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %526, label %532, !prof !392

526:                                              ; preds = %510
  store ptr %523, ptr %507, align 8, !tbaa !216
  br label %527

527:                                              ; preds = %505, %526
  %528 = phi ptr [ %507, %526 ], [ %485, %505 ]
  %529 = phi i32 [ %464, %526 ], [ %484, %505 ]
  %530 = call i32 @gimplify_expr(ptr noundef nonnull %528, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_reg, i32 noundef 1)
  %531 = call i32 @llvm.smin.i32(i32 %529, i32 %530)
  br label %532

532:                                              ; preds = %527, %462, %510, %506, %488, %483
  %533 = phi i32 [ %484, %483 ], [ %464, %506 ], [ %484, %488 ], [ %464, %510 ], [ %464, %462 ], [ %531, %527 ]
  %534 = add nsw i64 %463, -1
  %535 = icmp sgt i64 %463, 0
  br i1 %535, label %462, label %536, !prof !393, !llvm.loop !394

536:                                              ; preds = %532, %456
  %537 = phi i32 [ 0, %456 ], [ %533, %532 ]
  %538 = or i32 %302, 2
  %539 = call i32 @gimplify_expr(ptr noundef nonnull %316, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_min_lval, i32 noundef %538)
  %540 = call i32 @llvm.smin.i32(i32 %537, i32 %539)
  br label %541

541:                                              ; preds = %571, %536
  %542 = phi i32 [ %540, %536 ], [ %572, %571 ]
  br i1 %446, label %545, label %543, !prof !395

543:                                              ; preds = %541
  %544 = load i32, ptr %315, align 8, !tbaa !318
  br label %545

545:                                              ; preds = %541, %543
  %546 = phi i32 [ %544, %543 ], [ 0, %541 ]
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %576, label %548, !prof !396

548:                                              ; preds = %545
  %549 = load i32, ptr %315, align 8, !tbaa !318
  %550 = add i32 %549, -1
  store i32 %550, ptr %315, align 8, !tbaa !318
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds %struct.VEC_tree_base, ptr %315, i64 0, i32 2, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !205
  %554 = load i64, ptr %553, align 8
  %555 = trunc i64 %554 to i16
  switch i16 %555, label %571 [
    i16 45, label %556
    i16 46, label %556
    i16 42, label %561
  ], !prof !397

556:                                              ; preds = %548, %548
  %557 = getelementptr inbounds %struct.tree_exp, ptr %553, i64 1
  %558 = load ptr, ptr %557, align 8, !tbaa !216
  %559 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %558) #24
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %566, label %571, !prof !398

561:                                              ; preds = %548
  %562 = getelementptr inbounds %struct.tree_exp, ptr %553, i64 1
  %563 = call i32 @gimplify_expr(ptr noundef nonnull %562, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %564 = call i32 @llvm.smin.i32(i32 %542, i32 %563)
  %565 = getelementptr inbounds %struct.tree_exp, ptr %553, i64 1, i32 0, i32 1
  br label %566

566:                                              ; preds = %556, %561
  %567 = phi ptr [ %565, %561 ], [ %557, %556 ]
  %568 = phi i32 [ %564, %561 ], [ %542, %556 ]
  %569 = call i32 @gimplify_expr(ptr noundef nonnull %567, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %570 = call i32 @llvm.smin.i32(i32 %568, i32 %569)
  br label %571

571:                                              ; preds = %566, %548, %556
  %572 = phi i32 [ %542, %556 ], [ %542, %548 ], [ %570, %566 ]
  %573 = getelementptr inbounds %struct.tree_exp, ptr %553, i64 0, i32 3
  %574 = load ptr, ptr %573, align 8, !tbaa !216
  %575 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %574) #24
  store ptr %575, ptr %573, align 8, !tbaa !216
  call void @recalculate_side_effects(ptr noundef nonnull %553) #24
  br label %541, !llvm.loop !399

576:                                              ; preds = %545
  %577 = and i32 %302, 1
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %586, label %579, !prof !400

579:                                              ; preds = %576
  %580 = load ptr, ptr %0, align 8, !tbaa !205
  %581 = load i64, ptr %580, align 8
  %582 = and i64 %581, 65535
  %583 = icmp eq i64 %582, 41
  br i1 %583, label %584, label %586, !prof !401

584:                                              ; preds = %579
  call fastcc void @canonicalize_component_ref(ptr noundef nonnull %0)
  %585 = call i32 @llvm.smin.i32(i32 %542, i32 0)
  br label %586

586:                                              ; preds = %576, %579, %584
  %587 = phi i32 [ %585, %584 ], [ %542, %579 ], [ %542, %576 ]
  br i1 %446, label %4420, label %588, !prof !386

588:                                              ; preds = %586
  call void @free(ptr noundef %315)
  br label %4420

589:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %79) #24
  store ptr %211, ptr %79, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %80) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %81) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %82) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %83) #24
  store ptr null, ptr %83, align 8, !tbaa !205
  %590 = load i64, ptr %211, align 8
  %591 = and i64 %590, 65535
  %592 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !220
  %594 = add i32 %593, -4
  %595 = icmp ult i32 %594, 7
  br i1 %595, label %596, label %599, !prof !402

596:                                              ; preds = %589
  %597 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %598 = load i32, ptr %597, align 8, !tbaa !216
  br label %599

599:                                              ; preds = %596, %589
  %600 = phi i32 [ %598, %596 ], [ 0, %589 ]
  %601 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %602 = load ptr, ptr %601, align 8, !tbaa !216
  %603 = load i64, ptr %602, align 8
  %604 = and i64 %603, 65535
  %605 = icmp eq i64 %604, 19
  br i1 %605, label %720, label %606, !prof !403

606:                                              ; preds = %599
  %607 = and i32 %4, 3
  %608 = icmp ne i32 %607, 2
  %609 = and i64 %603, 262144
  %610 = icmp eq i64 %609, 0
  %611 = and i1 %608, %610
  br i1 %611, label %612, label %643, !prof !404

612:                                              ; preds = %606
  %613 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %614 = getelementptr inbounds %struct.gimplify_ctx, ptr %613, i64 0, i32 11
  %615 = load i8, ptr %614, align 2, !tbaa !405
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %638, label %617, !prof !404

617:                                              ; preds = %612
  %618 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %619 = load ptr, ptr %618, align 8, !tbaa !216
  %620 = load i64, ptr %619, align 8
  %621 = and i64 %620, 65536
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %623, label %638

623:                                              ; preds = %617
  %624 = call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef nonnull %619), !range !249
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %626, label %638

626:                                              ; preds = %623
  %627 = load ptr, ptr %0, align 8, !tbaa !205
  %628 = getelementptr inbounds %struct.tree_exp, ptr %627, i64 1, i32 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !216
  %630 = load i64, ptr %629, align 8
  %631 = and i64 %630, 65536
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %626
  %634 = call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef nonnull %629), !range !249
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %636, label %638

636:                                              ; preds = %633
  %637 = call fastcc i32 @gimplify_pure_cond_expr(ptr noundef nonnull %0, ptr noundef nonnull %145)
  br label %1141

638:                                              ; preds = %633, %626, %623, %617, %612
  %639 = load ptr, ptr %79, align 8, !tbaa !205
  %640 = getelementptr inbounds %struct.tree_common, ptr %639, i64 0, i32 2
  %641 = load ptr, ptr %640, align 8, !tbaa !216
  %642 = call ptr @create_tmp_var(ptr noundef %641, ptr noundef nonnull @.str.6)
  br label %680

643:                                              ; preds = %606
  %644 = call ptr @build_pointer_type(ptr noundef nonnull %602) #24
  %645 = load ptr, ptr %79, align 8, !tbaa !205
  %646 = getelementptr inbounds %struct.tree_exp, ptr %645, i64 1
  %647 = load ptr, ptr %646, align 8, !tbaa !216
  %648 = getelementptr inbounds %struct.tree_common, ptr %647, i64 0, i32 2
  %649 = load ptr, ptr %648, align 8, !tbaa !216
  %650 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %651 = icmp eq ptr %649, %650
  br i1 %651, label %656, label %652

652:                                              ; preds = %643
  %653 = call ptr @build_fold_addr_expr_loc(i32 noundef %600, ptr noundef %647) #24
  %654 = load ptr, ptr %79, align 8, !tbaa !205
  %655 = getelementptr inbounds %struct.tree_exp, ptr %654, i64 1
  store ptr %653, ptr %655, align 8, !tbaa !216
  br label %656

656:                                              ; preds = %652, %643
  %657 = load ptr, ptr %79, align 8, !tbaa !205
  %658 = getelementptr inbounds %struct.tree_exp, ptr %657, i64 1, i32 0, i32 1
  %659 = load ptr, ptr %658, align 8, !tbaa !216
  %660 = getelementptr inbounds %struct.tree_common, ptr %659, i64 0, i32 2
  %661 = load ptr, ptr %660, align 8, !tbaa !216
  %662 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %663 = icmp eq ptr %661, %662
  br i1 %663, label %668, label %664

664:                                              ; preds = %656
  %665 = call ptr @build_fold_addr_expr_loc(i32 noundef %600, ptr noundef %659) #24
  %666 = load ptr, ptr %79, align 8, !tbaa !205
  %667 = getelementptr inbounds %struct.tree_exp, ptr %666, i64 1, i32 0, i32 1
  store ptr %665, ptr %667, align 8, !tbaa !216
  br label %668

668:                                              ; preds = %664, %656
  %669 = call ptr @create_tmp_var(ptr noundef %644, ptr noundef nonnull @.str.6)
  %670 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %671 = load ptr, ptr %79, align 8, !tbaa !205
  %672 = getelementptr inbounds %struct.tree_exp, ptr %671, i64 0, i32 3
  %673 = load ptr, ptr %672, align 8, !tbaa !216
  %674 = getelementptr inbounds %struct.tree_exp, ptr %671, i64 1
  %675 = load ptr, ptr %674, align 8, !tbaa !216
  %676 = getelementptr inbounds %struct.tree_exp, ptr %671, i64 1, i32 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !216
  %678 = call ptr @build3_stat(i32 noundef 56, ptr noundef %670, ptr noundef %673, ptr noundef %675, ptr noundef %677) #24
  store ptr %678, ptr %79, align 8, !tbaa !205
  %679 = call ptr @build_fold_indirect_ref_loc(i32 noundef %600, ptr noundef %669) #24
  br label %680

680:                                              ; preds = %668, %638
  %681 = phi ptr [ %679, %668 ], [ %642, %638 ]
  %682 = phi ptr [ %669, %668 ], [ %642, %638 ]
  %683 = load ptr, ptr %79, align 8, !tbaa !205
  %684 = getelementptr inbounds %struct.tree_exp, ptr %683, i64 1
  %685 = load ptr, ptr %684, align 8, !tbaa !216
  %686 = getelementptr inbounds %struct.tree_common, ptr %685, i64 0, i32 2
  %687 = load ptr, ptr %686, align 8, !tbaa !216
  %688 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %689 = icmp eq ptr %687, %688
  br i1 %689, label %696, label %690, !prof !406

690:                                              ; preds = %680
  %691 = getelementptr inbounds %struct.tree_common, ptr %682, i64 0, i32 2
  %692 = load ptr, ptr %691, align 8, !tbaa !216
  %693 = call ptr @build2_stat(i32 noundef 53, ptr noundef %692, ptr noundef %682, ptr noundef %685) #24
  %694 = load ptr, ptr %79, align 8, !tbaa !205
  %695 = getelementptr inbounds %struct.tree_exp, ptr %694, i64 1
  store ptr %693, ptr %695, align 8, !tbaa !216
  br label %696

696:                                              ; preds = %690, %680
  %697 = load ptr, ptr %79, align 8, !tbaa !205
  %698 = getelementptr inbounds %struct.tree_exp, ptr %697, i64 1, i32 0, i32 1
  %699 = load ptr, ptr %698, align 8, !tbaa !216
  %700 = getelementptr inbounds %struct.tree_common, ptr %699, i64 0, i32 2
  %701 = load ptr, ptr %700, align 8, !tbaa !216
  %702 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %703 = icmp eq ptr %701, %702
  br i1 %703, label %710, label %704, !prof !406

704:                                              ; preds = %696
  %705 = getelementptr inbounds %struct.tree_common, ptr %682, i64 0, i32 2
  %706 = load ptr, ptr %705, align 8, !tbaa !216
  %707 = call ptr @build2_stat(i32 noundef 53, ptr noundef %706, ptr noundef %682, ptr noundef %699) #24
  %708 = load ptr, ptr %79, align 8, !tbaa !205
  %709 = getelementptr inbounds %struct.tree_exp, ptr %708, i64 1, i32 0, i32 1
  store ptr %707, ptr %709, align 8, !tbaa !216
  br label %710

710:                                              ; preds = %704, %696
  %711 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %712 = load ptr, ptr %79, align 8, !tbaa !205
  %713 = getelementptr inbounds %struct.tree_common, ptr %712, i64 0, i32 2
  store ptr %711, ptr %713, align 8, !tbaa !216
  call void @recalculate_side_effects(ptr noundef %712) #24
  %714 = load ptr, ptr %145, align 8, !tbaa !205
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %718, !prof !250

716:                                              ; preds = %710
  %717 = call ptr @gimple_seq_alloc() #24
  store ptr %717, ptr %145, align 8, !tbaa !205
  br label %718

718:                                              ; preds = %716, %710
  %719 = call i32 @gimplify_expr(ptr noundef nonnull %79, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  store ptr %681, ptr %0, align 8, !tbaa !205
  br label %1141

720:                                              ; preds = %599
  %721 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %722 = load ptr, ptr %721, align 8, !tbaa !216
  %723 = call ptr @gimple_boolify(ptr noundef %722)
  %724 = load ptr, ptr %79, align 8, !tbaa !205
  %725 = getelementptr inbounds %struct.tree_exp, ptr %724, i64 0, i32 3
  store ptr %723, ptr %725, align 8, !tbaa !216
  %726 = load i64, ptr %723, align 8
  %727 = trunc i64 %726 to i32
  %728 = and i32 %727, 65535
  %729 = add nsw i32 %728, -91
  %730 = icmp ult i32 %729, 2
  br i1 %730, label %731, label %788, !prof !407

731:                                              ; preds = %720
  %732 = call fastcc ptr @shortcut_cond_expr(ptr noundef %724)
  store ptr %732, ptr %79, align 8, !tbaa !205
  %733 = load ptr, ptr %0, align 8, !tbaa !205
  %734 = icmp eq ptr %732, %733
  br i1 %734, label %788, label %735, !prof !408

735:                                              ; preds = %731
  store ptr %732, ptr %0, align 8, !tbaa !205
  %736 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %737 = getelementptr inbounds %struct.gimplify_ctx, ptr %736, i64 0, i32 8
  %738 = load i32, ptr %737, align 8, !tbaa !409
  %739 = add nsw i32 %738, 1
  store i32 %739, ptr %737, align 8, !tbaa !409
  %740 = load ptr, ptr %83, align 8, !tbaa !205
  %741 = icmp eq ptr %740, null
  br i1 %741, label %742, label %744, !prof !250

742:                                              ; preds = %735
  %743 = call ptr @gimple_seq_alloc() #24
  store ptr %743, ptr %83, align 8, !tbaa !205
  br label %744

744:                                              ; preds = %742, %735
  %745 = call i32 @gimplify_expr(ptr noundef %0, ptr noundef nonnull %83, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  %746 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %747 = getelementptr inbounds %struct.gimplify_ctx, ptr %746, i64 0, i32 8
  %748 = load i32, ptr %747, align 8, !tbaa !409
  %749 = add nsw i32 %748, -1
  store i32 %749, ptr %747, align 8, !tbaa !409
  %750 = icmp sgt i32 %748, 0
  br i1 %750, label %752, label %751, !prof !410

751:                                              ; preds = %744
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #24
  br label %752

752:                                              ; preds = %751, %744
  %753 = icmp eq i32 %749, 0
  br i1 %753, label %754, label %786, !prof !411

754:                                              ; preds = %752
  %755 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %756 = getelementptr inbounds %struct.gimplify_ctx, ptr %755, i64 0, i32 3
  %757 = load ptr, ptr %756, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %43) #24
  %758 = icmp eq ptr %757, null
  br i1 %758, label %783, label %759, !prof !413

759:                                              ; preds = %754
  %760 = load ptr, ptr %145, align 8, !tbaa !205
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %764, !prof !327

762:                                              ; preds = %759
  %763 = call ptr @gimple_seq_alloc() #24
  store ptr %763, ptr %145, align 8, !tbaa !205
  br label %764

764:                                              ; preds = %762, %759
  %765 = load ptr, ptr %145, align 8, !tbaa !205
  %766 = icmp eq ptr %765, null
  br i1 %766, label %770, label %767, !prof !327

767:                                              ; preds = %764
  %768 = getelementptr inbounds %struct.gimple_seq_d, ptr %765, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !252, !noalias !414
  br label %770

770:                                              ; preds = %767, %764
  %771 = phi ptr [ %769, %767 ], [ null, %764 ]
  %772 = icmp eq ptr %771, null
  br i1 %772, label %779, label %773, !prof !327

773:                                              ; preds = %770
  %774 = load ptr, ptr %771, align 8, !tbaa !275, !noalias !414
  %775 = icmp eq ptr %774, null
  br i1 %775, label %779, label %776, !prof !327

776:                                              ; preds = %773
  %777 = getelementptr inbounds %struct.gimple_statement_base, ptr %774, i64 0, i32 4
  %778 = load ptr, ptr %777, align 8, !tbaa !216, !noalias !414
  br label %779

779:                                              ; preds = %776, %773, %770
  %780 = phi ptr [ %778, %776 ], [ null, %773 ], [ null, %770 ]
  %781 = getelementptr inbounds i8, ptr %43, i64 8
  %782 = getelementptr inbounds i8, ptr %43, i64 16
  store ptr %771, ptr %43, align 8, !tbaa.struct !417
  store ptr %765, ptr %781, align 8, !tbaa.struct !244
  store ptr %780, ptr %782, align 8, !tbaa.struct !245
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %43, ptr noundef nonnull %757, i32 noundef 0) #24
  br label %783

783:                                              ; preds = %779, %754
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %43) #24
  %784 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %785 = getelementptr inbounds %struct.gimplify_ctx, ptr %784, i64 0, i32 3
  store ptr null, ptr %785, align 8, !tbaa !412
  br label %786

786:                                              ; preds = %752, %783
  %787 = load ptr, ptr %83, align 8, !tbaa !205
  call void @gimple_seq_add_seq(ptr noundef nonnull %145, ptr noundef %787) #24
  br label %1141

788:                                              ; preds = %731, %720
  %789 = load ptr, ptr %79, align 8, !tbaa !205
  %790 = getelementptr inbounds %struct.tree_exp, ptr %789, i64 0, i32 3
  %791 = call i32 @gimplify_expr(ptr noundef nonnull %790, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_condexpr, i32 noundef 1)
  %792 = icmp eq i32 %791, -2
  br i1 %792, label %1141, label %793, !prof !418

793:                                              ; preds = %788
  %794 = load ptr, ptr %79, align 8, !tbaa !205
  %795 = getelementptr inbounds %struct.tree_exp, ptr %794, i64 0, i32 3
  %796 = load ptr, ptr %795, align 8, !tbaa !216
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %799, !prof !418

798:                                              ; preds = %793
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2970, ptr noundef nonnull @.str.1) #24
  br label %799

799:                                              ; preds = %798, %793
  %800 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %801 = getelementptr inbounds %struct.gimplify_ctx, ptr %800, i64 0, i32 8
  %802 = load i32, ptr %801, align 8, !tbaa !409
  %803 = add nsw i32 %802, 1
  store i32 %803, ptr %801, align 8, !tbaa !409
  %804 = load ptr, ptr %79, align 8, !tbaa !205
  %805 = getelementptr inbounds %struct.tree_exp, ptr %804, i64 1
  %806 = load ptr, ptr %805, align 8, !tbaa !216
  %807 = icmp eq ptr %806, null
  br i1 %807, label %862, label %808, !prof !419

808:                                              ; preds = %799
  %809 = load i64, ptr %806, align 8
  %810 = and i64 %809, 65535
  %811 = icmp eq i64 %810, 134
  br i1 %811, label %812, label %862, !prof !420

812:                                              ; preds = %808
  %813 = getelementptr inbounds %struct.tree_exp, ptr %806, i64 0, i32 3
  %814 = load ptr, ptr %813, align 8, !tbaa !216
  %815 = load i64, ptr %814, align 8
  %816 = and i64 %815, 65535
  %817 = icmp eq i64 %816, 30
  br i1 %817, label %818, label %862, !prof !421

818:                                              ; preds = %812
  %819 = getelementptr inbounds %struct.tree_decl_minimal, ptr %814, i64 0, i32 4
  %820 = load ptr, ptr %819, align 8, !tbaa !216
  %821 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %822 = icmp eq ptr %820, %821
  br i1 %822, label %823, label %862, !prof !421

823:                                              ; preds = %818
  %824 = load i32, ptr @optimize, align 4, !tbaa !220
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %864, !prof !422

826:                                              ; preds = %823
  %827 = load i64, ptr %804, align 8
  %828 = and i64 %827, 65535
  %829 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %828
  %830 = load i32, ptr %829, align 4, !tbaa !220
  %831 = add i32 %830, -4
  %832 = icmp ult i32 %831, 7
  br i1 %832, label %833, label %836

833:                                              ; preds = %826
  %834 = getelementptr inbounds %struct.tree_exp, ptr %804, i64 0, i32 1
  %835 = load i32, ptr %834, align 8, !tbaa !216
  br label %836

836:                                              ; preds = %833, %826
  %837 = phi i32 [ %835, %833 ], [ 0, %826 ]
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %864, label %839

839:                                              ; preds = %836
  %840 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %810
  %841 = load i32, ptr %840, align 4, !tbaa !220
  %842 = add i32 %841, -4
  %843 = icmp ult i32 %842, 7
  br i1 %843, label %844, label %847

844:                                              ; preds = %839
  %845 = getelementptr inbounds %struct.tree_exp, ptr %806, i64 0, i32 1
  %846 = load i32, ptr %845, align 8, !tbaa !216
  br label %847

847:                                              ; preds = %844, %839
  %848 = phi i32 [ %846, %844 ], [ 0, %839 ]
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %864, label %850

850:                                              ; preds = %847
  br i1 %832, label %851, label %854

851:                                              ; preds = %850
  %852 = getelementptr inbounds %struct.tree_exp, ptr %804, i64 0, i32 1
  %853 = load i32, ptr %852, align 8, !tbaa !216
  br label %854

854:                                              ; preds = %851, %850
  %855 = phi i32 [ %853, %851 ], [ 0, %850 ]
  br i1 %843, label %856, label %859

856:                                              ; preds = %854
  %857 = getelementptr inbounds %struct.tree_exp, ptr %806, i64 0, i32 1
  %858 = load i32, ptr %857, align 8, !tbaa !216
  br label %859

859:                                              ; preds = %856, %854
  %860 = phi i32 [ %858, %856 ], [ 0, %854 ]
  %861 = icmp eq i32 %855, %860
  br i1 %861, label %864, label %862

862:                                              ; preds = %859, %818, %812, %808, %799
  %863 = call ptr @create_artificial_label(i32 noundef 0) #24
  br label %864

864:                                              ; preds = %823, %836, %847, %859, %862
  %865 = phi i1 [ true, %862 ], [ false, %859 ], [ false, %847 ], [ false, %836 ], [ false, %823 ]
  %866 = phi ptr [ %863, %862 ], [ %814, %859 ], [ %814, %847 ], [ %814, %836 ], [ %814, %823 ]
  %867 = load ptr, ptr %79, align 8, !tbaa !205
  %868 = getelementptr inbounds %struct.tree_exp, ptr %867, i64 1, i32 0, i32 1
  %869 = load ptr, ptr %868, align 8, !tbaa !216
  %870 = icmp eq ptr %869, null
  br i1 %870, label %918, label %871, !prof !423

871:                                              ; preds = %864
  %872 = load i64, ptr %869, align 8
  %873 = and i64 %872, 65535
  %874 = icmp eq i64 %873, 134
  br i1 %874, label %875, label %918, !prof !424

875:                                              ; preds = %871
  %876 = getelementptr inbounds %struct.tree_exp, ptr %869, i64 0, i32 3
  %877 = load ptr, ptr %876, align 8, !tbaa !216
  %878 = load i64, ptr %877, align 8
  %879 = and i64 %878, 65535
  %880 = icmp eq i64 %879, 30
  br i1 %880, label %881, label %918, !prof !425

881:                                              ; preds = %875
  %882 = getelementptr inbounds %struct.tree_decl_minimal, ptr %877, i64 0, i32 4
  %883 = load ptr, ptr %882, align 8, !tbaa !216
  %884 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %885 = icmp eq ptr %883, %884
  br i1 %885, label %886, label %918, !prof !425

886:                                              ; preds = %881
  %887 = load i32, ptr @optimize, align 4, !tbaa !220
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %889, label %920, !prof !426

889:                                              ; preds = %886
  %890 = load i64, ptr %867, align 8
  %891 = and i64 %890, 65535
  %892 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %891
  %893 = load i32, ptr %892, align 4, !tbaa !220
  %894 = add i32 %893, -4
  %895 = icmp ult i32 %894, 7
  br i1 %895, label %896, label %899

896:                                              ; preds = %889
  %897 = getelementptr inbounds %struct.tree_exp, ptr %867, i64 0, i32 1
  %898 = load i32, ptr %897, align 8, !tbaa !216
  br label %899

899:                                              ; preds = %896, %889
  %900 = phi i32 [ %898, %896 ], [ 0, %889 ]
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %920, label %902

902:                                              ; preds = %899
  %903 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %873
  %904 = load i32, ptr %903, align 4, !tbaa !220
  %905 = add i32 %904, -4
  %906 = icmp ult i32 %905, 7
  br i1 %906, label %907, label %920

907:                                              ; preds = %902
  %908 = getelementptr inbounds %struct.tree_exp, ptr %869, i64 0, i32 1
  %909 = load i32, ptr %908, align 8, !tbaa !216
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %920, label %911

911:                                              ; preds = %907
  br i1 %895, label %912, label %915

912:                                              ; preds = %911
  %913 = getelementptr inbounds %struct.tree_exp, ptr %867, i64 0, i32 1
  %914 = load i32, ptr %913, align 8, !tbaa !216
  br label %915

915:                                              ; preds = %912, %911
  %916 = phi i32 [ %914, %912 ], [ 0, %911 ]
  %917 = icmp eq i32 %916, %909
  br i1 %917, label %920, label %918

918:                                              ; preds = %915, %881, %875, %871, %864
  %919 = call ptr @create_artificial_label(i32 noundef 0) #24
  br label %920

920:                                              ; preds = %886, %899, %902, %907, %915, %918
  %921 = phi ptr [ %919, %918 ], [ %877, %915 ], [ %877, %907 ], [ %877, %902 ], [ %877, %899 ], [ %877, %886 ]
  %922 = phi i1 [ false, %918 ], [ true, %915 ], [ true, %907 ], [ true, %902 ], [ true, %899 ], [ true, %886 ]
  %923 = phi i1 [ true, %918 ], [ false, %915 ], [ false, %907 ], [ false, %902 ], [ false, %899 ], [ false, %886 ]
  %924 = load ptr, ptr %79, align 8, !tbaa !205
  %925 = getelementptr inbounds %struct.tree_exp, ptr %924, i64 0, i32 3
  %926 = load ptr, ptr %925, align 8, !tbaa !216
  call void @gimple_cond_get_ops_from_tree(ptr noundef %926, ptr noundef nonnull %82, ptr noundef nonnull %80, ptr noundef nonnull %81) #24
  %927 = load i32, ptr %82, align 4, !tbaa !220
  %928 = load ptr, ptr %80, align 8, !tbaa !205
  %929 = load ptr, ptr %81, align 8, !tbaa !205
  %930 = call ptr @gimple_build_cond(i32 noundef %927, ptr noundef %928, ptr noundef %929, ptr noundef %866, ptr noundef %921) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #24
  %931 = icmp eq ptr %930, null
  br i1 %931, label %956, label %932, !prof !427

932:                                              ; preds = %920
  %933 = load ptr, ptr %83, align 8, !tbaa !205
  %934 = icmp eq ptr %933, null
  br i1 %934, label %935, label %937, !prof !428

935:                                              ; preds = %932
  %936 = call ptr @gimple_seq_alloc() #24
  store ptr %936, ptr %83, align 8, !tbaa !205
  br label %937

937:                                              ; preds = %935, %932
  %938 = load ptr, ptr %83, align 8, !tbaa !205
  %939 = icmp eq ptr %938, null
  br i1 %939, label %943, label %940, !prof !427

940:                                              ; preds = %937
  %941 = getelementptr inbounds %struct.gimple_seq_d, ptr %938, i64 0, i32 1
  %942 = load ptr, ptr %941, align 8, !tbaa !252, !noalias !429
  br label %943

943:                                              ; preds = %940, %937
  %944 = phi ptr [ %942, %940 ], [ null, %937 ]
  %945 = icmp eq ptr %944, null
  br i1 %945, label %952, label %946, !prof !432

946:                                              ; preds = %943
  %947 = load ptr, ptr %944, align 8, !tbaa !275, !noalias !429
  %948 = icmp eq ptr %947, null
  br i1 %948, label %952, label %949, !prof !433

949:                                              ; preds = %946
  %950 = getelementptr inbounds %struct.gimple_statement_base, ptr %947, i64 0, i32 4
  %951 = load ptr, ptr %950, align 8, !tbaa !216, !noalias !429
  br label %952

952:                                              ; preds = %949, %946, %943
  %953 = phi ptr [ %951, %949 ], [ null, %946 ], [ null, %943 ]
  %954 = getelementptr inbounds i8, ptr %42, i64 8
  %955 = getelementptr inbounds i8, ptr %42, i64 16
  store ptr %944, ptr %42, align 8, !tbaa.struct !417
  store ptr %938, ptr %954, align 8, !tbaa.struct !244
  store ptr %953, ptr %955, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %42, ptr noundef nonnull %930, i32 noundef 0) #24
  br label %956

956:                                              ; preds = %920, %952
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #24
  br i1 %865, label %957, label %1031, !prof !434

957:                                              ; preds = %956
  %958 = load ptr, ptr %79, align 8, !tbaa !205
  %959 = getelementptr inbounds %struct.tree_exp, ptr %958, i64 1
  %960 = load ptr, ptr %959, align 8, !tbaa !216
  %961 = icmp ne ptr %960, null
  %962 = or i1 %922, %961
  br i1 %962, label %967, label %963, !prof !435

963:                                              ; preds = %957
  %964 = getelementptr inbounds %struct.tree_exp, ptr %958, i64 1, i32 0, i32 1
  %965 = load ptr, ptr %964, align 8, !tbaa !216
  %966 = icmp eq ptr %965, null
  br i1 %966, label %967, label %1031

967:                                              ; preds = %963, %957
  %968 = call ptr @gimple_build_label(ptr noundef %866) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %41) #24
  %969 = icmp eq ptr %968, null
  br i1 %969, label %994, label %970, !prof !427

970:                                              ; preds = %967
  %971 = load ptr, ptr %83, align 8, !tbaa !205
  %972 = icmp eq ptr %971, null
  br i1 %972, label %973, label %975, !prof !428

973:                                              ; preds = %970
  %974 = call ptr @gimple_seq_alloc() #24
  store ptr %974, ptr %83, align 8, !tbaa !205
  br label %975

975:                                              ; preds = %973, %970
  %976 = load ptr, ptr %83, align 8, !tbaa !205
  %977 = icmp eq ptr %976, null
  br i1 %977, label %981, label %978, !prof !427

978:                                              ; preds = %975
  %979 = getelementptr inbounds %struct.gimple_seq_d, ptr %976, i64 0, i32 1
  %980 = load ptr, ptr %979, align 8, !tbaa !252, !noalias !436
  br label %981

981:                                              ; preds = %978, %975
  %982 = phi ptr [ %980, %978 ], [ null, %975 ]
  %983 = icmp eq ptr %982, null
  br i1 %983, label %990, label %984, !prof !432

984:                                              ; preds = %981
  %985 = load ptr, ptr %982, align 8, !tbaa !275, !noalias !436
  %986 = icmp eq ptr %985, null
  br i1 %986, label %990, label %987, !prof !433

987:                                              ; preds = %984
  %988 = getelementptr inbounds %struct.gimple_statement_base, ptr %985, i64 0, i32 4
  %989 = load ptr, ptr %988, align 8, !tbaa !216, !noalias !436
  br label %990

990:                                              ; preds = %987, %984, %981
  %991 = phi ptr [ %989, %987 ], [ null, %984 ], [ null, %981 ]
  %992 = getelementptr inbounds i8, ptr %41, i64 8
  %993 = getelementptr inbounds i8, ptr %41, i64 16
  store ptr %982, ptr %41, align 8, !tbaa.struct !417
  store ptr %976, ptr %992, align 8, !tbaa.struct !244
  store ptr %991, ptr %993, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %41, ptr noundef nonnull %968, i32 noundef 0) #24
  br label %994

994:                                              ; preds = %967, %990
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %41) #24
  %995 = load ptr, ptr %79, align 8, !tbaa !205
  %996 = getelementptr inbounds %struct.tree_exp, ptr %995, i64 1
  %997 = load ptr, ptr %83, align 8, !tbaa !205
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %1001, !prof !250

999:                                              ; preds = %994
  %1000 = call ptr @gimple_seq_alloc() #24
  store ptr %1000, ptr %83, align 8, !tbaa !205
  br label %1001

1001:                                             ; preds = %999, %994
  %1002 = load ptr, ptr %83, align 8, !tbaa !205
  %1003 = icmp eq ptr %1002, null
  br i1 %1003, label %1007, label %1004, !prof !251

1004:                                             ; preds = %1001
  %1005 = getelementptr inbounds %struct.gimple_seq_d, ptr %1002, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !252
  br label %1007

1007:                                             ; preds = %1004, %1001
  %1008 = phi ptr [ %1006, %1004 ], [ null, %1001 ]
  %1009 = call i32 @gimplify_expr(ptr noundef nonnull %996, ptr noundef nonnull %83, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  %1010 = load ptr, ptr %83, align 8, !tbaa !205
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1015, label %1012, !prof !251

1012:                                             ; preds = %1007
  %1013 = getelementptr inbounds %struct.gimple_seq_d, ptr %1010, i64 0, i32 1
  %1014 = load ptr, ptr %1013, align 8, !tbaa !252
  br label %1015

1015:                                             ; preds = %1007, %1012
  %1016 = phi ptr [ %1014, %1012 ], [ null, %1007 ]
  %1017 = icmp ne ptr %1008, %1016
  br i1 %922, label %1031, label %1018, !prof !439

1018:                                             ; preds = %1015
  %1019 = load ptr, ptr %79, align 8, !tbaa !205
  %1020 = getelementptr inbounds %struct.tree_exp, ptr %1019, i64 1, i32 0, i32 1
  %1021 = load ptr, ptr %1020, align 8, !tbaa !216
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1031, label %1023, !prof !440

1023:                                             ; preds = %1018
  %1024 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %1010) #24
  %1025 = icmp eq i8 %1024, 0
  br i1 %1025, label %1031, label %1026, !prof !441

1026:                                             ; preds = %1023
  %1027 = call ptr @create_artificial_label(i32 noundef 0) #24
  %1028 = call ptr @gimple_build_goto(ptr noundef %1027) #24
  %1029 = load i32, ptr %1028, align 8
  %1030 = or i32 %1029, 2048
  store i32 %1030, ptr %1028, align 8
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %83, ptr noundef nonnull %1028)
  br label %1031

1031:                                             ; preds = %1026, %1023, %1018, %1015, %963, %956
  %1032 = phi ptr [ null, %956 ], [ null, %1015 ], [ %1027, %1026 ], [ null, %1023 ], [ null, %1018 ], [ %866, %963 ]
  %1033 = phi i1 [ true, %956 ], [ %1017, %1015 ], [ %1017, %1026 ], [ %1017, %1023 ], [ %1017, %1018 ], [ false, %963 ]
  br i1 %923, label %1034, label %1085, !prof !442

1034:                                             ; preds = %1031
  %1035 = call ptr @gimple_build_label(ptr noundef %921) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #24
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1061, label %1037, !prof !427

1037:                                             ; preds = %1034
  %1038 = load ptr, ptr %83, align 8, !tbaa !205
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1040, label %1042, !prof !428

1040:                                             ; preds = %1037
  %1041 = call ptr @gimple_seq_alloc() #24
  store ptr %1041, ptr %83, align 8, !tbaa !205
  br label %1042

1042:                                             ; preds = %1040, %1037
  %1043 = load ptr, ptr %83, align 8, !tbaa !205
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1048, label %1045, !prof !427

1045:                                             ; preds = %1042
  %1046 = getelementptr inbounds %struct.gimple_seq_d, ptr %1043, i64 0, i32 1
  %1047 = load ptr, ptr %1046, align 8, !tbaa !252, !noalias !443
  br label %1048

1048:                                             ; preds = %1045, %1042
  %1049 = phi ptr [ %1047, %1045 ], [ null, %1042 ]
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1057, label %1051, !prof !432

1051:                                             ; preds = %1048
  %1052 = load ptr, ptr %1049, align 8, !tbaa !275, !noalias !443
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1057, label %1054, !prof !433

1054:                                             ; preds = %1051
  %1055 = getelementptr inbounds %struct.gimple_statement_base, ptr %1052, i64 0, i32 4
  %1056 = load ptr, ptr %1055, align 8, !tbaa !216, !noalias !443
  br label %1057

1057:                                             ; preds = %1054, %1051, %1048
  %1058 = phi ptr [ %1056, %1054 ], [ null, %1051 ], [ null, %1048 ]
  %1059 = getelementptr inbounds i8, ptr %40, i64 8
  %1060 = getelementptr inbounds i8, ptr %40, i64 16
  store ptr %1049, ptr %40, align 8, !tbaa.struct !417
  store ptr %1043, ptr %1059, align 8, !tbaa.struct !244
  store ptr %1058, ptr %1060, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %40, ptr noundef nonnull %1035, i32 noundef 0) #24
  br label %1061

1061:                                             ; preds = %1034, %1057
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #24
  %1062 = load ptr, ptr %79, align 8, !tbaa !205
  %1063 = getelementptr inbounds %struct.tree_exp, ptr %1062, i64 1, i32 0, i32 1
  %1064 = load ptr, ptr %83, align 8, !tbaa !205
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1066, label %1068, !prof !250

1066:                                             ; preds = %1061
  %1067 = call ptr @gimple_seq_alloc() #24
  store ptr %1067, ptr %83, align 8, !tbaa !205
  br label %1068

1068:                                             ; preds = %1066, %1061
  %1069 = load ptr, ptr %83, align 8, !tbaa !205
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1074, label %1071, !prof !251

1071:                                             ; preds = %1068
  %1072 = getelementptr inbounds %struct.gimple_seq_d, ptr %1069, i64 0, i32 1
  %1073 = load ptr, ptr %1072, align 8, !tbaa !252
  br label %1074

1074:                                             ; preds = %1071, %1068
  %1075 = phi ptr [ %1073, %1071 ], [ null, %1068 ]
  %1076 = call i32 @gimplify_expr(ptr noundef nonnull %1063, ptr noundef nonnull %83, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  %1077 = load ptr, ptr %83, align 8, !tbaa !205
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1082, label %1079, !prof !251

1079:                                             ; preds = %1074
  %1080 = getelementptr inbounds %struct.gimple_seq_d, ptr %1077, i64 0, i32 1
  %1081 = load ptr, ptr %1080, align 8, !tbaa !252
  br label %1082

1082:                                             ; preds = %1074, %1079
  %1083 = phi ptr [ %1081, %1079 ], [ null, %1074 ]
  %1084 = icmp ne ptr %1075, %1083
  br label %1085

1085:                                             ; preds = %1082, %1031
  %1086 = phi i1 [ true, %1031 ], [ %1084, %1082 ]
  %1087 = icmp eq ptr %1032, null
  br i1 %1087, label %1090, label %1088, !prof !446

1088:                                             ; preds = %1085
  %1089 = call ptr @gimple_build_label(ptr noundef nonnull %1032) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %83, ptr noundef %1089)
  br label %1090

1090:                                             ; preds = %1088, %1085
  %1091 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %1092 = getelementptr inbounds %struct.gimplify_ctx, ptr %1091, i64 0, i32 8
  %1093 = load i32, ptr %1092, align 8, !tbaa !409
  %1094 = add nsw i32 %1093, -1
  store i32 %1094, ptr %1092, align 8, !tbaa !409
  %1095 = icmp sgt i32 %1093, 0
  br i1 %1095, label %1097, label %1096, !prof !410

1096:                                             ; preds = %1090
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #24
  br label %1097

1097:                                             ; preds = %1096, %1090
  %1098 = icmp eq i32 %1094, 0
  br i1 %1098, label %1099, label %1131, !prof !411

1099:                                             ; preds = %1097
  %1100 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %1101 = getelementptr inbounds %struct.gimplify_ctx, ptr %1100, i64 0, i32 3
  %1102 = load ptr, ptr %1101, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %39) #24
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %1128, label %1104, !prof !413

1104:                                             ; preds = %1099
  %1105 = load ptr, ptr %145, align 8, !tbaa !205
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1107, label %1109, !prof !327

1107:                                             ; preds = %1104
  %1108 = call ptr @gimple_seq_alloc() #24
  store ptr %1108, ptr %145, align 8, !tbaa !205
  br label %1109

1109:                                             ; preds = %1107, %1104
  %1110 = load ptr, ptr %145, align 8, !tbaa !205
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1115, label %1112, !prof !327

1112:                                             ; preds = %1109
  %1113 = getelementptr inbounds %struct.gimple_seq_d, ptr %1110, i64 0, i32 1
  %1114 = load ptr, ptr %1113, align 8, !tbaa !252, !noalias !447
  br label %1115

1115:                                             ; preds = %1112, %1109
  %1116 = phi ptr [ %1114, %1112 ], [ null, %1109 ]
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1124, label %1118, !prof !327

1118:                                             ; preds = %1115
  %1119 = load ptr, ptr %1116, align 8, !tbaa !275, !noalias !447
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1124, label %1121, !prof !327

1121:                                             ; preds = %1118
  %1122 = getelementptr inbounds %struct.gimple_statement_base, ptr %1119, i64 0, i32 4
  %1123 = load ptr, ptr %1122, align 8, !tbaa !216, !noalias !447
  br label %1124

1124:                                             ; preds = %1121, %1118, %1115
  %1125 = phi ptr [ %1123, %1121 ], [ null, %1118 ], [ null, %1115 ]
  %1126 = getelementptr inbounds i8, ptr %39, i64 8
  %1127 = getelementptr inbounds i8, ptr %39, i64 16
  store ptr %1116, ptr %39, align 8, !tbaa.struct !417
  store ptr %1110, ptr %1126, align 8, !tbaa.struct !244
  store ptr %1125, ptr %1127, align 8, !tbaa.struct !245
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %39, ptr noundef nonnull %1102, i32 noundef 0) #24
  br label %1128

1128:                                             ; preds = %1124, %1099
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #24
  %1129 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %1130 = getelementptr inbounds %struct.gimplify_ctx, ptr %1129, i64 0, i32 3
  store ptr null, ptr %1130, align 8, !tbaa !412
  br label %1131

1131:                                             ; preds = %1097, %1128
  %1132 = load ptr, ptr %83, align 8, !tbaa !205
  call void @gimple_seq_add_seq(ptr noundef nonnull %145, ptr noundef %1132) #24
  %1133 = select i1 %1033, i1 true, i1 %1086, !prof !450
  br i1 %1133, label %1139, label %1134, !prof !451

1134:                                             ; preds = %1131
  %1135 = load ptr, ptr %79, align 8, !tbaa !205
  %1136 = getelementptr inbounds %struct.tree_exp, ptr %1135, i64 0, i32 3
  %1137 = load ptr, ptr %1136, align 8, !tbaa !216
  store ptr %1137, ptr %79, align 8, !tbaa !205
  %1138 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %79, ptr noundef nonnull %145), !range !249
  br label %1139

1139:                                             ; preds = %1134, %1131
  %1140 = phi i32 [ %791, %1134 ], [ 1, %1131 ]
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %1141

1141:                                             ; preds = %636, %718, %786, %788, %1139
  %1142 = phi i32 [ 1, %786 ], [ %1140, %1139 ], [ 1, %718 ], [ %637, %636 ], [ -2, %788 ]
  %1143 = icmp eq i32 %4, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %83) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %82) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %81) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %80) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %79) #24
  br i1 %1143, label %1144, label %4420, !prof !452

1144:                                             ; preds = %1141
  %1145 = load ptr, ptr %0, align 8, !tbaa !205
  %1146 = call fastcc ptr @internal_get_tmp_var(ptr noundef %1145, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext 0)
  store ptr %1146, ptr %0, align 8, !tbaa !205
  call void @mark_addressable(ptr noundef %1146)
  br label %4420

1147:                                             ; preds = %210
  %1148 = icmp ne i32 %4, 0
  %1149 = xor i1 %1148, true
  %1150 = zext i1 %1149 to i8
  %1151 = and i64 %212, 65535
  %1152 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1151
  %1153 = load i32, ptr %1152, align 4, !tbaa !220
  %1154 = add i32 %1153, -4
  %1155 = icmp ult i32 %1154, 7
  br i1 %1155, label %1156, label %1159, !prof !453

1156:                                             ; preds = %1147
  %1157 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %1158 = load i32, ptr %1157, align 8, !tbaa !216
  br label %1159

1159:                                             ; preds = %1156, %1147
  %1160 = phi i32 [ %1158, %1156 ], [ 0, %1147 ]
  %1161 = icmp eq i64 %1151, 59
  br i1 %1161, label %1163, label %1162, !prof !453

1162:                                             ; preds = %1159
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2237, ptr noundef nonnull @.str.1) #24
  br label %1163

1163:                                             ; preds = %1162, %1159
  %1164 = load ptr, ptr %0, align 8, !tbaa !205
  %1165 = load i64, ptr %1164, align 8
  %1166 = and i64 %1165, 65535
  %1167 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1166
  %1168 = load i32, ptr %1167, align 4, !tbaa !220
  %1169 = add i32 %1168, -4
  %1170 = icmp ult i32 %1169, 7
  br i1 %1170, label %1171, label %1174, !prof !453

1171:                                             ; preds = %1163
  %1172 = getelementptr inbounds %struct.tree_exp, ptr %1164, i64 0, i32 1
  %1173 = load i32, ptr %1172, align 8, !tbaa !216
  br label %1174

1174:                                             ; preds = %1171, %1163
  %1175 = phi i32 [ %1173, %1171 ], [ 0, %1163 ]
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1177, label %1180, !prof !454

1177:                                             ; preds = %1174
  %1178 = load i32, ptr @input_location, align 4, !tbaa !220
  %1179 = getelementptr inbounds %struct.tree_exp, ptr %1164, i64 0, i32 1
  store i32 %1178, ptr %1179, align 8, !tbaa !216
  br label %1180

1180:                                             ; preds = %1177, %1174
  %1181 = load ptr, ptr %0, align 8, !tbaa !205
  %1182 = call ptr @get_callee_fndecl(ptr noundef %1181) #24
  %1183 = icmp eq ptr %1182, null
  br i1 %1183, label %1241, label %1184, !prof !454

1184:                                             ; preds = %1180
  %1185 = getelementptr inbounds %struct.tree_function_decl, ptr %1182, i64 0, i32 5
  %1186 = load i32, ptr %1185, align 8
  %1187 = and i32 %1186, 6144
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1241, label %1189, !prof !453

1189:                                             ; preds = %1184
  %1190 = load i32, ptr @input_location, align 4, !tbaa !220
  %1191 = load ptr, ptr %0, align 8, !tbaa !205
  %1192 = call ptr @fold_call_expr(i32 noundef %1190, ptr noundef %1191, i8 noundef zeroext %1150) #24
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1197, label %1194

1194:                                             ; preds = %1189
  %1195 = load ptr, ptr %0, align 8, !tbaa !205
  %1196 = icmp eq ptr %1192, %1195
  br i1 %1196, label %1197, label %1235

1197:                                             ; preds = %1194, %1189
  %1198 = load i32, ptr %1185, align 8
  %1199 = and i32 %1198, 8191
  %1200 = icmp eq i32 %1199, 6659
  br i1 %1200, label %1201, label %1238

1201:                                             ; preds = %1197
  %1202 = load ptr, ptr %0, align 8, !tbaa !205
  %1203 = getelementptr inbounds %struct.tree_exp, ptr %1202, i64 0, i32 3
  %1204 = load ptr, ptr %1203, align 8, !tbaa !216
  %1205 = getelementptr inbounds %struct.tree_int_cst, ptr %1204, i64 0, i32 1
  %1206 = load i64, ptr %1205, align 8, !tbaa !216
  %1207 = trunc i64 %1206 to i32
  %1208 = icmp slt i32 %1207, 5
  br i1 %1208, label %1209, label %1217

1209:                                             ; preds = %1201
  call void (ptr, ...) @error(ptr noundef nonnull @.str.7) #24
  %1210 = load ptr, ptr %0, align 8, !tbaa !205
  %1211 = load i64, ptr %1210, align 8
  %1212 = and i64 %1211, 65535
  %1213 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1212
  %1214 = load i32, ptr %1213, align 4, !tbaa !220
  %1215 = add i32 %1214, -4
  %1216 = icmp ult i32 %1215, 7
  br i1 %1216, label %1228, label %1232

1217:                                             ; preds = %1201
  %1218 = call zeroext i8 @fold_builtin_next_arg(ptr noundef %1202, i8 noundef zeroext 1) #24
  %1219 = icmp eq i8 %1218, 0
  br i1 %1219, label %1238, label %1220

1220:                                             ; preds = %1217
  %1221 = load ptr, ptr %0, align 8, !tbaa !205
  %1222 = load i64, ptr %1221, align 8
  %1223 = and i64 %1222, 65535
  %1224 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1223
  %1225 = load i32, ptr %1224, align 4, !tbaa !220
  %1226 = add i32 %1225, -4
  %1227 = icmp ult i32 %1226, 7
  br i1 %1227, label %1228, label %1232

1228:                                             ; preds = %1220, %1209
  %1229 = phi ptr [ %1210, %1209 ], [ %1221, %1220 ]
  %1230 = getelementptr inbounds %struct.tree_exp, ptr %1229, i64 0, i32 1
  %1231 = load i32, ptr %1230, align 8, !tbaa !216
  br label %1232

1232:                                             ; preds = %1228, %1220, %1209
  %1233 = phi i32 [ 0, %1209 ], [ 0, %1220 ], [ %1231, %1228 ]
  %1234 = call ptr @build_empty_stmt(i32 noundef %1233) #24
  br label %1235

1235:                                             ; preds = %1232, %1194
  %1236 = phi ptr [ %1192, %1194 ], [ %1234, %1232 ]
  %1237 = phi i8 [ 0, %1194 ], [ 1, %1232 ]
  store ptr %1236, ptr %0, align 8, !tbaa !205
  br label %1238

1238:                                             ; preds = %1235, %1217, %1197
  %1239 = phi i8 [ 1, %1217 ], [ 0, %1197 ], [ %1237, %1235 ]
  %1240 = phi i1 [ true, %1217 ], [ true, %1197 ], [ false, %1235 ]
  br i1 %1240, label %1241, label %1519

1241:                                             ; preds = %1238, %1184, %1180
  %1242 = phi i8 [ %1239, %1238 ], [ 0, %1184 ], [ 0, %1180 ]
  %1243 = load ptr, ptr %0, align 8, !tbaa !205
  %1244 = getelementptr inbounds %struct.tree_exp, ptr %1243, i64 1
  %1245 = call i32 @gimplify_expr(ptr noundef nonnull %1244, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_call_addr, i32 noundef 1)
  %1246 = load ptr, ptr %0, align 8, !tbaa !205
  %1247 = getelementptr inbounds %struct.tree_exp, ptr %1246, i64 0, i32 3
  %1248 = load ptr, ptr %1247, align 8, !tbaa !216
  %1249 = getelementptr inbounds %struct.tree_int_cst, ptr %1248, i64 0, i32 1
  %1250 = load i64, ptr %1249, align 8, !tbaa !216
  %1251 = trunc i64 %1250 to i32
  %1252 = add nsw i32 %1251, -3
  %1253 = call ptr @get_callee_fndecl(ptr noundef %1246) #24
  %1254 = icmp ne ptr %1253, null
  br i1 %1254, label %1263, label %1255, !prof !453

1255:                                             ; preds = %1241
  %1256 = load ptr, ptr %0, align 8, !tbaa !205
  %1257 = getelementptr inbounds %struct.tree_exp, ptr %1256, i64 1
  %1258 = load ptr, ptr %1257, align 8, !tbaa !216
  %1259 = getelementptr inbounds %struct.tree_common, ptr %1258, i64 0, i32 2
  %1260 = load ptr, ptr %1259, align 8, !tbaa !216
  %1261 = load i64, ptr %1260, align 8
  %1262 = trunc i64 %1261 to i16
  switch i16 %1262, label %1269 [
    i16 10, label %1263
    i16 12, label %1263
  ]

1263:                                             ; preds = %1255, %1255, %1241
  %1264 = phi ptr [ %1253, %1241 ], [ %1260, %1255 ], [ %1260, %1255 ]
  %1265 = getelementptr inbounds %struct.tree_common, ptr %1264, i64 0, i32 2
  %1266 = load ptr, ptr %1265, align 8, !tbaa !216
  %1267 = getelementptr inbounds %struct.tree_type, ptr %1266, i64 0, i32 1
  %1268 = load ptr, ptr %1267, align 8, !tbaa !216
  br label %1269

1269:                                             ; preds = %1263, %1255
  %1270 = phi ptr [ null, %1255 ], [ %1268, %1263 ]
  br i1 %1254, label %1271, label %1275, !prof !453

1271:                                             ; preds = %1269
  %1272 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1253, i64 0, i32 2
  %1273 = load ptr, ptr %1272, align 8, !tbaa !216
  %1274 = icmp eq ptr %1273, null
  br i1 %1274, label %1275, label %1276, !prof !455

1275:                                             ; preds = %1271, %1269
  br label %1276

1276:                                             ; preds = %1275, %1271
  %1277 = phi ptr [ %1273, %1271 ], [ %1270, %1275 ]
  %1278 = icmp sgt i32 %1251, 3
  %1279 = icmp ne ptr %1277, null
  %1280 = select i1 %1278, i1 %1279, i1 false, !prof !456
  br i1 %1280, label %1281, label %1290, !prof !457

1281:                                             ; preds = %1276, %1281
  %1282 = phi ptr [ %1286, %1281 ], [ %1277, %1276 ]
  %1283 = phi i32 [ %1284, %1281 ], [ 0, %1276 ]
  %1284 = add nuw nsw i32 %1283, 1
  %1285 = getelementptr inbounds %struct.tree_common, ptr %1282, i64 0, i32 1
  %1286 = load ptr, ptr %1285, align 8, !tbaa !216
  %1287 = icmp slt i32 %1284, %1252
  %1288 = icmp ne ptr %1286, null
  %1289 = select i1 %1287, i1 %1288, i1 false, !prof !456
  br i1 %1289, label %1281, label %1290, !prof !458, !llvm.loop !459

1290:                                             ; preds = %1281, %1276
  %1291 = phi i1 [ %1278, %1276 ], [ %1287, %1281 ]
  %1292 = phi i1 [ %1279, %1276 ], [ %1288, %1281 ]
  %1293 = xor i1 %1291, true
  %1294 = or i1 %1292, %1293
  br i1 %1294, label %1373, label %1295, !prof !453

1295:                                             ; preds = %1290
  %1296 = load ptr, ptr %0, align 8, !tbaa !205
  %1297 = shl i64 %1250, 32
  %1298 = add i64 %1297, -4294967296
  %1299 = ashr exact i64 %1298, 32
  %1300 = getelementptr inbounds %struct.tree_exp, ptr %1296, i64 0, i32 3, i64 %1299
  %1301 = load ptr, ptr %1300, align 8, !tbaa !216
  %1302 = load i64, ptr %1301, align 8
  %1303 = and i64 %1302, 65535
  %1304 = icmp eq i64 %1303, 59
  br i1 %1304, label %1305, label %1373

1305:                                             ; preds = %1295
  %1306 = call ptr @get_callee_fndecl(ptr noundef nonnull %1301) #24
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1373, label %1308

1308:                                             ; preds = %1305
  %1309 = load i64, ptr %1306, align 8
  %1310 = and i64 %1309, 65535
  %1311 = icmp eq i64 %1310, 29
  br i1 %1311, label %1312, label %1373

1312:                                             ; preds = %1308
  %1313 = getelementptr inbounds %struct.tree_function_decl, ptr %1306, i64 0, i32 5
  %1314 = load i32, ptr %1313, align 8
  %1315 = and i32 %1314, 8191
  %1316 = icmp eq i32 %1315, 6660
  br i1 %1316, label %1317, label %1373

1317:                                             ; preds = %1312
  %1318 = load ptr, ptr %0, align 8, !tbaa !205
  %1319 = add nsw i32 %1251, -4
  %1320 = getelementptr inbounds %struct.tree_common, ptr %1318, i64 0, i32 2
  %1321 = load ptr, ptr %1320, align 8, !tbaa !216
  %1322 = getelementptr inbounds %struct.tree_exp, ptr %1318, i64 1
  %1323 = load ptr, ptr %1322, align 8, !tbaa !216
  %1324 = getelementptr inbounds %struct.tree_exp, ptr %1318, i64 1, i32 0, i32 2
  %1325 = call ptr @build_call_array_loc(i32 noundef %1160, ptr noundef %1321, ptr noundef %1323, i32 noundef %1319, ptr noundef nonnull %1324) #24
  store ptr %1325, ptr %0, align 8, !tbaa !205
  %1326 = getelementptr inbounds %struct.tree_exp, ptr %1318, i64 1, i32 0, i32 1
  %1327 = load ptr, ptr %1326, align 8, !tbaa !216
  %1328 = getelementptr inbounds %struct.tree_exp, ptr %1325, i64 1, i32 0, i32 1
  store ptr %1327, ptr %1328, align 8, !tbaa !216
  %1329 = load i64, ptr %1318, align 8
  %1330 = and i64 %1329, 262144
  %1331 = load ptr, ptr %0, align 8, !tbaa !205
  %1332 = load i64, ptr %1331, align 8
  %1333 = and i64 %1332, -262145
  %1334 = or disjoint i64 %1333, %1330
  store i64 %1334, ptr %1331, align 8
  %1335 = load i64, ptr %1318, align 8
  %1336 = and i64 %1335, 268435456
  %1337 = load ptr, ptr %0, align 8, !tbaa !205
  %1338 = load i64, ptr %1337, align 8
  %1339 = and i64 %1338, -268435457
  %1340 = or disjoint i64 %1339, %1336
  store i64 %1340, ptr %1337, align 8
  %1341 = load i64, ptr %1318, align 8
  %1342 = and i64 %1341, 536870912
  %1343 = load ptr, ptr %0, align 8, !tbaa !205
  %1344 = load i64, ptr %1343, align 8
  %1345 = and i64 %1344, -536870913
  %1346 = or disjoint i64 %1345, %1342
  store i64 %1346, ptr %1343, align 8
  %1347 = load i64, ptr %1318, align 8
  %1348 = and i64 %1347, 67108864
  %1349 = load ptr, ptr %0, align 8, !tbaa !205
  %1350 = load i64, ptr %1349, align 8
  %1351 = and i64 %1350, -67108865
  %1352 = or disjoint i64 %1351, %1348
  store i64 %1352, ptr %1349, align 8
  %1353 = load i64, ptr %1318, align 8
  %1354 = and i64 %1353, 65535
  %1355 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1354
  %1356 = load i32, ptr %1355, align 4, !tbaa !220
  %1357 = add i32 %1356, -4
  %1358 = icmp ult i32 %1357, 7
  br i1 %1358, label %1359, label %1362

1359:                                             ; preds = %1317
  %1360 = getelementptr inbounds %struct.tree_exp, ptr %1318, i64 0, i32 1
  %1361 = load i32, ptr %1360, align 8, !tbaa !216
  br label %1362

1362:                                             ; preds = %1359, %1317
  %1363 = phi i32 [ %1361, %1359 ], [ 0, %1317 ]
  %1364 = load ptr, ptr %0, align 8, !tbaa !205
  %1365 = getelementptr inbounds %struct.tree_exp, ptr %1364, i64 0, i32 1
  store i32 %1363, ptr %1365, align 8, !tbaa !216
  %1366 = call ptr @tree_block(ptr noundef nonnull %1318) #24
  %1367 = load ptr, ptr %1366, align 8, !tbaa !205
  %1368 = load ptr, ptr %0, align 8, !tbaa !205
  %1369 = call ptr @tree_block(ptr noundef %1368) #24
  store ptr %1367, ptr %1369, align 8, !tbaa !205
  %1370 = load ptr, ptr %0, align 8, !tbaa !205
  %1371 = load i64, ptr %1370, align 8
  %1372 = or i64 %1371, 134217728
  store i64 %1372, ptr %1370, align 8
  br label %1373

1373:                                             ; preds = %1362, %1312, %1308, %1305, %1295, %1290
  %1374 = phi i32 [ %1252, %1290 ], [ %1252, %1295 ], [ %1319, %1362 ], [ %1252, %1312 ], [ %1252, %1308 ], [ %1252, %1305 ]
  %1375 = icmp sgt i32 %1374, 0
  br i1 %1375, label %1376, label %1445, !prof !453

1376:                                             ; preds = %1373
  %1377 = icmp ne i8 %1242, 0
  %1378 = zext nneg i32 %1374 to i64
  br label %1379

1379:                                             ; preds = %1376, %1442
  %1380 = phi i64 [ %1378, %1376 ], [ %1382, %1442 ]
  %1381 = phi i32 [ %1245, %1376 ], [ %1443, %1442 ]
  %1382 = add nsw i64 %1380, -1
  %1383 = icmp eq i64 %1382, 1
  %1384 = and i1 %1377, %1383
  br i1 %1384, label %1442, label %1385, !prof !460

1385:                                             ; preds = %1379
  %1386 = load ptr, ptr %0, align 8, !tbaa !205
  %1387 = add nuw nsw i64 %1380, 2
  %1388 = getelementptr inbounds %struct.tree_exp, ptr %1386, i64 0, i32 3, i64 %1387
  %1389 = load i64, ptr %1386, align 8
  %1390 = and i64 %1389, 65535
  %1391 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1390
  %1392 = load i32, ptr %1391, align 4, !tbaa !220
  %1393 = add i32 %1392, -4
  %1394 = icmp ult i32 %1393, 7
  br i1 %1394, label %1395, label %1398, !prof !461

1395:                                             ; preds = %1385
  %1396 = getelementptr inbounds %struct.tree_exp, ptr %1386, i64 0, i32 1
  %1397 = load i32, ptr %1396, align 8, !tbaa !216
  br label %1398

1398:                                             ; preds = %1395, %1385
  %1399 = phi i32 [ %1397, %1395 ], [ 0, %1385 ]
  %1400 = load ptr, ptr %1388, align 8, !tbaa !205
  %1401 = getelementptr inbounds %struct.tree_common, ptr %1400, i64 0, i32 2
  %1402 = load ptr, ptr %1401, align 8, !tbaa !216
  %1403 = call zeroext i8 @is_gimple_reg_type(ptr noundef %1402) #24
  %1404 = icmp eq i8 %1403, 0
  %1405 = select i1 %1404, ptr @is_gimple_lvalue, ptr @is_gimple_val, !prof !460
  %1406 = select i1 %1404, i32 3, i32 1, !prof !460
  %1407 = load ptr, ptr %1388, align 8, !tbaa !205
  %1408 = getelementptr inbounds %struct.tree_common, ptr %1407, i64 0, i32 2
  %1409 = load ptr, ptr %1408, align 8, !tbaa !216
  %1410 = load i64, ptr %1407, align 8
  %1411 = and i64 %1410, 65535
  %1412 = icmp eq i64 %1411, 150
  %1413 = load ptr, ptr @global_trees, align 16
  %1414 = icmp eq ptr %1409, %1413
  %1415 = select i1 %1412, i1 true, i1 %1414, !prof !462
  br i1 %1415, label %1437, label %1416, !prof !462

1416:                                             ; preds = %1398
  %1417 = getelementptr inbounds %struct.tree_type, ptr %1409, i64 0, i32 3
  %1418 = load ptr, ptr %1417, align 8, !tbaa !216
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1437, label %1420, !prof !462

1420:                                             ; preds = %1416
  %1421 = load i64, ptr %1418, align 8
  %1422 = and i64 %1421, 65535
  %1423 = icmp eq i64 %1422, 23
  br i1 %1423, label %1437, label %1424, !prof !463

1424:                                             ; preds = %1420
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %1418, ptr %8, align 8, !tbaa !205
  %1425 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1426 = load ptr, ptr %8, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %1427 = icmp eq ptr %1426, null
  br i1 %1427, label %1434, label %1428

1428:                                             ; preds = %1424
  %1429 = load i64, ptr %1426, align 8
  %1430 = and i64 %1429, 131072
  %1431 = icmp eq i64 %1430, 0
  br i1 %1431, label %1432, label %1434

1432:                                             ; preds = %1428
  %1433 = call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %1426, ptr noundef nonnull %1407) #24
  br label %1434

1434:                                             ; preds = %1432, %1428, %1424
  %1435 = phi ptr [ %1433, %1432 ], [ %1426, %1428 ], [ %1426, %1424 ]
  %1436 = call ptr @build2_stat(i32 noundef 150, ptr noundef %1409, ptr noundef nonnull %1407, ptr noundef %1435) #24
  store ptr %1436, ptr %1388, align 8, !tbaa !205
  br label %1437

1437:                                             ; preds = %1398, %1416, %1420, %1434
  %1438 = load ptr, ptr %1388, align 8, !tbaa !205
  call void @protected_set_expr_location(ptr noundef %1438, i32 noundef %1399) #24
  %1439 = call i32 @gimplify_expr(ptr noundef nonnull %1388, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull %1405, i32 noundef %1406)
  %1440 = icmp eq i32 %1439, -2
  %1441 = select i1 %1440, i32 -2, i32 %1381, !prof !460
  br label %1442

1442:                                             ; preds = %1437, %1379
  %1443 = phi i32 [ %1381, %1379 ], [ %1441, %1437 ]
  %1444 = icmp sgt i64 %1380, 1
  br i1 %1444, label %1379, label %1445, !prof !464, !llvm.loop !465

1445:                                             ; preds = %1442, %1373
  %1446 = phi i32 [ %1245, %1373 ], [ %1443, %1442 ]
  %1447 = and i1 %1148, %1254
  br i1 %1447, label %1448, label %1457, !prof !466

1448:                                             ; preds = %1445
  %1449 = getelementptr inbounds %struct.tree_common, ptr %1253, i64 0, i32 2
  %1450 = load ptr, ptr %1449, align 8, !tbaa !216
  %1451 = getelementptr inbounds %struct.tree_common, ptr %1450, i64 0, i32 2
  %1452 = load ptr, ptr %1451, align 8, !tbaa !216
  %1453 = load i64, ptr %1452, align 8
  %1454 = and i64 %1453, 65535
  %1455 = icmp eq i64 %1454, 19
  br i1 %1455, label %1456, label %1457, !prof !467

1456:                                             ; preds = %1448
  call void (i32, ptr, ...) @error_at(i32 noundef %1160, ptr noundef nonnull @.str.8) #24
  br label %1457

1457:                                             ; preds = %1456, %1448, %1445
  %1458 = phi i32 [ -2, %1456 ], [ %1446, %1448 ], [ %1446, %1445 ]
  %1459 = icmp eq i32 %1458, -2
  br i1 %1459, label %1468, label %1460, !prof !454

1460:                                             ; preds = %1457
  %1461 = load i32, ptr @input_location, align 4, !tbaa !220
  %1462 = load ptr, ptr %0, align 8, !tbaa !205
  %1463 = call ptr @fold_call_expr(i32 noundef %1461, ptr noundef %1462, i8 noundef zeroext %1150) #24
  %1464 = icmp eq ptr %1463, null
  br i1 %1464, label %1470, label %1465, !prof !453

1465:                                             ; preds = %1460
  %1466 = load ptr, ptr %0, align 8, !tbaa !205
  %1467 = icmp eq ptr %1463, %1466
  br i1 %1467, label %1470, label %1516

1468:                                             ; preds = %1457
  %1469 = load ptr, ptr @global_trees, align 16, !tbaa !205
  br label %1516

1470:                                             ; preds = %1465, %1460
  %1471 = load ptr, ptr %0, align 8, !tbaa !205
  %1472 = load i64, ptr %1471, align 8
  %1473 = and i64 %1472, 65535
  %1474 = icmp eq i64 %1473, 59
  br i1 %1474, label %1475, label %1486, !prof !453

1475:                                             ; preds = %1470
  %1476 = call i32 @call_expr_flags(ptr noundef nonnull %1471) #24
  %1477 = and i32 %1476, 3
  %1478 = icmp ne i32 %1477, 0
  %1479 = and i32 %1476, 4
  %1480 = icmp eq i32 %1479, 0
  %1481 = and i1 %1478, %1480
  br i1 %1481, label %1482, label %1486, !prof !454

1482:                                             ; preds = %1475
  %1483 = load ptr, ptr %0, align 8, !tbaa !205
  %1484 = load i64, ptr %1483, align 8
  %1485 = and i64 %1484, -65537
  store i64 %1485, ptr %1483, align 8
  br label %1486

1486:                                             ; preds = %1482, %1475, %1470
  br i1 %1148, label %1519, label %1487, !prof !466

1487:                                             ; preds = %1486
  %1488 = load ptr, ptr %0, align 8, !tbaa !205
  %1489 = call ptr @gimple_build_call_from_tree(ptr noundef %1488) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %38) #24
  %1490 = icmp eq ptr %1489, null
  br i1 %1490, label %1515, label %1491, !prof !427

1491:                                             ; preds = %1487
  %1492 = load ptr, ptr %145, align 8, !tbaa !205
  %1493 = icmp eq ptr %1492, null
  br i1 %1493, label %1494, label %1496, !prof !428

1494:                                             ; preds = %1491
  %1495 = call ptr @gimple_seq_alloc() #24
  store ptr %1495, ptr %145, align 8, !tbaa !205
  br label %1496

1496:                                             ; preds = %1494, %1491
  %1497 = load ptr, ptr %145, align 8, !tbaa !205
  %1498 = icmp eq ptr %1497, null
  br i1 %1498, label %1502, label %1499, !prof !427

1499:                                             ; preds = %1496
  %1500 = getelementptr inbounds %struct.gimple_seq_d, ptr %1497, i64 0, i32 1
  %1501 = load ptr, ptr %1500, align 8, !tbaa !252, !noalias !468
  br label %1502

1502:                                             ; preds = %1499, %1496
  %1503 = phi ptr [ %1501, %1499 ], [ null, %1496 ]
  %1504 = icmp eq ptr %1503, null
  br i1 %1504, label %1511, label %1505, !prof !432

1505:                                             ; preds = %1502
  %1506 = load ptr, ptr %1503, align 8, !tbaa !275, !noalias !468
  %1507 = icmp eq ptr %1506, null
  br i1 %1507, label %1511, label %1508, !prof !433

1508:                                             ; preds = %1505
  %1509 = getelementptr inbounds %struct.gimple_statement_base, ptr %1506, i64 0, i32 4
  %1510 = load ptr, ptr %1509, align 8, !tbaa !216, !noalias !468
  br label %1511

1511:                                             ; preds = %1508, %1505, %1502
  %1512 = phi ptr [ %1510, %1508 ], [ null, %1505 ], [ null, %1502 ]
  %1513 = getelementptr inbounds i8, ptr %38, i64 8
  %1514 = getelementptr inbounds i8, ptr %38, i64 16
  store ptr %1503, ptr %38, align 8, !tbaa.struct !417
  store ptr %1497, ptr %1513, align 8, !tbaa.struct !244
  store ptr %1512, ptr %1514, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %38, ptr noundef nonnull %1489, i32 noundef 0) #24
  br label %1515

1515:                                             ; preds = %1487, %1511
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %38) #24
  br label %1516

1516:                                             ; preds = %1465, %1515, %1468
  %1517 = phi ptr [ %1469, %1468 ], [ null, %1515 ], [ %1463, %1465 ]
  %1518 = phi i32 [ -2, %1468 ], [ %1458, %1515 ], [ 0, %1465 ]
  store ptr %1517, ptr %0, align 8, !tbaa !205
  br label %1519

1519:                                             ; preds = %1516, %1238, %1486
  %1520 = phi i32 [ 0, %1238 ], [ %1458, %1486 ], [ %1518, %1516 ]
  %1521 = icmp eq i32 %4, 2
  br i1 %1521, label %1522, label %4420, !prof !454

1522:                                             ; preds = %1519
  %1523 = load ptr, ptr %0, align 8, !tbaa !205
  %1524 = call fastcc ptr @internal_get_tmp_var(ptr noundef %1523, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext 0)
  store ptr %1524, ptr %0, align 8, !tbaa !205
  call void @mark_addressable(ptr noundef %1524)
  br label %4420

1525:                                             ; preds = %210
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6607, ptr noundef nonnull @.str.1) #24
  br label %1526

1526:                                             ; preds = %210, %1525
  %1527 = icmp ne i32 %4, 0
  %1528 = zext i1 %1527 to i8
  %1529 = call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %0, ptr noundef nonnull %145, i8 noundef zeroext %1528), !range !471
  br label %4420

1530:                                             ; preds = %210
  %1531 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %1532 = load ptr, ptr %1531, align 8, !tbaa !216
  %1533 = getelementptr inbounds %struct.tree_exp, ptr %1532, i64 0, i32 3
  %1534 = load ptr, ptr %1533, align 8, !tbaa !216
  %1535 = and i64 %212, 262144
  %1536 = icmp eq i64 %1535, 0
  br i1 %1536, label %1540, label %1537

1537:                                             ; preds = %1530
  %1538 = load i64, ptr %1534, align 8
  %1539 = or i64 %1538, 262144
  store i64 %1539, ptr %1534, align 8
  br label %1540

1540:                                             ; preds = %1537, %1530
  %1541 = getelementptr inbounds %struct.tree_common, ptr %1534, i64 0, i32 2
  %1542 = load ptr, ptr %1541, align 8, !tbaa !216
  %1543 = load i64, ptr %1542, align 8
  %1544 = trunc i64 %1543 to i32
  %1545 = and i32 %1544, 65535
  %1546 = add nsw i32 %1545, -13
  %1547 = icmp ult i32 %1546, 2
  br i1 %1547, label %1548, label %1559

1548:                                             ; preds = %1540
  %1549 = load i64, ptr %1534, align 8
  %1550 = and i64 %1549, 524288
  %1551 = icmp eq i64 %1550, 0
  br i1 %1551, label %1552, label %1559

1552:                                             ; preds = %1548
  %1553 = call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %1534) #24
  %1554 = icmp eq i8 %1553, 0
  br i1 %1554, label %1555, label %1559

1555:                                             ; preds = %1552
  %1556 = getelementptr inbounds %struct.tree_decl_common, ptr %1534, i64 0, i32 2
  %1557 = load i64, ptr %1556, align 8
  %1558 = or i64 %1557, 134217728
  store i64 %1558, ptr %1556, align 8
  br label %1559

1559:                                             ; preds = %1555, %1552, %1548, %1540
  %1560 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1534, i64 0, i32 3
  %1561 = load ptr, ptr %1560, align 8, !tbaa !216
  %1562 = icmp eq ptr %1561, null
  br i1 %1562, label %1563, label %1569

1563:                                             ; preds = %1559
  %1564 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1534, i64 0, i32 4
  %1565 = load i32, ptr %1564, align 8
  %1566 = and i32 %1565, 256
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1568, label %1569

1568:                                             ; preds = %1563
  call void @gimple_add_tmp_var(ptr noundef %1534)
  br label %1569

1569:                                             ; preds = %1559, %1563, %1568
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %52)
  store ptr %1532, ptr %52, align 8, !tbaa !205
  %1570 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %52, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %52)
  store ptr %1534, ptr %0, align 8, !tbaa !205
  br label %4420

1571:                                             ; preds = %210, %210
  %1572 = icmp ne i32 %4, 0
  %1573 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %1574 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %1575 = and i64 %212, 65535
  %1576 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1575
  %1577 = load i32, ptr %1576, align 4, !tbaa !220
  %1578 = add i32 %1577, -4
  %1579 = icmp ult i32 %1578, 7
  br i1 %1579, label %1580, label %1583, !prof !472

1580:                                             ; preds = %1571
  %1581 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %1582 = load i32, ptr %1581, align 8, !tbaa !216
  br label %1583

1583:                                             ; preds = %1580, %1571
  %1584 = phi i32 [ %1582, %1580 ], [ 0, %1571 ]
  %1585 = trunc i64 %212 to i32
  %1586 = and i32 %1585, 65535
  %1587 = add nsw i32 %1586, -53
  %1588 = icmp ult i32 %1587, 2
  br i1 %1588, label %1590, label %1589, !prof !472

1589:                                             ; preds = %1583
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4411, ptr noundef nonnull @.str.1) #24
  br label %1590

1590:                                             ; preds = %1589, %1583
  %1591 = load ptr, ptr %1573, align 8, !tbaa !205
  %1592 = getelementptr inbounds %struct.tree_common, ptr %1591, i64 0, i32 2
  %1593 = load ptr, ptr %1592, align 8, !tbaa !216
  %1594 = load i64, ptr %1593, align 8
  %1595 = trunc i64 %1594 to i16
  switch i16 %1595, label %1612 [
    i16 10, label %1596
    i16 12, label %1596
  ], !prof !473

1596:                                             ; preds = %1590, %1590
  %1597 = load ptr, ptr %1574, align 8, !tbaa !205
  %1598 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %1597) #24
  store ptr %1598, ptr %1574, align 8, !tbaa !205
  %1599 = load ptr, ptr %1573, align 8, !tbaa !205
  %1600 = getelementptr inbounds %struct.tree_common, ptr %1599, i64 0, i32 2
  %1601 = load ptr, ptr %1600, align 8, !tbaa !216
  %1602 = getelementptr inbounds %struct.tree_common, ptr %1598, i64 0, i32 2
  %1603 = load ptr, ptr %1602, align 8, !tbaa !216
  %1604 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1601, ptr noundef %1603) #24
  %1605 = icmp eq i8 %1604, 0
  br i1 %1605, label %1606, label %1612, !prof !474

1606:                                             ; preds = %1596
  %1607 = load ptr, ptr %1573, align 8, !tbaa !205
  %1608 = getelementptr inbounds %struct.tree_common, ptr %1607, i64 0, i32 2
  %1609 = load ptr, ptr %1608, align 8, !tbaa !216
  %1610 = load ptr, ptr %1574, align 8, !tbaa !205
  %1611 = call ptr @fold_convert_loc(i32 noundef %1584, ptr noundef %1609, ptr noundef %1610) #24
  store ptr %1611, ptr %1574, align 8, !tbaa !205
  br label %1612

1612:                                             ; preds = %1596, %1590, %1606
  br label %1613

1613:                                             ; preds = %1638, %1612
  %1614 = load ptr, ptr %1574, align 8, !tbaa !205
  %1615 = load i64, ptr %1614, align 8
  %1616 = trunc i64 %1615 to i16
  switch i16 %1616, label %1803 [
    i16 32, label %1617
    i16 47, label %1640
    i16 55, label %1646
    i16 52, label %1657
    i16 51, label %1659
    i16 56, label %1662
    i16 59, label %1709
    i16 61, label %1766
    i16 58, label %1766
    i16 147, label %1766
    i16 119, label %1781
  ], !prof !475

1617:                                             ; preds = %1613
  %1618 = getelementptr inbounds %struct.tree_decl_common, ptr %1614, i64 0, i32 5
  %1619 = load ptr, ptr %1618, align 8, !tbaa !216
  %1620 = icmp ne ptr %1619, null
  %1621 = and i64 %1615, 1572864
  %1622 = icmp eq i64 %1621, 1048576
  %1623 = and i1 %1622, %1620
  br i1 %1623, label %1624, label %1803, !prof !476

1624:                                             ; preds = %1617
  %1625 = load ptr, ptr %1573, align 8, !tbaa !205
  %1626 = load i64, ptr %1625, align 8
  %1627 = and i64 %1626, 524288
  %1628 = icmp eq i64 %1627, 0
  br i1 %1628, label %1629, label %1803

1629:                                             ; preds = %1624
  %1630 = load i64, ptr %1619, align 8
  %1631 = and i64 %1630, 65535
  %1632 = icmp eq i64 %1631, 51
  br i1 %1632, label %1633, label %1803

1633:                                             ; preds = %1629
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36)
  store ptr %1619, ptr %36, align 8, !tbaa !205
  %1634 = call ptr @walk_tree_1(ptr noundef nonnull %36, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1635 = load ptr, ptr %36, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36)
  store ptr %1635, ptr %1574, align 8, !tbaa !205
  %1636 = call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %1637 = icmp eq i32 %1636, -2
  br i1 %1637, label %1639, label %1638

1638:                                             ; preds = %1633, %1656, %1645, %1657
  br label %1613

1639:                                             ; preds = %1633
  store ptr %1614, ptr %1574, align 8, !tbaa !205
  br label %1803

1640:                                             ; preds = %1613
  %1641 = getelementptr inbounds %struct.tree_exp, ptr %1614, i64 0, i32 3
  %1642 = load ptr, ptr %1641, align 8, !tbaa !216
  %1643 = call ptr @gimple_fold_indirect_ref(ptr noundef %1642)
  %1644 = icmp eq ptr %1643, null
  br i1 %1644, label %1803, label %1645, !prof !477

1645:                                             ; preds = %1640
  store ptr %1643, ptr %1574, align 8, !tbaa !205
  br label %1638

1646:                                             ; preds = %1613
  %1647 = getelementptr inbounds %struct.tree_exp, ptr %1614, i64 1
  %1648 = load ptr, ptr %1647, align 8, !tbaa !216
  %1649 = icmp eq ptr %1648, null
  br i1 %1649, label %1803, label %1650

1650:                                             ; preds = %1646
  %1651 = getelementptr inbounds %struct.tree_common, ptr %1648, i64 0, i32 2
  %1652 = load ptr, ptr %1651, align 8, !tbaa !216
  %1653 = load i64, ptr %1652, align 8
  %1654 = and i64 %1653, 65535
  %1655 = icmp eq i64 %1654, 19
  br i1 %1655, label %1803, label %1656

1656:                                             ; preds = %1650
  store ptr %1648, ptr %1574, align 8, !tbaa !205
  br label %1638

1657:                                             ; preds = %1613
  %1658 = call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %1574, ptr noundef nonnull %145, i8 noundef zeroext 1), !range !471
  br label %1638

1659:                                             ; preds = %1613
  %1660 = zext i1 %1572 to i8
  %1661 = call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext %1660, i8 noundef zeroext 0)
  br label %1803

1662:                                             ; preds = %1613
  %1663 = getelementptr inbounds %struct.tree_common, ptr %1614, i64 0, i32 2
  %1664 = load ptr, ptr %1663, align 8, !tbaa !216
  %1665 = call zeroext i8 @is_gimple_reg_type(ptr noundef %1664) #24
  %1666 = icmp eq i8 %1665, 0
  br i1 %1666, label %1667, label %1803, !prof !478

1667:                                             ; preds = %1662
  %1668 = load ptr, ptr %0, align 8, !tbaa !205
  %1669 = load i64, ptr %1668, align 8
  %1670 = trunc i64 %1669 to i32
  %1671 = and i32 %1670, 65535
  %1672 = load ptr, ptr %1574, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #24
  %1673 = load ptr, ptr %1573, align 8, !tbaa !205
  store ptr %1673, ptr %37, align 8, !tbaa !205
  %1674 = call i32 @gimplify_expr(ptr noundef nonnull %37, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2)
  %1675 = icmp eq i32 %1674, -2
  %1676 = select i1 %1675, i32 -2, i32 0
  %1677 = getelementptr inbounds %struct.tree_exp, ptr %1672, i64 1
  %1678 = load ptr, ptr %1677, align 8, !tbaa !216
  %1679 = getelementptr inbounds %struct.tree_common, ptr %1678, i64 0, i32 2
  %1680 = load ptr, ptr %1679, align 8, !tbaa !216
  %1681 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %1682 = icmp eq ptr %1680, %1681
  br i1 %1682, label %1686, label %1683

1683:                                             ; preds = %1667
  %1684 = load ptr, ptr %37, align 8, !tbaa !205
  %1685 = call ptr @build2_stat(i32 noundef %1671, ptr noundef %1681, ptr noundef %1684, ptr noundef %1678) #24
  store ptr %1685, ptr %1677, align 8, !tbaa !216
  br label %1686

1686:                                             ; preds = %1683, %1667
  %1687 = getelementptr inbounds %struct.tree_exp, ptr %1672, i64 1, i32 0, i32 1
  %1688 = load ptr, ptr %1687, align 8, !tbaa !216
  %1689 = getelementptr inbounds %struct.tree_common, ptr %1688, i64 0, i32 2
  %1690 = load ptr, ptr %1689, align 8, !tbaa !216
  %1691 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %1692 = icmp eq ptr %1690, %1691
  br i1 %1692, label %1699, label %1693

1693:                                             ; preds = %1686
  %1694 = load ptr, ptr %37, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35)
  store ptr %1694, ptr %35, align 8, !tbaa !205
  %1695 = call ptr @walk_tree_1(ptr noundef nonnull %35, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1696 = load ptr, ptr %35, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35)
  %1697 = load ptr, ptr %1687, align 8, !tbaa !216
  %1698 = call ptr @build2_stat(i32 noundef %1671, ptr noundef %1691, ptr noundef %1696, ptr noundef %1697) #24
  store ptr %1698, ptr %1687, align 8, !tbaa !216
  br label %1699

1699:                                             ; preds = %1693, %1686
  %1700 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %1701 = getelementptr inbounds %struct.tree_common, ptr %1672, i64 0, i32 2
  store ptr %1700, ptr %1701, align 8, !tbaa !216
  call void @recalculate_side_effects(ptr noundef %1672) #24
  br i1 %1572, label %1702, label %1707

1702:                                             ; preds = %1699
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34)
  store ptr %1672, ptr %34, align 8, !tbaa !205
  %1703 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %34, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34)
  %1704 = load ptr, ptr %37, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33)
  store ptr %1704, ptr %33, align 8, !tbaa !205
  %1705 = call ptr @walk_tree_1(ptr noundef nonnull %33, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1706 = load ptr, ptr %33, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33)
  br label %1707

1707:                                             ; preds = %1702, %1699
  %1708 = phi ptr [ %1706, %1702 ], [ %1672, %1699 ]
  store ptr %1708, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #24
  br label %1803

1709:                                             ; preds = %1613
  %1710 = and i64 %1615, 268435456
  %1711 = icmp eq i64 %1710, 0
  br i1 %1711, label %1712, label %1803, !prof !479

1712:                                             ; preds = %1709
  %1713 = call i32 @aggregate_value_p(ptr noundef nonnull %1614, ptr noundef nonnull %1614) #24
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1803, label %1715, !prof !479

1715:                                             ; preds = %1712
  %1716 = load ptr, ptr %1573, align 8, !tbaa !205
  %1717 = call zeroext i8 @is_gimple_reg(ptr noundef %1716) #24
  %1718 = icmp eq i8 %1717, 0
  %1719 = select i1 %1718, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  %1720 = load ptr, ptr %1574, align 8, !tbaa !205
  %1721 = call zeroext i8 %1719(ptr noundef %1720) #24, !callees !480
  %1722 = icmp eq i8 %1721, 0
  br i1 %1722, label %1803, label %1723

1723:                                             ; preds = %1715
  %1724 = load ptr, ptr %1573, align 8, !tbaa !205
  %1725 = load i64, ptr %1724, align 8
  %1726 = and i64 %1725, 65535
  %1727 = icmp eq i64 %1726, 36
  br i1 %1727, label %1728, label %1735

1728:                                             ; preds = %1723
  %1729 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1724, i64 0, i32 3
  %1730 = load ptr, ptr %1729, align 8, !tbaa !216
  %1731 = icmp eq ptr %1730, null
  br i1 %1731, label %1732, label %1735

1732:                                             ; preds = %1728
  %1733 = call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %1724) #24
  %1734 = icmp eq i8 %1733, 0
  br i1 %1734, label %1735, label %1761

1735:                                             ; preds = %1732, %1728, %1723
  %1736 = load ptr, ptr %1573, align 8, !tbaa !205
  %1737 = getelementptr inbounds %struct.tree_common, ptr %1736, i64 0, i32 2
  %1738 = load ptr, ptr %1737, align 8, !tbaa !216
  %1739 = call zeroext i8 @is_gimple_reg_type(ptr noundef %1738) #24
  %1740 = icmp eq i8 %1739, 0
  br i1 %1740, label %1741, label %1803

1741:                                             ; preds = %1735
  %1742 = load ptr, ptr %1573, align 8, !tbaa !205
  %1743 = load i64, ptr %1742, align 8
  %1744 = and i64 %1743, 65535
  %1745 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1744
  %1746 = load i32, ptr %1745, align 4, !tbaa !220
  %1747 = icmp eq i32 %1746, 3
  br i1 %1747, label %1748, label %1753

1748:                                             ; preds = %1741
  %1749 = getelementptr inbounds %struct.tree_decl_common, ptr %1742, i64 0, i32 2
  %1750 = load i64, ptr %1749, align 8
  %1751 = and i64 %1750, 16777216
  %1752 = icmp eq i64 %1751, 0
  br i1 %1752, label %1753, label %1803

1753:                                             ; preds = %1748, %1741
  %1754 = load ptr, ptr %0, align 8, !tbaa !205
  %1755 = load i64, ptr %1754, align 8
  %1756 = and i64 %1755, 65535
  %1757 = icmp eq i64 %1756, 54
  br i1 %1757, label %1761, label %1758

1758:                                             ; preds = %1753
  %1759 = call zeroext i8 @is_gimple_non_addressable(ptr noundef nonnull %1742) #24
  %1760 = icmp eq i8 %1759, 0
  br i1 %1760, label %1803, label %1761

1761:                                             ; preds = %1758, %1753, %1732
  %1762 = load ptr, ptr %1574, align 8, !tbaa !205
  %1763 = load i64, ptr %1762, align 8
  %1764 = or i64 %1763, 268435456
  store i64 %1764, ptr %1762, align 8
  %1765 = load ptr, ptr %1573, align 8, !tbaa !205
  call void @mark_addressable(ptr noundef %1765)
  br label %1803

1766:                                             ; preds = %1613, %1613, %1613
  %1767 = call i32 @gimplify_expr(ptr noundef nonnull %1573, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_min_lval, i32 noundef 2)
  %1768 = load ptr, ptr %0, align 8, !tbaa !205
  %1769 = call ptr @voidify_wrapper_expr(ptr noundef nonnull %1614, ptr noundef %1768)
  %1770 = load ptr, ptr %0, align 8, !tbaa !205
  %1771 = icmp eq ptr %1769, %1770
  br i1 %1771, label %1773, label %1772

1772:                                             ; preds = %1766
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4301, ptr noundef nonnull @.str.1) #24
  br label %1773

1773:                                             ; preds = %1772, %1766
  br i1 %1572, label %1774, label %1779

1774:                                             ; preds = %1773
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32)
  store ptr %1614, ptr %32, align 8, !tbaa !205
  %1775 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %32, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32)
  %1776 = load ptr, ptr %1573, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31)
  store ptr %1776, ptr %31, align 8, !tbaa !205
  %1777 = call ptr @walk_tree_1(ptr noundef nonnull %31, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1778 = load ptr, ptr %31, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31)
  br label %1779

1779:                                             ; preds = %1774, %1773
  %1780 = phi ptr [ %1778, %1774 ], [ %1614, %1773 ]
  store ptr %1780, ptr %0, align 8, !tbaa !205
  br label %1803

1781:                                             ; preds = %1613
  %1782 = load ptr, ptr %0, align 8, !tbaa !205
  %1783 = getelementptr inbounds %struct.tree_exp, ptr %1782, i64 1
  %1784 = load ptr, ptr %1783, align 8, !tbaa !216
  %1785 = load i64, ptr %1784, align 8
  %1786 = and i64 %1785, 262144
  %1787 = icmp eq i64 %1786, 0
  br i1 %1787, label %1788, label %1803

1788:                                             ; preds = %1781
  %1789 = getelementptr inbounds %struct.tree_exp, ptr %1784, i64 0, i32 3
  %1790 = load ptr, ptr %1789, align 8, !tbaa !216
  %1791 = getelementptr inbounds %struct.tree_exp, ptr %1790, i64 0, i32 3
  %1792 = load ptr, ptr %1791, align 8, !tbaa !216
  %1793 = getelementptr inbounds %struct.tree_decl_common, ptr %1792, i64 0, i32 5
  %1794 = load ptr, ptr %1793, align 8, !tbaa !216
  %1795 = load i64, ptr %1792, align 8
  %1796 = and i64 %1795, 262144
  %1797 = icmp eq i64 %1796, 0
  %1798 = icmp ne ptr %1794, null
  %1799 = select i1 %1797, i1 %1798, i1 false
  br i1 %1799, label %1800, label %1803

1800:                                             ; preds = %1788
  %1801 = call ptr @copy_node_stat(ptr noundef %1782) #24
  store ptr %1801, ptr %0, align 8, !tbaa !205
  %1802 = getelementptr inbounds %struct.tree_exp, ptr %1801, i64 1
  store ptr %1794, ptr %1802, align 8, !tbaa !216
  br label %1803

1803:                                             ; preds = %1617, %1624, %1629, %1650, %1646, %1640, %1613, %1639, %1758, %1788, %1781, %1761, %1748, %1735, %1715, %1712, %1709, %1662, %1659, %1707, %1779, %1800
  %1804 = phi i32 [ 0, %1779 ], [ %1676, %1707 ], [ %1661, %1659 ], [ 0, %1800 ], [ -1, %1662 ], [ -1, %1709 ], [ -1, %1712 ], [ -1, %1715 ], [ -1, %1735 ], [ -1, %1748 ], [ -1, %1761 ], [ -1, %1781 ], [ -1, %1788 ], [ -1, %1758 ], [ -1, %1639 ], [ -1, %1613 ], [ -1, %1640 ], [ -1, %1646 ], [ -1, %1650 ], [ -1, %1629 ], [ -1, %1624 ], [ -1, %1617 ]
  %1805 = icmp eq i32 %1804, -1
  br i1 %1805, label %1806, label %4420, !prof !472

1806:                                             ; preds = %1803
  %1807 = load ptr, ptr %1574, align 8, !tbaa !205
  %1808 = getelementptr inbounds %struct.tree_common, ptr %1807, i64 0, i32 2
  %1809 = load ptr, ptr %1808, align 8, !tbaa !216
  %1810 = load i64, ptr %1809, align 8
  %1811 = trunc i64 %1810 to i32
  %1812 = and i32 %1811, 65535
  %1813 = add nsw i32 %1812, -15
  %1814 = icmp ult i32 %1813, 4
  br i1 %1814, label %1815, label %1822, !prof !481

1815:                                             ; preds = %1806
  %1816 = getelementptr inbounds %struct.tree_type, ptr %1809, i64 0, i32 2
  %1817 = load ptr, ptr %1816, align 8, !tbaa !216
  %1818 = icmp eq ptr %1817, null
  br i1 %1818, label %1822, label %1819

1819:                                             ; preds = %1815
  %1820 = call i32 @integer_zerop(ptr noundef nonnull %1817) #24
  %1821 = icmp eq i32 %1820, 0
  br i1 %1821, label %1822, label %1823

1822:                                             ; preds = %1819, %1815, %1806
  br label %1823

1823:                                             ; preds = %1819, %1822
  %1824 = phi i1 [ true, %1822 ], [ false, %1819 ]
  %1825 = or i1 %1572, %1824
  br i1 %1825, label %1829, label %1826, !prof !472

1826:                                             ; preds = %1823
  %1827 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %1574, ptr noundef nonnull %145), !range !249
  %1828 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %1573, ptr noundef nonnull %145), !range !249
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %4420

1829:                                             ; preds = %1823
  %1830 = load ptr, ptr %1574, align 8, !tbaa !205
  %1831 = getelementptr inbounds %struct.tree_common, ptr %1830, i64 0, i32 2
  %1832 = load ptr, ptr %1831, align 8, !tbaa !216
  %1833 = load i64, ptr %1830, align 8
  %1834 = and i64 %1833, 65535
  %1835 = icmp eq i64 %1834, 150
  %1836 = load ptr, ptr @global_trees, align 16
  %1837 = icmp eq ptr %1832, %1836
  %1838 = select i1 %1835, i1 true, i1 %1837, !prof !462
  br i1 %1838, label %1860, label %1839, !prof !462

1839:                                             ; preds = %1829
  %1840 = getelementptr inbounds %struct.tree_type, ptr %1832, i64 0, i32 3
  %1841 = load ptr, ptr %1840, align 8, !tbaa !216
  %1842 = icmp eq ptr %1841, null
  br i1 %1842, label %1860, label %1843, !prof !462

1843:                                             ; preds = %1839
  %1844 = load i64, ptr %1841, align 8
  %1845 = and i64 %1844, 65535
  %1846 = icmp eq i64 %1845, 23
  br i1 %1846, label %1860, label %1847, !prof !463

1847:                                             ; preds = %1843
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30)
  store ptr %1841, ptr %30, align 8, !tbaa !205
  %1848 = call ptr @walk_tree_1(ptr noundef nonnull %30, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1849 = load ptr, ptr %30, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30)
  %1850 = icmp eq ptr %1849, null
  br i1 %1850, label %1857, label %1851

1851:                                             ; preds = %1847
  %1852 = load i64, ptr %1849, align 8
  %1853 = and i64 %1852, 131072
  %1854 = icmp eq i64 %1853, 0
  br i1 %1854, label %1855, label %1857

1855:                                             ; preds = %1851
  %1856 = call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %1849, ptr noundef nonnull %1830) #24
  br label %1857

1857:                                             ; preds = %1855, %1851, %1847
  %1858 = phi ptr [ %1856, %1855 ], [ %1849, %1851 ], [ %1849, %1847 ]
  %1859 = call ptr @build2_stat(i32 noundef 150, ptr noundef %1832, ptr noundef nonnull %1830, ptr noundef %1858) #24
  store ptr %1859, ptr %1574, align 8, !tbaa !205
  br label %1860

1860:                                             ; preds = %1829, %1839, %1843, %1857
  %1861 = call i32 @gimplify_expr(ptr noundef nonnull %1573, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2)
  %1862 = icmp eq i32 %1861, -2
  br i1 %1862, label %4420, label %1863, !prof !481

1863:                                             ; preds = %1860
  %1864 = load ptr, ptr %1573, align 8, !tbaa !205
  %1865 = call zeroext i8 @is_gimple_reg(ptr noundef %1864) #24
  %1866 = icmp eq i8 %1865, 0
  %1867 = select i1 %1866, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call, !prof !482
  %1868 = call i32 @gimplify_expr(ptr noundef nonnull %1574, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull %1867, i32 noundef 1)
  %1869 = icmp eq i32 %1868, -2
  br i1 %1869, label %4420, label %1870, !prof !481

1870:                                             ; preds = %1863, %1895
  %1871 = load ptr, ptr %1574, align 8, !tbaa !205
  %1872 = load i64, ptr %1871, align 8
  %1873 = trunc i64 %1872 to i16
  switch i16 %1873, label %2060 [
    i16 32, label %1874
    i16 47, label %1897
    i16 55, label %1903
    i16 52, label %1914
    i16 51, label %1916
    i16 56, label %1919
    i16 59, label %1966
    i16 61, label %2023
    i16 58, label %2023
    i16 147, label %2023
    i16 119, label %2038
  ], !prof !475

1874:                                             ; preds = %1870
  %1875 = getelementptr inbounds %struct.tree_decl_common, ptr %1871, i64 0, i32 5
  %1876 = load ptr, ptr %1875, align 8, !tbaa !216
  %1877 = icmp ne ptr %1876, null
  %1878 = and i64 %1872, 1572864
  %1879 = icmp eq i64 %1878, 1048576
  %1880 = and i1 %1879, %1877
  br i1 %1880, label %1881, label %2060, !prof !476

1881:                                             ; preds = %1874
  %1882 = load ptr, ptr %1573, align 8, !tbaa !205
  %1883 = load i64, ptr %1882, align 8
  %1884 = and i64 %1883, 524288
  %1885 = icmp eq i64 %1884, 0
  br i1 %1885, label %1886, label %2060

1886:                                             ; preds = %1881
  %1887 = load i64, ptr %1876, align 8
  %1888 = and i64 %1887, 65535
  %1889 = icmp eq i64 %1888, 51
  br i1 %1889, label %1890, label %2060

1890:                                             ; preds = %1886
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28)
  store ptr %1876, ptr %28, align 8, !tbaa !205
  %1891 = call ptr @walk_tree_1(ptr noundef nonnull %28, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1892 = load ptr, ptr %28, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28)
  store ptr %1892, ptr %1574, align 8, !tbaa !205
  %1893 = call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %1894 = icmp eq i32 %1893, -2
  br i1 %1894, label %1896, label %1895

1895:                                             ; preds = %1890, %1913, %1902, %1914
  br label %1870

1896:                                             ; preds = %1890
  store ptr %1871, ptr %1574, align 8, !tbaa !205
  br label %2060

1897:                                             ; preds = %1870
  %1898 = getelementptr inbounds %struct.tree_exp, ptr %1871, i64 0, i32 3
  %1899 = load ptr, ptr %1898, align 8, !tbaa !216
  %1900 = call ptr @gimple_fold_indirect_ref(ptr noundef %1899)
  %1901 = icmp eq ptr %1900, null
  br i1 %1901, label %2060, label %1902, !prof !477

1902:                                             ; preds = %1897
  store ptr %1900, ptr %1574, align 8, !tbaa !205
  br label %1895

1903:                                             ; preds = %1870
  %1904 = getelementptr inbounds %struct.tree_exp, ptr %1871, i64 1
  %1905 = load ptr, ptr %1904, align 8, !tbaa !216
  %1906 = icmp eq ptr %1905, null
  br i1 %1906, label %2060, label %1907

1907:                                             ; preds = %1903
  %1908 = getelementptr inbounds %struct.tree_common, ptr %1905, i64 0, i32 2
  %1909 = load ptr, ptr %1908, align 8, !tbaa !216
  %1910 = load i64, ptr %1909, align 8
  %1911 = and i64 %1910, 65535
  %1912 = icmp eq i64 %1911, 19
  br i1 %1912, label %2060, label %1913

1913:                                             ; preds = %1907
  store ptr %1905, ptr %1574, align 8, !tbaa !205
  br label %1895

1914:                                             ; preds = %1870
  %1915 = call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %1574, ptr noundef nonnull %145, i8 noundef zeroext 1), !range !471
  br label %1895

1916:                                             ; preds = %1870
  %1917 = zext i1 %1572 to i8
  %1918 = call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext %1917, i8 noundef zeroext 0)
  br label %2060

1919:                                             ; preds = %1870
  %1920 = getelementptr inbounds %struct.tree_common, ptr %1871, i64 0, i32 2
  %1921 = load ptr, ptr %1920, align 8, !tbaa !216
  %1922 = call zeroext i8 @is_gimple_reg_type(ptr noundef %1921) #24
  %1923 = icmp eq i8 %1922, 0
  br i1 %1923, label %1924, label %2060, !prof !478

1924:                                             ; preds = %1919
  %1925 = load ptr, ptr %0, align 8, !tbaa !205
  %1926 = load i64, ptr %1925, align 8
  %1927 = trunc i64 %1926 to i32
  %1928 = and i32 %1927, 65535
  %1929 = load ptr, ptr %1574, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #24
  %1930 = load ptr, ptr %1573, align 8, !tbaa !205
  store ptr %1930, ptr %29, align 8, !tbaa !205
  %1931 = call i32 @gimplify_expr(ptr noundef nonnull %29, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2)
  %1932 = icmp eq i32 %1931, -2
  %1933 = select i1 %1932, i32 -2, i32 0
  %1934 = getelementptr inbounds %struct.tree_exp, ptr %1929, i64 1
  %1935 = load ptr, ptr %1934, align 8, !tbaa !216
  %1936 = getelementptr inbounds %struct.tree_common, ptr %1935, i64 0, i32 2
  %1937 = load ptr, ptr %1936, align 8, !tbaa !216
  %1938 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %1939 = icmp eq ptr %1937, %1938
  br i1 %1939, label %1943, label %1940

1940:                                             ; preds = %1924
  %1941 = load ptr, ptr %29, align 8, !tbaa !205
  %1942 = call ptr @build2_stat(i32 noundef %1928, ptr noundef %1938, ptr noundef %1941, ptr noundef %1935) #24
  store ptr %1942, ptr %1934, align 8, !tbaa !216
  br label %1943

1943:                                             ; preds = %1940, %1924
  %1944 = getelementptr inbounds %struct.tree_exp, ptr %1929, i64 1, i32 0, i32 1
  %1945 = load ptr, ptr %1944, align 8, !tbaa !216
  %1946 = getelementptr inbounds %struct.tree_common, ptr %1945, i64 0, i32 2
  %1947 = load ptr, ptr %1946, align 8, !tbaa !216
  %1948 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %1949 = icmp eq ptr %1947, %1948
  br i1 %1949, label %1956, label %1950

1950:                                             ; preds = %1943
  %1951 = load ptr, ptr %29, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27)
  store ptr %1951, ptr %27, align 8, !tbaa !205
  %1952 = call ptr @walk_tree_1(ptr noundef nonnull %27, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1953 = load ptr, ptr %27, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27)
  %1954 = load ptr, ptr %1944, align 8, !tbaa !216
  %1955 = call ptr @build2_stat(i32 noundef %1928, ptr noundef %1948, ptr noundef %1953, ptr noundef %1954) #24
  store ptr %1955, ptr %1944, align 8, !tbaa !216
  br label %1956

1956:                                             ; preds = %1950, %1943
  %1957 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %1958 = getelementptr inbounds %struct.tree_common, ptr %1929, i64 0, i32 2
  store ptr %1957, ptr %1958, align 8, !tbaa !216
  call void @recalculate_side_effects(ptr noundef %1929) #24
  br i1 %1572, label %1959, label %1964

1959:                                             ; preds = %1956
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26)
  store ptr %1929, ptr %26, align 8, !tbaa !205
  %1960 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %26, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26)
  %1961 = load ptr, ptr %29, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25)
  store ptr %1961, ptr %25, align 8, !tbaa !205
  %1962 = call ptr @walk_tree_1(ptr noundef nonnull %25, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %1963 = load ptr, ptr %25, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25)
  br label %1964

1964:                                             ; preds = %1959, %1956
  %1965 = phi ptr [ %1963, %1959 ], [ %1929, %1956 ]
  store ptr %1965, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #24
  br label %2060

1966:                                             ; preds = %1870
  %1967 = and i64 %1872, 268435456
  %1968 = icmp eq i64 %1967, 0
  br i1 %1968, label %1969, label %2060, !prof !479

1969:                                             ; preds = %1966
  %1970 = call i32 @aggregate_value_p(ptr noundef nonnull %1871, ptr noundef nonnull %1871) #24
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %2060, label %1972, !prof !479

1972:                                             ; preds = %1969
  %1973 = load ptr, ptr %1573, align 8, !tbaa !205
  %1974 = call zeroext i8 @is_gimple_reg(ptr noundef %1973) #24
  %1975 = icmp eq i8 %1974, 0
  %1976 = select i1 %1975, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  %1977 = load ptr, ptr %1574, align 8, !tbaa !205
  %1978 = call zeroext i8 %1976(ptr noundef %1977) #24, !callees !480
  %1979 = icmp eq i8 %1978, 0
  br i1 %1979, label %2060, label %1980

1980:                                             ; preds = %1972
  %1981 = load ptr, ptr %1573, align 8, !tbaa !205
  %1982 = load i64, ptr %1981, align 8
  %1983 = and i64 %1982, 65535
  %1984 = icmp eq i64 %1983, 36
  br i1 %1984, label %1985, label %1992

1985:                                             ; preds = %1980
  %1986 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1981, i64 0, i32 3
  %1987 = load ptr, ptr %1986, align 8, !tbaa !216
  %1988 = icmp eq ptr %1987, null
  br i1 %1988, label %1989, label %1992

1989:                                             ; preds = %1985
  %1990 = call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %1981) #24
  %1991 = icmp eq i8 %1990, 0
  br i1 %1991, label %1992, label %2018

1992:                                             ; preds = %1989, %1985, %1980
  %1993 = load ptr, ptr %1573, align 8, !tbaa !205
  %1994 = getelementptr inbounds %struct.tree_common, ptr %1993, i64 0, i32 2
  %1995 = load ptr, ptr %1994, align 8, !tbaa !216
  %1996 = call zeroext i8 @is_gimple_reg_type(ptr noundef %1995) #24
  %1997 = icmp eq i8 %1996, 0
  br i1 %1997, label %1998, label %2060

1998:                                             ; preds = %1992
  %1999 = load ptr, ptr %1573, align 8, !tbaa !205
  %2000 = load i64, ptr %1999, align 8
  %2001 = and i64 %2000, 65535
  %2002 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2001
  %2003 = load i32, ptr %2002, align 4, !tbaa !220
  %2004 = icmp eq i32 %2003, 3
  br i1 %2004, label %2005, label %2010

2005:                                             ; preds = %1998
  %2006 = getelementptr inbounds %struct.tree_decl_common, ptr %1999, i64 0, i32 2
  %2007 = load i64, ptr %2006, align 8
  %2008 = and i64 %2007, 16777216
  %2009 = icmp eq i64 %2008, 0
  br i1 %2009, label %2010, label %2060

2010:                                             ; preds = %2005, %1998
  %2011 = load ptr, ptr %0, align 8, !tbaa !205
  %2012 = load i64, ptr %2011, align 8
  %2013 = and i64 %2012, 65535
  %2014 = icmp eq i64 %2013, 54
  br i1 %2014, label %2018, label %2015

2015:                                             ; preds = %2010
  %2016 = call zeroext i8 @is_gimple_non_addressable(ptr noundef nonnull %1999) #24
  %2017 = icmp eq i8 %2016, 0
  br i1 %2017, label %2060, label %2018

2018:                                             ; preds = %2015, %2010, %1989
  %2019 = load ptr, ptr %1574, align 8, !tbaa !205
  %2020 = load i64, ptr %2019, align 8
  %2021 = or i64 %2020, 268435456
  store i64 %2021, ptr %2019, align 8
  %2022 = load ptr, ptr %1573, align 8, !tbaa !205
  call void @mark_addressable(ptr noundef %2022)
  br label %2060

2023:                                             ; preds = %1870, %1870, %1870
  %2024 = call i32 @gimplify_expr(ptr noundef nonnull %1573, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_min_lval, i32 noundef 2)
  %2025 = load ptr, ptr %0, align 8, !tbaa !205
  %2026 = call ptr @voidify_wrapper_expr(ptr noundef nonnull %1871, ptr noundef %2025)
  %2027 = load ptr, ptr %0, align 8, !tbaa !205
  %2028 = icmp eq ptr %2026, %2027
  br i1 %2028, label %2030, label %2029

2029:                                             ; preds = %2023
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4301, ptr noundef nonnull @.str.1) #24
  br label %2030

2030:                                             ; preds = %2029, %2023
  br i1 %1572, label %2031, label %2036

2031:                                             ; preds = %2030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24)
  store ptr %1871, ptr %24, align 8, !tbaa !205
  %2032 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %24, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24)
  %2033 = load ptr, ptr %1573, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23)
  store ptr %2033, ptr %23, align 8, !tbaa !205
  %2034 = call ptr @walk_tree_1(ptr noundef nonnull %23, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %2035 = load ptr, ptr %23, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23)
  br label %2036

2036:                                             ; preds = %2031, %2030
  %2037 = phi ptr [ %2035, %2031 ], [ %1871, %2030 ]
  store ptr %2037, ptr %0, align 8, !tbaa !205
  br label %2060

2038:                                             ; preds = %1870
  %2039 = load ptr, ptr %0, align 8, !tbaa !205
  %2040 = getelementptr inbounds %struct.tree_exp, ptr %2039, i64 1
  %2041 = load ptr, ptr %2040, align 8, !tbaa !216
  %2042 = load i64, ptr %2041, align 8
  %2043 = and i64 %2042, 262144
  %2044 = icmp eq i64 %2043, 0
  br i1 %2044, label %2045, label %2060

2045:                                             ; preds = %2038
  %2046 = getelementptr inbounds %struct.tree_exp, ptr %2041, i64 0, i32 3
  %2047 = load ptr, ptr %2046, align 8, !tbaa !216
  %2048 = getelementptr inbounds %struct.tree_exp, ptr %2047, i64 0, i32 3
  %2049 = load ptr, ptr %2048, align 8, !tbaa !216
  %2050 = getelementptr inbounds %struct.tree_decl_common, ptr %2049, i64 0, i32 5
  %2051 = load ptr, ptr %2050, align 8, !tbaa !216
  %2052 = load i64, ptr %2049, align 8
  %2053 = and i64 %2052, 262144
  %2054 = icmp eq i64 %2053, 0
  %2055 = icmp ne ptr %2051, null
  %2056 = select i1 %2054, i1 %2055, i1 false
  br i1 %2056, label %2057, label %2060

2057:                                             ; preds = %2045
  %2058 = call ptr @copy_node_stat(ptr noundef %2039) #24
  store ptr %2058, ptr %0, align 8, !tbaa !205
  %2059 = getelementptr inbounds %struct.tree_exp, ptr %2058, i64 1
  store ptr %2051, ptr %2059, align 8, !tbaa !216
  br label %2060

2060:                                             ; preds = %1874, %1881, %1886, %1907, %1903, %1897, %1870, %1896, %2015, %2045, %2038, %2018, %2005, %1992, %1972, %1969, %1966, %1919, %1916, %1964, %2036, %2057
  %2061 = phi i32 [ 0, %2036 ], [ %1933, %1964 ], [ %1918, %1916 ], [ 0, %2057 ], [ -1, %1919 ], [ -1, %1966 ], [ -1, %1969 ], [ -1, %1972 ], [ -1, %1992 ], [ -1, %2005 ], [ -1, %2018 ], [ -1, %2038 ], [ -1, %2045 ], [ -1, %2015 ], [ -1, %1896 ], [ -1, %1870 ], [ -1, %1897 ], [ -1, %1903 ], [ -1, %1907 ], [ -1, %1886 ], [ -1, %1881 ], [ -1, %1874 ]
  %2062 = icmp eq i32 %2061, -1
  br i1 %2062, label %2063, label %4420, !prof !472

2063:                                             ; preds = %2060
  %2064 = load ptr, ptr %1574, align 8, !tbaa !205
  %2065 = load i64, ptr %2064, align 8
  %2066 = and i64 %2065, 65535
  %2067 = icmp eq i64 %2066, 150
  br i1 %2067, label %2068, label %2083, !prof !481

2068:                                             ; preds = %2063
  %2069 = getelementptr inbounds %struct.tree_exp, ptr %2064, i64 0, i32 3
  %2070 = load ptr, ptr %2069, align 8, !tbaa !216
  %2071 = getelementptr inbounds %struct.tree_exp, ptr %2064, i64 1
  %2072 = load ptr, ptr %2071, align 8, !tbaa !216
  %2073 = load i64, ptr %2070, align 8
  %2074 = and i64 %2073, 65535
  %2075 = icmp eq i64 %2074, 51
  br i1 %2075, label %2076, label %2078

2076:                                             ; preds = %2068
  %2077 = zext i1 %1572 to i8
  call fastcc void @gimplify_modify_expr_to_memset(ptr noundef nonnull %0, ptr noundef %2072, i8 noundef zeroext %2077, ptr noundef nonnull %145)
  br label %4420

2078:                                             ; preds = %2068
  %2079 = call zeroext i8 @is_gimple_addressable(ptr noundef nonnull %2070) #24
  %2080 = icmp eq i8 %2079, 0
  br i1 %2080, label %2083, label %2081

2081:                                             ; preds = %2078
  %2082 = zext i1 %1572 to i8
  store ptr %2070, ptr %1574, align 8, !tbaa !205
  call fastcc void @gimplify_modify_expr_to_memcpy(ptr noundef nonnull %0, ptr noundef %2072, i8 noundef zeroext %2082, ptr noundef nonnull %145)
  br label %4420

2083:                                             ; preds = %2078, %2063
  %2084 = load ptr, ptr %1573, align 8, !tbaa !205
  %2085 = load i64, ptr %2084, align 8
  %2086 = trunc i64 %2085 to i32
  %2087 = and i32 %2086, 65535
  %2088 = add nsw i32 %2087, -43
  %2089 = icmp ult i32 %2088, 2
  br i1 %2089, label %2090, label %2097, !prof !481

2090:                                             ; preds = %2083
  %2091 = getelementptr inbounds %struct.tree_exp, ptr %2084, i64 0, i32 3
  %2092 = load ptr, ptr %2091, align 8, !tbaa !216
  %2093 = call zeroext i8 @is_gimple_reg(ptr noundef %2092) #24
  %2094 = icmp eq i8 %2093, 0
  br i1 %2094, label %2097, label %2095

2095:                                             ; preds = %2090
  %2096 = zext i1 %1572 to i8
  call fastcc void @gimplify_modify_expr_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %145, i8 noundef zeroext %2096)
  br label %4420

2097:                                             ; preds = %2090, %2083
  %2098 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2099 = getelementptr inbounds %struct.gimplify_ctx, ptr %2098, i64 0, i32 10
  %2100 = load i8, ptr %2099, align 1, !tbaa !290
  %2101 = icmp eq i8 %2100, 0
  br i1 %2101, label %2102, label %2147, !prof !483

2102:                                             ; preds = %2097
  %2103 = load ptr, ptr %1574, align 8, !tbaa !205
  %2104 = load i64, ptr %2103, align 8
  %2105 = and i64 %2104, 65535
  %2106 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2105
  %2107 = load i32, ptr %2106, align 4, !tbaa !220
  %2108 = icmp eq i32 %2107, 3
  br i1 %2108, label %2109, label %2147, !prof !484

2109:                                             ; preds = %2102
  %2110 = getelementptr inbounds %struct.tree_decl_common, ptr %2103, i64 0, i32 2
  %2111 = load i64, ptr %2110, align 8
  %2112 = and i64 %2111, 1024
  %2113 = icmp eq i64 %2112, 0
  br i1 %2113, label %2147, label %2114, !prof !485

2114:                                             ; preds = %2109
  %2115 = load ptr, ptr %1573, align 8, !tbaa !205
  %2116 = load i64, ptr %2115, align 8
  %2117 = and i64 %2116, 65535
  %2118 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2117
  %2119 = load i32, ptr %2118, align 4, !tbaa !220
  %2120 = icmp eq i32 %2119, 3
  br i1 %2120, label %2121, label %2147, !prof !486

2121:                                             ; preds = %2114
  %2122 = getelementptr inbounds %struct.tree_decl_common, ptr %2115, i64 0, i32 2
  %2123 = load i64, ptr %2122, align 8
  %2124 = and i64 %2123, 1024
  %2125 = icmp eq i64 %2124, 0
  br i1 %2125, label %2126, label %2147, !prof !478

2126:                                             ; preds = %2121
  %2127 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2103, i64 0, i32 3
  %2128 = load ptr, ptr %2127, align 8, !tbaa !216
  %2129 = icmp eq ptr %2128, null
  br i1 %2129, label %2130, label %2140

2130:                                             ; preds = %2126
  %2131 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2115, i64 0, i32 3
  %2132 = load ptr, ptr %2131, align 8, !tbaa !216
  %2133 = icmp eq ptr %2132, null
  br i1 %2133, label %2140, label %2134

2134:                                             ; preds = %2130
  %2135 = getelementptr inbounds %struct.tree_identifier, ptr %2132, i64 0, i32 1
  %2136 = load ptr, ptr %2135, align 8, !tbaa !216
  %2137 = call ptr @create_tmp_var_name(ptr noundef %2136)
  %2138 = load ptr, ptr %1574, align 8, !tbaa !205
  %2139 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2138, i64 0, i32 3
  store ptr %2137, ptr %2139, align 8, !tbaa !216
  br label %2140

2140:                                             ; preds = %2134, %2130, %2126
  %2141 = load ptr, ptr %1574, align 8, !tbaa !205
  %2142 = getelementptr inbounds %struct.tree_decl_common, ptr %2141, i64 0, i32 2
  %2143 = load i64, ptr %2142, align 8
  %2144 = or i64 %2143, 16384
  store i64 %2144, ptr %2142, align 8
  %2145 = load ptr, ptr %1574, align 8, !tbaa !205
  %2146 = load ptr, ptr %1573, align 8, !tbaa !205
  call void @decl_debug_expr_insert(ptr noundef %2145, ptr noundef %2146) #24
  br label %2147

2147:                                             ; preds = %2140, %2121, %2114, %2109, %2102, %2097
  %2148 = load ptr, ptr %1574, align 8, !tbaa !205
  %2149 = load i64, ptr %2148, align 8
  %2150 = and i64 %2149, 65535
  %2151 = icmp eq i64 %2150, 59
  br i1 %2151, label %2152, label %2188, !prof !487

2152:                                             ; preds = %2147
  %2153 = call ptr @gimple_build_call_from_tree(ptr noundef nonnull %2148) #24
  %2154 = call i32 @gimple_call_flags(ptr noundef %2153) #24
  %2155 = and i32 %2154, 8
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2157, label %2204, !prof !488

2157:                                             ; preds = %2152
  %2158 = load ptr, ptr %1573, align 8, !tbaa !205
  %2159 = load i32, ptr %2153, align 8
  %2160 = and i32 %2159, 255
  %2161 = add nsw i32 %2160, -10
  %2162 = icmp ult i32 %2161, -9
  br i1 %2162, label %2167, label %2163, !prof !489

2163:                                             ; preds = %2157
  %2164 = getelementptr inbounds %struct.gimple_statement_base, ptr %2153, i64 0, i32 3
  %2165 = load i32, ptr %2164, align 4, !tbaa !216
  %2166 = icmp eq i32 %2165, 0
  br i1 %2166, label %2167, label %2168, !prof !489

2167:                                             ; preds = %2163, %2157
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %2168

2168:                                             ; preds = %2167, %2163
  %2169 = load i32, ptr %2153, align 8
  %2170 = and i32 %2169, 255
  %2171 = zext nneg i32 %2170 to i64
  %2172 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2171
  %2173 = load i32, ptr %2172, align 4, !tbaa !220
  %2174 = zext i32 %2173 to i64
  %2175 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2174
  %2176 = load i64, ptr %2175, align 8, !tbaa !256
  %2177 = icmp eq i64 %2176, 0
  br i1 %2177, label %2178, label %2179, !prof !489

2178:                                             ; preds = %2168
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %2179

2179:                                             ; preds = %2178, %2168
  %2180 = getelementptr inbounds i8, ptr %2153, i64 %2176
  store ptr %2158, ptr %2180, align 8, !tbaa !205
  %2181 = icmp eq ptr %2158, null
  br i1 %2181, label %2204, label %2182, !prof !489

2182:                                             ; preds = %2179
  %2183 = load i64, ptr %2158, align 8
  %2184 = and i64 %2183, 65535
  %2185 = icmp eq i64 %2184, 141
  br i1 %2185, label %2186, label %2204, !prof !489

2186:                                             ; preds = %2182
  %2187 = getelementptr inbounds %struct.tree_ssa_name, ptr %2158, i64 0, i32 2
  store ptr %2153, ptr %2187, align 8, !tbaa !216
  br label %2204

2188:                                             ; preds = %2147
  %2189 = load ptr, ptr %1573, align 8, !tbaa !205
  %2190 = call ptr @gimple_build_assign_stat(ptr noundef %2189, ptr noundef nonnull %2148) #24
  %2191 = load ptr, ptr %0, align 8, !tbaa !205
  %2192 = load i64, ptr %2191, align 8
  %2193 = and i64 %2192, 65535
  %2194 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2193
  %2195 = load i32, ptr %2194, align 4, !tbaa !220
  %2196 = add i32 %2195, -4
  %2197 = icmp ult i32 %2196, 7
  br i1 %2197, label %2198, label %2201, !prof !490

2198:                                             ; preds = %2188
  %2199 = getelementptr inbounds %struct.tree_exp, ptr %2191, i64 0, i32 1
  %2200 = load i32, ptr %2199, align 8, !tbaa !216
  br label %2201

2201:                                             ; preds = %2198, %2188
  %2202 = phi i32 [ %2200, %2198 ], [ 0, %2188 ]
  %2203 = getelementptr inbounds %struct.gimple_statement_base, ptr %2190, i64 0, i32 2
  store i32 %2202, ptr %2203, align 8, !tbaa !216
  br label %2204

2204:                                             ; preds = %2186, %2182, %2179, %2201, %2152
  %2205 = phi ptr [ %2153, %2152 ], [ %2190, %2201 ], [ %2153, %2179 ], [ %2153, %2182 ], [ %2153, %2186 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #24
  %2206 = icmp eq ptr %2205, null
  br i1 %2206, label %2231, label %2207, !prof !427

2207:                                             ; preds = %2204
  %2208 = load ptr, ptr %145, align 8, !tbaa !205
  %2209 = icmp eq ptr %2208, null
  br i1 %2209, label %2210, label %2212, !prof !428

2210:                                             ; preds = %2207
  %2211 = call ptr @gimple_seq_alloc() #24
  store ptr %2211, ptr %145, align 8, !tbaa !205
  br label %2212

2212:                                             ; preds = %2210, %2207
  %2213 = load ptr, ptr %145, align 8, !tbaa !205
  %2214 = icmp eq ptr %2213, null
  br i1 %2214, label %2218, label %2215, !prof !427

2215:                                             ; preds = %2212
  %2216 = getelementptr inbounds %struct.gimple_seq_d, ptr %2213, i64 0, i32 1
  %2217 = load ptr, ptr %2216, align 8, !tbaa !252, !noalias !491
  br label %2218

2218:                                             ; preds = %2215, %2212
  %2219 = phi ptr [ %2217, %2215 ], [ null, %2212 ]
  %2220 = icmp eq ptr %2219, null
  br i1 %2220, label %2227, label %2221, !prof !432

2221:                                             ; preds = %2218
  %2222 = load ptr, ptr %2219, align 8, !tbaa !275, !noalias !491
  %2223 = icmp eq ptr %2222, null
  br i1 %2223, label %2227, label %2224, !prof !433

2224:                                             ; preds = %2221
  %2225 = getelementptr inbounds %struct.gimple_statement_base, ptr %2222, i64 0, i32 4
  %2226 = load ptr, ptr %2225, align 8, !tbaa !216, !noalias !491
  br label %2227

2227:                                             ; preds = %2224, %2221, %2218
  %2228 = phi ptr [ %2226, %2224 ], [ null, %2221 ], [ null, %2218 ]
  %2229 = getelementptr inbounds i8, ptr %22, i64 8
  %2230 = getelementptr inbounds i8, ptr %22, i64 16
  store ptr %2219, ptr %22, align 8, !tbaa.struct !417
  store ptr %2213, ptr %2229, align 8, !tbaa.struct !244
  store ptr %2228, ptr %2230, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %22, ptr noundef nonnull %2205, i32 noundef 0) #24
  br label %2231

2231:                                             ; preds = %2204, %2227
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #24
  %2232 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2233 = getelementptr inbounds %struct.gimplify_ctx, ptr %2232, i64 0, i32 10
  %2234 = load i8, ptr %2233, align 1, !tbaa !290
  %2235 = icmp eq i8 %2234, 0
  br i1 %2235, label %2250, label %2236, !prof !483

2236:                                             ; preds = %2231
  %2237 = load ptr, ptr %1573, align 8, !tbaa !205
  %2238 = call zeroext i8 @is_gimple_reg(ptr noundef %2237) #24
  %2239 = icmp eq i8 %2238, 0
  br i1 %2239, label %2250, label %2240, !prof !292

2240:                                             ; preds = %2236
  %2241 = load ptr, ptr %1573, align 8, !tbaa !205
  %2242 = load i64, ptr %2241, align 8
  %2243 = and i64 %2242, 65535
  %2244 = icmp eq i64 %2243, 141
  br i1 %2244, label %2245, label %2246, !prof !292

2245:                                             ; preds = %2240
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4538, ptr noundef nonnull @.str.1) #24
  br label %2246

2246:                                             ; preds = %2245, %2240
  %2247 = load ptr, ptr %1573, align 8, !tbaa !205
  %2248 = load ptr, ptr @cfun, align 8, !tbaa !205
  %2249 = call ptr @make_ssa_name_fn(ptr noundef %2248, ptr noundef %2247, ptr noundef %2205) #24
  store ptr %2249, ptr %1573, align 8, !tbaa !205
  call void @gimple_set_lhs(ptr noundef %2205, ptr noundef %2249) #24
  br label %2250

2250:                                             ; preds = %2246, %2236, %2231
  br i1 %1572, label %2251, label %2255, !prof !481

2251:                                             ; preds = %2250
  %2252 = load ptr, ptr %1573, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51)
  store ptr %2252, ptr %51, align 8, !tbaa !205
  %2253 = call ptr @walk_tree_1(ptr noundef nonnull %51, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %2254 = load ptr, ptr %51, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51)
  store ptr %2254, ptr %0, align 8, !tbaa !205
  br label %4420

2255:                                             ; preds = %2250
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %4420

2256:                                             ; preds = %210, %210
  %2257 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2258 = load ptr, ptr %2257, align 8, !tbaa !216
  %2259 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !205
  %2260 = call ptr @fold_convert_loc(i32 noundef %164, ptr noundef %2258, ptr noundef %2259) #24
  %2261 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !205
  %2262 = call ptr @fold_convert_loc(i32 noundef %164, ptr noundef %2258, ptr noundef %2261) #24
  %2263 = call ptr @build3_stat(i32 noundef 56, ptr noundef %2258, ptr noundef %211, ptr noundef %2260, ptr noundef %2262) #24
  store ptr %2263, ptr %0, align 8, !tbaa !205
  %2264 = getelementptr inbounds %struct.tree_exp, ptr %2263, i64 0, i32 1
  store i32 %164, ptr %2264, align 8, !tbaa !216
  br label %4420

2265:                                             ; preds = %210
  %2266 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2267 = load ptr, ptr %2266, align 8, !tbaa !216
  %2268 = load i64, ptr %2267, align 8
  %2269 = and i64 %2268, 65535
  %2270 = icmp eq i64 %2269, 7
  br i1 %2270, label %2274, label %2271

2271:                                             ; preds = %2265
  %2272 = call ptr @gimple_boolify(ptr noundef nonnull %211)
  %2273 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %2267, ptr noundef %2272) #24
  store ptr %2273, ptr %0, align 8, !tbaa !205
  br label %4420

2274:                                             ; preds = %2265
  %2275 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %2276 = call i32 @gimplify_expr(ptr noundef nonnull %2275, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %2277 = load ptr, ptr %0, align 8, !tbaa !205
  call void @recalculate_side_effects(ptr noundef %2277) #24
  br label %4420

2278:                                             ; preds = %210
  %2279 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %2280 = load ptr, ptr %2279, align 8, !tbaa !216
  %2281 = and i64 %212, 65535
  %2282 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2281
  %2283 = load i32, ptr %2282, align 4, !tbaa !220
  %2284 = add i32 %2283, -4
  %2285 = icmp ult i32 %2284, 7
  br i1 %2285, label %2286, label %2289, !prof !494

2286:                                             ; preds = %2278
  %2287 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %2288 = load i32, ptr %2287, align 8, !tbaa !216
  br label %2289

2289:                                             ; preds = %2286, %2278
  %2290 = phi i32 [ %2288, %2286 ], [ 0, %2278 ]
  %2291 = load i64, ptr %2280, align 8
  %2292 = trunc i64 %2291 to i16
  switch i16 %2292, label %2323 [
    i16 47, label %2293
    i16 49, label %2293
    i16 118, label %2308
  ], !prof !495

2293:                                             ; preds = %2289, %2339, %2289
  %2294 = phi ptr [ %2340, %2339 ], [ %2280, %2289 ], [ %2280, %2289 ]
  %2295 = getelementptr inbounds %struct.tree_exp, ptr %2294, i64 0, i32 3
  %2296 = load ptr, ptr %2295, align 8, !tbaa !216
  %2297 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2298 = load ptr, ptr %2297, align 8, !tbaa !216
  %2299 = getelementptr inbounds %struct.tree_common, ptr %2296, i64 0, i32 2
  %2300 = load ptr, ptr %2299, align 8, !tbaa !216
  %2301 = call zeroext i8 @useless_type_conversion_p(ptr noundef %2298, ptr noundef %2300) #24
  %2302 = icmp eq i8 %2301, 0
  br i1 %2302, label %2303, label %2306

2303:                                             ; preds = %2293
  %2304 = load ptr, ptr %2297, align 8, !tbaa !216
  %2305 = call ptr @fold_convert_loc(i32 noundef %2290, ptr noundef %2304, ptr noundef %2296) #24
  br label %2306

2306:                                             ; preds = %2303, %2293
  %2307 = phi ptr [ %2296, %2293 ], [ %2305, %2303 ]
  store ptr %2307, ptr %0, align 8, !tbaa !205
  br label %4420

2308:                                             ; preds = %2289
  %2309 = getelementptr inbounds %struct.tree_exp, ptr %2280, i64 0, i32 3
  %2310 = load ptr, ptr %2309, align 8, !tbaa !216
  %2311 = call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %2310) #24
  %2312 = icmp eq i8 %2311, 0
  br i1 %2312, label %2315, label %2313

2313:                                             ; preds = %2308
  %2314 = load ptr, ptr %2309, align 8, !tbaa !216
  br label %2315

2315:                                             ; preds = %2313, %2308
  %2316 = phi ptr [ %2314, %2313 ], [ %2280, %2308 ]
  %2317 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2318 = load ptr, ptr %2317, align 8, !tbaa !216
  %2319 = getelementptr inbounds %struct.tree_exp, ptr %2316, i64 0, i32 3
  %2320 = load ptr, ptr %2319, align 8, !tbaa !216
  %2321 = call ptr @build_fold_addr_expr_loc(i32 noundef %2290, ptr noundef %2320) #24
  %2322 = call ptr @fold_convert_loc(i32 noundef %2290, ptr noundef %2318, ptr noundef %2321) #24
  store ptr %2322, ptr %0, align 8, !tbaa !205
  br label %4420

2323:                                             ; preds = %2289
  %2324 = call i32 @gimplify_expr(ptr noundef nonnull %2279, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_addressable, i32 noundef 3)
  %2325 = icmp eq i32 %2324, -2
  br i1 %2325, label %4420, label %2326, !prof !355

2326:                                             ; preds = %2323, %2334
  %2327 = phi ptr [ %2335, %2334 ], [ %2279, %2323 ]
  %2328 = load ptr, ptr %2327, align 8, !tbaa !205
  %2329 = load i64, ptr %2328, align 8
  %2330 = trunc i64 %2329 to i16
  switch i16 %2330, label %2331 [
    i16 42, label %2334
    i16 41, label %2334
    i16 45, label %2334
    i16 46, label %2334
    i16 118, label %2334
    i16 43, label %2334
    i16 44, label %2334
  ], !prof !496

2331:                                             ; preds = %2326
  %2332 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %2328) #24
  %2333 = icmp eq i8 %2332, 0
  br i1 %2333, label %2339, label %2336, !prof !494

2334:                                             ; preds = %2326, %2326, %2326, %2326, %2326, %2326, %2326
  %2335 = getelementptr inbounds %struct.tree_exp, ptr %2328, i64 0, i32 3
  br label %2326, !llvm.loop !497

2336:                                             ; preds = %2331
  %2337 = load ptr, ptr %2327, align 8, !tbaa !205
  %2338 = call fastcc ptr @internal_get_tmp_var(ptr noundef %2337, ptr noundef nonnull %145, ptr noundef null, i8 noundef zeroext 0)
  store ptr %2338, ptr %2327, align 8, !tbaa !205
  br label %2339

2339:                                             ; preds = %2331, %2336
  %2340 = load ptr, ptr %2279, align 8, !tbaa !216
  %2341 = load i64, ptr %2340, align 8
  %2342 = and i64 %2341, 65535
  %2343 = icmp eq i64 %2342, 47
  br i1 %2343, label %2293, label %2344, !prof !355

2344:                                             ; preds = %2339, %2348
  %2345 = phi ptr [ %2350, %2348 ], [ %2340, %2339 ]
  %2346 = load i64, ptr %2345, align 8
  %2347 = trunc i64 %2346 to i16
  switch i16 %2347, label %2353 [
    i16 42, label %2348
    i16 41, label %2348
    i16 45, label %2348
    i16 46, label %2348
    i16 118, label %2348
    i16 43, label %2348
    i16 44, label %2348
    i16 32, label %2351
    i16 34, label %2351
    i16 36, label %2351
  ], !prof !224

2348:                                             ; preds = %2344, %2344, %2344, %2344, %2344, %2344, %2344
  %2349 = getelementptr inbounds %struct.tree_exp, ptr %2345, i64 0, i32 3
  %2350 = load ptr, ptr %2349, align 8, !tbaa !216
  br label %2344, !llvm.loop !225

2351:                                             ; preds = %2344, %2344, %2344
  %2352 = or i64 %2346, 262144
  store i64 %2352, ptr %2345, align 8
  br label %2353

2353:                                             ; preds = %2344, %2351
  %2354 = getelementptr inbounds %struct.tree_common, ptr %2340, i64 0, i32 2
  %2355 = load ptr, ptr %2354, align 8, !tbaa !216
  %2356 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2357 = load ptr, ptr %2356, align 8, !tbaa !216
  %2358 = getelementptr inbounds %struct.tree_common, ptr %2357, i64 0, i32 2
  %2359 = load ptr, ptr %2358, align 8, !tbaa !216
  %2360 = call zeroext i8 @types_compatible_p(ptr noundef %2355, ptr noundef %2359) #24
  %2361 = icmp eq i8 %2360, 0
  br i1 %2361, label %2362, label %2364, !prof !355

2362:                                             ; preds = %2353
  %2363 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %2340) #24
  store ptr %2363, ptr %0, align 8, !tbaa !205
  br label %2364

2364:                                             ; preds = %2362, %2353
  %2365 = load ptr, ptr %0, align 8, !tbaa !205
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef %2365) #24
  %2366 = load ptr, ptr %2356, align 8, !tbaa !216
  %2367 = load ptr, ptr %0, align 8, !tbaa !205
  %2368 = getelementptr inbounds %struct.tree_common, ptr %2367, i64 0, i32 2
  %2369 = load ptr, ptr %2368, align 8, !tbaa !216
  %2370 = call zeroext i8 @useless_type_conversion_p(ptr noundef %2366, ptr noundef %2369) #24
  %2371 = icmp eq i8 %2370, 0
  br i1 %2371, label %2372, label %4420, !prof !355

2372:                                             ; preds = %2364
  %2373 = load ptr, ptr %2356, align 8, !tbaa !216
  %2374 = load ptr, ptr %0, align 8, !tbaa !205
  %2375 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2373, ptr noundef %2374) #24
  store ptr %2375, ptr %0, align 8, !tbaa !205
  br label %4420

2376:                                             ; preds = %210
  %2377 = call i32 @gimplify_va_arg_expr(ptr noundef nonnull %0, ptr noundef nonnull %145, ptr noundef nonnull %147) #24
  br label %4420

2378:                                             ; preds = %210, %210
  %2379 = and i64 %212, 65535
  %2380 = icmp eq i64 %2379, 116
  br i1 %2380, label %2381, label %2392, !prof !498

2381:                                             ; preds = %2378
  %2382 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2383 = load ptr, ptr %2382, align 8, !tbaa !216
  %2384 = load i64, ptr %2383, align 8
  %2385 = and i64 %2384, 65535
  %2386 = icmp eq i64 %2385, 19
  br i1 %2386, label %2387, label %2392, !prof !499

2387:                                             ; preds = %2381
  %2388 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %2389 = load ptr, ptr %2388, align 8, !tbaa !216
  %2390 = call i32 @integer_zerop(ptr noundef %2389) #24
  %2391 = icmp eq i32 %2390, 0
  br i1 %2391, label %2392, label %4420

2392:                                             ; preds = %2387, %2381, %2378
  %2393 = load ptr, ptr %0, align 8, !tbaa !205
  %2394 = getelementptr inbounds %struct.tree_common, ptr %2393, i64 0, i32 2
  %2395 = load ptr, ptr %2394, align 8, !tbaa !216
  %2396 = load i64, ptr %2395, align 8
  %2397 = and i64 %2396, 65535
  %2398 = icmp eq i64 %2397, 19
  %2399 = or i1 %189, %2398
  br i1 %2399, label %2400, label %2403, !prof !499

2400:                                             ; preds = %2392
  %2401 = getelementptr inbounds %struct.tree_exp, ptr %2393, i64 0, i32 3
  %2402 = load ptr, ptr %2401, align 8, !tbaa !216
  store ptr %2402, ptr %0, align 8, !tbaa !205
  br label %4420

2403:                                             ; preds = %2392
  %2404 = load i64, ptr %2393, align 8
  %2405 = and i64 %2404, 65535
  %2406 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2405
  %2407 = load i32, ptr %2406, align 4, !tbaa !220
  %2408 = add i32 %2407, -4
  %2409 = icmp ult i32 %2408, 7
  br i1 %2409, label %2410, label %2413, !prof !498

2410:                                             ; preds = %2403
  %2411 = getelementptr inbounds %struct.tree_exp, ptr %2393, i64 0, i32 1
  %2412 = load i32, ptr %2411, align 8, !tbaa !216
  br label %2413

2413:                                             ; preds = %2410, %2403
  %2414 = phi i32 [ %2412, %2410 ], [ 0, %2403 ]
  %2415 = trunc i64 %2404 to i16
  switch i16 %2415, label %2416 [
    i16 116, label %2417
    i16 113, label %2417
  ], !prof !500

2416:                                             ; preds = %2413
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1751, ptr noundef nonnull @.str.1) #24
  br label %2417

2417:                                             ; preds = %2413, %2416, %2413
  %2418 = load ptr, ptr %0, align 8, !tbaa !205
  %2419 = getelementptr inbounds %struct.tree_exp, ptr %2418, i64 0, i32 3
  %2420 = load ptr, ptr %2419, align 8, !tbaa !216
  %2421 = call ptr @tree_strip_sign_nop_conversions(ptr noundef %2420) #24
  %2422 = load ptr, ptr %0, align 8, !tbaa !205
  %2423 = getelementptr inbounds %struct.tree_exp, ptr %2422, i64 0, i32 3
  store ptr %2421, ptr %2423, align 8, !tbaa !216
  %2424 = load ptr, ptr %0, align 8, !tbaa !205
  %2425 = call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %2424) #24
  %2426 = icmp eq i8 %2425, 0
  br i1 %2426, label %2431, label %2427, !prof !498

2427:                                             ; preds = %2417
  %2428 = load ptr, ptr %0, align 8, !tbaa !205
  %2429 = getelementptr inbounds %struct.tree_exp, ptr %2428, i64 0, i32 3
  %2430 = load ptr, ptr %2429, align 8, !tbaa !216
  store ptr %2430, ptr %0, align 8, !tbaa !205
  br label %2431

2431:                                             ; preds = %2427, %2417
  %2432 = load ptr, ptr %0, align 8, !tbaa !205
  %2433 = load i64, ptr %2432, align 8
  %2434 = trunc i64 %2433 to i16
  switch i16 %2434, label %2462 [
    i16 116, label %2435
    i16 113, label %2435
  ], !prof !500

2435:                                             ; preds = %2431, %2431
  %2436 = getelementptr inbounds %struct.tree_common, ptr %2432, i64 0, i32 2
  %2437 = load ptr, ptr %2436, align 8, !tbaa !216
  %2438 = load i64, ptr %2437, align 8
  %2439 = trunc i64 %2438 to i16
  switch i16 %2439, label %2462 [
    i16 10, label %2440
    i16 12, label %2440
  ], !prof !501

2440:                                             ; preds = %2435, %2435
  %2441 = getelementptr inbounds %struct.tree_exp, ptr %2432, i64 0, i32 3
  %2442 = load ptr, ptr %2441, align 8, !tbaa !216
  %2443 = getelementptr inbounds %struct.tree_common, ptr %2442, i64 0, i32 2
  %2444 = load ptr, ptr %2443, align 8, !tbaa !216
  %2445 = load i64, ptr %2444, align 8
  %2446 = trunc i64 %2445 to i16
  switch i16 %2446, label %2462 [
    i16 10, label %2447
    i16 12, label %2447
  ], !prof !502

2447:                                             ; preds = %2440, %2440
  %2448 = and i64 %2433, 65535
  %2449 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2448
  %2450 = load i32, ptr %2449, align 4, !tbaa !220
  %2451 = add i32 %2450, -4
  %2452 = icmp ult i32 %2451, 7
  br i1 %2452, label %2453, label %2456, !prof !503

2453:                                             ; preds = %2447
  %2454 = getelementptr inbounds %struct.tree_exp, ptr %2432, i64 0, i32 1
  %2455 = load i32, ptr %2454, align 8, !tbaa !216
  br label %2456

2456:                                             ; preds = %2453, %2447
  %2457 = phi i32 [ %2455, %2453 ], [ 0, %2447 ]
  %2458 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !205
  %2459 = call ptr @maybe_fold_offset_to_address(i32 noundef %2457, ptr noundef %2442, ptr noundef %2458, ptr noundef nonnull %2437) #24
  %2460 = icmp eq ptr %2459, null
  br i1 %2460, label %2462, label %2461, !prof !504

2461:                                             ; preds = %2456
  store ptr %2459, ptr %0, align 8, !tbaa !205
  br label %2462

2462:                                             ; preds = %2456, %2440, %2435, %2461, %2431
  %2463 = load ptr, ptr %0, align 8, !tbaa !205
  %2464 = load i64, ptr %2463, align 8
  %2465 = trunc i64 %2464 to i16
  switch i16 %2465, label %2531 [
    i16 116, label %2466
    i16 113, label %2466
  ], !prof !505

2466:                                             ; preds = %2462, %2462
  %2467 = getelementptr inbounds %struct.tree_exp, ptr %2463, i64 0, i32 3
  %2468 = load ptr, ptr %2467, align 8, !tbaa !216
  %2469 = load i64, ptr %2468, align 8
  %2470 = trunc i64 %2469 to i16
  switch i16 %2470, label %2531 [
    i16 41, label %2471
    i16 121, label %2472
  ], !prof !506

2471:                                             ; preds = %2466
  call fastcc void @canonicalize_component_ref(ptr noundef nonnull %2467)
  br label %2531

2472:                                             ; preds = %2466
  %2473 = getelementptr inbounds %struct.tree_common, ptr %2463, i64 0, i32 2
  %2474 = load ptr, ptr %2473, align 8, !tbaa !216
  %2475 = load i64, ptr %2474, align 8
  %2476 = trunc i64 %2475 to i16
  switch i16 %2476, label %2531 [
    i16 10, label %2477
    i16 12, label %2477
  ]

2477:                                             ; preds = %2472, %2472
  %2478 = and i64 %2469, 65535
  %2479 = icmp eq i64 %2478, 121
  br i1 %2479, label %2480, label %2531

2480:                                             ; preds = %2477
  %2481 = getelementptr inbounds %struct.tree_common, ptr %2468, i64 0, i32 2
  %2482 = load ptr, ptr %2481, align 8, !tbaa !216
  %2483 = getelementptr inbounds %struct.tree_common, ptr %2482, i64 0, i32 2
  %2484 = load ptr, ptr %2483, align 8, !tbaa !216
  %2485 = load i64, ptr %2484, align 8
  %2486 = and i64 %2485, 65535
  %2487 = icmp eq i64 %2486, 15
  br i1 %2487, label %2488, label %2531

2488:                                             ; preds = %2480
  %2489 = getelementptr inbounds %struct.tree_common, ptr %2484, i64 0, i32 2
  %2490 = load ptr, ptr %2489, align 8, !tbaa !216
  %2491 = call ptr @build_pointer_type(ptr noundef %2490) #24
  %2492 = load ptr, ptr %2473, align 8, !tbaa !216
  %2493 = getelementptr inbounds %struct.tree_type, ptr %2492, i64 0, i32 16
  %2494 = load ptr, ptr %2493, align 8, !tbaa !216
  %2495 = call zeroext i8 @useless_type_conversion_p(ptr noundef %2494, ptr noundef %2491) #24
  %2496 = icmp eq i8 %2495, 0
  br i1 %2496, label %2531, label %2497

2497:                                             ; preds = %2488
  %2498 = getelementptr inbounds %struct.tree_type, ptr %2490, i64 0, i32 3
  %2499 = load ptr, ptr %2498, align 8, !tbaa !216
  %2500 = icmp eq ptr %2499, null
  br i1 %2500, label %2531, label %2501

2501:                                             ; preds = %2497
  %2502 = load i64, ptr %2499, align 8
  %2503 = and i64 %2502, 65535
  %2504 = icmp eq i64 %2503, 23
  br i1 %2504, label %2505, label %2531

2505:                                             ; preds = %2501
  %2506 = getelementptr inbounds %struct.tree_type, ptr %2484, i64 0, i32 1
  %2507 = load ptr, ptr %2506, align 8, !tbaa !216
  %2508 = icmp eq ptr %2507, null
  br i1 %2508, label %2531, label %2509

2509:                                             ; preds = %2505
  %2510 = getelementptr inbounds %struct.tree_type, ptr %2507, i64 0, i32 13
  %2511 = load ptr, ptr %2510, align 8, !tbaa !216
  %2512 = icmp eq ptr %2511, null
  br i1 %2512, label %2531, label %2513

2513:                                             ; preds = %2509
  %2514 = load i64, ptr %2511, align 8
  %2515 = and i64 %2514, 65535
  %2516 = icmp eq i64 %2515, 23
  br i1 %2516, label %2517, label %2531

2517:                                             ; preds = %2513
  %2518 = getelementptr inbounds %struct.tree_exp, ptr %2468, i64 0, i32 3
  %2519 = load ptr, ptr %2518, align 8, !tbaa !216
  %2520 = call ptr @build4_stat(i32 noundef 45, ptr noundef %2490, ptr noundef %2519, ptr noundef nonnull %2511, ptr noundef null, ptr noundef null) #24
  store ptr %2520, ptr %0, align 8, !tbaa !205
  %2521 = call ptr @build1_stat(i32 noundef 121, ptr noundef %2491, ptr noundef %2520) #24
  store ptr %2521, ptr %0, align 8, !tbaa !205
  %2522 = load ptr, ptr %2473, align 8, !tbaa !216
  %2523 = getelementptr inbounds %struct.tree_common, ptr %2521, i64 0, i32 2
  %2524 = load ptr, ptr %2523, align 8, !tbaa !216
  %2525 = call zeroext i8 @useless_type_conversion_p(ptr noundef %2522, ptr noundef %2524) #24
  %2526 = icmp eq i8 %2525, 0
  br i1 %2526, label %2527, label %2531

2527:                                             ; preds = %2517
  %2528 = load ptr, ptr %2473, align 8, !tbaa !216
  %2529 = load ptr, ptr %0, align 8, !tbaa !205
  %2530 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2528, ptr noundef %2529) #24
  store ptr %2530, ptr %0, align 8, !tbaa !205
  br label %2531

2531:                                             ; preds = %2477, %2466, %2527, %2517, %2513, %2509, %2505, %2501, %2497, %2488, %2480, %2472, %2471, %2462
  %2532 = load ptr, ptr %0, align 8, !tbaa !205
  %2533 = load i64, ptr %2532, align 8
  %2534 = trunc i64 %2533 to i16
  switch i16 %2534, label %2547 [
    i16 116, label %2535
    i16 113, label %2535
  ], !prof !505

2535:                                             ; preds = %2531, %2531
  %2536 = getelementptr inbounds %struct.tree_common, ptr %2532, i64 0, i32 2
  %2537 = load ptr, ptr %2536, align 8, !tbaa !216
  %2538 = call zeroext i8 @is_gimple_reg_type(ptr noundef %2537) #24
  %2539 = icmp eq i8 %2538, 0
  br i1 %2539, label %2540, label %2547, !prof !507

2540:                                             ; preds = %2535
  %2541 = load ptr, ptr %0, align 8, !tbaa !205
  %2542 = getelementptr inbounds %struct.tree_common, ptr %2541, i64 0, i32 2
  %2543 = load ptr, ptr %2542, align 8, !tbaa !216
  %2544 = getelementptr inbounds %struct.tree_exp, ptr %2541, i64 0, i32 3
  %2545 = load ptr, ptr %2544, align 8, !tbaa !216
  %2546 = call ptr @fold_build1_stat_loc(i32 noundef %2414, i32 noundef 118, ptr noundef %2543, ptr noundef %2545) #24
  store ptr %2546, ptr %0, align 8, !tbaa !205
  br label %2547

2547:                                             ; preds = %2531, %2535, %2540
  %2548 = load ptr, ptr %0, align 8, !tbaa !205
  %2549 = icmp eq ptr %2548, %193
  br i1 %2549, label %2550, label %4420, !prof !508

2550:                                             ; preds = %2547, %210
  %2551 = load ptr, ptr %0, align 8, !tbaa !205
  %2552 = getelementptr inbounds %struct.tree_exp, ptr %2551, i64 0, i32 3
  %2553 = call i32 @gimplify_expr(ptr noundef nonnull %2552, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %2554 = load ptr, ptr %0, align 8, !tbaa !205
  call void @recalculate_side_effects(ptr noundef %2554) #24
  br label %4420

2555:                                             ; preds = %210
  %2556 = load i32, ptr @input_location, align 4, !tbaa !220
  %2557 = call ptr @fold_indirect_ref_loc(i32 noundef %2556, ptr noundef nonnull %211) #24
  store ptr %2557, ptr %0, align 8, !tbaa !205
  %2558 = icmp eq ptr %2557, %193
  br i1 %2558, label %2559, label %4420, !prof !509

2559:                                             ; preds = %2555, %210, %210
  %2560 = load ptr, ptr %0, align 8, !tbaa !205
  %2561 = getelementptr inbounds %struct.tree_exp, ptr %2560, i64 0, i32 3
  %2562 = call i32 @gimplify_expr(ptr noundef nonnull %2561, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_reg, i32 noundef 1)
  %2563 = load ptr, ptr %0, align 8, !tbaa !205
  call void @recalculate_side_effects(ptr noundef %2563) #24
  br label %4420

2564:                                             ; preds = %210
  %2565 = icmp eq i32 %188, 0
  br i1 %2565, label %2566, label %4420

2566:                                             ; preds = %2564
  %2567 = getelementptr inbounds %struct.tree_decl_common, ptr %211, i64 0, i32 5
  %2568 = load ptr, ptr %2567, align 8, !tbaa !216
  store ptr %2568, ptr %0, align 8, !tbaa !205
  br label %4420

2569:                                             ; preds = %210
  %2570 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %2571 = load ptr, ptr %2570, align 8, !tbaa !216
  store ptr null, ptr %0, align 8, !tbaa !205
  %2572 = getelementptr inbounds %struct.tree_common, ptr %2571, i64 0, i32 2
  %2573 = load ptr, ptr %2572, align 8, !tbaa !216
  %2574 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %2575 = icmp eq ptr %2573, %2574
  br i1 %2575, label %4420, label %2576, !prof !327

2576:                                             ; preds = %2569
  %2577 = load i64, ptr %2571, align 8
  %2578 = trunc i64 %2577 to i16
  switch i16 %2578, label %2584 [
    i16 35, label %2579
    i16 32, label %2579
  ], !prof !510

2579:                                             ; preds = %2576, %2576
  %2580 = load i64, ptr %2573, align 8
  %2581 = and i64 %2580, 131072
  %2582 = icmp eq i64 %2581, 0
  br i1 %2582, label %2583, label %2584, !prof !511

2583:                                             ; preds = %2579
  call void @gimplify_type_sizes(ptr noundef nonnull %2573, ptr noundef nonnull %145)
  br label %2584

2584:                                             ; preds = %2579, %2583, %2576
  %2585 = load i64, ptr %2571, align 8
  %2586 = and i64 %2585, 65535
  %2587 = icmp eq i64 %2586, 32
  br i1 %2587, label %2588, label %4420, !prof !512

2588:                                             ; preds = %2584
  %2589 = getelementptr inbounds %struct.tree_decl_common, ptr %2571, i64 0, i32 2
  %2590 = load i64, ptr %2589, align 8
  %2591 = and i64 %2590, 33554432
  %2592 = icmp eq i64 %2591, 0
  br i1 %2592, label %2593, label %4420, !prof !512

2593:                                             ; preds = %2588
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %78) #24
  %2594 = getelementptr inbounds %struct.tree_decl_common, ptr %2571, i64 0, i32 5
  %2595 = load ptr, ptr %2594, align 8, !tbaa !216
  store ptr %2595, ptr %78, align 8, !tbaa !205
  %2596 = getelementptr inbounds %struct.tree_decl_common, ptr %2571, i64 0, i32 4
  %2597 = load ptr, ptr %2596, align 8, !tbaa !216
  %2598 = load i64, ptr %2597, align 8
  %2599 = and i64 %2598, 65535
  %2600 = icmp eq i64 %2599, 23
  br i1 %2600, label %2601, label %2611, !prof !512

2601:                                             ; preds = %2593
  %2602 = load i64, ptr %2571, align 8
  %2603 = and i64 %2602, 67108864
  %2604 = icmp eq i64 %2603, 0
  %2605 = load i32, ptr @flag_stack_check, align 4
  %2606 = icmp eq i32 %2605, 1
  %2607 = select i1 %2604, i1 %2606, i1 false, !prof !327
  br i1 %2607, label %2608, label %2612, !prof !327

2608:                                             ; preds = %2601
  %2609 = call i32 @compare_tree_int(ptr noundef nonnull %2597, i64 noundef 40) #24
  %2610 = icmp sgt i32 %2609, 0
  br i1 %2610, label %2611, label %2612

2611:                                             ; preds = %2608, %2593
  call fastcc void @gimplify_vla_decl(ptr noundef nonnull %2571, ptr noundef nonnull %145)
  br label %2612

2612:                                             ; preds = %2611, %2608, %2601
  %2613 = load ptr, ptr %78, align 8, !tbaa !205
  %2614 = icmp eq ptr %2613, null
  %2615 = load ptr, ptr @global_trees, align 16
  %2616 = icmp eq ptr %2613, %2615
  %2617 = select i1 %2614, i1 true, i1 %2616, !prof !327
  br i1 %2617, label %2629, label %2618, !prof !327

2618:                                             ; preds = %2612
  %2619 = load i64, ptr %2571, align 8
  %2620 = and i64 %2619, 67108864
  %2621 = icmp eq i64 %2620, 0
  br i1 %2621, label %2622, label %2627, !prof !327

2622:                                             ; preds = %2618
  store ptr null, ptr %2594, align 8, !tbaa !216
  %2623 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %2624 = call ptr @build2_stat(i32 noundef 54, ptr noundef %2623, ptr noundef nonnull %2571, ptr noundef %2613) #24
  store ptr %2624, ptr %78, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50)
  store ptr %2624, ptr %50, align 8, !tbaa !205
  %2625 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %50, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50)
  %2626 = load ptr, ptr %78, align 8, !tbaa !205
  call void @ggc_free(ptr noundef %2626) #24
  br label %2629

2627:                                             ; preds = %2618
  %2628 = call ptr @walk_tree_1(ptr noundef nonnull %78, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  br label %2629

2629:                                             ; preds = %2627, %2622, %2612
  %2630 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2571, i64 0, i32 4
  %2631 = load i32, ptr %2630, align 8
  %2632 = and i32 %2631, 256
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2634, label %2643, !prof !327

2634:                                             ; preds = %2629
  %2635 = load i64, ptr %2589, align 8
  %2636 = and i64 %2635, 4096
  %2637 = icmp eq i64 %2636, 0
  br i1 %2637, label %2643, label %2638

2638:                                             ; preds = %2634
  %2639 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2571, i64 0, i32 3
  %2640 = load ptr, ptr %2639, align 8, !tbaa !216
  %2641 = icmp eq ptr %2640, null
  br i1 %2641, label %2642, label %2643

2642:                                             ; preds = %2638
  call void @gimple_add_tmp_var(ptr noundef nonnull %2571)
  br label %2643

2643:                                             ; preds = %2642, %2638, %2634, %2629
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %78) #24
  br label %4420

2644:                                             ; preds = %210
  %2645 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2646 = getelementptr inbounds %struct.gimplify_ctx, ptr %2645, i64 0, i32 9
  %2647 = load i8, ptr %2646, align 4, !tbaa !513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %75) #24
  %2648 = call ptr @voidify_wrapper_expr(ptr noundef %211, ptr noundef null)
  %2649 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %2650 = load ptr, ptr %2649, align 8, !tbaa !216
  %2651 = icmp eq ptr %2650, null
  br i1 %2651, label %2742, label %2652, !prof !514

2652:                                             ; preds = %2644, %2738
  %2653 = phi ptr [ %2740, %2738 ], [ %2650, %2644 ]
  %2654 = load i64, ptr %2653, align 8
  %2655 = and i64 %2654, 65535
  %2656 = icmp eq i64 %2655, 32
  br i1 %2656, label %2657, label %2711, !prof !512

2657:                                             ; preds = %2652
  %2658 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %2659 = icmp eq ptr %2658, null
  br i1 %2659, label %2685, label %2660, !prof !512

2660:                                             ; preds = %2657
  %2661 = and i64 %2654, 67108864
  %2662 = icmp eq i64 %2661, 0
  br i1 %2662, label %2663, label %2669

2663:                                             ; preds = %2660
  %2664 = getelementptr inbounds %struct.tree_decl_common, ptr %2653, i64 0, i32 2
  %2665 = load i64, ptr %2664, align 8
  %2666 = lshr i64 %2665, 25
  %2667 = trunc i64 %2666 to i8
  %2668 = and i8 %2667, 1
  br label %2669

2669:                                             ; preds = %2660, %2663
  %2670 = phi i8 [ 1, %2660 ], [ %2668, %2663 ]
  %2671 = icmp eq i8 %2670, 0
  br i1 %2671, label %2672, label %2685

2672:                                             ; preds = %2669
  %2673 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2653, i64 0, i32 4
  %2674 = load i32, ptr %2673, align 8
  %2675 = and i32 %2674, 256
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2683, label %2677

2677:                                             ; preds = %2672
  %2678 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2658, i64 0, i32 1
  %2679 = load ptr, ptr %2678, align 8, !tbaa !293
  %2680 = ptrtoint ptr %2653 to i64
  %2681 = call ptr @splay_tree_lookup(ptr noundef %2679, i64 noundef %2680) #24
  %2682 = icmp eq ptr %2681, null
  br i1 %2682, label %2683, label %2685

2683:                                             ; preds = %2677, %2672
  %2684 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  call fastcc void @omp_add_variable(ptr noundef %2684, ptr noundef nonnull %2653, i32 noundef 129)
  br label %2685

2685:                                             ; preds = %2683, %2677, %2669, %2657
  %2686 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2653, i64 0, i32 4
  %2687 = load i32, ptr %2686, align 8
  %2688 = or i32 %2687, 256
  store i32 %2688, ptr %2686, align 8
  %2689 = and i32 %2687, 2
  %2690 = icmp eq i32 %2689, 0
  br i1 %2690, label %2711, label %2691, !prof !512

2691:                                             ; preds = %2685
  %2692 = load i64, ptr %2653, align 8
  %2693 = and i64 %2692, 67108864
  %2694 = icmp eq i64 %2693, 0
  br i1 %2694, label %2695, label %2701

2695:                                             ; preds = %2691
  %2696 = getelementptr inbounds %struct.tree_decl_common, ptr %2653, i64 0, i32 2
  %2697 = load i64, ptr %2696, align 8
  %2698 = lshr i64 %2697, 25
  %2699 = trunc i64 %2698 to i8
  %2700 = and i8 %2699, 1
  br label %2701

2701:                                             ; preds = %2691, %2695
  %2702 = phi i8 [ 1, %2691 ], [ %2700, %2695 ]
  %2703 = icmp eq i8 %2702, 0
  %2704 = load ptr, ptr @cfun, align 8
  %2705 = icmp ne ptr %2704, null
  %2706 = select i1 %2703, i1 %2705, i1 false
  br i1 %2706, label %2707, label %2711

2707:                                             ; preds = %2701
  %2708 = getelementptr inbounds %struct.function, ptr %2704, i64 0, i32 20
  %2709 = load i32, ptr %2708, align 8
  %2710 = or i32 %2709, 536870912
  store i32 %2710, ptr %2708, align 8
  br label %2711

2711:                                             ; preds = %2707, %2701, %2685, %2652
  %2712 = load i32, ptr @optimize, align 4, !tbaa !220
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2738, label %2714, !prof !327

2714:                                             ; preds = %2711
  %2715 = getelementptr inbounds %struct.tree_common, ptr %2653, i64 0, i32 2
  %2716 = load ptr, ptr %2715, align 8, !tbaa !216
  %2717 = load i64, ptr %2716, align 8
  %2718 = trunc i64 %2717 to i32
  %2719 = and i32 %2718, 65535
  %2720 = add nsw i32 %2719, -13
  %2721 = icmp ult i32 %2720, 2
  br i1 %2721, label %2722, label %2738, !prof !327

2722:                                             ; preds = %2714
  %2723 = load i64, ptr %2653, align 8
  %2724 = and i64 %2723, 589823
  %2725 = icmp eq i64 %2724, 32
  br i1 %2725, label %2726, label %2738

2726:                                             ; preds = %2722
  %2727 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2653, i64 0, i32 4
  %2728 = load i32, ptr %2727, align 8
  %2729 = and i32 %2728, 2
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2731, label %2738

2731:                                             ; preds = %2726
  %2732 = call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %2653) #24
  %2733 = icmp eq i8 %2732, 0
  br i1 %2733, label %2734, label %2738

2734:                                             ; preds = %2731
  %2735 = getelementptr inbounds %struct.tree_decl_common, ptr %2653, i64 0, i32 2
  %2736 = load i64, ptr %2735, align 8
  %2737 = or i64 %2736, 134217728
  store i64 %2737, ptr %2735, align 8
  br label %2738

2738:                                             ; preds = %2734, %2731, %2726, %2722, %2714, %2711
  %2739 = getelementptr inbounds %struct.tree_common, ptr %2653, i64 0, i32 1
  %2740 = load ptr, ptr %2739, align 8, !tbaa !216
  %2741 = icmp eq ptr %2740, null
  br i1 %2741, label %2742, label %2652, !prof !512, !llvm.loop !515

2742:                                             ; preds = %2738, %2644
  %2743 = load ptr, ptr %2649, align 8, !tbaa !216
  %2744 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 1
  %2745 = load ptr, ptr %2744, align 8, !tbaa !216
  %2746 = call ptr @gimple_build_bind(ptr noundef %2743, ptr noundef null, ptr noundef %2745) #24
  %2747 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2748 = getelementptr inbounds %struct.gimplify_ctx, ptr %2747, i64 0, i32 1
  %2749 = load ptr, ptr %2748, align 8, !tbaa !231
  %2750 = icmp eq ptr %2749, null
  br i1 %2750, label %2751, label %2755, !prof !235

2751:                                             ; preds = %2742
  %2752 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #24
  %2753 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2754 = getelementptr inbounds %struct.gimplify_ctx, ptr %2753, i64 0, i32 1
  store ptr %2752, ptr %2754, align 8, !tbaa !231
  br label %2755

2755:                                             ; preds = %2751, %2742
  %2756 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2757 = getelementptr inbounds %struct.gimplify_ctx, ptr %2756, i64 0, i32 1
  %2758 = load ptr, ptr %2757, align 8, !tbaa !205
  %2759 = icmp eq ptr %2758, null
  br i1 %2759, label %2765, label %2760, !prof !237

2760:                                             ; preds = %2755
  %2761 = getelementptr inbounds %struct.VEC_gimple_base, ptr %2758, i64 0, i32 1
  %2762 = load i32, ptr %2761, align 4, !tbaa !516
  %2763 = load i32, ptr %2758, align 8, !tbaa !233
  %2764 = icmp eq i32 %2762, %2763
  br i1 %2764, label %2765, label %2767, !prof !237

2765:                                             ; preds = %2760, %2755
  %2766 = call ptr @vec_heap_p_reserve(ptr noundef %2758, i32 noundef 1) #24
  store ptr %2766, ptr %2757, align 8, !tbaa !205
  br label %2767

2767:                                             ; preds = %2760, %2765
  %2768 = load ptr, ptr %2757, align 8, !tbaa !205
  %2769 = load i32, ptr %2768, align 8, !tbaa !233
  %2770 = add i32 %2769, 1
  store i32 %2770, ptr %2768, align 8, !tbaa !233
  %2771 = zext i32 %2769 to i64
  %2772 = getelementptr inbounds %struct.VEC_gimple_base, ptr %2768, i64 0, i32 2, i64 %2771
  store ptr %2746, ptr %2772, align 8, !tbaa !205
  %2773 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2774 = getelementptr inbounds %struct.gimplify_ctx, ptr %2773, i64 0, i32 9
  store i8 0, ptr %2774, align 4, !tbaa !513
  store ptr null, ptr %75, align 8, !tbaa !205
  %2775 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %2776 = call ptr @gimple_seq_alloc() #24
  store ptr %2776, ptr %75, align 8, !tbaa !205
  %2777 = call i32 @gimplify_expr(ptr noundef nonnull %2775, ptr noundef nonnull %75, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  %2778 = load ptr, ptr %75, align 8, !tbaa !205
  %2779 = getelementptr inbounds %struct.gimple_statement_bind, ptr %2746, i64 0, i32 3
  store ptr %2778, ptr %2779, align 8, !tbaa !216
  %2780 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2781 = getelementptr inbounds %struct.gimplify_ctx, ptr %2780, i64 0, i32 9
  %2782 = load i8, ptr %2781, align 4, !tbaa !513
  %2783 = icmp eq i8 %2782, 0
  br i1 %2783, label %2825, label %2784, !prof !235

2784:                                             ; preds = %2767
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %76) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %77) #24
  %2785 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 526), align 16, !tbaa !205
  %2786 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %2785, i32 noundef 0) #24
  %2787 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !205
  %2788 = call ptr @create_tmp_var(ptr noundef %2787, ptr noundef nonnull @.str.10)
  %2789 = load i32, ptr %2786, align 8
  %2790 = and i32 %2789, 255
  %2791 = add nsw i32 %2790, -10
  %2792 = icmp ult i32 %2791, -9
  br i1 %2792, label %2797, label %2793

2793:                                             ; preds = %2784
  %2794 = getelementptr inbounds %struct.gimple_statement_base, ptr %2786, i64 0, i32 3
  %2795 = load i32, ptr %2794, align 4, !tbaa !216
  %2796 = icmp eq i32 %2795, 0
  br i1 %2796, label %2797, label %2798

2797:                                             ; preds = %2793, %2784
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %2798

2798:                                             ; preds = %2797, %2793
  %2799 = load i32, ptr %2786, align 8
  %2800 = and i32 %2799, 255
  %2801 = zext nneg i32 %2800 to i64
  %2802 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2801
  %2803 = load i32, ptr %2802, align 4, !tbaa !220
  %2804 = zext i32 %2803 to i64
  %2805 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2804
  %2806 = load i64, ptr %2805, align 8, !tbaa !256
  %2807 = icmp eq i64 %2806, 0
  br i1 %2807, label %2808, label %2809

2808:                                             ; preds = %2798
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %2809

2809:                                             ; preds = %2808, %2798
  %2810 = getelementptr inbounds i8, ptr %2786, i64 %2806
  store ptr %2788, ptr %2810, align 8, !tbaa !205
  %2811 = icmp eq ptr %2788, null
  br i1 %2811, label %2818, label %2812

2812:                                             ; preds = %2809
  %2813 = load i64, ptr %2788, align 8
  %2814 = and i64 %2813, 65535
  %2815 = icmp eq i64 %2814, 141
  br i1 %2815, label %2816, label %2818

2816:                                             ; preds = %2812
  %2817 = getelementptr inbounds %struct.tree_ssa_name, ptr %2788, i64 0, i32 2
  store ptr %2786, ptr %2817, align 8, !tbaa !216
  br label %2818

2818:                                             ; preds = %2809, %2812, %2816
  %2819 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 527), align 8, !tbaa !205
  %2820 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %2819, i32 noundef 1, ptr noundef %2788) #24
  store ptr null, ptr %77, align 8, !tbaa !205
  store ptr null, ptr %76, align 8, !tbaa !205
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %76, ptr noundef %2820)
  %2821 = load ptr, ptr %2779, align 8, !tbaa !216
  %2822 = load ptr, ptr %76, align 8, !tbaa !205
  %2823 = call ptr @gimple_build_try(ptr noundef %2821, ptr noundef %2822, i32 noundef 2) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %77, ptr noundef nonnull %2786)
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %77, ptr noundef %2823)
  %2824 = load ptr, ptr %77, align 8, !tbaa !205
  store ptr %2824, ptr %2779, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %77) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %76) #24
  br label %2825

2825:                                             ; preds = %2767, %2818
  %2826 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2827 = getelementptr inbounds %struct.gimplify_ctx, ptr %2826, i64 0, i32 9
  store i8 %2647, ptr %2827, align 4, !tbaa !513
  %2828 = getelementptr inbounds %struct.gimplify_ctx, ptr %2826, i64 0, i32 1
  %2829 = load ptr, ptr %2828, align 8, !tbaa !231
  %2830 = load i32, ptr %2829, align 8, !tbaa !233
  %2831 = add i32 %2830, -1
  store i32 %2831, ptr %2829, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #24
  %2832 = icmp eq ptr %2746, null
  br i1 %2832, label %2857, label %2833, !prof !427

2833:                                             ; preds = %2825
  %2834 = load ptr, ptr %145, align 8, !tbaa !205
  %2835 = icmp eq ptr %2834, null
  br i1 %2835, label %2836, label %2838, !prof !428

2836:                                             ; preds = %2833
  %2837 = call ptr @gimple_seq_alloc() #24
  store ptr %2837, ptr %145, align 8, !tbaa !205
  br label %2838

2838:                                             ; preds = %2836, %2833
  %2839 = load ptr, ptr %145, align 8, !tbaa !205
  %2840 = icmp eq ptr %2839, null
  br i1 %2840, label %2844, label %2841, !prof !427

2841:                                             ; preds = %2838
  %2842 = getelementptr inbounds %struct.gimple_seq_d, ptr %2839, i64 0, i32 1
  %2843 = load ptr, ptr %2842, align 8, !tbaa !252, !noalias !517
  br label %2844

2844:                                             ; preds = %2841, %2838
  %2845 = phi ptr [ %2843, %2841 ], [ null, %2838 ]
  %2846 = icmp eq ptr %2845, null
  br i1 %2846, label %2853, label %2847, !prof !432

2847:                                             ; preds = %2844
  %2848 = load ptr, ptr %2845, align 8, !tbaa !275, !noalias !517
  %2849 = icmp eq ptr %2848, null
  br i1 %2849, label %2853, label %2850, !prof !433

2850:                                             ; preds = %2847
  %2851 = getelementptr inbounds %struct.gimple_statement_base, ptr %2848, i64 0, i32 4
  %2852 = load ptr, ptr %2851, align 8, !tbaa !216, !noalias !517
  br label %2853

2853:                                             ; preds = %2850, %2847, %2844
  %2854 = phi ptr [ %2852, %2850 ], [ null, %2847 ], [ null, %2844 ]
  %2855 = getelementptr inbounds i8, ptr %21, i64 8
  %2856 = getelementptr inbounds i8, ptr %21, i64 16
  store ptr %2845, ptr %21, align 8, !tbaa.struct !417
  store ptr %2839, ptr %2855, align 8, !tbaa.struct !244
  store ptr %2854, ptr %2856, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %21, ptr noundef nonnull %2746, i32 noundef 0) #24
  br label %2857

2857:                                             ; preds = %2825, %2853
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #24
  %2858 = icmp eq ptr %2648, null
  %2859 = zext i1 %2858 to i32
  store ptr %2648, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %75) #24
  br label %4420

2860:                                             ; preds = %210
  %2861 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2862 = getelementptr inbounds %struct.gimplify_ctx, ptr %2861, i64 0, i32 4
  %2863 = load ptr, ptr %2862, align 8, !tbaa !520
  %2864 = call ptr @create_artificial_label(i32 noundef 0) #24
  %2865 = call ptr @gimple_build_label(ptr noundef %2864) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %2865)
  %2866 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2867 = getelementptr inbounds %struct.gimplify_ctx, ptr %2866, i64 0, i32 4
  store ptr null, ptr %2867, align 8, !tbaa !520
  %2868 = load ptr, ptr %0, align 8, !tbaa !205
  %2869 = getelementptr inbounds %struct.tree_exp, ptr %2868, i64 0, i32 3
  %2870 = load ptr, ptr %2869, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49)
  store ptr %2870, ptr %49, align 8, !tbaa !205
  %2871 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %49, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49)
  %2872 = call ptr @gimple_build_goto(ptr noundef %2864) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %2872)
  %2873 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2874 = getelementptr inbounds %struct.gimplify_ctx, ptr %2873, i64 0, i32 4
  %2875 = load ptr, ptr %2874, align 8, !tbaa !520
  %2876 = icmp eq ptr %2875, null
  br i1 %2876, label %2879, label %2877

2877:                                             ; preds = %2860
  %2878 = call ptr @gimple_build_label(ptr noundef nonnull %2875) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %2878)
  br label %2879

2879:                                             ; preds = %2860, %2877
  %2880 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2881 = getelementptr inbounds %struct.gimplify_ctx, ptr %2880, i64 0, i32 4
  store ptr %2863, ptr %2881, align 8, !tbaa !520
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %4420

2882:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %74) #24
  store ptr null, ptr %74, align 8, !tbaa !205
  %2883 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %2884 = call i32 @gimplify_expr(ptr noundef nonnull %2883, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %2885 = icmp ugt i32 %2884, -3
  br i1 %2885, label %3140, label %2886, !prof !327

2886:                                             ; preds = %2882
  %2887 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %2888 = load ptr, ptr %2887, align 8, !tbaa !216
  %2889 = icmp eq ptr %2888, null
  %2890 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 1
  %2891 = load ptr, ptr %2890, align 8, !tbaa !216
  %2892 = icmp eq ptr %2891, null
  br i1 %2889, label %3138, label %2893, !prof !327

2893:                                             ; preds = %2886
  br i1 %2892, label %2895, label %2894, !prof !512

2894:                                             ; preds = %2893
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #24
  br label %2895

2895:                                             ; preds = %2894, %2893
  %2896 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2897 = getelementptr inbounds %struct.gimplify_ctx, ptr %2896, i64 0, i32 6
  %2898 = load ptr, ptr %2897, align 8, !tbaa !521
  %2899 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #24
  %2900 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2901 = getelementptr inbounds %struct.gimplify_ctx, ptr %2900, i64 0, i32 6
  store ptr %2899, ptr %2901, align 8, !tbaa !521
  %2902 = load ptr, ptr %74, align 8, !tbaa !205
  %2903 = icmp eq ptr %2902, null
  br i1 %2903, label %2904, label %2906, !prof !250

2904:                                             ; preds = %2895
  %2905 = call ptr @gimple_seq_alloc() #24
  store ptr %2905, ptr %74, align 8, !tbaa !205
  br label %2906

2906:                                             ; preds = %2904, %2895
  %2907 = call i32 @gimplify_expr(ptr noundef nonnull %2887, ptr noundef nonnull %74, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  %2908 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %2909 = getelementptr inbounds %struct.gimplify_ctx, ptr %2908, i64 0, i32 6
  %2910 = load ptr, ptr %2909, align 8, !tbaa !521
  store ptr %2898, ptr %2909, align 8, !tbaa !521
  %2911 = icmp eq ptr %2910, null
  br label %2912

2912:                                             ; preds = %2953, %2906
  %2913 = phi i64 [ %2954, %2953 ], [ 0, %2906 ]
  %2914 = phi ptr [ %2942, %2953 ], [ null, %2906 ]
  %2915 = and i64 %2913, 4294967295
  %2916 = getelementptr inbounds %struct.VEC_tree_base, ptr %2910, i64 0, i32 2, i64 %2915
  br label %2917

2917:                                             ; preds = %2912, %2945
  %2918 = phi ptr [ %2942, %2945 ], [ %2914, %2912 ]
  br i1 %2911, label %2921, label %2919, !prof !522

2919:                                             ; preds = %2917
  %2920 = load i32, ptr %2910, align 8, !tbaa !318
  br label %2921

2921:                                             ; preds = %2917, %2919
  %2922 = phi i32 [ %2920, %2919 ], [ 0, %2917 ]
  %2923 = zext i32 %2922 to i64
  %2924 = icmp ult i64 %2913, %2923
  br i1 %2924, label %2925, label %2955, !prof !523

2925:                                             ; preds = %2921
  %2926 = load ptr, ptr %2916, align 8, !tbaa !205
  %2927 = getelementptr inbounds %struct.tree_exp, ptr %2926, i64 0, i32 3
  %2928 = load ptr, ptr %2927, align 8, !tbaa !216
  %2929 = icmp eq ptr %2928, null
  br i1 %2929, label %2938, label %2930, !prof !524

2930:                                             ; preds = %2925
  %2931 = getelementptr inbounds %struct.tree_exp, ptr %2926, i64 1
  %2932 = load ptr, ptr %2931, align 8, !tbaa !216
  %2933 = icmp eq ptr %2932, null
  br i1 %2933, label %2941, label %2934, !prof !525

2934:                                             ; preds = %2930
  %2935 = call i32 @tree_int_cst_lt(ptr noundef nonnull %2932, ptr noundef nonnull %2928) #24
  %2936 = icmp ne i32 %2935, 0
  %2937 = zext i1 %2936 to i8
  br label %2941

2938:                                             ; preds = %2925
  %2939 = icmp eq ptr %2918, null
  br i1 %2939, label %2941, label %2940, !prof !512

2940:                                             ; preds = %2938
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1484, ptr noundef nonnull @.str.1) #24
  br label %2941

2941:                                             ; preds = %2940, %2938, %2934, %2930
  %2942 = phi ptr [ %2918, %2934 ], [ %2918, %2930 ], [ %2926, %2938 ], [ %2926, %2940 ]
  %2943 = phi i8 [ %2937, %2934 ], [ 0, %2930 ], [ 1, %2938 ], [ 1, %2940 ]
  %2944 = icmp eq i8 %2943, 0
  br i1 %2944, label %2953, label %2945, !prof !526

2945:                                             ; preds = %2941
  %2946 = trunc i64 %2913 to i32
  %2947 = getelementptr inbounds ptr, ptr %2916, i64 1
  %2948 = load i32, ptr %2910, align 8, !tbaa !318
  %2949 = add i32 %2948, -1
  store i32 %2949, ptr %2910, align 8, !tbaa !318
  %2950 = sub i32 %2949, %2946
  %2951 = zext i32 %2950 to i64
  %2952 = shl nuw nsw i64 %2951, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %2916, ptr nonnull align 8 %2947, i64 %2952, i1 false), !prof !527
  br label %2917, !llvm.loop !528

2953:                                             ; preds = %2941
  %2954 = add nuw nsw i64 %2913, 1
  br label %2912, !llvm.loop !528

2955:                                             ; preds = %2921
  br i1 %2911, label %2958, label %2956, !prof !327

2956:                                             ; preds = %2955
  %2957 = load i32, ptr %2910, align 8, !tbaa !318
  br label %2958

2958:                                             ; preds = %2955, %2956
  %2959 = phi i32 [ %2957, %2956 ], [ 0, %2955 ]
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %2969, label %2961, !prof !327

2961:                                             ; preds = %2958
  br i1 %2911, label %2965, label %2962, !prof !327

2962:                                             ; preds = %2961
  %2963 = load i32, ptr %2910, align 8, !tbaa !318
  %2964 = zext i32 %2963 to i64
  br label %2965

2965:                                             ; preds = %2961, %2962
  %2966 = phi i64 [ %2964, %2962 ], [ 0, %2961 ]
  %2967 = getelementptr inbounds %struct.VEC_tree_base, ptr %2910, i64 0, i32 2
  %2968 = select i1 %2911, ptr null, ptr %2967, !prof !327
  call void @spec_qsort(ptr noundef %2968, i64 noundef %2966, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #24
  br label %2969

2969:                                             ; preds = %2965, %2958
  %2970 = icmp eq ptr %2918, null
  br i1 %2970, label %2971, label %3080, !prof !327

2971:                                             ; preds = %2969
  %2972 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %2973 = load ptr, ptr %2972, align 8, !tbaa !216
  %2974 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %2975 = icmp eq ptr %2973, %2974
  br i1 %2975, label %2976, label %2980

2976:                                             ; preds = %2971
  %2977 = load ptr, ptr %2883, align 8, !tbaa !216
  %2978 = getelementptr inbounds %struct.tree_common, ptr %2977, i64 0, i32 2
  %2979 = load ptr, ptr %2978, align 8, !tbaa !216
  br label %2980

2980:                                             ; preds = %2976, %2971
  %2981 = phi ptr [ %2979, %2976 ], [ %2973, %2971 ]
  %2982 = icmp eq i64 %2913, 0
  br i1 %2982, label %3070, label %2983

2983:                                             ; preds = %2980
  %2984 = load i64, ptr %2981, align 8
  %2985 = trunc i64 %2984 to i32
  %2986 = and i32 %2985, 65535
  %2987 = add nsw i32 %2986, -6
  %2988 = icmp ult i32 %2987, 3
  br i1 %2988, label %2989, label %3070

2989:                                             ; preds = %2983
  %2990 = getelementptr inbounds %struct.tree_type, ptr %2981, i64 0, i32 13
  %2991 = load ptr, ptr %2990, align 8, !tbaa !216
  %2992 = icmp eq ptr %2991, null
  br i1 %2992, label %3070, label %2993

2993:                                             ; preds = %2989
  %2994 = getelementptr inbounds %struct.tree_type, ptr %2981, i64 0, i32 14
  %2995 = load ptr, ptr %2994, align 8, !tbaa !216
  %2996 = icmp eq ptr %2995, null
  br i1 %2996, label %3070, label %2997

2997:                                             ; preds = %2993
  %2998 = getelementptr inbounds %struct.VEC_tree_base, ptr %2910, i64 0, i32 2, i64 0
  %2999 = load ptr, ptr %2998, align 8, !tbaa !205
  %3000 = getelementptr inbounds %struct.tree_exp, ptr %2999, i64 0, i32 3
  %3001 = load ptr, ptr %3000, align 8, !tbaa !216
  %3002 = call i32 @tree_int_cst_equal(ptr noundef %3001, ptr noundef nonnull %2991) #24
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3070, label %3004

3004:                                             ; preds = %2997
  %3005 = add nuw i64 %2913, 4294967295
  %3006 = and i64 %3005, 4294967295
  %3007 = getelementptr inbounds %struct.VEC_tree_base, ptr %2910, i64 0, i32 2, i64 %3006
  %3008 = load ptr, ptr %3007, align 8, !tbaa !205
  %3009 = getelementptr inbounds %struct.tree_exp, ptr %3008, i64 1
  %3010 = load ptr, ptr %3009, align 8, !tbaa !216
  %3011 = icmp eq ptr %3010, null
  br i1 %3011, label %3012, label %3015

3012:                                             ; preds = %3004
  %3013 = getelementptr inbounds %struct.tree_exp, ptr %3008, i64 0, i32 3
  %3014 = load ptr, ptr %3013, align 8, !tbaa !216
  br label %3015

3015:                                             ; preds = %3012, %3004
  %3016 = phi ptr [ %3010, %3004 ], [ %3014, %3012 ]
  %3017 = load ptr, ptr %2994, align 8, !tbaa !216
  %3018 = call i32 @tree_int_cst_equal(ptr noundef %3016, ptr noundef %3017) #24
  %3019 = icmp eq i32 %3018, 0
  br i1 %3019, label %3070, label %3020

3020:                                             ; preds = %3015
  %3021 = icmp eq i64 %2913, 1
  br i1 %3021, label %3061, label %3022

3022:                                             ; preds = %3020
  %3023 = call i64 @llvm.umax.i64(i64 %2913, i64 2)
  br label %3024

3024:                                             ; preds = %3022, %3058
  %3025 = phi i64 [ %3059, %3058 ], [ 1, %3022 ]
  %3026 = and i64 %3025, 4294967295
  %3027 = getelementptr inbounds %struct.VEC_tree_base, ptr %2910, i64 0, i32 2, i64 %3026
  %3028 = load ptr, ptr %3027, align 8, !tbaa !205
  %3029 = getelementptr inbounds %struct.tree_exp, ptr %3028, i64 0, i32 3
  %3030 = load ptr, ptr %3029, align 8, !tbaa !216
  %3031 = add i64 %3025, 4294967295
  %3032 = and i64 %3031, 4294967295
  %3033 = getelementptr inbounds %struct.VEC_tree_base, ptr %2910, i64 0, i32 2, i64 %3032
  %3034 = load ptr, ptr %3033, align 8, !tbaa !205
  %3035 = getelementptr inbounds %struct.tree_exp, ptr %3034, i64 1
  %3036 = load ptr, ptr %3035, align 8, !tbaa !216
  %3037 = icmp eq ptr %3036, null
  br i1 %3037, label %3038, label %3041

3038:                                             ; preds = %3024
  %3039 = getelementptr inbounds %struct.tree_exp, ptr %3034, i64 0, i32 3
  %3040 = load ptr, ptr %3039, align 8, !tbaa !216
  br label %3041

3041:                                             ; preds = %3038, %3024
  %3042 = phi ptr [ %3036, %3024 ], [ %3040, %3038 ]
  %3043 = getelementptr inbounds %struct.tree_int_cst, ptr %3042, i64 0, i32 1
  %3044 = load i64, ptr %3043, align 8, !tbaa !216
  %3045 = add i64 %3044, 1
  %3046 = getelementptr inbounds %struct.tree_int_cst, ptr %3030, i64 0, i32 1
  %3047 = load i64, ptr %3046, align 8, !tbaa !216
  %3048 = icmp eq i64 %3045, %3047
  br i1 %3048, label %3049, label %3061

3049:                                             ; preds = %3041
  %3050 = getelementptr inbounds %struct.tree_int_cst, ptr %3042, i64 0, i32 1, i32 1
  %3051 = load i64, ptr %3050, align 8, !tbaa !216
  %3052 = icmp eq i64 %3047, 0
  %3053 = zext i1 %3052 to i64
  %3054 = add nsw i64 %3051, %3053
  %3055 = getelementptr inbounds %struct.tree_int_cst, ptr %3030, i64 0, i32 1, i32 1
  %3056 = load i64, ptr %3055, align 8, !tbaa !216
  %3057 = icmp eq i64 %3054, %3056
  br i1 %3057, label %3058, label %3061

3058:                                             ; preds = %3049
  %3059 = add nuw i64 %3025, 1
  %3060 = icmp eq i64 %3059, %3023
  br i1 %3060, label %3061, label %3024, !llvm.loop !529

3061:                                             ; preds = %3041, %3049, %3058, %3020
  %3062 = phi i64 [ 1, %3020 ], [ %3025, %3041 ], [ %3025, %3049 ], [ %3023, %3058 ]
  %3063 = icmp eq i64 %3062, %2913
  br i1 %3063, label %3064, label %3070

3064:                                             ; preds = %3061
  %3065 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %3066 = load ptr, ptr %2998, align 8, !tbaa !205
  %3067 = getelementptr inbounds %struct.tree_exp, ptr %3066, i64 1, i32 0, i32 1
  %3068 = load ptr, ptr %3067, align 8, !tbaa !216
  %3069 = call ptr @build3_stat(i32 noundef 139, ptr noundef %3065, ptr noundef null, ptr noundef null, ptr noundef %3068) #24
  br label %3070

3070:                                             ; preds = %3064, %3061, %3015, %2997, %2993, %2989, %2983, %2980
  %3071 = phi ptr [ null, %2997 ], [ null, %2993 ], [ null, %2989 ], [ null, %2980 ], [ null, %2983 ], [ %3069, %3064 ], [ null, %3061 ], [ null, %3015 ]
  %3072 = icmp eq ptr %3071, null
  br i1 %3072, label %3073, label %3080

3073:                                             ; preds = %3070
  %3074 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %3075 = call ptr @create_artificial_label(i32 noundef 0) #24
  %3076 = call ptr @build3_stat(i32 noundef 139, ptr noundef %3074, ptr noundef null, ptr noundef null, ptr noundef %3075) #24
  %3077 = getelementptr inbounds %struct.tree_exp, ptr %3076, i64 1, i32 0, i32 1
  %3078 = load ptr, ptr %3077, align 8, !tbaa !216
  %3079 = call ptr @gimple_build_label(ptr noundef %3078) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %74, ptr noundef %3079)
  br label %3080

3080:                                             ; preds = %3073, %3070, %2969
  %3081 = phi ptr [ %2918, %2969 ], [ %3071, %3070 ], [ %3076, %3073 ]
  %3082 = load ptr, ptr %2883, align 8, !tbaa !216
  %3083 = call ptr @gimple_build_switch_vec(ptr noundef %3082, ptr noundef %3081, ptr noundef %2910) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #24
  %3084 = icmp eq ptr %3083, null
  br i1 %3084, label %3109, label %3085, !prof !427

3085:                                             ; preds = %3080
  %3086 = load ptr, ptr %145, align 8, !tbaa !205
  %3087 = icmp eq ptr %3086, null
  br i1 %3087, label %3088, label %3090, !prof !428

3088:                                             ; preds = %3085
  %3089 = call ptr @gimple_seq_alloc() #24
  store ptr %3089, ptr %145, align 8, !tbaa !205
  br label %3090

3090:                                             ; preds = %3088, %3085
  %3091 = load ptr, ptr %145, align 8, !tbaa !205
  %3092 = icmp eq ptr %3091, null
  br i1 %3092, label %3096, label %3093, !prof !427

3093:                                             ; preds = %3090
  %3094 = getelementptr inbounds %struct.gimple_seq_d, ptr %3091, i64 0, i32 1
  %3095 = load ptr, ptr %3094, align 8, !tbaa !252, !noalias !530
  br label %3096

3096:                                             ; preds = %3093, %3090
  %3097 = phi ptr [ %3095, %3093 ], [ null, %3090 ]
  %3098 = icmp eq ptr %3097, null
  br i1 %3098, label %3105, label %3099, !prof !432

3099:                                             ; preds = %3096
  %3100 = load ptr, ptr %3097, align 8, !tbaa !275, !noalias !530
  %3101 = icmp eq ptr %3100, null
  br i1 %3101, label %3105, label %3102, !prof !433

3102:                                             ; preds = %3099
  %3103 = getelementptr inbounds %struct.gimple_statement_base, ptr %3100, i64 0, i32 4
  %3104 = load ptr, ptr %3103, align 8, !tbaa !216, !noalias !530
  br label %3105

3105:                                             ; preds = %3102, %3099, %3096
  %3106 = phi ptr [ %3104, %3102 ], [ null, %3099 ], [ null, %3096 ]
  %3107 = getelementptr inbounds i8, ptr %20, i64 8
  %3108 = getelementptr inbounds i8, ptr %20, i64 16
  store ptr %3097, ptr %20, align 8, !tbaa.struct !417
  store ptr %3091, ptr %3107, align 8, !tbaa.struct !244
  store ptr %3106, ptr %3108, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %20, ptr noundef nonnull %3083, i32 noundef 0) #24
  br label %3109

3109:                                             ; preds = %3080, %3105
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #24
  %3110 = load ptr, ptr %74, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #24
  %3111 = icmp eq ptr %3110, null
  br i1 %3111, label %3136, label %3112, !prof !413

3112:                                             ; preds = %3109
  %3113 = load ptr, ptr %145, align 8, !tbaa !205
  %3114 = icmp eq ptr %3113, null
  br i1 %3114, label %3115, label %3117, !prof !327

3115:                                             ; preds = %3112
  %3116 = call ptr @gimple_seq_alloc() #24
  store ptr %3116, ptr %145, align 8, !tbaa !205
  br label %3117

3117:                                             ; preds = %3115, %3112
  %3118 = load ptr, ptr %145, align 8, !tbaa !205
  %3119 = icmp eq ptr %3118, null
  br i1 %3119, label %3123, label %3120, !prof !327

3120:                                             ; preds = %3117
  %3121 = getelementptr inbounds %struct.gimple_seq_d, ptr %3118, i64 0, i32 1
  %3122 = load ptr, ptr %3121, align 8, !tbaa !252, !noalias !533
  br label %3123

3123:                                             ; preds = %3120, %3117
  %3124 = phi ptr [ %3122, %3120 ], [ null, %3117 ]
  %3125 = icmp eq ptr %3124, null
  br i1 %3125, label %3132, label %3126, !prof !327

3126:                                             ; preds = %3123
  %3127 = load ptr, ptr %3124, align 8, !tbaa !275, !noalias !533
  %3128 = icmp eq ptr %3127, null
  br i1 %3128, label %3132, label %3129, !prof !327

3129:                                             ; preds = %3126
  %3130 = getelementptr inbounds %struct.gimple_statement_base, ptr %3127, i64 0, i32 4
  %3131 = load ptr, ptr %3130, align 8, !tbaa !216, !noalias !533
  br label %3132

3132:                                             ; preds = %3129, %3126, %3123
  %3133 = phi ptr [ %3131, %3129 ], [ null, %3126 ], [ null, %3123 ]
  %3134 = getelementptr inbounds i8, ptr %19, i64 8
  %3135 = getelementptr inbounds i8, ptr %19, i64 16
  store ptr %3124, ptr %19, align 8, !tbaa.struct !417
  store ptr %3118, ptr %3134, align 8, !tbaa.struct !244
  store ptr %3133, ptr %3135, align 8, !tbaa.struct !245
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %19, ptr noundef nonnull %3110, i32 noundef 0) #24
  br label %3136

3136:                                             ; preds = %3109, %3132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #24
  br i1 %2911, label %3140, label %3137, !prof !327

3137:                                             ; preds = %3136
  call void @free(ptr noundef %2910)
  br label %3140

3138:                                             ; preds = %2886
  br i1 %2892, label %3139, label %3140

3139:                                             ; preds = %3138
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1562, ptr noundef nonnull @.str.1) #24
  br label %3140

3140:                                             ; preds = %3137, %3136, %2882, %3138, %3139
  %3141 = phi i32 [ %2884, %2882 ], [ 1, %3139 ], [ 1, %3138 ], [ 1, %3136 ], [ 1, %3137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %74) #24
  br label %4420

3142:                                             ; preds = %210
  %3143 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3144 = load ptr, ptr %3143, align 8, !tbaa !216
  %3145 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3146 = getelementptr inbounds %struct.gimplify_ctx, ptr %3145, i64 0, i32 4
  %3147 = call ptr @build_and_jump(ptr noundef nonnull %3146)
  %3148 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %3149 = call ptr @build3_stat(i32 noundef 56, ptr noundef %3148, ptr noundef %3144, ptr noundef %3147, ptr noundef null) #24
  store ptr %3149, ptr %0, align 8, !tbaa !205
  br label %4420

3150:                                             ; preds = %210
  %3151 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3152 = load ptr, ptr %3151, align 8, !tbaa !216
  %3153 = load i64, ptr %3152, align 8
  %3154 = and i64 %3153, 65535
  %3155 = icmp eq i64 %3154, 30
  br i1 %3155, label %3159, label %3156, !prof !536

3156:                                             ; preds = %3150
  %3157 = call i32 @gimplify_expr(ptr noundef nonnull %3151, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %3158 = icmp eq i32 %3157, -2
  br i1 %3158, label %4420, label %3159

3159:                                             ; preds = %3156, %3150
  %3160 = phi i32 [ %3157, %3156 ], [ 0, %3150 ]
  %3161 = load ptr, ptr %0, align 8, !tbaa !205
  %3162 = getelementptr inbounds %struct.tree_exp, ptr %3161, i64 0, i32 3
  %3163 = load ptr, ptr %3162, align 8, !tbaa !216
  %3164 = call ptr @gimple_build_goto(ptr noundef %3163) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #24
  %3165 = icmp eq ptr %3164, null
  br i1 %3165, label %3190, label %3166, !prof !427

3166:                                             ; preds = %3159
  %3167 = load ptr, ptr %145, align 8, !tbaa !205
  %3168 = icmp eq ptr %3167, null
  br i1 %3168, label %3169, label %3171, !prof !428

3169:                                             ; preds = %3166
  %3170 = call ptr @gimple_seq_alloc() #24
  store ptr %3170, ptr %145, align 8, !tbaa !205
  br label %3171

3171:                                             ; preds = %3169, %3166
  %3172 = load ptr, ptr %145, align 8, !tbaa !205
  %3173 = icmp eq ptr %3172, null
  br i1 %3173, label %3177, label %3174, !prof !427

3174:                                             ; preds = %3171
  %3175 = getelementptr inbounds %struct.gimple_seq_d, ptr %3172, i64 0, i32 1
  %3176 = load ptr, ptr %3175, align 8, !tbaa !252, !noalias !537
  br label %3177

3177:                                             ; preds = %3174, %3171
  %3178 = phi ptr [ %3176, %3174 ], [ null, %3171 ]
  %3179 = icmp eq ptr %3178, null
  br i1 %3179, label %3186, label %3180, !prof !432

3180:                                             ; preds = %3177
  %3181 = load ptr, ptr %3178, align 8, !tbaa !275, !noalias !537
  %3182 = icmp eq ptr %3181, null
  br i1 %3182, label %3186, label %3183, !prof !433

3183:                                             ; preds = %3180
  %3184 = getelementptr inbounds %struct.gimple_statement_base, ptr %3181, i64 0, i32 4
  %3185 = load ptr, ptr %3184, align 8, !tbaa !216, !noalias !537
  br label %3186

3186:                                             ; preds = %3183, %3180, %3177
  %3187 = phi ptr [ %3185, %3183 ], [ null, %3180 ], [ null, %3177 ]
  %3188 = getelementptr inbounds i8, ptr %18, i64 8
  %3189 = getelementptr inbounds i8, ptr %18, i64 16
  store ptr %3178, ptr %18, align 8, !tbaa.struct !417
  store ptr %3172, ptr %3188, align 8, !tbaa.struct !244
  store ptr %3187, ptr %3189, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %18, ptr noundef nonnull %3164, i32 noundef 0) #24
  br label %3190

3190:                                             ; preds = %3159, %3186
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #24
  br label %4420

3191:                                             ; preds = %210
  %3192 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3193 = load ptr, ptr %3192, align 8, !tbaa !216
  %3194 = call i64 @tree_low_cst(ptr noundef %3193, i32 noundef 0) #24
  %3195 = trunc i64 %3194 to i32
  %3196 = load ptr, ptr %0, align 8, !tbaa !205
  %3197 = load i64, ptr %3196, align 8
  %3198 = trunc i64 %3197 to i32
  %3199 = lshr i32 %3198, 18
  %3200 = and i32 %3199, 1
  %3201 = call ptr @gimple_build_predict(i32 noundef %3195, i32 noundef %3200) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %3201)
  br label %4420

3202:                                             ; preds = %210
  %3203 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3204 = load ptr, ptr %3203, align 8, !tbaa !216
  %3205 = call ptr @decl_function_context(ptr noundef %3204) #24
  %3206 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %3207 = icmp eq ptr %3205, %3206
  br i1 %3207, label %3209, label %3208, !prof !540

3208:                                             ; preds = %3202
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6758, ptr noundef nonnull @.str.1) #24
  br label %3209

3209:                                             ; preds = %3202, %3208
  %3210 = load ptr, ptr %0, align 8, !tbaa !205
  %3211 = getelementptr inbounds %struct.tree_exp, ptr %3210, i64 0, i32 3
  %3212 = load ptr, ptr %3211, align 8, !tbaa !216
  %3213 = call ptr @gimple_build_label(ptr noundef %3212) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #24
  %3214 = icmp eq ptr %3213, null
  br i1 %3214, label %3239, label %3215, !prof !427

3215:                                             ; preds = %3209
  %3216 = load ptr, ptr %145, align 8, !tbaa !205
  %3217 = icmp eq ptr %3216, null
  br i1 %3217, label %3218, label %3220, !prof !428

3218:                                             ; preds = %3215
  %3219 = call ptr @gimple_seq_alloc() #24
  store ptr %3219, ptr %145, align 8, !tbaa !205
  br label %3220

3220:                                             ; preds = %3218, %3215
  %3221 = load ptr, ptr %145, align 8, !tbaa !205
  %3222 = icmp eq ptr %3221, null
  br i1 %3222, label %3226, label %3223, !prof !427

3223:                                             ; preds = %3220
  %3224 = getelementptr inbounds %struct.gimple_seq_d, ptr %3221, i64 0, i32 1
  %3225 = load ptr, ptr %3224, align 8, !tbaa !252, !noalias !541
  br label %3226

3226:                                             ; preds = %3223, %3220
  %3227 = phi ptr [ %3225, %3223 ], [ null, %3220 ]
  %3228 = icmp eq ptr %3227, null
  br i1 %3228, label %3235, label %3229, !prof !432

3229:                                             ; preds = %3226
  %3230 = load ptr, ptr %3227, align 8, !tbaa !275, !noalias !541
  %3231 = icmp eq ptr %3230, null
  br i1 %3231, label %3235, label %3232, !prof !433

3232:                                             ; preds = %3229
  %3233 = getelementptr inbounds %struct.gimple_statement_base, ptr %3230, i64 0, i32 4
  %3234 = load ptr, ptr %3233, align 8, !tbaa !216, !noalias !541
  br label %3235

3235:                                             ; preds = %3232, %3229, %3226
  %3236 = phi ptr [ %3234, %3232 ], [ null, %3229 ], [ null, %3226 ]
  %3237 = getelementptr inbounds i8, ptr %17, i64 8
  %3238 = getelementptr inbounds i8, ptr %17, i64 16
  store ptr %3227, ptr %17, align 8, !tbaa.struct !417
  store ptr %3221, ptr %3237, align 8, !tbaa.struct !244
  store ptr %3236, ptr %3238, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %17, ptr noundef nonnull %3213, i32 noundef 0) #24
  br label %3239

3239:                                             ; preds = %3209, %3235
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #24
  br label %4420

3240:                                             ; preds = %210, %3240
  %3241 = phi ptr [ %3242, %3240 ], [ @gimplify_ctxp, %210 ]
  %3242 = load ptr, ptr %3241, align 8, !tbaa !205
  %3243 = getelementptr inbounds %struct.gimplify_ctx, ptr %3242, i64 0, i32 6
  %3244 = load ptr, ptr %3243, align 8, !tbaa !521
  %3245 = icmp eq ptr %3244, null
  br i1 %3245, label %3240, label %3246, !prof !544, !llvm.loop !545

3246:                                             ; preds = %3240
  %3247 = getelementptr inbounds %struct.gimplify_ctx, ptr %3242, i64 0, i32 6
  %3248 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 1
  %3249 = load ptr, ptr %3248, align 8, !tbaa !216
  %3250 = call ptr @gimple_build_label(ptr noundef %3249) #24
  %3251 = load ptr, ptr %0, align 8, !tbaa !205
  %3252 = load ptr, ptr %3247, align 8, !tbaa !205
  %3253 = icmp eq ptr %3252, null
  br i1 %3253, label %3259, label %3254, !prof !544

3254:                                             ; preds = %3246
  %3255 = getelementptr inbounds %struct.VEC_tree_base, ptr %3252, i64 0, i32 1
  %3256 = load i32, ptr %3255, align 4, !tbaa !384
  %3257 = load i32, ptr %3252, align 8, !tbaa !318
  %3258 = icmp eq i32 %3256, %3257
  br i1 %3258, label %3259, label %3261, !prof !546

3259:                                             ; preds = %3254, %3246
  %3260 = call ptr @vec_heap_p_reserve(ptr noundef %3252, i32 noundef 1) #24
  store ptr %3260, ptr %3247, align 8, !tbaa !205
  br label %3261

3261:                                             ; preds = %3254, %3259
  %3262 = load ptr, ptr %3247, align 8, !tbaa !205
  %3263 = load i32, ptr %3262, align 8, !tbaa !318
  %3264 = add i32 %3263, 1
  store i32 %3264, ptr %3262, align 8, !tbaa !318
  %3265 = zext i32 %3263 to i64
  %3266 = getelementptr inbounds %struct.VEC_tree_base, ptr %3262, i64 0, i32 2, i64 %3265
  store ptr %3251, ptr %3266, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #24
  %3267 = icmp eq ptr %3250, null
  br i1 %3267, label %3292, label %3268, !prof !427

3268:                                             ; preds = %3261
  %3269 = load ptr, ptr %145, align 8, !tbaa !205
  %3270 = icmp eq ptr %3269, null
  br i1 %3270, label %3271, label %3273, !prof !428

3271:                                             ; preds = %3268
  %3272 = call ptr @gimple_seq_alloc() #24
  store ptr %3272, ptr %145, align 8, !tbaa !205
  br label %3273

3273:                                             ; preds = %3271, %3268
  %3274 = load ptr, ptr %145, align 8, !tbaa !205
  %3275 = icmp eq ptr %3274, null
  br i1 %3275, label %3279, label %3276, !prof !427

3276:                                             ; preds = %3273
  %3277 = getelementptr inbounds %struct.gimple_seq_d, ptr %3274, i64 0, i32 1
  %3278 = load ptr, ptr %3277, align 8, !tbaa !252, !noalias !547
  br label %3279

3279:                                             ; preds = %3276, %3273
  %3280 = phi ptr [ %3278, %3276 ], [ null, %3273 ]
  %3281 = icmp eq ptr %3280, null
  br i1 %3281, label %3288, label %3282, !prof !432

3282:                                             ; preds = %3279
  %3283 = load ptr, ptr %3280, align 8, !tbaa !275, !noalias !547
  %3284 = icmp eq ptr %3283, null
  br i1 %3284, label %3288, label %3285, !prof !433

3285:                                             ; preds = %3282
  %3286 = getelementptr inbounds %struct.gimple_statement_base, ptr %3283, i64 0, i32 4
  %3287 = load ptr, ptr %3286, align 8, !tbaa !216, !noalias !547
  br label %3288

3288:                                             ; preds = %3285, %3282, %3279
  %3289 = phi ptr [ %3287, %3285 ], [ null, %3282 ], [ null, %3279 ]
  %3290 = getelementptr inbounds i8, ptr %16, i64 8
  %3291 = getelementptr inbounds i8, ptr %16, i64 16
  store ptr %3280, ptr %16, align 8, !tbaa.struct !417
  store ptr %3274, ptr %3290, align 8, !tbaa.struct !244
  store ptr %3289, ptr %3291, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %16, ptr noundef nonnull %3250, i32 noundef 0) #24
  br label %3292

3292:                                             ; preds = %3261, %3288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #24
  br label %4420

3293:                                             ; preds = %210
  %3294 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3295 = load ptr, ptr %3294, align 8, !tbaa !216
  %3296 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %3297 = icmp eq ptr %3295, %3296
  br i1 %3297, label %4420, label %3298, !prof !550

3298:                                             ; preds = %3293
  %3299 = icmp eq ptr %3295, null
  br i1 %3299, label %3304, label %3300, !prof !550

3300:                                             ; preds = %3298
  %3301 = load i64, ptr %3295, align 8
  %3302 = and i64 %3301, 65535
  %3303 = icmp eq i64 %3302, 36
  br i1 %3303, label %3304, label %3313, !prof !550

3304:                                             ; preds = %3300, %3298
  %3305 = call ptr @gimple_build_return(ptr noundef %3295) #24
  %3306 = load i64, ptr %211, align 8
  %3307 = trunc i64 %3306 to i32
  %3308 = load i32, ptr %3305, align 8
  %3309 = lshr i32 %3307, 15
  %3310 = and i32 %3309, 256
  %3311 = and i32 %3308, -257
  %3312 = or disjoint i32 %3310, %3311
  store i32 %3312, ptr %3305, align 8
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef nonnull %3305)
  br label %4420

3313:                                             ; preds = %3300
  %3314 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %3315 = getelementptr inbounds %struct.tree_common, ptr %3314, i64 0, i32 2
  %3316 = load ptr, ptr %3315, align 8, !tbaa !216
  %3317 = getelementptr inbounds %struct.tree_common, ptr %3316, i64 0, i32 2
  %3318 = load ptr, ptr %3317, align 8, !tbaa !216
  %3319 = load i64, ptr %3318, align 8
  %3320 = and i64 %3319, 65535
  %3321 = icmp eq i64 %3320, 19
  br i1 %3321, label %3342, label %3322, !prof !550

3322:                                             ; preds = %3313
  %3323 = getelementptr inbounds %struct.tree_exp, ptr %3295, i64 0, i32 3
  %3324 = load ptr, ptr %3323, align 8, !tbaa !216
  %3325 = load i64, ptr %3324, align 8
  %3326 = and i64 %3325, 65535
  %3327 = icmp eq i64 %3326, 47
  br i1 %3327, label %3328, label %3331, !prof !550

3328:                                             ; preds = %3322
  %3329 = getelementptr inbounds %struct.tree_exp, ptr %3324, i64 0, i32 3
  %3330 = load ptr, ptr %3329, align 8, !tbaa !216
  br label %3331

3331:                                             ; preds = %3328, %3322
  %3332 = phi ptr [ %3330, %3328 ], [ %3324, %3322 ]
  %3333 = trunc i64 %3301 to i32
  %3334 = and i32 %3333, 65535
  %3335 = add nsw i32 %3334, -53
  %3336 = icmp ult i32 %3335, 2
  br i1 %3336, label %3337, label %3341, !prof !551

3337:                                             ; preds = %3331
  %3338 = load i64, ptr %3332, align 8
  %3339 = and i64 %3338, 65535
  %3340 = icmp eq i64 %3339, 36
  br i1 %3340, label %3342, label %3341, !prof !551

3341:                                             ; preds = %3337, %3331
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #24
  br label %3342

3342:                                             ; preds = %3341, %3337, %3313
  %3343 = phi ptr [ %3332, %3337 ], [ %3332, %3341 ], [ null, %3313 ]
  %3344 = icmp eq ptr %3343, null
  br i1 %3344, label %3376, label %3345, !prof !550

3345:                                             ; preds = %3342
  %3346 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %3347 = getelementptr inbounds %struct.tree_common, ptr %3346, i64 0, i32 2
  %3348 = load ptr, ptr %3347, align 8, !tbaa !216
  %3349 = call i32 @aggregate_value_p(ptr noundef nonnull %3343, ptr noundef %3348) #24
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3351, label %3376, !prof !551

3351:                                             ; preds = %3345
  %3352 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3353 = getelementptr inbounds %struct.gimplify_ctx, ptr %3352, i64 0, i32 5
  %3354 = load ptr, ptr %3353, align 8, !tbaa !552
  %3355 = icmp eq ptr %3354, null
  br i1 %3355, label %3356, label %3376, !prof !553

3356:                                             ; preds = %3351
  %3357 = getelementptr inbounds %struct.tree_common, ptr %3343, i64 0, i32 2
  %3358 = load ptr, ptr %3357, align 8, !tbaa !216
  %3359 = call ptr @create_tmp_var(ptr noundef %3358, ptr noundef null)
  %3360 = getelementptr inbounds %struct.tree_common, ptr %3359, i64 0, i32 2
  %3361 = load ptr, ptr %3360, align 8, !tbaa !216
  %3362 = load i64, ptr %3361, align 8
  %3363 = trunc i64 %3362 to i32
  %3364 = and i32 %3363, 65535
  %3365 = add nsw i32 %3364, -13
  %3366 = icmp ult i32 %3365, 2
  br i1 %3366, label %3367, label %3371, !prof !237

3367:                                             ; preds = %3356
  %3368 = getelementptr inbounds %struct.tree_decl_common, ptr %3359, i64 0, i32 2
  %3369 = load i64, ptr %3368, align 8
  %3370 = or i64 %3369, 134217728
  store i64 %3370, ptr %3368, align 8
  br label %3371

3371:                                             ; preds = %3367, %3356
  %3372 = load i64, ptr %3359, align 8
  %3373 = or i64 %3372, 8388608
  store i64 %3373, ptr %3359, align 8
  %3374 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3375 = getelementptr inbounds %struct.gimplify_ctx, ptr %3374, i64 0, i32 5
  store ptr %3359, ptr %3375, align 8, !tbaa !552
  br label %3376

3376:                                             ; preds = %3371, %3351, %3345, %3342
  %3377 = phi ptr [ %3359, %3371 ], [ %3343, %3345 ], [ %3343, %3342 ], [ %3354, %3351 ]
  %3378 = icmp eq ptr %3377, %3343
  br i1 %3378, label %3381, label %3379, !prof !550

3379:                                             ; preds = %3376
  %3380 = getelementptr inbounds %struct.tree_exp, ptr %3295, i64 0, i32 3
  store ptr %3377, ptr %3380, align 8, !tbaa !216
  br label %3381

3381:                                             ; preds = %3379, %3376
  %3382 = load ptr, ptr %3294, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48)
  store ptr %3382, ptr %48, align 8, !tbaa !205
  %3383 = load ptr, ptr %145, align 8, !tbaa !205
  %3384 = icmp eq ptr %3383, null
  br i1 %3384, label %3385, label %3387, !prof !250

3385:                                             ; preds = %3381
  %3386 = call ptr @gimple_seq_alloc() #24
  store ptr %3386, ptr %145, align 8, !tbaa !205
  br label %3387

3387:                                             ; preds = %3385, %3381
  %3388 = call i32 @gimplify_expr(ptr noundef nonnull %48, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48)
  %3389 = call ptr @gimple_build_return(ptr noundef %3377) #24
  %3390 = load i64, ptr %211, align 8
  %3391 = trunc i64 %3390 to i32
  %3392 = load i32, ptr %3389, align 8
  %3393 = lshr i32 %3391, 15
  %3394 = and i32 %3393, 256
  %3395 = and i32 %3392, -257
  %3396 = or disjoint i32 %3394, %3395
  store i32 %3396, ptr %3389, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #24
  %3397 = load ptr, ptr %145, align 8, !tbaa !205
  %3398 = icmp eq ptr %3397, null
  br i1 %3398, label %3399, label %3401, !prof !428

3399:                                             ; preds = %3387
  %3400 = call ptr @gimple_seq_alloc() #24
  store ptr %3400, ptr %145, align 8, !tbaa !205
  br label %3401

3401:                                             ; preds = %3399, %3387
  %3402 = load ptr, ptr %145, align 8, !tbaa !205
  %3403 = icmp eq ptr %3402, null
  br i1 %3403, label %3407, label %3404, !prof !427

3404:                                             ; preds = %3401
  %3405 = getelementptr inbounds %struct.gimple_seq_d, ptr %3402, i64 0, i32 1
  %3406 = load ptr, ptr %3405, align 8, !tbaa !252, !noalias !554
  br label %3407

3407:                                             ; preds = %3404, %3401
  %3408 = phi ptr [ %3406, %3404 ], [ null, %3401 ]
  %3409 = icmp eq ptr %3408, null
  br i1 %3409, label %3416, label %3410, !prof !432

3410:                                             ; preds = %3407
  %3411 = load ptr, ptr %3408, align 8, !tbaa !275, !noalias !554
  %3412 = icmp eq ptr %3411, null
  br i1 %3412, label %3416, label %3413, !prof !433

3413:                                             ; preds = %3410
  %3414 = getelementptr inbounds %struct.gimple_statement_base, ptr %3411, i64 0, i32 4
  %3415 = load ptr, ptr %3414, align 8, !tbaa !216, !noalias !554
  br label %3416

3416:                                             ; preds = %3413, %3410, %3407
  %3417 = phi ptr [ %3415, %3413 ], [ null, %3410 ], [ null, %3407 ]
  %3418 = getelementptr inbounds i8, ptr %15, i64 8
  %3419 = getelementptr inbounds i8, ptr %15, i64 16
  store ptr %3408, ptr %15, align 8, !tbaa.struct !417
  store ptr %3402, ptr %3418, align 8, !tbaa.struct !244
  store ptr %3417, ptr %3419, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %15, ptr noundef nonnull %3389, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #24
  br label %4420

3420:                                             ; preds = %210
  switch i32 %4, label %4420 [
    i32 0, label %3421
    i32 2, label %3449
  ]

3421:                                             ; preds = %3420
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %90) #24
  store ptr null, ptr %90, align 8, !tbaa !205
  br label %3422

3422:                                             ; preds = %3445, %3421
  %3423 = phi i64 [ 0, %3421 ], [ %3446, %3445 ]
  %3424 = load ptr, ptr %0, align 8, !tbaa !205
  %3425 = getelementptr inbounds %struct.tree_constructor, ptr %3424, i64 0, i32 1
  %3426 = load ptr, ptr %3425, align 8, !tbaa !216
  %3427 = icmp eq ptr %3426, null
  br i1 %3427, label %3435, label %3428

3428:                                             ; preds = %3422
  %3429 = trunc i64 %3423 to i32
  %3430 = load i32, ptr %3426, align 8, !tbaa !557
  %3431 = icmp ugt i32 %3430, %3429
  br i1 %3431, label %3432, label %3435

3432:                                             ; preds = %3428
  %3433 = and i64 %3423, 4294967295
  %3434 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %3426, i64 0, i32 2, i64 %3433
  br label %3435

3435:                                             ; preds = %3422, %3428, %3432
  %3436 = phi ptr [ %3434, %3432 ], [ null, %3428 ], [ null, %3422 ]
  %3437 = phi i1 [ false, %3432 ], [ true, %3428 ], [ true, %3422 ]
  br i1 %3437, label %3447, label %3438

3438:                                             ; preds = %3435
  %3439 = getelementptr inbounds %struct.constructor_elt_d, ptr %3436, i64 0, i32 1
  %3440 = load ptr, ptr %3439, align 8, !tbaa !559
  %3441 = load i64, ptr %3440, align 8
  %3442 = and i64 %3441, 65536
  %3443 = icmp eq i64 %3442, 0
  br i1 %3443, label %3445, label %3444

3444:                                             ; preds = %3438
  call fastcc void @append_to_statement_list_1(ptr noundef nonnull %3440, ptr noundef nonnull %90)
  br label %3445

3445:                                             ; preds = %3438, %3444
  %3446 = add i64 %3423, 1
  br label %3422, !llvm.loop !561

3447:                                             ; preds = %3435
  %3448 = load ptr, ptr %90, align 8, !tbaa !205
  store ptr %3448, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %90) #24
  br label %4420

3449:                                             ; preds = %3420
  %3450 = call fastcc ptr @internal_get_tmp_var(ptr noundef %211, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext 0)
  store ptr %3450, ptr %0, align 8, !tbaa !205
  call void @mark_addressable(ptr noundef %3450)
  br label %4420

3451:                                             ; preds = %210
  %3452 = and i64 %212, 65535
  %3453 = icmp eq i64 %3452, 120
  br i1 %3453, label %3455, label %3454, !prof !562

3454:                                             ; preds = %3451
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4676, ptr noundef nonnull @.str.1) #24
  br label %3455

3455:                                             ; preds = %3454, %3451
  %3456 = load ptr, ptr %0, align 8, !tbaa !205
  %3457 = getelementptr inbounds %struct.tree_exp, ptr %3456, i64 0, i32 3
  %3458 = load ptr, ptr %3457, align 8, !tbaa !216
  %3459 = load i64, ptr %3456, align 8
  %3460 = and i64 %3459, 134217728
  %3461 = icmp eq i64 %3460, 0
  br i1 %3461, label %3462, label %3479, !prof !563

3462:                                             ; preds = %3455
  %3463 = getelementptr inbounds %struct.tree_common, ptr %3458, i64 0, i32 2
  %3464 = load ptr, ptr %3463, align 8, !tbaa !216
  %3465 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %3466 = icmp eq ptr %3464, %3465
  br i1 %3466, label %3467, label %3469, !prof !564

3467:                                             ; preds = %3462
  %3468 = call i32 @gimplify_expr(ptr noundef nonnull %3457, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  br label %3471

3469:                                             ; preds = %3462
  %3470 = call fastcc ptr @internal_get_tmp_var(ptr noundef %3458, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext 0)
  br label %3471

3471:                                             ; preds = %3469, %3467
  %3472 = phi i32 [ %3468, %3467 ], [ 1, %3469 ]
  %3473 = phi ptr [ null, %3467 ], [ %3470, %3469 ]
  %3474 = load ptr, ptr %0, align 8, !tbaa !205
  %3475 = getelementptr inbounds %struct.tree_exp, ptr %3474, i64 0, i32 3
  store ptr %3473, ptr %3475, align 8, !tbaa !216
  %3476 = load ptr, ptr %0, align 8, !tbaa !205
  %3477 = load i64, ptr %3476, align 8
  %3478 = or i64 %3477, 134217728
  store i64 %3478, ptr %3476, align 8
  br label %3479

3479:                                             ; preds = %3455, %3471
  %3480 = phi i32 [ 1, %3455 ], [ %3472, %3471 ]
  %3481 = phi ptr [ %3458, %3455 ], [ %3473, %3471 ]
  store ptr %3481, ptr %0, align 8, !tbaa !205
  br label %4420

3482:                                             ; preds = %210
  %3483 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3484 = call i32 @gimplify_expr(ptr noundef nonnull %3483, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 3)
  %3485 = load ptr, ptr %0, align 8, !tbaa !205
  %3486 = getelementptr inbounds %struct.tree_exp, ptr %3485, i64 1
  %3487 = call i32 @gimplify_expr(ptr noundef nonnull %3486, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %3488 = load ptr, ptr %0, align 8, !tbaa !205
  %3489 = getelementptr inbounds %struct.tree_exp, ptr %3488, i64 1, i32 0, i32 1
  %3490 = call i32 @gimplify_expr(ptr noundef nonnull %3489, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %3491 = load ptr, ptr %0, align 8, !tbaa !205
  call void @recalculate_side_effects(ptr noundef %3491) #24
  %3492 = call i32 @llvm.smin.i32(i32 %3487, i32 %3490)
  %3493 = call i32 @llvm.smin.i32(i32 %3484, i32 %3492)
  br label %4420

3494:                                             ; preds = %210
  %3495 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3496 = load ptr, ptr %3495, align 8, !tbaa !216
  %3497 = icmp eq ptr %3496, null
  br i1 %3497, label %3500, label %3498

3498:                                             ; preds = %3494
  %3499 = call i32 @gimplify_expr(ptr noundef nonnull %3495, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 3)
  br label %3506

3500:                                             ; preds = %3494
  %3501 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %3502 = load ptr, ptr %3501, align 8, !tbaa !216
  %3503 = icmp eq ptr %3502, null
  br i1 %3503, label %3506, label %3504

3504:                                             ; preds = %3500
  %3505 = call i32 @gimplify_expr(ptr noundef nonnull %3501, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 3)
  br label %3506

3506:                                             ; preds = %3500, %3504, %3498
  %3507 = phi i32 [ %3499, %3498 ], [ %3505, %3504 ], [ 1, %3500 ]
  %3508 = load ptr, ptr %0, align 8, !tbaa !205
  %3509 = getelementptr inbounds %struct.tree_exp, ptr %3508, i64 1, i32 0, i32 1
  %3510 = load ptr, ptr %3509, align 8, !tbaa !216
  %3511 = icmp eq ptr %3510, null
  br i1 %3511, label %3514, label %3512

3512:                                             ; preds = %3506
  %3513 = call i32 @gimplify_expr(ptr noundef nonnull %3509, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %3514

3514:                                             ; preds = %3512, %3506
  %3515 = phi i32 [ %3513, %3512 ], [ 1, %3506 ]
  %3516 = call i32 @llvm.smin.i32(i32 %3507, i32 %3515)
  br label %4420

3517:                                             ; preds = %210
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6848, ptr noundef nonnull @.str.1) #24
  br label %3518

3518:                                             ; preds = %210, %3517
  %3519 = call fastcc i32 @gimplify_asm_expr(ptr noundef nonnull %0, ptr noundef nonnull %145, ptr noundef nonnull %147), !range !565
  br label %4420

3520:                                             ; preds = %210, %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %91) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %92) #24
  store ptr null, ptr %92, align 8, !tbaa !205
  store ptr null, ptr %91, align 8, !tbaa !205
  %3521 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3522 = load ptr, ptr %3521, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %73)
  store ptr %3522, ptr %73, align 8, !tbaa !205
  %3523 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %73, ptr noundef nonnull %91), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %73)
  %3524 = load ptr, ptr %0, align 8, !tbaa !205
  %3525 = getelementptr inbounds %struct.tree_exp, ptr %3524, i64 1
  %3526 = load ptr, ptr %3525, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %72)
  store ptr %3526, ptr %72, align 8, !tbaa !205
  %3527 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %72, ptr noundef nonnull %92), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %72)
  %3528 = load ptr, ptr %92, align 8, !tbaa !205
  %3529 = icmp eq ptr %3528, null
  br i1 %3529, label %3534, label %3530

3530:                                             ; preds = %3520
  %3531 = load ptr, ptr %3528, align 8, !tbaa !274
  %3532 = icmp eq ptr %3531, null
  %3533 = zext i1 %3532 to i8
  br label %3534

3534:                                             ; preds = %3520, %3530
  %3535 = phi i8 [ 1, %3520 ], [ %3533, %3530 ]
  %3536 = icmp eq i8 %3535, 0
  %3537 = load ptr, ptr %91, align 8, !tbaa !205
  br i1 %3536, label %3539, label %3538

3538:                                             ; preds = %3534
  call void @gimple_seq_add_seq(ptr noundef nonnull %145, ptr noundef %3537) #24
  br label %3563

3539:                                             ; preds = %3534
  %3540 = load ptr, ptr %0, align 8, !tbaa !205
  %3541 = load i64, ptr %3540, align 8
  %3542 = and i64 %3541, 65535
  %3543 = icmp eq i64 %3542, 131
  %3544 = select i1 %3543, i32 2, i32 1
  %3545 = call ptr @gimple_build_try(ptr noundef %3537, ptr noundef %3528, i32 noundef %3544) #24
  %3546 = load ptr, ptr %0, align 8, !tbaa !205
  %3547 = load i64, ptr %3546, align 8
  %3548 = and i64 %3547, 65535
  %3549 = icmp eq i64 %3548, 130
  br i1 %3549, label %3550, label %3562

3550:                                             ; preds = %3539
  %3551 = load i32, ptr %3545, align 8
  %3552 = and i32 %3551, 196608
  %3553 = icmp eq i32 %3552, 65536
  br i1 %3553, label %3555, label %3554

3554:                                             ; preds = %3550
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2976, ptr noundef nonnull @.str.1) #24
  br label %3555

3555:                                             ; preds = %3554, %3550
  %3556 = load i32, ptr %3545, align 8
  %3557 = and i32 %3556, -262145
  %3558 = trunc i64 %3547 to i32
  %3559 = lshr i32 %3558, 8
  %3560 = and i32 %3559, 262144
  %3561 = or disjoint i32 %3557, %3560
  store i32 %3561, ptr %3545, align 8
  br label %3562

3562:                                             ; preds = %3555, %3539
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %3545)
  br label %3563

3563:                                             ; preds = %3562, %3538
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %92) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %91) #24
  br label %4420

3564:                                             ; preds = %210
  %3565 = getelementptr inbounds i8, ptr %70, i64 8
  %3566 = getelementptr inbounds i8, ptr %70, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %70) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %71) #24
  store ptr null, ptr %71, align 8, !tbaa !205
  %3567 = call ptr @voidify_wrapper_expr(ptr noundef %211, ptr noundef null)
  %3568 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3569 = getelementptr inbounds %struct.gimplify_ctx, ptr %3568, i64 0, i32 8
  %3570 = load i32, ptr %3569, align 8, !tbaa !409
  %3571 = getelementptr inbounds %struct.gimplify_ctx, ptr %3568, i64 0, i32 3
  %3572 = load ptr, ptr %3571, align 8, !tbaa !412
  store i32 0, ptr %3569, align 8, !tbaa !409
  store ptr null, ptr %3571, align 8, !tbaa !412
  %3573 = load ptr, ptr %0, align 8, !tbaa !205
  %3574 = getelementptr inbounds %struct.tree_exp, ptr %3573, i64 0, i32 3
  %3575 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %3574, ptr noundef nonnull %71), !range !249
  %3576 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3577 = getelementptr inbounds %struct.gimplify_ctx, ptr %3576, i64 0, i32 8
  store i32 %3570, ptr %3577, align 8, !tbaa !409
  %3578 = getelementptr inbounds %struct.gimplify_ctx, ptr %3576, i64 0, i32 3
  store ptr %3572, ptr %3578, align 8, !tbaa !412
  %3579 = load ptr, ptr %71, align 8, !tbaa !205
  %3580 = icmp eq ptr %3579, null
  br i1 %3580, label %3583, label %3581

3581:                                             ; preds = %3564
  %3582 = load ptr, ptr %3579, align 8, !tbaa !274, !noalias !566
  br label %3583

3583:                                             ; preds = %3581, %3564
  %3584 = phi ptr [ %3582, %3581 ], [ null, %3564 ]
  %3585 = icmp eq ptr %3584, null
  br i1 %3585, label %3633, label %3586

3586:                                             ; preds = %3583
  %3587 = load ptr, ptr %3584, align 8, !tbaa !275, !noalias !566
  %3588 = icmp eq ptr %3587, null
  br i1 %3588, label %3592, label %3589

3589:                                             ; preds = %3586
  %3590 = getelementptr inbounds %struct.gimple_statement_base, ptr %3587, i64 0, i32 4
  %3591 = load ptr, ptr %3590, align 8, !tbaa !216, !noalias !566
  br label %3592

3592:                                             ; preds = %3586, %3589
  %3593 = phi ptr [ %3591, %3589 ], [ null, %3586 ]
  store ptr %3584, ptr %70, align 8, !tbaa.struct !417
  store ptr %3579, ptr %3565, align 8, !tbaa.struct !244
  store ptr %3593, ptr %3566, align 8, !tbaa.struct !245
  br i1 %3585, label %3634, label %3594

3594:                                             ; preds = %3592, %3630
  %3595 = phi ptr [ %3631, %3630 ], [ %3584, %3592 ]
  %3596 = load ptr, ptr %3595, align 8, !tbaa !275
  %3597 = load i32, ptr %3596, align 8
  %3598 = and i32 %3597, 255
  %3599 = icmp eq i32 %3598, 34
  %3600 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %3595, i64 0, i32 2
  %3601 = load ptr, ptr %3600, align 8, !tbaa !307
  br i1 %3599, label %3602, label %3629

3602:                                             ; preds = %3594
  %3603 = icmp eq ptr %3601, null
  br i1 %3603, label %3604, label %3607

3604:                                             ; preds = %3602
  %3605 = getelementptr inbounds %struct.gimple_statement_wce, ptr %3596, i64 0, i32 1
  %3606 = load ptr, ptr %3605, align 8, !tbaa !216
  call void @gsi_insert_seq_before_without_update(ptr noundef nonnull %70, ptr noundef %3606, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %70, i8 noundef zeroext 1) #24
  br label %3634

3607:                                             ; preds = %3602
  %3608 = icmp ult i32 %3597, 65536
  %3609 = select i1 %3608, i32 2, i32 1
  %3610 = call ptr @gsi_split_seq_after(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %70) #24
  %3611 = getelementptr inbounds %struct.gimple_statement_wce, ptr %3596, i64 0, i32 1
  %3612 = load ptr, ptr %3611, align 8, !tbaa !216
  %3613 = call ptr @gimple_build_try(ptr noundef %3610, ptr noundef %3612, i32 noundef %3609) #24
  %3614 = load ptr, ptr %70, align 8, !tbaa !569
  store ptr %3613, ptr %3614, align 8, !tbaa !205
  %3615 = icmp eq ptr %3610, null
  br i1 %3615, label %3618, label %3616

3616:                                             ; preds = %3607
  %3617 = load ptr, ptr %3610, align 8, !tbaa !274, !noalias !571
  br label %3618

3618:                                             ; preds = %3616, %3607
  %3619 = phi ptr [ %3617, %3616 ], [ null, %3607 ]
  %3620 = icmp eq ptr %3619, null
  br i1 %3620, label %3627, label %3621

3621:                                             ; preds = %3618
  %3622 = load ptr, ptr %3619, align 8, !tbaa !275, !noalias !571
  %3623 = icmp eq ptr %3622, null
  br i1 %3623, label %3627, label %3624

3624:                                             ; preds = %3621
  %3625 = getelementptr inbounds %struct.gimple_statement_base, ptr %3622, i64 0, i32 4
  %3626 = load ptr, ptr %3625, align 8, !tbaa !216, !noalias !571
  br label %3627

3627:                                             ; preds = %3618, %3621, %3624
  %3628 = phi ptr [ %3626, %3624 ], [ null, %3621 ], [ null, %3618 ]
  store ptr %3619, ptr %70, align 8, !tbaa.struct !417
  store ptr %3610, ptr %3565, align 8, !tbaa.struct !244
  store ptr %3628, ptr %3566, align 8, !tbaa.struct !245
  br label %3630

3629:                                             ; preds = %3594
  store ptr %3601, ptr %70, align 8, !tbaa !569
  br label %3630

3630:                                             ; preds = %3629, %3627
  %3631 = load ptr, ptr %70, align 8
  %3632 = icmp eq ptr %3631, null
  br i1 %3632, label %3634, label %3594

3633:                                             ; preds = %3583
  store ptr %3584, ptr %70, align 8, !tbaa.struct !417
  store ptr %3579, ptr %3565, align 8, !tbaa.struct !244
  store ptr null, ptr %3566, align 8, !tbaa.struct !245
  br label %3634

3634:                                             ; preds = %3630, %3633, %3592, %3604
  %3635 = load ptr, ptr %71, align 8, !tbaa !205
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %145, ptr noundef %3635)
  %3636 = icmp eq ptr %3567, null
  %3637 = zext i1 %3636 to i32
  store ptr %3567, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %71) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %70) #24
  br label %4420

3638:                                             ; preds = %210
  %3639 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3640 = load ptr, ptr %3639, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %69) #24
  %3641 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %3642 = load ptr, ptr %3641, align 8, !tbaa !216
  store ptr %3642, ptr %69, align 8, !tbaa !205
  %3643 = icmp eq ptr %3642, null
  br i1 %3643, label %3694, label %3644

3644:                                             ; preds = %3638
  %3645 = getelementptr inbounds %struct.tree_decl_common, ptr %3640, i64 0, i32 1
  %3646 = load ptr, ptr %3645, align 8, !tbaa !216
  %3647 = load i64, ptr %3646, align 8
  %3648 = and i64 %3647, 65535
  %3649 = icmp eq i64 %3648, 23
  br i1 %3649, label %3658, label %3650

3650:                                             ; preds = %3644
  %3651 = getelementptr inbounds %struct.tree_common, ptr %3640, i64 0, i32 2
  %3652 = load ptr, ptr %3651, align 8, !tbaa !216
  %3653 = load i64, ptr %3652, align 8
  %3654 = and i64 %3653, 131072
  %3655 = icmp eq i64 %3654, 0
  br i1 %3655, label %3656, label %3657

3656:                                             ; preds = %3650
  call void @gimplify_type_sizes(ptr noundef nonnull %3652, ptr noundef nonnull %145)
  br label %3657

3657:                                             ; preds = %3656, %3650
  call fastcc void @gimplify_vla_decl(ptr noundef %3640, ptr noundef nonnull %145)
  br label %3659

3658:                                             ; preds = %3644
  call void @gimple_add_tmp_var(ptr noundef %3640)
  br label %3659

3659:                                             ; preds = %3658, %3657
  %3660 = load ptr, ptr %69, align 8, !tbaa !205
  %3661 = getelementptr inbounds %struct.tree_common, ptr %3660, i64 0, i32 2
  %3662 = load ptr, ptr %3661, align 8, !tbaa !216
  %3663 = load i64, ptr %3662, align 8
  %3664 = and i64 %3663, 65535
  %3665 = icmp eq i64 %3664, 19
  br i1 %3665, label %3666, label %3668

3666:                                             ; preds = %3659
  %3667 = call i32 @gimplify_expr(ptr noundef nonnull %69, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  br label %3672

3668:                                             ; preds = %3659
  %3669 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %3670 = call ptr @build2_stat(i32 noundef 54, ptr noundef %3669, ptr noundef %3640, ptr noundef %3660) #24
  store ptr %3670, ptr %69, align 8, !tbaa !205
  %3671 = call i32 @gimplify_expr(ptr noundef nonnull %69, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  store ptr null, ptr %69, align 8, !tbaa !205
  call void @ggc_free(ptr noundef %3670) #24
  br label %3672

3672:                                             ; preds = %3668, %3666
  %3673 = phi i32 [ %3667, %3666 ], [ %3671, %3668 ]
  %3674 = icmp eq i32 %3673, -2
  br i1 %3674, label %3675, label %3676

3675:                                             ; preds = %3672
  store ptr null, ptr %3641, align 8, !tbaa !216
  br label %3701

3676:                                             ; preds = %3672
  %3677 = load ptr, ptr %69, align 8, !tbaa !205
  %3678 = icmp eq ptr %3677, null
  br i1 %3678, label %3681, label %3679

3679:                                             ; preds = %3676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47)
  store ptr %3677, ptr %47, align 8, !tbaa !205
  %3680 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %47, ptr noundef nonnull %145), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47)
  br label %3681

3681:                                             ; preds = %3679, %3676
  %3682 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 1
  %3683 = load ptr, ptr %3682, align 8, !tbaa !216
  %3684 = icmp eq ptr %3683, null
  br i1 %3684, label %3691, label %3685

3685:                                             ; preds = %3681
  %3686 = load i64, ptr %211, align 8
  %3687 = trunc i64 %3686 to i32
  %3688 = lshr i32 %3687, 26
  %3689 = trunc i32 %3688 to i8
  %3690 = and i8 %3689, 1
  call fastcc void @gimple_push_cleanup(ptr noundef %3640, ptr noundef nonnull %3683, i8 noundef zeroext %3690, ptr noundef nonnull %145)
  br label %3691

3691:                                             ; preds = %3685, %3681
  %3692 = load ptr, ptr %69, align 8, !tbaa !205
  %3693 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 2
  store ptr %3692, ptr %3693, align 8, !tbaa !216
  store ptr null, ptr %3641, align 8, !tbaa !216
  br label %3700

3694:                                             ; preds = %3638
  %3695 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3640, i64 0, i32 4
  %3696 = load i32, ptr %3695, align 8
  %3697 = and i32 %3696, 256
  %3698 = icmp eq i32 %3697, 0
  br i1 %3698, label %3699, label %3700

3699:                                             ; preds = %3694
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5246, ptr noundef nonnull @.str.1) #24
  br label %3700

3700:                                             ; preds = %3699, %3694, %3691
  store ptr %3640, ptr %0, align 8, !tbaa !205
  br label %3701

3701:                                             ; preds = %3675, %3700
  %3702 = phi i32 [ -2, %3675 ], [ 0, %3700 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %69) #24
  br label %4420

3703:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %93) #24
  store ptr null, ptr %93, align 8, !tbaa !205
  %3704 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %3705 = load ptr, ptr %3704, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %68)
  store ptr %3705, ptr %68, align 8, !tbaa !205
  %3706 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %68, ptr noundef nonnull %93), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %68)
  %3707 = load ptr, ptr %0, align 8, !tbaa !205
  %3708 = getelementptr inbounds %struct.tree_exp, ptr %3707, i64 0, i32 3
  %3709 = load ptr, ptr %3708, align 8, !tbaa !216
  %3710 = load ptr, ptr %93, align 8, !tbaa !205
  %3711 = call ptr @gimple_build_catch(ptr noundef %3709, ptr noundef %3710) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %3711)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %93) #24
  br label %4420

3712:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %94) #24
  store ptr null, ptr %94, align 8, !tbaa !205
  %3713 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %3714 = load ptr, ptr %3713, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %67)
  store ptr %3714, ptr %67, align 8, !tbaa !205
  %3715 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %67, ptr noundef nonnull %94), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %67)
  %3716 = load ptr, ptr %0, align 8, !tbaa !205
  %3717 = getelementptr inbounds %struct.tree_exp, ptr %3716, i64 0, i32 3
  %3718 = load ptr, ptr %3717, align 8, !tbaa !216
  %3719 = load ptr, ptr %94, align 8, !tbaa !205
  %3720 = call ptr @gimple_build_eh_filter(ptr noundef %3718, ptr noundef %3719) #24
  %3721 = load ptr, ptr %0, align 8, !tbaa !205
  %3722 = load i64, ptr %3721, align 8
  %3723 = trunc i64 %3722 to i32
  %3724 = load i32, ptr %3720, align 8
  %3725 = lshr i32 %3723, 15
  %3726 = and i32 %3725, 256
  %3727 = and i32 %3724, -257
  %3728 = or disjoint i32 %3726, %3727
  store i32 %3728, ptr %3720, align 8
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef nonnull %3720)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %94) #24
  br label %4420

3729:                                             ; preds = %210
  %3730 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %3731 = call i32 @gimplify_expr(ptr noundef nonnull %3730, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %3732 = load ptr, ptr %0, align 8, !tbaa !205
  %3733 = getelementptr inbounds %struct.tree_exp, ptr %3732, i64 0, i32 3
  %3734 = call i32 @gimplify_expr(ptr noundef nonnull %3733, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %3735 = load ptr, ptr %0, align 8, !tbaa !205
  %3736 = load i64, ptr %3735, align 8
  %3737 = and i64 %3736, -65537
  store i64 %3737, ptr %3735, align 8
  %3738 = call i32 @llvm.smin.i32(i32 %3731, i32 %3734)
  br label %4420

3739:                                             ; preds = %210
  %3740 = or i64 %212, 65536
  store i64 %3740, ptr %211, align 8
  br label %4420

3741:                                             ; preds = %210
  %3742 = getelementptr inbounds { ptr, ptr }, ptr %66, i64 0, i32 1
  %3743 = call ptr @voidify_wrapper_expr(ptr noundef %211, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %66) #24
  %3744 = load ptr, ptr %0, align 8, !tbaa !205
  %3745 = getelementptr inbounds %struct.tree_statement_list, ptr %3744, i64 0, i32 1
  %3746 = load ptr, ptr %3745, align 8, !tbaa !216
  store ptr %3746, ptr %66, align 8
  store ptr %3744, ptr %3742, align 8
  %3747 = icmp eq ptr %3746, null
  br i1 %3747, label %3759, label %3748, !prof !574

3748:                                             ; preds = %3741, %3755
  %3749 = phi ptr [ %3757, %3755 ], [ %3746, %3741 ]
  %3750 = getelementptr inbounds %struct.tree_statement_list_node, ptr %3749, i64 0, i32 2
  %3751 = load ptr, ptr %145, align 8, !tbaa !205
  %3752 = icmp eq ptr %3751, null
  br i1 %3752, label %3753, label %3755, !prof !250

3753:                                             ; preds = %3748
  %3754 = call ptr @gimple_seq_alloc() #24
  store ptr %3754, ptr %145, align 8, !tbaa !205
  br label %3755

3755:                                             ; preds = %3753, %3748
  %3756 = call i32 @gimplify_expr(ptr noundef nonnull %3750, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  call void @tsi_delink(ptr noundef nonnull %66) #24
  %3757 = load ptr, ptr %66, align 8
  %3758 = icmp eq ptr %3757, null
  br i1 %3758, label %3759, label %3748, !prof !575, !llvm.loop !576

3759:                                             ; preds = %3755, %3741
  %3760 = icmp eq ptr %3743, null
  br i1 %3760, label %3762, label %3761, !prof !577

3761:                                             ; preds = %3759
  store ptr %3743, ptr %0, align 8, !tbaa !205
  br label %3762

3762:                                             ; preds = %3759, %3761
  %3763 = phi i32 [ 0, %3761 ], [ 1, %3759 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %66) #24
  br label %4420

3764:                                             ; preds = %210
  %3765 = icmp eq ptr %147, %89
  %3766 = select i1 %3765, ptr null, ptr %147
  %3767 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3768 = call i32 @gimplify_expr(ptr noundef nonnull %3767, ptr noundef nonnull %145, ptr noundef %3766, ptr noundef %3, i32 noundef %4)
  %3769 = load ptr, ptr %0, align 8, !tbaa !205
  %3770 = getelementptr inbounds %struct.tree_exp, ptr %3769, i64 1
  %3771 = call i32 @gimplify_expr(ptr noundef nonnull %3770, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %4420

3772:                                             ; preds = %210, %210
  %3773 = and i64 %212, 65535
  %3774 = icmp eq i64 %3773, 32
  br i1 %3774, label %3775, label %3802, !prof !377

3775:                                             ; preds = %3772
  %3776 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %211, i64 0, i32 4
  %3777 = load i32, ptr %3776, align 8
  %3778 = and i32 %3777, 256
  %3779 = icmp eq i32 %3778, 0
  %3780 = and i64 %212, 67108864
  %3781 = icmp eq i64 %3780, 0
  %3782 = and i1 %3781, %3779
  br i1 %3782, label %3783, label %3802, !prof !378

3783:                                             ; preds = %3775
  %3784 = getelementptr inbounds %struct.tree_decl_common, ptr %211, i64 0, i32 2
  %3785 = load i64, ptr %3784, align 8
  %3786 = and i64 %3785, 33554432
  %3787 = icmp eq i64 %3786, 0
  br i1 %3787, label %3788, label %3802, !prof !379

3788:                                             ; preds = %3783
  %3789 = call ptr @decl_function_context(ptr noundef nonnull %211) #24
  %3790 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %3791 = icmp eq ptr %3789, %3790
  br i1 %3791, label %3792, label %3802

3792:                                             ; preds = %3788
  %3793 = load ptr, ptr @global_dc, align 8, !tbaa !205
  %3794 = getelementptr inbounds %struct.diagnostic_context, ptr %3793, i64 0, i32 1, i64 4
  %3795 = load i32, ptr %3794, align 8, !tbaa !220
  %3796 = icmp eq i32 %3795, 0
  br i1 %3796, label %3797, label %4420

3797:                                             ; preds = %3792
  %3798 = getelementptr inbounds %struct.diagnostic_context, ptr %3793, i64 0, i32 1, i64 5
  %3799 = load i32, ptr %3798, align 4, !tbaa !220
  %3800 = icmp eq i32 %3799, 0
  br i1 %3800, label %3801, label %4420

3801:                                             ; preds = %3797
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #24
  br label %4420

3802:                                             ; preds = %3788, %3783, %3775, %3772
  %3803 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %3804 = icmp eq ptr %3803, null
  br i1 %3804, label %3808, label %3805, !prof !380

3805:                                             ; preds = %3802
  %3806 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %3803, ptr noundef nonnull %211)
  %3807 = icmp eq i8 %3806, 0
  br i1 %3807, label %3808, label %4420

3808:                                             ; preds = %3805, %3802
  %3809 = getelementptr inbounds %struct.tree_decl_common, ptr %211, i64 0, i32 2
  %3810 = load i64, ptr %3809, align 8
  %3811 = and i64 %3810, 67108864
  %3812 = icmp eq i64 %3811, 0
  br i1 %3812, label %4420, label %3813, !prof !380

3813:                                             ; preds = %3808
  %3814 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %211) #24
  %3815 = load i64, ptr %211, align 8
  %3816 = and i64 %3815, 65535
  %3817 = icmp eq i64 %3816, 32
  br i1 %3817, label %3818, label %3869

3818:                                             ; preds = %3813
  %3819 = getelementptr inbounds %struct.tree_decl_common, ptr %211, i64 0, i32 4
  %3820 = load ptr, ptr %3819, align 8, !tbaa !216
  %3821 = load i64, ptr %3820, align 8
  %3822 = and i64 %3821, 65535
  %3823 = icmp ne i64 %3822, 23
  %3824 = load ptr, ptr @nonlocal_vlas, align 8
  %3825 = icmp ne ptr %3824, null
  %3826 = select i1 %3823, i1 %3825, i1 false
  br i1 %3826, label %3827, label %3869

3827:                                             ; preds = %3818
  %3828 = load i64, ptr %3814, align 8
  %3829 = and i64 %3828, 65535
  %3830 = icmp eq i64 %3829, 47
  br i1 %3830, label %3831, label %3869

3831:                                             ; preds = %3827
  %3832 = getelementptr inbounds %struct.tree_exp, ptr %3814, i64 0, i32 3
  %3833 = load ptr, ptr %3832, align 8, !tbaa !216
  %3834 = load i64, ptr %3833, align 8
  %3835 = and i64 %3834, 65535
  %3836 = icmp eq i64 %3835, 32
  br i1 %3836, label %3837, label %3869

3837:                                             ; preds = %3831
  %3838 = call ptr @decl_function_context(ptr noundef nonnull %211) #24
  %3839 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %3840 = icmp eq ptr %3838, %3839
  br i1 %3840, label %3869, label %3841

3841:                                             ; preds = %3837, %3845
  %3842 = phi ptr [ %3843, %3845 ], [ @gimplify_omp_ctxp, %3837 ]
  %3843 = load ptr, ptr %3842, align 8, !tbaa !205
  %3844 = icmp eq ptr %3843, null
  br i1 %3844, label %3849, label %3845

3845:                                             ; preds = %3841
  %3846 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %3843, i64 0, i32 5
  %3847 = load i32, ptr %3846, align 8, !tbaa !269
  %3848 = icmp eq i32 %3847, 0
  br i1 %3848, label %3841, label %3869, !llvm.loop !381

3849:                                             ; preds = %3841
  %3850 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !205
  %3851 = call i32 @pointer_set_insert(ptr noundef %3850, ptr noundef nonnull %211) #24
  %3852 = icmp eq i32 %3851, 0
  br i1 %3852, label %3853, label %3869

3853:                                             ; preds = %3849
  %3854 = call ptr @copy_node_stat(ptr noundef nonnull %211) #24
  %3855 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !382
  call void %3855(ptr noundef %3854) #24
  call void @set_decl_rtl(ptr noundef %3854, ptr noundef null) #24
  %3856 = load i64, ptr %3854, align 8
  %3857 = or i64 %3856, 16777216
  store i64 %3857, ptr %3854, align 8
  %3858 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %3859 = getelementptr inbounds %struct.tree_decl_common, ptr %3858, i64 0, i32 5
  %3860 = load ptr, ptr %3859, align 8, !tbaa !216
  %3861 = getelementptr inbounds %struct.tree_block, ptr %3860, i64 0, i32 3
  %3862 = load ptr, ptr %3861, align 8, !tbaa !216
  %3863 = getelementptr inbounds %struct.tree_common, ptr %3854, i64 0, i32 1
  store ptr %3862, ptr %3863, align 8, !tbaa !216
  store ptr %3854, ptr %3861, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14)
  store ptr %3814, ptr %14, align 8, !tbaa !205
  %3864 = call ptr @walk_tree_1(ptr noundef nonnull %14, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %3865 = load ptr, ptr %14, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14)
  call void @decl_value_expr_insert(ptr noundef nonnull %3854, ptr noundef %3865) #24
  %3866 = getelementptr inbounds %struct.tree_decl_common, ptr %3854, i64 0, i32 2
  %3867 = load i64, ptr %3866, align 8
  %3868 = or i64 %3867, 67108864
  store i64 %3868, ptr %3866, align 8
  br label %3869

3869:                                             ; preds = %3845, %3853, %3849, %3837, %3831, %3827, %3818, %3813
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13)
  store ptr %3814, ptr %13, align 8, !tbaa !205
  %3870 = call ptr @walk_tree_1(ptr noundef nonnull %13, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %3871 = load ptr, ptr %13, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13)
  store ptr %3871, ptr %0, align 8, !tbaa !205
  br label %4420

3872:                                             ; preds = %210
  %3873 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %3874 = icmp eq ptr %3873, null
  br i1 %3874, label %4420, label %3875

3875:                                             ; preds = %3872
  %3876 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %3873, ptr noundef nonnull %211)
  br label %4420

3877:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %64) #24
  store ptr null, ptr %64, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %65) #24
  %3878 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3879 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %3880 = load i64, ptr %211, align 8
  %3881 = and i64 %3880, 268435456
  %3882 = icmp eq i64 %3881, 0
  %3883 = select i1 %3882, i32 2, i32 3
  call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %3879, ptr noundef nonnull %145, i32 noundef %3883)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %65, i8 0, i64 72, i1 false)
  %3884 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %3884, ptr %65, align 8, !tbaa !227
  store ptr %65, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3885 = load ptr, ptr %3878, align 8, !tbaa !216
  %3886 = call fastcc ptr @gimplify_and_return_first(ptr noundef %3885, ptr noundef nonnull %64)
  %3887 = load i32, ptr %3886, align 8
  %3888 = and i32 %3887, 255
  %3889 = icmp eq i32 %3888, 10
  br i1 %3889, label %3890, label %3891

3890:                                             ; preds = %3877
  call void @pop_gimplify_context(ptr noundef nonnull %3886)
  br label %3892

3891:                                             ; preds = %3877
  call void @pop_gimplify_context(ptr noundef null)
  br label %3892

3892:                                             ; preds = %3891, %3890
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %3879)
  %3893 = load ptr, ptr %64, align 8, !tbaa !205
  %3894 = load ptr, ptr %3879, align 8, !tbaa !216
  %3895 = call ptr @gimple_build_omp_parallel(ptr noundef %3893, ptr noundef %3894, ptr noundef null, ptr noundef null) #24
  %3896 = load i64, ptr %211, align 8
  %3897 = and i64 %3896, 268435456
  %3898 = icmp eq i64 %3897, 0
  br i1 %3898, label %3903, label %3899

3899:                                             ; preds = %3892
  %3900 = load i32, ptr %3895, align 8
  %3901 = and i32 %3900, 65535
  %3902 = or disjoint i32 %3901, 65536
  store i32 %3902, ptr %3895, align 8
  br label %3903

3903:                                             ; preds = %3892, %3899
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %3895)
  store ptr null, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %65) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %64) #24
  br label %4420

3904:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %62) #24
  store ptr null, ptr %62, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %63) #24
  %3905 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3906 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %3906, ptr noundef nonnull %145, i32 noundef 1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %63, i8 0, i64 72, i1 false)
  %3907 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %3907, ptr %63, align 8, !tbaa !227
  store ptr %63, ptr @gimplify_ctxp, align 8, !tbaa !205
  %3908 = load ptr, ptr %3905, align 8, !tbaa !216
  %3909 = call fastcc ptr @gimplify_and_return_first(ptr noundef %3908, ptr noundef nonnull %62)
  %3910 = load i32, ptr %3909, align 8
  %3911 = and i32 %3910, 255
  %3912 = icmp eq i32 %3911, 10
  br i1 %3912, label %3913, label %3914

3913:                                             ; preds = %3904
  call void @pop_gimplify_context(ptr noundef nonnull %3909)
  br label %3915

3914:                                             ; preds = %3904
  call void @pop_gimplify_context(ptr noundef null)
  br label %3915

3915:                                             ; preds = %3913, %3914
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %3906)
  %3916 = load ptr, ptr %62, align 8, !tbaa !205
  %3917 = load ptr, ptr %3906, align 8, !tbaa !216
  %3918 = call ptr @gimple_build_omp_task(ptr noundef %3916, ptr noundef %3917, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %3918)
  store ptr null, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %63) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %62) #24
  br label %4420

3919:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %60) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %61) #24
  %3920 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %3921 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %3921, ptr noundef nonnull %145, i32 noundef 0)
  store ptr null, ptr %61, align 8, !tbaa !205
  %3922 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 2
  %3923 = load ptr, ptr %3922, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45)
  store ptr %3923, ptr %45, align 8, !tbaa !205
  %3924 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %45, ptr noundef nonnull %61), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45)
  store ptr null, ptr %3922, align 8, !tbaa !216
  %3925 = call ptr @gimple_seq_alloc() #24
  store ptr %3925, ptr %60, align 8, !tbaa !205
  %3926 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 1
  %3927 = load ptr, ptr %3926, align 8, !tbaa !216
  %3928 = getelementptr inbounds %struct.tree_vec, ptr %3927, i64 0, i32 1
  %3929 = load i32, ptr %3928, align 8, !tbaa !216
  %3930 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 2
  %3931 = load ptr, ptr %3930, align 8, !tbaa !216
  %3932 = getelementptr inbounds %struct.tree_vec, ptr %3931, i64 0, i32 1
  %3933 = load i32, ptr %3932, align 8, !tbaa !216
  %3934 = icmp eq i32 %3929, %3933
  br i1 %3934, label %3936, label %3935

3935:                                             ; preds = %3919
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6067, ptr noundef nonnull @.str.1) #24
  br label %3936

3936:                                             ; preds = %3935, %3919
  %3937 = load ptr, ptr %3926, align 8, !tbaa !216
  %3938 = getelementptr inbounds %struct.tree_vec, ptr %3937, i64 0, i32 1
  %3939 = load i32, ptr %3938, align 8, !tbaa !216
  %3940 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 1
  %3941 = load ptr, ptr %3940, align 8, !tbaa !216
  %3942 = getelementptr inbounds %struct.tree_vec, ptr %3941, i64 0, i32 1
  %3943 = load i32, ptr %3942, align 8, !tbaa !216
  %3944 = icmp eq i32 %3939, %3943
  br i1 %3944, label %3946, label %3945

3945:                                             ; preds = %3936
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6069, ptr noundef nonnull @.str.1) #24
  br label %3946

3946:                                             ; preds = %3945, %3936
  %3947 = load ptr, ptr %3926, align 8, !tbaa !216
  %3948 = getelementptr inbounds %struct.tree_vec, ptr %3947, i64 0, i32 1
  %3949 = load i32, ptr %3948, align 8, !tbaa !216
  %3950 = icmp sgt i32 %3949, 0
  br i1 %3950, label %3951, label %4140

3951:                                             ; preds = %3946, %4133
  %3952 = phi i64 [ %4134, %4133 ], [ 0, %3946 ]
  %3953 = phi ptr [ %4135, %4133 ], [ %3947, %3946 ]
  %3954 = phi i32 [ %4073, %4133 ], [ 1, %3946 ]
  %3955 = getelementptr inbounds %struct.tree_vec, ptr %3953, i64 0, i32 2, i64 %3952
  %3956 = load ptr, ptr %3955, align 8, !tbaa !216
  %3957 = load i64, ptr %3956, align 8
  %3958 = and i64 %3957, 65535
  %3959 = icmp eq i64 %3958, 53
  br i1 %3959, label %3961, label %3960

3960:                                             ; preds = %3951
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6073, ptr noundef nonnull @.str.1) #24
  br label %3961

3961:                                             ; preds = %3960, %3951
  %3962 = getelementptr inbounds %struct.tree_exp, ptr %3956, i64 0, i32 3
  %3963 = load ptr, ptr %3962, align 8, !tbaa !216
  %3964 = load i64, ptr %3963, align 8
  %3965 = and i64 %3964, 65535
  %3966 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3965
  %3967 = load i32, ptr %3966, align 4, !tbaa !220
  %3968 = icmp eq i32 %3967, 3
  br i1 %3968, label %3970, label %3969

3969:                                             ; preds = %3961
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6075, ptr noundef nonnull @.str.1) #24
  br label %3970

3970:                                             ; preds = %3969, %3961
  %3971 = getelementptr inbounds %struct.tree_common, ptr %3963, i64 0, i32 2
  %3972 = load ptr, ptr %3971, align 8, !tbaa !216
  %3973 = load i64, ptr %3972, align 8
  %3974 = trunc i64 %3973 to i16
  switch i16 %3974, label %3975 [
    i16 6, label %3976
    i16 7, label %3976
    i16 8, label %3976
    i16 10, label %3976
    i16 12, label %3976
  ]

3975:                                             ; preds = %3970
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6077, ptr noundef nonnull @.str.1) #24
  br label %3976

3976:                                             ; preds = %3970, %3970, %3970, %3970, %3975, %3970
  %3977 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %3978 = call fastcc zeroext i8 @omp_is_private(ptr noundef %3977, ptr noundef nonnull %3963), !range !249
  %3979 = icmp eq i8 %3978, 0
  %3980 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  br i1 %3979, label %3983, label %3981

3981:                                             ; preds = %3976
  %3982 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef %3980, ptr noundef nonnull %3963)
  br label %3984

3983:                                             ; preds = %3976
  call fastcc void @omp_add_variable(ptr noundef %3980, ptr noundef nonnull %3963, i32 noundef 9)
  br label %3984

3984:                                             ; preds = %3983, %3981
  %3985 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3963) #24
  %3986 = icmp eq i8 %3985, 0
  br i1 %3986, label %3987, label %3993

3987:                                             ; preds = %3984
  %3988 = load ptr, ptr %3971, align 8, !tbaa !216
  %3989 = call ptr @get_name(ptr noundef nonnull %3963) #24
  %3990 = call ptr @create_tmp_var(ptr noundef %3988, ptr noundef %3989)
  store ptr %3990, ptr %3962, align 8, !tbaa !216
  %3991 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %3963, ptr noundef %3990) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %60, ptr noundef %3991)
  %3992 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  call fastcc void @omp_add_variable(ptr noundef %3992, ptr noundef %3990, i32 noundef 9)
  br label %3993

3993:                                             ; preds = %3987, %3984
  %3994 = phi ptr [ %3990, %3987 ], [ %3963, %3984 ]
  %3995 = getelementptr inbounds %struct.tree_exp, ptr %3956, i64 1
  %3996 = call i32 @gimplify_expr(ptr noundef nonnull %3995, ptr noundef nonnull %61, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %3997 = call i32 @llvm.smin.i32(i32 %3954, i32 %3996)
  %3998 = icmp eq i32 %3997, -2
  br i1 %3998, label %4226, label %3999

3999:                                             ; preds = %3993
  %4000 = load ptr, ptr %3930, align 8, !tbaa !216
  %4001 = getelementptr inbounds %struct.tree_vec, ptr %4000, i64 0, i32 2, i64 %3952
  %4002 = load ptr, ptr %4001, align 8, !tbaa !216
  %4003 = load i64, ptr %4002, align 8
  %4004 = and i64 %4003, 65535
  %4005 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4004
  %4006 = load i32, ptr %4005, align 4, !tbaa !220
  %4007 = icmp eq i32 %4006, 5
  br i1 %4007, label %4009, label %4008

4008:                                             ; preds = %3999
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6108, ptr noundef nonnull @.str.1) #24
  br label %4009

4009:                                             ; preds = %4008, %3999
  %4010 = getelementptr inbounds %struct.tree_exp, ptr %4002, i64 0, i32 3
  %4011 = load ptr, ptr %4010, align 8, !tbaa !216
  %4012 = icmp eq ptr %4011, %3963
  br i1 %4012, label %4014, label %4013

4013:                                             ; preds = %4009
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6109, ptr noundef nonnull @.str.1) #24
  br label %4014

4014:                                             ; preds = %4013, %4009
  %4015 = getelementptr inbounds %struct.tree_exp, ptr %4002, i64 1
  %4016 = call i32 @gimplify_expr(ptr noundef nonnull %4015, ptr noundef nonnull %61, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %4017 = call i32 @llvm.smin.i32(i32 %3997, i32 %4016)
  %4018 = load ptr, ptr %3940, align 8, !tbaa !216
  %4019 = getelementptr inbounds %struct.tree_vec, ptr %4018, i64 0, i32 2, i64 %3952
  %4020 = load ptr, ptr %4019, align 8, !tbaa !216
  %4021 = load i64, ptr %4020, align 8
  %4022 = trunc i64 %4021 to i16
  switch i16 %4022, label %4071 [
    i16 126, label %4023
    i16 128, label %4023
    i16 125, label %4033
    i16 127, label %4033
    i16 53, label %4043
  ]

4023:                                             ; preds = %4014, %4014
  %4024 = load ptr, ptr %3971, align 8, !tbaa !216
  %4025 = call ptr @build_int_cst(ptr noundef %4024, i64 noundef 1) #24
  %4026 = load ptr, ptr %3971, align 8, !tbaa !216
  %4027 = call ptr @build2_stat(i32 noundef 63, ptr noundef %4026, ptr noundef %3994, ptr noundef %4025) #24
  %4028 = getelementptr inbounds %struct.tree_common, ptr %3994, i64 0, i32 2
  %4029 = load ptr, ptr %4028, align 8, !tbaa !216
  %4030 = call ptr @build2_stat(i32 noundef 53, ptr noundef %4029, ptr noundef %3994, ptr noundef %4027) #24
  %4031 = load ptr, ptr %3940, align 8, !tbaa !216
  %4032 = getelementptr inbounds %struct.tree_vec, ptr %4031, i64 0, i32 2, i64 %3952
  store ptr %4030, ptr %4032, align 8, !tbaa !216
  br label %4072

4033:                                             ; preds = %4014, %4014
  %4034 = load ptr, ptr %3971, align 8, !tbaa !216
  %4035 = call ptr @build_int_cst(ptr noundef %4034, i64 noundef -1) #24
  %4036 = load ptr, ptr %3971, align 8, !tbaa !216
  %4037 = call ptr @build2_stat(i32 noundef 63, ptr noundef %4036, ptr noundef %3994, ptr noundef %4035) #24
  %4038 = getelementptr inbounds %struct.tree_common, ptr %3994, i64 0, i32 2
  %4039 = load ptr, ptr %4038, align 8, !tbaa !216
  %4040 = call ptr @build2_stat(i32 noundef 53, ptr noundef %4039, ptr noundef %3994, ptr noundef %4037) #24
  %4041 = load ptr, ptr %3940, align 8, !tbaa !216
  %4042 = getelementptr inbounds %struct.tree_vec, ptr %4041, i64 0, i32 2, i64 %3952
  store ptr %4040, ptr %4042, align 8, !tbaa !216
  br label %4072

4043:                                             ; preds = %4014
  %4044 = getelementptr inbounds %struct.tree_exp, ptr %4020, i64 0, i32 3
  %4045 = load ptr, ptr %4044, align 8, !tbaa !216
  %4046 = icmp eq ptr %4045, %3963
  br i1 %4046, label %4048, label %4047

4047:                                             ; preds = %4043
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6136, ptr noundef nonnull @.str.1) #24
  br label %4048

4048:                                             ; preds = %4047, %4043
  store ptr %3994, ptr %4044, align 8, !tbaa !216
  %4049 = getelementptr inbounds %struct.tree_exp, ptr %4020, i64 1
  %4050 = load ptr, ptr %4049, align 8, !tbaa !216
  %4051 = load i64, ptr %4050, align 8
  %4052 = trunc i64 %4051 to i16
  switch i16 %4052, label %4066 [
    i16 63, label %4053
    i16 64, label %4060
    i16 66, label %4060
  ]

4053:                                             ; preds = %4048
  %4054 = getelementptr inbounds %struct.tree_exp, ptr %4050, i64 1
  %4055 = load ptr, ptr %4054, align 8, !tbaa !216
  %4056 = icmp eq ptr %4055, %3963
  br i1 %4056, label %4057, label %4060

4057:                                             ; preds = %4053
  %4058 = getelementptr inbounds %struct.tree_exp, ptr %4050, i64 0, i32 3
  %4059 = load ptr, ptr %4058, align 8, !tbaa !216
  store ptr %4059, ptr %4054, align 8, !tbaa !216
  store ptr %3994, ptr %4058, align 8, !tbaa !216
  br label %4067

4060:                                             ; preds = %4048, %4053, %4048
  %4061 = getelementptr inbounds %struct.tree_exp, ptr %4050, i64 0, i32 3
  %4062 = load ptr, ptr %4061, align 8, !tbaa !216
  %4063 = icmp eq ptr %4062, %3963
  br i1 %4063, label %4065, label %4064

4064:                                             ; preds = %4060
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6153, ptr noundef nonnull @.str.1) #24
  br label %4065

4065:                                             ; preds = %4064, %4060
  store ptr %3994, ptr %4061, align 8, !tbaa !216
  br label %4067

4066:                                             ; preds = %4048
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6157, ptr noundef nonnull @.str.1) #24
  br label %4067

4067:                                             ; preds = %4066, %4065, %4057
  %4068 = getelementptr inbounds %struct.tree_exp, ptr %4050, i64 1
  %4069 = call i32 @gimplify_expr(ptr noundef nonnull %4068, ptr noundef nonnull %61, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %4070 = call i32 @llvm.smin.i32(i32 %4017, i32 %4069)
  br label %4072

4071:                                             ; preds = %4014
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6166, ptr noundef nonnull @.str.1) #24
  br label %4072

4072:                                             ; preds = %4071, %4067, %4033, %4023
  %4073 = phi i32 [ %4017, %4071 ], [ %4070, %4067 ], [ %4017, %4033 ], [ %4017, %4023 ]
  %4074 = icmp eq ptr %3994, %3963
  br i1 %4074, label %4075, label %4080

4075:                                             ; preds = %4072
  %4076 = load ptr, ptr %3926, align 8, !tbaa !216
  %4077 = getelementptr inbounds %struct.tree_vec, ptr %4076, i64 0, i32 1
  %4078 = load i32, ptr %4077, align 8, !tbaa !216
  %4079 = icmp sgt i32 %4078, 1
  br i1 %4079, label %4080, label %4133

4080:                                             ; preds = %4075, %4072
  %4081 = load ptr, ptr %3921, align 8, !tbaa !216
  %4082 = icmp eq ptr %4081, null
  br i1 %4082, label %4133, label %4083

4083:                                             ; preds = %4080, %4129
  %4084 = phi ptr [ %4131, %4129 ], [ %4081, %4080 ]
  %4085 = getelementptr inbounds %struct.tree_omp_clause, ptr %4084, i64 0, i32 2
  %4086 = load i32, ptr %4085, align 4, !tbaa !216
  %4087 = icmp eq i32 %4086, 4
  br i1 %4087, label %4088, label %4129

4088:                                             ; preds = %4083
  %4089 = getelementptr inbounds %struct.tree_omp_clause, ptr %4084, i64 0, i32 6
  %4090 = load ptr, ptr %4089, align 8, !tbaa !216
  %4091 = icmp eq ptr %4090, %3963
  br i1 %4091, label %4092, label %4129

4092:                                             ; preds = %4088
  %4093 = getelementptr inbounds %struct.tree_omp_clause, ptr %4084, i64 0, i32 4
  %4094 = load ptr, ptr %4093, align 8, !tbaa !216
  %4095 = icmp eq ptr %4094, null
  br i1 %4095, label %4096, label %4129

4096:                                             ; preds = %4092
  %4097 = load ptr, ptr %3940, align 8, !tbaa !216
  %4098 = getelementptr inbounds %struct.tree_vec, ptr %4097, i64 0, i32 2, i64 %3952
  %4099 = load ptr, ptr %4098, align 8, !tbaa !216
  %4100 = load i64, ptr %4099, align 8
  %4101 = and i64 %4100, 65535
  %4102 = icmp eq i64 %4101, 53
  br i1 %4102, label %4104, label %4103

4103:                                             ; preds = %4096
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6178, ptr noundef nonnull @.str.1) #24
  br label %4104

4104:                                             ; preds = %4103, %4096
  %4105 = getelementptr inbounds %struct.tree_exp, ptr %4099, i64 0, i32 3
  %4106 = load ptr, ptr %4105, align 8, !tbaa !216
  %4107 = icmp eq ptr %4106, %3994
  br i1 %4107, label %4109, label %4108

4108:                                             ; preds = %4104
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6179, ptr noundef nonnull @.str.1) #24
  br label %4109

4109:                                             ; preds = %4108, %4104
  %4110 = getelementptr inbounds %struct.tree_exp, ptr %4099, i64 1
  %4111 = load ptr, ptr %4110, align 8, !tbaa !216
  %4112 = load i64, ptr %4111, align 8
  %4113 = trunc i64 %4112 to i16
  switch i16 %4113, label %4114 [
    i16 63, label %4115
    i16 64, label %4115
    i16 66, label %4115
  ]

4114:                                             ; preds = %4109
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6183, ptr noundef nonnull @.str.1) #24
  br label %4115

4115:                                             ; preds = %4109, %4109, %4114, %4109
  %4116 = getelementptr inbounds %struct.tree_exp, ptr %4111, i64 0, i32 3
  %4117 = load ptr, ptr %4116, align 8, !tbaa !216
  %4118 = icmp eq ptr %4117, %3994
  br i1 %4118, label %4120, label %4119

4119:                                             ; preds = %4115
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6184, ptr noundef nonnull @.str.1) #24
  br label %4120

4120:                                             ; preds = %4119, %4115
  %4121 = load i64, ptr %4111, align 8
  %4122 = trunc i64 %4121 to i32
  %4123 = and i32 %4122, 65535
  %4124 = load ptr, ptr %3971, align 8, !tbaa !216
  %4125 = getelementptr inbounds %struct.tree_exp, ptr %4111, i64 1
  %4126 = load ptr, ptr %4125, align 8, !tbaa !216
  %4127 = call ptr @build2_stat(i32 noundef %4123, ptr noundef %4124, ptr noundef nonnull %3963, ptr noundef %4126) #24
  %4128 = call ptr @gimplify_assign(ptr noundef nonnull %3963, ptr noundef %4127, ptr noundef nonnull %4093) #24
  br label %4129

4129:                                             ; preds = %4120, %4092, %4088, %4083
  %4130 = getelementptr inbounds %struct.tree_common, ptr %4084, i64 0, i32 1
  %4131 = load ptr, ptr %4130, align 8, !tbaa !216
  %4132 = icmp eq ptr %4131, null
  br i1 %4132, label %4133, label %4083, !llvm.loop !578

4133:                                             ; preds = %4129, %4080, %4075
  %4134 = add nuw nsw i64 %3952, 1
  %4135 = load ptr, ptr %3926, align 8, !tbaa !216
  %4136 = getelementptr inbounds %struct.tree_vec, ptr %4135, i64 0, i32 1
  %4137 = load i32, ptr %4136, align 8, !tbaa !216
  %4138 = sext i32 %4137 to i64
  %4139 = icmp slt i64 %4134, %4138
  br i1 %4139, label %3951, label %4140, !llvm.loop !579

4140:                                             ; preds = %4133, %3946
  %4141 = phi i32 [ 1, %3946 ], [ %4073, %4133 ]
  %4142 = load ptr, ptr %3920, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46)
  store ptr %4142, ptr %46, align 8, !tbaa !205
  %4143 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %46, ptr noundef nonnull %60), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46)
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %3921)
  %4144 = load ptr, ptr %60, align 8, !tbaa !205
  %4145 = load ptr, ptr %3921, align 8, !tbaa !216
  %4146 = load ptr, ptr %3926, align 8, !tbaa !216
  %4147 = getelementptr inbounds %struct.tree_vec, ptr %4146, i64 0, i32 1
  %4148 = load i32, ptr %4147, align 8, !tbaa !216
  %4149 = sext i32 %4148 to i64
  %4150 = load ptr, ptr %61, align 8, !tbaa !205
  %4151 = call ptr @gimple_build_omp_for(ptr noundef %4144, ptr noundef %4145, i64 noundef %4149, ptr noundef %4150) #24
  %4152 = load ptr, ptr %3926, align 8, !tbaa !216
  %4153 = getelementptr inbounds %struct.tree_vec, ptr %4152, i64 0, i32 1
  %4154 = load i32, ptr %4153, align 8, !tbaa !216
  %4155 = icmp sgt i32 %4154, 0
  br i1 %4155, label %4156, label %4223

4156:                                             ; preds = %4140
  %4157 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %4151, i64 0, i32 2
  %4158 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %4151, i64 0, i32 3
  br label %4159

4159:                                             ; preds = %4156, %4214
  %4160 = phi i64 [ 0, %4156 ], [ %4217, %4214 ]
  %4161 = phi ptr [ %4152, %4156 ], [ %4218, %4214 ]
  %4162 = getelementptr inbounds %struct.tree_vec, ptr %4161, i64 0, i32 2, i64 %4160
  %4163 = load ptr, ptr %4162, align 8, !tbaa !216
  %4164 = getelementptr inbounds %struct.tree_exp, ptr %4163, i64 0, i32 3
  %4165 = load ptr, ptr %4164, align 8, !tbaa !216
  %4166 = load i64, ptr %4157, align 8, !tbaa !216
  %4167 = icmp ugt i64 %4166, %4160
  br i1 %4167, label %4169, label %4168

4168:                                             ; preds = %4159
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3475, ptr noundef nonnull @.str.1) #24
  br label %4169

4169:                                             ; preds = %4159, %4168
  %4170 = load ptr, ptr %4158, align 8, !tbaa !216
  %4171 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %4170, i64 %4160, i32 1
  store ptr %4165, ptr %4171, align 8, !tbaa !580
  %4172 = getelementptr inbounds %struct.tree_exp, ptr %4163, i64 1
  %4173 = load ptr, ptr %4172, align 8, !tbaa !216
  %4174 = load i64, ptr %4157, align 8, !tbaa !216
  %4175 = icmp ugt i64 %4174, %4160
  br i1 %4175, label %4177, label %4176

4176:                                             ; preds = %4169
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3508, ptr noundef nonnull @.str.1) #24
  br label %4177

4177:                                             ; preds = %4169, %4176
  %4178 = load ptr, ptr %4158, align 8, !tbaa !216
  %4179 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %4178, i64 %4160, i32 2
  store ptr %4173, ptr %4179, align 8, !tbaa !582
  %4180 = load ptr, ptr %3930, align 8, !tbaa !216
  %4181 = getelementptr inbounds %struct.tree_vec, ptr %4180, i64 0, i32 2, i64 %4160
  %4182 = load ptr, ptr %4181, align 8, !tbaa !216
  %4183 = load i64, ptr %4182, align 8
  %4184 = trunc i64 %4183 to i32
  %4185 = and i32 %4184, 65535
  %4186 = and i64 %4183, 65535
  %4187 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4186
  %4188 = load i32, ptr %4187, align 4, !tbaa !220
  %4189 = icmp eq i32 %4188, 5
  br i1 %4189, label %4191, label %4190

4190:                                             ; preds = %4177
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 4076, ptr noundef nonnull @.str.1) #24
  br label %4191

4191:                                             ; preds = %4190, %4177
  %4192 = load i64, ptr %4157, align 8, !tbaa !216
  %4193 = icmp ugt i64 %4192, %4160
  br i1 %4193, label %4195, label %4194

4194:                                             ; preds = %4191
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 4077, ptr noundef nonnull @.str.1) #24
  br label %4195

4195:                                             ; preds = %4191, %4194
  %4196 = load ptr, ptr %4158, align 8, !tbaa !216
  %4197 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %4196, i64 %4160
  store i32 %4185, ptr %4197, align 8, !tbaa !583
  %4198 = getelementptr inbounds %struct.tree_exp, ptr %4182, i64 1
  %4199 = load ptr, ptr %4198, align 8, !tbaa !216
  %4200 = load i64, ptr %4157, align 8, !tbaa !216
  %4201 = icmp ugt i64 %4200, %4160
  br i1 %4201, label %4203, label %4202

4202:                                             ; preds = %4195
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3541, ptr noundef nonnull @.str.1) #24
  br label %4203

4203:                                             ; preds = %4195, %4202
  %4204 = load ptr, ptr %4158, align 8, !tbaa !216
  %4205 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %4204, i64 %4160, i32 3
  store ptr %4199, ptr %4205, align 8, !tbaa !584
  %4206 = load ptr, ptr %3940, align 8, !tbaa !216
  %4207 = getelementptr inbounds %struct.tree_vec, ptr %4206, i64 0, i32 2, i64 %4160
  %4208 = load ptr, ptr %4207, align 8, !tbaa !216
  %4209 = getelementptr inbounds %struct.tree_exp, ptr %4208, i64 1
  %4210 = load ptr, ptr %4209, align 8, !tbaa !216
  %4211 = load i64, ptr %4157, align 8, !tbaa !216
  %4212 = icmp ugt i64 %4211, %4160
  br i1 %4212, label %4214, label %4213

4213:                                             ; preds = %4203
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3574, ptr noundef nonnull @.str.1) #24
  br label %4214

4214:                                             ; preds = %4203, %4213
  %4215 = load ptr, ptr %4158, align 8, !tbaa !216
  %4216 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %4215, i64 %4160, i32 4
  store ptr %4210, ptr %4216, align 8, !tbaa !585
  %4217 = add nuw nsw i64 %4160, 1
  %4218 = load ptr, ptr %3926, align 8, !tbaa !216
  %4219 = getelementptr inbounds %struct.tree_vec, ptr %4218, i64 0, i32 1
  %4220 = load i32, ptr %4219, align 8, !tbaa !216
  %4221 = sext i32 %4220 to i64
  %4222 = icmp slt i64 %4217, %4221
  br i1 %4222, label %4159, label %4223, !llvm.loop !586

4223:                                             ; preds = %4214, %4140
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %4151)
  %4224 = icmp eq i32 %4141, 1
  %4225 = select i1 %4224, i32 1, i32 -2
  br label %4226

4226:                                             ; preds = %3993, %4223
  %4227 = phi i32 [ %4225, %4223 ], [ -2, %3993 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %61) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %60) #24
  br label %4420

4228:                                             ; preds = %210, %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %59) #24
  store ptr null, ptr %59, align 8, !tbaa !205
  %4229 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %4230 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %4230, ptr noundef nonnull %145, i32 noundef 0)
  %4231 = load ptr, ptr %4229, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44)
  store ptr %4231, ptr %44, align 8, !tbaa !205
  %4232 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %44, ptr noundef nonnull %59), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44)
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %4230)
  %4233 = load i64, ptr %211, align 8
  %4234 = trunc i64 %4233 to i16
  switch i16 %4234, label %4243 [
    i16 156, label %4235
    i16 157, label %4239
  ]

4235:                                             ; preds = %4228
  %4236 = load ptr, ptr %59, align 8, !tbaa !205
  %4237 = load ptr, ptr %4230, align 8, !tbaa !216
  %4238 = call ptr @gimple_build_omp_sections(ptr noundef %4236, ptr noundef %4237) #24
  br label %4244

4239:                                             ; preds = %4228
  %4240 = load ptr, ptr %59, align 8, !tbaa !205
  %4241 = load ptr, ptr %4230, align 8, !tbaa !216
  %4242 = call ptr @gimple_build_omp_single(ptr noundef %4240, ptr noundef %4241) #24
  br label %4244

4243:                                             ; preds = %4228
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6236, ptr noundef nonnull @.str.1) #24
  unreachable

4244:                                             ; preds = %4235, %4239
  %4245 = phi ptr [ %4238, %4235 ], [ %4242, %4239 ]
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %4245)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %59) #24
  br label %4420

4246:                                             ; preds = %210, %210, %210, %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %95) #24
  store ptr null, ptr %95, align 8, !tbaa !205
  %4247 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %4248 = load ptr, ptr %4247, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %58)
  store ptr %4248, ptr %58, align 8, !tbaa !205
  %4249 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %58, ptr noundef nonnull %95), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %58)
  %4250 = load ptr, ptr %0, align 8, !tbaa !205
  %4251 = load i64, ptr %4250, align 8
  %4252 = trunc i64 %4251 to i16
  switch i16 %4252, label %4267 [
    i16 158, label %4253
    i16 159, label %4256
    i16 160, label %4259
    i16 161, label %4262
  ]

4253:                                             ; preds = %4246
  %4254 = load ptr, ptr %95, align 8, !tbaa !205
  %4255 = call ptr @gimple_build_omp_section(ptr noundef %4254) #24
  br label %4268

4256:                                             ; preds = %4246
  %4257 = load ptr, ptr %95, align 8, !tbaa !205
  %4258 = call ptr @gimple_build_omp_master(ptr noundef %4257) #24
  br label %4268

4259:                                             ; preds = %4246
  %4260 = load ptr, ptr %95, align 8, !tbaa !205
  %4261 = call ptr @gimple_build_omp_ordered(ptr noundef %4260) #24
  br label %4268

4262:                                             ; preds = %4246
  %4263 = load ptr, ptr %95, align 8, !tbaa !205
  %4264 = getelementptr inbounds %struct.tree_exp, ptr %4250, i64 1
  %4265 = load ptr, ptr %4264, align 8, !tbaa !216
  %4266 = call ptr @gimple_build_omp_critical(ptr noundef %4263, ptr noundef %4265) #24
  br label %4268

4267:                                             ; preds = %4246
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7010, ptr noundef nonnull @.str.1) #24
  br label %4268

4268:                                             ; preds = %4267, %4262, %4259, %4256, %4253
  %4269 = phi ptr [ %191, %4267 ], [ %4266, %4262 ], [ %4261, %4259 ], [ %4258, %4256 ], [ %4255, %4253 ]
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %4269)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %95) #24
  br label %4420

4270:                                             ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %56) #24
  %4271 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %4272 = load ptr, ptr %4271, align 8, !tbaa !216
  store ptr %4272, ptr %56, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %57) #24
  %4273 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %4274 = load ptr, ptr %4273, align 8, !tbaa !216
  store ptr %4274, ptr %57, align 8, !tbaa !205
  %4275 = getelementptr inbounds %struct.tree_common, ptr %4272, i64 0, i32 2
  %4276 = load ptr, ptr %4275, align 8, !tbaa !216
  %4277 = getelementptr inbounds %struct.tree_common, ptr %4276, i64 0, i32 2
  %4278 = load ptr, ptr %4277, align 8, !tbaa !216
  %4279 = getelementptr inbounds %struct.tree_type, ptr %4278, i64 0, i32 16
  %4280 = load ptr, ptr %4279, align 8, !tbaa !216
  %4281 = call ptr @create_tmp_var(ptr noundef %4280, ptr noundef null)
  %4282 = load i64, ptr %4280, align 8
  %4283 = trunc i64 %4282 to i32
  %4284 = and i32 %4283, 65535
  %4285 = add nsw i32 %4284, -13
  %4286 = icmp ult i32 %4285, 2
  br i1 %4286, label %4287, label %4291

4287:                                             ; preds = %4270
  %4288 = getelementptr inbounds %struct.tree_decl_common, ptr %4281, i64 0, i32 2
  %4289 = load i64, ptr %4288, align 8
  %4290 = or i64 %4289, 134217728
  store i64 %4290, ptr %4288, align 8
  br label %4291

4291:                                             ; preds = %4287, %4270
  %4292 = load ptr, ptr %56, align 8, !tbaa !205
  %4293 = call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %57, ptr noundef nonnull %145, ptr noundef %4292, ptr noundef %4281)
  %4294 = icmp slt i32 %4293, 0
  br i1 %4294, label %4306, label %4295

4295:                                             ; preds = %4291
  %4296 = call i32 @gimplify_expr(ptr noundef nonnull %56, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %4297 = icmp eq i32 %4296, 1
  br i1 %4297, label %4298, label %4306

4298:                                             ; preds = %4295
  %4299 = load ptr, ptr %56, align 8, !tbaa !205
  %4300 = call ptr @gimple_build_omp_atomic_load(ptr noundef %4281, ptr noundef %4299) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %4300)
  %4301 = call i32 @gimplify_expr(ptr noundef nonnull %57, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %4302 = icmp eq i32 %4301, 1
  br i1 %4302, label %4303, label %4306

4303:                                             ; preds = %4298
  %4304 = load ptr, ptr %57, align 8, !tbaa !205
  %4305 = call ptr @gimple_build_omp_atomic_store(ptr noundef %4304) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %145, ptr noundef %4305)
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %4306

4306:                                             ; preds = %4291, %4295, %4298, %4303
  %4307 = phi i32 [ 1, %4303 ], [ -2, %4291 ], [ -2, %4295 ], [ -2, %4298 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %57) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %56) #24
  br label %4420

4308:                                             ; preds = %210
  %4309 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1
  %4310 = load ptr, ptr %4309, align 8, !tbaa !216
  %4311 = load i64, ptr %4310, align 8
  %4312 = and i64 %4311, 65535
  %4313 = icmp eq i64 %4312, 23
  br i1 %4313, label %4314, label %4330, !prof !587

4314:                                             ; preds = %4308
  %4315 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 66), align 4, !tbaa !220
  %4316 = add i32 %4315, -4
  %4317 = icmp ult i32 %4316, 7
  br i1 %4317, label %4318, label %4321

4318:                                             ; preds = %4314
  %4319 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 1
  %4320 = load i32, ptr %4319, align 8, !tbaa !216
  br label %4321

4321:                                             ; preds = %4314, %4318
  %4322 = phi i32 [ %4320, %4318 ], [ 0, %4314 ]
  %4323 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %4324 = load ptr, ptr %4323, align 8, !tbaa !216
  %4325 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %4326 = load ptr, ptr %4325, align 8, !tbaa !216
  %4327 = call ptr @maybe_fold_offset_to_address(i32 noundef %4322, ptr noundef %4324, ptr noundef nonnull %4310, ptr noundef %4326) #24
  store ptr %4327, ptr %87, align 8, !tbaa !205
  %4328 = icmp eq ptr %4327, null
  br i1 %4328, label %4330, label %4329

4329:                                             ; preds = %4321
  store ptr %4327, ptr %0, align 8, !tbaa !205
  br label %4420

4330:                                             ; preds = %4321, %4308
  %4331 = load ptr, ptr %0, align 8, !tbaa !205
  %4332 = getelementptr inbounds %struct.tree_exp, ptr %4331, i64 0, i32 3
  %4333 = load ptr, ptr %4332, align 8, !tbaa !216
  %4334 = load i64, ptr %4333, align 8
  %4335 = and i64 %4334, 65535
  %4336 = icmp eq i64 %4335, 116
  br i1 %4336, label %4337, label %4369, !prof !587

4337:                                             ; preds = %4330
  %4338 = getelementptr inbounds %struct.tree_exp, ptr %4331, i64 1
  %4339 = load ptr, ptr %4338, align 8, !tbaa !216
  %4340 = load i64, ptr %4339, align 8
  %4341 = and i64 %4340, 65535
  %4342 = icmp eq i64 %4341, 23
  br i1 %4342, label %4343, label %4369

4343:                                             ; preds = %4337
  %4344 = getelementptr inbounds %struct.tree_exp, ptr %4333, i64 0, i32 3
  %4345 = load ptr, ptr %4344, align 8, !tbaa !216
  %4346 = getelementptr inbounds %struct.tree_common, ptr %4345, i64 0, i32 2
  %4347 = load ptr, ptr %4346, align 8, !tbaa !216
  %4348 = load i64, ptr %4347, align 8
  %4349 = trunc i64 %4348 to i16
  switch i16 %4349, label %4369 [
    i16 10, label %4350
    i16 12, label %4350
  ]

4350:                                             ; preds = %4343, %4343
  %4351 = load i64, ptr %4331, align 8
  %4352 = and i64 %4351, 65535
  %4353 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4352
  %4354 = load i32, ptr %4353, align 4, !tbaa !220
  %4355 = add i32 %4354, -4
  %4356 = icmp ult i32 %4355, 7
  br i1 %4356, label %4357, label %4360

4357:                                             ; preds = %4350
  %4358 = getelementptr inbounds %struct.tree_exp, ptr %4331, i64 0, i32 1
  %4359 = load i32, ptr %4358, align 8, !tbaa !216
  br label %4360

4360:                                             ; preds = %4350, %4357
  %4361 = phi i32 [ %4359, %4357 ], [ 0, %4350 ]
  %4362 = call ptr @maybe_fold_offset_to_address(i32 noundef %4361, ptr noundef %4345, ptr noundef nonnull %4339, ptr noundef nonnull %4347) #24
  store ptr %4362, ptr %87, align 8, !tbaa !205
  %4363 = icmp eq ptr %4362, null
  br i1 %4363, label %4369, label %4364

4364:                                             ; preds = %4360
  %4365 = load ptr, ptr %0, align 8, !tbaa !205
  %4366 = getelementptr inbounds %struct.tree_common, ptr %4365, i64 0, i32 2
  %4367 = load ptr, ptr %4366, align 8, !tbaa !216
  %4368 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4367, ptr noundef nonnull %4362) #24
  store ptr %4368, ptr %0, align 8, !tbaa !205
  br label %4420

4369:                                             ; preds = %4360, %4343, %4330, %4337, %210
  %4370 = load ptr, ptr %0, align 8, !tbaa !205
  %4371 = load i64, ptr %4370, align 8
  %4372 = and i64 %4371, 65535
  %4373 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4372
  %4374 = load i32, ptr %4373, align 4, !tbaa !220
  switch i32 %4374, label %4411 [
    i32 5, label %4375
    i32 6, label %4400
    i32 7, label %4403
    i32 3, label %4420
    i32 1, label %4420
  ], !prof !588

4375:                                             ; preds = %4369
  %4376 = getelementptr inbounds %struct.tree_exp, ptr %4370, i64 1
  %4377 = load ptr, ptr %4376, align 8, !tbaa !216
  %4378 = getelementptr inbounds %struct.tree_common, ptr %4377, i64 0, i32 2
  %4379 = load ptr, ptr %4378, align 8, !tbaa !216
  %4380 = load i64, ptr %4379, align 8
  %4381 = trunc i64 %4380 to i32
  %4382 = and i32 %4381, 65535
  %4383 = add nsw i32 %4382, -15
  %4384 = icmp ult i32 %4383, 4
  br i1 %4384, label %4385, label %4403, !prof !589

4385:                                             ; preds = %4375
  %4386 = and i64 %4380, 65535
  %4387 = icmp eq i64 %4386, 14
  br i1 %4387, label %4388, label %4390

4388:                                             ; preds = %4385
  %4389 = call i32 @vector_type_mode(ptr noundef nonnull %4379) #24
  br label %4395

4390:                                             ; preds = %4385
  %4391 = getelementptr inbounds %struct.tree_type, ptr %4379, i64 0, i32 6
  %4392 = load i32, ptr %4391, align 4
  %4393 = lshr i32 %4392, 16
  %4394 = and i32 %4393, 255
  br label %4395

4395:                                             ; preds = %4390, %4388
  %4396 = phi i32 [ %4389, %4388 ], [ %4394, %4390 ]
  %4397 = icmp eq i32 %4396, 1
  br i1 %4397, label %4399, label %4398

4398:                                             ; preds = %4395
  call fastcc void @gimplify_scalar_mode_aggregate_compare(ptr noundef nonnull %0)
  br label %4417

4399:                                             ; preds = %4395
  call fastcc void @gimplify_variable_sized_compare(ptr noundef nonnull %0)
  br label %4417

4400:                                             ; preds = %4369
  %4401 = getelementptr inbounds %struct.tree_exp, ptr %4370, i64 0, i32 3
  %4402 = call i32 @gimplify_expr(ptr noundef nonnull %4401, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %4417

4403:                                             ; preds = %4375, %4411, %4416, %4369
  %4404 = load ptr, ptr %0, align 8, !tbaa !205
  %4405 = getelementptr inbounds %struct.tree_exp, ptr %4404, i64 0, i32 3
  %4406 = call i32 @gimplify_expr(ptr noundef nonnull %4405, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %4407 = load ptr, ptr %0, align 8, !tbaa !205
  %4408 = getelementptr inbounds %struct.tree_exp, ptr %4407, i64 1
  %4409 = call i32 @gimplify_expr(ptr noundef nonnull %4408, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %4410 = call i32 @llvm.smin.i32(i32 %4406, i32 %4409)
  br label %4417

4411:                                             ; preds = %4369
  %4412 = trunc i64 %4371 to i32
  %4413 = and i32 %4412, 65535
  %4414 = add nsw i32 %4413, -93
  %4415 = icmp ult i32 %4414, 3
  br i1 %4415, label %4403, label %4416, !prof !590

4416:                                             ; preds = %4411
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7106, ptr noundef nonnull @.str.1) #24
  br label %4403

4417:                                             ; preds = %4398, %4399, %4403, %4400
  %4418 = phi i32 [ %4410, %4403 ], [ %4402, %4400 ], [ 0, %4399 ], [ 0, %4398 ]
  %4419 = load ptr, ptr %0, align 8, !tbaa !205
  call void @recalculate_side_effects(ptr noundef %4419) #24
  br label %4420

4420:                                             ; preds = %4369, %4369, %3869, %3808, %3805, %3801, %3797, %3792, %210, %210, %210, %210, %210, %210, %210, %3416, %3304, %3293, %2643, %2588, %2584, %2569, %2372, %2364, %2323, %2315, %2306, %2255, %2251, %2095, %2081, %2076, %2060, %1863, %1860, %1826, %1803, %588, %586, %3872, %3875, %3420, %2564, %2387, %4417, %3447, %3449, %3156, %2566, %2555, %2547, %1519, %1522, %1141, %1144, %4364, %4329, %4306, %4268, %4244, %4226, %3915, %3903, %3764, %3762, %3739, %3729, %3712, %3703, %3701, %3634, %3563, %3518, %3514, %3482, %3479, %3292, %3239, %3191, %3190, %3142, %3140, %2879, %2857, %2559, %2550, %2400, %2376, %2274, %2271, %2256, %1569, %1526, %299
  %4421 = phi ptr [ %191, %4417 ], [ %191, %4329 ], [ %191, %4364 ], [ %191, %4306 ], [ %4269, %4268 ], [ %191, %4244 ], [ %191, %4226 ], [ %191, %3915 ], [ %191, %3903 ], [ %191, %3764 ], [ %191, %3762 ], [ %191, %3739 ], [ %191, %3729 ], [ %191, %3712 ], [ %191, %3703 ], [ %191, %3701 ], [ %191, %3634 ], [ %191, %3563 ], [ %191, %3518 ], [ %191, %3514 ], [ %191, %3482 ], [ %191, %3479 ], [ %191, %3447 ], [ %191, %3449 ], [ %191, %3292 ], [ %191, %3239 ], [ %191, %3191 ], [ %191, %3156 ], [ %191, %3190 ], [ %191, %3142 ], [ %191, %3140 ], [ %191, %2879 ], [ %191, %2857 ], [ %191, %2566 ], [ %191, %2559 ], [ %191, %2555 ], [ %191, %2550 ], [ %191, %2400 ], [ %191, %2547 ], [ %191, %2376 ], [ %191, %2271 ], [ %191, %2274 ], [ %191, %2256 ], [ %191, %1569 ], [ %191, %1526 ], [ %191, %1522 ], [ %191, %1519 ], [ %191, %1144 ], [ %191, %1141 ], [ %191, %299 ], [ %191, %2387 ], [ %191, %2564 ], [ %191, %3420 ], [ %191, %3875 ], [ %191, %3872 ], [ %191, %586 ], [ %191, %588 ], [ %191, %1803 ], [ %191, %1826 ], [ %191, %1860 ], [ %191, %1863 ], [ %191, %2060 ], [ %191, %2076 ], [ %191, %2081 ], [ %191, %2095 ], [ %191, %2251 ], [ %191, %2255 ], [ %191, %2306 ], [ %191, %2315 ], [ %191, %2323 ], [ %191, %2364 ], [ %191, %2372 ], [ %191, %2569 ], [ %191, %2584 ], [ %191, %2588 ], [ %191, %2643 ], [ %191, %3293 ], [ %191, %3304 ], [ %191, %3416 ], [ %191, %210 ], [ %191, %210 ], [ %191, %210 ], [ %191, %210 ], [ %191, %210 ], [ %191, %210 ], [ %191, %210 ], [ %191, %3792 ], [ %191, %3797 ], [ %191, %3801 ], [ %191, %3805 ], [ %191, %3808 ], [ %191, %3869 ], [ %191, %4369 ], [ %191, %4369 ]
  %4422 = phi i32 [ %4418, %4417 ], [ 0, %4329 ], [ 0, %4364 ], [ %4307, %4306 ], [ 1, %4268 ], [ 1, %4244 ], [ %4227, %4226 ], [ 1, %3915 ], [ 1, %3903 ], [ 0, %3764 ], [ %3763, %3762 ], [ 1, %3739 ], [ %3738, %3729 ], [ 1, %3712 ], [ 1, %3703 ], [ %3702, %3701 ], [ %3637, %3634 ], [ 1, %3563 ], [ %3519, %3518 ], [ %3516, %3514 ], [ %3493, %3482 ], [ %3480, %3479 ], [ 0, %3447 ], [ 0, %3449 ], [ 1, %3292 ], [ 1, %3239 ], [ 1, %3191 ], [ -2, %3156 ], [ %3160, %3190 ], [ 0, %3142 ], [ %3141, %3140 ], [ 1, %2879 ], [ %2859, %2857 ], [ 0, %2566 ], [ %2562, %2559 ], [ 0, %2555 ], [ %2553, %2550 ], [ 0, %2400 ], [ 0, %2547 ], [ %2377, %2376 ], [ 0, %2271 ], [ %2276, %2274 ], [ 0, %2256 ], [ 0, %1569 ], [ %1529, %1526 ], [ %1520, %1522 ], [ %1520, %1519 ], [ %1142, %1144 ], [ %1142, %1141 ], [ %300, %299 ], [ 1, %2387 ], [ 1, %2564 ], [ 1, %3420 ], [ 1, %3875 ], [ 1, %3872 ], [ %587, %586 ], [ %587, %588 ], [ %1804, %1803 ], [ 1, %1826 ], [ -2, %1860 ], [ -2, %1863 ], [ %2061, %2060 ], [ 1, %2076 ], [ 1, %2081 ], [ 1, %2095 ], [ 0, %2251 ], [ 1, %2255 ], [ 0, %2306 ], [ 0, %2315 ], [ -2, %2323 ], [ %2324, %2364 ], [ %2324, %2372 ], [ -2, %2569 ], [ 1, %2584 ], [ 1, %2588 ], [ 1, %2643 ], [ -2, %3293 ], [ 1, %3304 ], [ 1, %3416 ], [ 1, %210 ], [ 1, %210 ], [ 1, %210 ], [ 1, %210 ], [ 1, %210 ], [ 1, %210 ], [ 1, %210 ], [ -2, %3792 ], [ -2, %3797 ], [ -2, %3801 ], [ 1, %3805 ], [ 1, %3808 ], [ 0, %3869 ], [ 1, %4369 ], [ 1, %4369 ]
  %4423 = icmp eq i32 %4422, 0
  br i1 %4423, label %4424, label %4430, !prof !591

4424:                                             ; preds = %4420
  %4425 = load ptr, ptr %0, align 8, !tbaa !205
  %4426 = icmp eq ptr %4425, null
  %4427 = icmp eq ptr %4425, %193
  %4428 = or i1 %4426, %4427
  %4429 = zext i1 %4428 to i32
  br label %4430

4430:                                             ; preds = %4424, %4420, %208
  %4431 = phi ptr [ %191, %208 ], [ %4421, %4420 ], [ %4421, %4424 ]
  %4432 = phi i32 [ 0, %208 ], [ %4422, %4420 ], [ %4429, %4424 ]
  %4433 = icmp eq i32 %4432, 0
  br i1 %4433, label %190, label %4434, !prof !592, !llvm.loop !593

4434:                                             ; preds = %4430, %202, %190, %196, %205
  %4435 = phi i32 [ 0, %205 ], [ -2, %196 ], [ -2, %190 ], [ %204, %202 ], [ %4432, %4430 ]
  switch i32 %4435, label %4439 [
    i32 -2, label %4436
    i32 -1, label %4438
  ], !prof !594

4436:                                             ; preds = %4434
  br i1 %99, label %4437, label %4773

4437:                                             ; preds = %4436
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %4773

4438:                                             ; preds = %4434
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7133, ptr noundef nonnull @.str.1) #24
  br label %4439

4439:                                             ; preds = %4434, %4438
  br i1 %189, label %4440, label %4496, !prof !595

4440:                                             ; preds = %4439
  %4441 = load ptr, ptr %0, align 8, !tbaa !205
  %4442 = icmp eq ptr %4441, null
  br i1 %4442, label %4496, label %4443, !prof !596

4443:                                             ; preds = %4440
  %4444 = call zeroext i8 @is_gimple_stmt(ptr noundef nonnull %4441) #24
  %4445 = icmp eq i8 %4444, 0
  br i1 %4445, label %4446, label %4496, !prof !597

4446:                                             ; preds = %4443
  %4447 = load ptr, ptr %0, align 8, !tbaa !205
  %4448 = load i64, ptr %4447, align 8
  %4449 = and i64 %4448, 65536
  %4450 = icmp eq i64 %4449, 0
  br i1 %4450, label %4495, label %4451, !prof !598

4451:                                             ; preds = %4446
  %4452 = and i64 %4448, 524288
  %4453 = icmp eq i64 %4452, 0
  br i1 %4453, label %4454, label %4466

4454:                                             ; preds = %4451
  %4455 = trunc i64 %4448 to i16
  switch i16 %4455, label %4465 [
    i16 41, label %4456
    i16 43, label %4456
    i16 44, label %4456
    i16 118, label %4456
    i16 45, label %4459
    i16 46, label %4459
  ]

4456:                                             ; preds = %4454, %4454, %4454, %4454
  %4457 = getelementptr inbounds %struct.tree_exp, ptr %4447, i64 0, i32 3
  %4458 = call i32 @gimplify_expr(ptr noundef nonnull %4457, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef %3, i32 noundef 0)
  br label %4495

4459:                                             ; preds = %4454, %4454
  %4460 = getelementptr inbounds %struct.tree_exp, ptr %4447, i64 0, i32 3
  %4461 = call i32 @gimplify_expr(ptr noundef nonnull %4460, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef %3, i32 noundef 0)
  %4462 = load ptr, ptr %0, align 8, !tbaa !205
  %4463 = getelementptr inbounds %struct.tree_exp, ptr %4462, i64 1
  %4464 = call i32 @gimplify_expr(ptr noundef nonnull %4463, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef %3, i32 noundef 0)
  br label %4495

4465:                                             ; preds = %4454
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7168, ptr noundef nonnull @.str.1) #24
  br label %4495

4466:                                             ; preds = %4451
  %4467 = getelementptr inbounds %struct.tree_common, ptr %4447, i64 0, i32 2
  %4468 = load ptr, ptr %4467, align 8, !tbaa !216
  %4469 = getelementptr inbounds %struct.tree_type, ptr %4468, i64 0, i32 2
  %4470 = load ptr, ptr %4469, align 8, !tbaa !216
  %4471 = icmp eq ptr %4470, null
  br i1 %4471, label %4495, label %4472

4472:                                             ; preds = %4466
  %4473 = load i64, ptr %4468, align 8
  %4474 = and i64 %4473, 65535
  %4475 = icmp eq i64 %4474, 14
  br i1 %4475, label %4476, label %4478

4476:                                             ; preds = %4472
  %4477 = call i32 @vector_type_mode(ptr noundef nonnull %4468) #24
  br label %4483

4478:                                             ; preds = %4472
  %4479 = getelementptr inbounds %struct.tree_type, ptr %4468, i64 0, i32 6
  %4480 = load i32, ptr %4479, align 4
  %4481 = lshr i32 %4480, 16
  %4482 = and i32 %4481, 255
  br label %4483

4483:                                             ; preds = %4478, %4476
  %4484 = phi i32 [ %4477, %4476 ], [ %4482, %4478 ]
  %4485 = icmp eq i32 %4484, 1
  br i1 %4485, label %4495, label %4486

4486:                                             ; preds = %4483
  %4487 = load ptr, ptr %0, align 8, !tbaa !205
  %4488 = getelementptr inbounds %struct.tree_common, ptr %4487, i64 0, i32 2
  %4489 = load ptr, ptr %4488, align 8, !tbaa !216
  %4490 = getelementptr inbounds %struct.tree_type, ptr %4489, i64 0, i32 16
  %4491 = load ptr, ptr %4490, align 8, !tbaa !216
  %4492 = call ptr @create_tmp_var_raw(ptr noundef %4491, ptr noundef nonnull @.str.5)
  call void @gimple_add_tmp_var(ptr noundef %4492)
  %4493 = load ptr, ptr %0, align 8, !tbaa !205
  %4494 = call ptr @gimplify_assign(ptr noundef %4492, ptr noundef %4493, ptr noundef nonnull %145) #24
  br label %4495

4495:                                             ; preds = %4466, %4483, %4456, %4459, %4465, %4446, %4486
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %4496

4496:                                             ; preds = %4495, %4443, %4440, %4439
  %4497 = or i1 %99, %189
  br i1 %4497, label %4498, label %4577, !prof !595

4498:                                             ; preds = %4496
  store ptr null, ptr %0, align 8, !tbaa !205
  %4499 = load ptr, ptr %88, align 8, !tbaa !205
  %4500 = icmp eq ptr %4499, null
  br i1 %4500, label %4504, label %4501, !prof !356

4501:                                             ; preds = %4498
  %4502 = load ptr, ptr %4499, align 8, !tbaa !274
  %4503 = icmp eq ptr %4502, null
  br i1 %4503, label %4504, label %4510, !prof !356

4504:                                             ; preds = %4498, %4501
  %4505 = load ptr, ptr %89, align 8, !tbaa !205
  %4506 = icmp eq ptr %4505, null
  br i1 %4506, label %4513, label %4507, !prof !356

4507:                                             ; preds = %4504
  %4508 = load ptr, ptr %4505, align 8, !tbaa !274
  %4509 = icmp eq ptr %4508, null
  br i1 %4509, label %4513, label %4510, !prof !356

4510:                                             ; preds = %4507, %4501
  %4511 = load ptr, ptr %89, align 8, !tbaa !205
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %88, ptr noundef %4511)
  %4512 = load ptr, ptr %88, align 8, !tbaa !205
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %145, ptr noundef %4512)
  br label %4513

4513:                                             ; preds = %4504, %4510, %4507
  %4514 = load ptr, ptr %145, align 8, !tbaa !205
  %4515 = icmp eq ptr %4514, null
  br i1 %4515, label %4545, label %4516, !prof !599

4516:                                             ; preds = %4513
  %4517 = load ptr, ptr %4514, align 8, !tbaa !274
  %4518 = icmp eq ptr %4517, null
  br i1 %4518, label %4545, label %4519, !prof !600

4519:                                             ; preds = %4516
  %4520 = load i32, ptr @input_location, align 4, !tbaa !220
  br i1 %155, label %4524, label %4521, !prof !601

4521:                                             ; preds = %4519
  %4522 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %154, i64 0, i32 2
  %4523 = load ptr, ptr %4522, align 8, !tbaa !307
  br label %4524

4524:                                             ; preds = %4519, %4521
  %4525 = phi ptr [ %4523, %4521 ], [ %4517, %4519 ]
  %4526 = icmp eq ptr %4525, null
  br i1 %4526, label %4545, label %4527, !prof !602

4527:                                             ; preds = %4524, %4541
  %4528 = phi ptr [ %4543, %4541 ], [ %4525, %4524 ]
  %4529 = load ptr, ptr %4528, align 8, !tbaa !275
  %4530 = getelementptr inbounds %struct.gimple_statement_base, ptr %4529, i64 0, i32 2
  %4531 = load i32, ptr %4530, align 8, !tbaa !216
  %4532 = icmp eq i32 %4531, 0
  br i1 %4532, label %4533, label %4541, !prof !603

4533:                                             ; preds = %4527
  %4534 = load i32, ptr %4529, align 8
  %4535 = and i32 %4534, 2048
  %4536 = icmp ne i32 %4535, 0
  %4537 = and i32 %4534, 255
  %4538 = icmp eq i32 %4537, 4
  %4539 = or i1 %4536, %4538
  br i1 %4539, label %4541, label %4540, !prof !604

4540:                                             ; preds = %4533
  store i32 %4520, ptr %4530, align 8, !tbaa !216
  br label %4541

4541:                                             ; preds = %4540, %4533, %4527
  %4542 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4528, i64 0, i32 2
  %4543 = load ptr, ptr %4542, align 8, !tbaa !307
  %4544 = icmp eq ptr %4543, null
  br i1 %4544, label %4545, label %4527, !prof !605, !llvm.loop !606

4545:                                             ; preds = %4541, %4524, %4513, %4516
  %4546 = load ptr, ptr %147, align 8, !tbaa !205
  %4547 = icmp eq ptr %4546, null
  br i1 %4547, label %4773, label %4548, !prof !356

4548:                                             ; preds = %4545
  %4549 = load ptr, ptr %4546, align 8, !tbaa !274
  %4550 = icmp eq ptr %4549, null
  br i1 %4550, label %4773, label %4551

4551:                                             ; preds = %4548
  %4552 = load i32, ptr @input_location, align 4, !tbaa !220
  br i1 %163, label %4556, label %4553

4553:                                             ; preds = %4551
  %4554 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %162, i64 0, i32 2
  %4555 = load ptr, ptr %4554, align 8, !tbaa !307
  br label %4556

4556:                                             ; preds = %4551, %4553
  %4557 = phi ptr [ %4555, %4553 ], [ %4549, %4551 ]
  %4558 = icmp eq ptr %4557, null
  br i1 %4558, label %4773, label %4559

4559:                                             ; preds = %4556, %4573
  %4560 = phi ptr [ %4575, %4573 ], [ %4557, %4556 ]
  %4561 = load ptr, ptr %4560, align 8, !tbaa !275
  %4562 = getelementptr inbounds %struct.gimple_statement_base, ptr %4561, i64 0, i32 2
  %4563 = load i32, ptr %4562, align 8, !tbaa !216
  %4564 = icmp eq i32 %4563, 0
  br i1 %4564, label %4565, label %4573

4565:                                             ; preds = %4559
  %4566 = load i32, ptr %4561, align 8
  %4567 = and i32 %4566, 2048
  %4568 = icmp ne i32 %4567, 0
  %4569 = and i32 %4566, 255
  %4570 = icmp eq i32 %4569, 4
  %4571 = or i1 %4568, %4570
  br i1 %4571, label %4573, label %4572

4572:                                             ; preds = %4565
  store i32 %4552, ptr %4562, align 8, !tbaa !216
  br label %4573

4573:                                             ; preds = %4572, %4565, %4559
  %4574 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4560, i64 0, i32 2
  %4575 = load ptr, ptr %4574, align 8, !tbaa !307
  %4576 = icmp eq ptr %4575, null
  br i1 %4576, label %4773, label %4559, !llvm.loop !606

4577:                                             ; preds = %4496
  %4578 = load ptr, ptr %89, align 8, !tbaa !205
  %4579 = icmp eq ptr %4578, null
  br i1 %4579, label %4583, label %4580, !prof !607

4580:                                             ; preds = %4577
  %4581 = load ptr, ptr %4578, align 8, !tbaa !274
  %4582 = icmp eq ptr %4581, null
  br i1 %4582, label %4583, label %4587

4583:                                             ; preds = %4577, %4580
  %4584 = load ptr, ptr %0, align 8, !tbaa !205
  %4585 = call zeroext i8 %3(ptr noundef %4584) #24, !prof !608
  %4586 = icmp eq i8 %4585, 0
  br i1 %4586, label %4587, label %4773, !prof !609

4587:                                             ; preds = %4583, %4580
  %4588 = icmp ne i32 %188, 0
  br i1 %4588, label %4589, label %4610, !prof !287

4589:                                             ; preds = %4587
  %4590 = load ptr, ptr %89, align 8, !tbaa !205
  %4591 = icmp eq ptr %4590, null
  br i1 %4591, label %4595, label %4592

4592:                                             ; preds = %4589
  %4593 = load ptr, ptr %4590, align 8, !tbaa !274
  %4594 = icmp eq ptr %4593, null
  br i1 %4594, label %4595, label %4610

4595:                                             ; preds = %4589, %4592
  %4596 = load ptr, ptr %0, align 8, !tbaa !205
  %4597 = call zeroext i8 @is_gimple_addressable(ptr noundef %4596) #24
  %4598 = icmp eq i8 %4597, 0
  br i1 %4598, label %4610, label %4599

4599:                                             ; preds = %4595
  %4600 = load i32, ptr @input_location, align 4, !tbaa !220
  %4601 = load ptr, ptr %0, align 8, !tbaa !205
  %4602 = call ptr @build_fold_addr_expr_loc(i32 noundef %4600, ptr noundef %4601) #24
  store ptr %4602, ptr %87, align 8, !tbaa !205
  %4603 = call i32 @gimplify_expr(ptr noundef nonnull %87, ptr noundef nonnull %145, ptr noundef nonnull %147, ptr noundef nonnull @is_gimple_reg, i32 noundef 1)
  %4604 = load ptr, ptr %87, align 8, !tbaa !205
  %4605 = getelementptr inbounds %struct.tree_common, ptr %4604, i64 0, i32 2
  %4606 = load ptr, ptr %4605, align 8, !tbaa !216
  %4607 = getelementptr inbounds %struct.tree_common, ptr %4606, i64 0, i32 2
  %4608 = load ptr, ptr %4607, align 8, !tbaa !216
  %4609 = call ptr @build1_stat(i32 noundef 47, ptr noundef %4608, ptr noundef %4604) #24
  store ptr %4609, ptr %0, align 8, !tbaa !205
  br label %4759

4610:                                             ; preds = %4595, %4592, %4587
  %4611 = and i32 %4, 1
  %4612 = icmp eq i32 %4611, 0
  br i1 %4612, label %4755, label %4613, !prof !287

4613:                                             ; preds = %4610
  %4614 = load ptr, ptr %0, align 8, !tbaa !205
  %4615 = load i64, ptr %4614, align 8
  %4616 = and i64 %4615, 65535
  %4617 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %4616
  %4618 = load i8, ptr %4617, align 1, !tbaa !216
  %4619 = icmp eq i8 %4618, 0
  %4620 = icmp ne i64 %4616, 59
  %4621 = and i1 %4619, %4620
  br i1 %4621, label %4755, label %4622, !prof !287

4622:                                             ; preds = %4613
  %4623 = getelementptr inbounds %struct.tree_common, ptr %4614, i64 0, i32 2
  %4624 = load ptr, ptr %4623, align 8, !tbaa !216
  %4625 = load i64, ptr %4624, align 8
  %4626 = and i64 %4625, 65535
  %4627 = icmp eq i64 %4626, 19
  br i1 %4627, label %4628, label %4629, !prof !287

4628:                                             ; preds = %4622
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7289, ptr noundef nonnull @.str.1) #24
  br label %4629

4629:                                             ; preds = %4622, %4628
  %4630 = load ptr, ptr %89, align 8, !tbaa !205
  %4631 = icmp eq ptr %4630, null
  br i1 %4631, label %4635, label %4632, !prof !610

4632:                                             ; preds = %4629
  %4633 = load ptr, ptr %4630, align 8, !tbaa !274
  %4634 = icmp ne ptr %4633, null
  br label %4635

4635:                                             ; preds = %4629, %4632
  %4636 = phi i1 [ false, %4629 ], [ %4634, %4632 ]
  %4637 = or i1 %4588, %4636
  %4638 = load ptr, ptr %0, align 8, !tbaa !205
  br i1 %4637, label %4639, label %4652, !prof !287

4639:                                             ; preds = %4635
  %4640 = call fastcc ptr @internal_get_tmp_var(ptr noundef %4638, ptr noundef nonnull %145, ptr noundef nonnull %147, i8 noundef zeroext 0)
  store ptr %4640, ptr %0, align 8, !tbaa !205
  %4641 = getelementptr inbounds %struct.tree_common, ptr %4640, i64 0, i32 2
  %4642 = load ptr, ptr %4641, align 8, !tbaa !216
  %4643 = load i64, ptr %4642, align 8
  %4644 = trunc i64 %4643 to i32
  %4645 = and i32 %4644, 65535
  %4646 = add nsw i32 %4645, -13
  %4647 = icmp ult i32 %4646, 2
  br i1 %4647, label %4648, label %4759

4648:                                             ; preds = %4639
  %4649 = getelementptr inbounds %struct.tree_decl_common, ptr %4640, i64 0, i32 2
  %4650 = load i64, ptr %4649, align 8
  %4651 = or i64 %4650, 134217728
  store i64 %4651, ptr %4649, align 8
  br label %4759

4652:                                             ; preds = %4635
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12)
  store ptr %4638, ptr %12, align 8, !tbaa !205
  %4653 = call i32 @gimplify_expr(ptr noundef nonnull %12, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_reg_rhs_or_call, i32 noundef 1)
  %4654 = load ptr, ptr %12, align 8, !tbaa !205
  %4655 = load i32, ptr @optimize, align 4, !tbaa !220
  %4656 = icmp eq i32 %4655, 0
  br i1 %4656, label %4661, label %4657, !prof !286

4657:                                             ; preds = %4652
  %4658 = load i64, ptr %4654, align 8
  %4659 = and i64 %4658, 65536
  %4660 = icmp eq i64 %4659, 0
  br i1 %4660, label %4666, label %4661, !prof !280

4661:                                             ; preds = %4657, %4652
  %4662 = getelementptr inbounds %struct.tree_common, ptr %4654, i64 0, i32 2
  %4663 = load ptr, ptr %4662, align 8, !tbaa !216
  %4664 = call ptr @get_name(ptr noundef %4654) #24
  %4665 = call ptr @create_tmp_var(ptr noundef %4663, ptr noundef %4664)
  br label %4694

4666:                                             ; preds = %4657
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #24
  store ptr %4654, ptr %11, align 8, !tbaa !281
  %4667 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %4668 = getelementptr inbounds %struct.gimplify_ctx, ptr %4667, i64 0, i32 7
  %4669 = load ptr, ptr %4668, align 8, !tbaa !238
  %4670 = icmp eq ptr %4669, null
  br i1 %4670, label %4671, label %4675, !prof !283

4671:                                             ; preds = %4666
  %4672 = call ptr @htab_create(i64 noundef 1000, ptr noundef nonnull @gimple_tree_hash, ptr noundef nonnull @gimple_tree_eq, ptr noundef nonnull @free) #24
  %4673 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %4674 = getelementptr inbounds %struct.gimplify_ctx, ptr %4673, i64 0, i32 7
  store ptr %4672, ptr %4674, align 8, !tbaa !238
  br label %4675

4675:                                             ; preds = %4671, %4666
  %4676 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %4677 = getelementptr inbounds %struct.gimplify_ctx, ptr %4676, i64 0, i32 7
  %4678 = load ptr, ptr %4677, align 8, !tbaa !238
  %4679 = call ptr @htab_find_slot(ptr noundef %4678, ptr noundef nonnull %11, i32 noundef 1) #24
  %4680 = load ptr, ptr %4679, align 8, !tbaa !205
  %4681 = icmp eq ptr %4680, null
  br i1 %4681, label %4682, label %4689, !prof !284

4682:                                             ; preds = %4675
  %4683 = call ptr @xmalloc(i64 noundef 16) #24
  store ptr %4654, ptr %4683, align 8, !tbaa !281
  %4684 = getelementptr inbounds %struct.tree_common, ptr %4654, i64 0, i32 2
  %4685 = load ptr, ptr %4684, align 8, !tbaa !216
  %4686 = call ptr @get_name(ptr noundef nonnull %4654) #24
  %4687 = call ptr @create_tmp_var(ptr noundef %4685, ptr noundef %4686)
  %4688 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %4683, i64 0, i32 1
  store ptr %4687, ptr %4688, align 8, !tbaa !285
  store ptr %4683, ptr %4679, align 8, !tbaa !205
  br label %4692

4689:                                             ; preds = %4675
  %4690 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %4680, i64 0, i32 1
  %4691 = load ptr, ptr %4690, align 8, !tbaa !285
  br label %4692

4692:                                             ; preds = %4689, %4682
  %4693 = phi ptr [ %4687, %4682 ], [ %4691, %4689 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #24
  br label %4694

4694:                                             ; preds = %4692, %4661
  %4695 = phi ptr [ %4665, %4661 ], [ %4693, %4692 ]
  %4696 = getelementptr inbounds %struct.tree_common, ptr %4695, i64 0, i32 2
  %4697 = load ptr, ptr %4696, align 8, !tbaa !216
  %4698 = load i64, ptr %4697, align 8
  %4699 = trunc i64 %4698 to i32
  %4700 = and i32 %4699, 65535
  %4701 = add nsw i32 %4700, -13
  %4702 = icmp ult i32 %4701, 2
  br i1 %4702, label %4703, label %4707, !prof !287

4703:                                             ; preds = %4694
  %4704 = getelementptr inbounds %struct.tree_decl_common, ptr %4695, i64 0, i32 2
  %4705 = load i64, ptr %4704, align 8
  %4706 = or i64 %4705, 134217728
  store i64 %4706, ptr %4704, align 8
  br label %4707

4707:                                             ; preds = %4703, %4694
  %4708 = load ptr, ptr %4696, align 8, !tbaa !216
  %4709 = load ptr, ptr %12, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store ptr %4709, ptr %10, align 8, !tbaa !205
  %4710 = call ptr @walk_tree_1(ptr noundef nonnull %10, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %4711 = load ptr, ptr %10, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  %4712 = call ptr @build2_stat(i32 noundef 54, ptr noundef %4708, ptr noundef %4695, ptr noundef %4711) #24
  %4713 = load ptr, ptr %12, align 8, !tbaa !205
  %4714 = load i64, ptr %4713, align 8
  %4715 = and i64 %4714, 65535
  %4716 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4715
  %4717 = load i32, ptr %4716, align 4, !tbaa !220
  %4718 = add i32 %4717, -4
  %4719 = icmp ult i32 %4718, 7
  br i1 %4719, label %4720, label %4724, !prof !288

4720:                                             ; preds = %4707
  %4721 = getelementptr inbounds %struct.tree_exp, ptr %4713, i64 0, i32 1
  %4722 = load i32, ptr %4721, align 8, !tbaa !216
  %4723 = icmp eq i32 %4722, 0
  br i1 %4723, label %4724, label %4726, !prof !289

4724:                                             ; preds = %4720, %4707
  %4725 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %4726

4726:                                             ; preds = %4720, %4724
  %4727 = phi i32 [ %4725, %4724 ], [ %4722, %4720 ]
  %4728 = getelementptr inbounds %struct.tree_exp, ptr %4712, i64 0, i32 1
  store i32 %4727, ptr %4728, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store ptr %4712, ptr %9, align 8, !tbaa !205
  %4729 = load ptr, ptr %145, align 8, !tbaa !205
  %4730 = icmp eq ptr %4729, null
  br i1 %4730, label %4731, label %4733, !prof !250

4731:                                             ; preds = %4726
  %4732 = call ptr @gimple_seq_alloc() #24
  store ptr %4732, ptr %145, align 8, !tbaa !205
  br label %4733

4733:                                             ; preds = %4731, %4726
  %4734 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %145, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @ggc_free(ptr noundef %4712) #24
  %4735 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %4736 = getelementptr inbounds %struct.gimplify_ctx, ptr %4735, i64 0, i32 10
  %4737 = load i8, ptr %4736, align 1, !tbaa !290
  %4738 = icmp eq i8 %4737, 0
  br i1 %4738, label %4753, label %4739, !prof !291

4739:                                             ; preds = %4733
  %4740 = load ptr, ptr %145, align 8, !tbaa !205
  %4741 = icmp eq ptr %4740, null
  br i1 %4741, label %4745, label %4742, !prof !292

4742:                                             ; preds = %4739
  %4743 = getelementptr inbounds %struct.gimple_seq_d, ptr %4740, i64 0, i32 1
  %4744 = load ptr, ptr %4743, align 8, !tbaa !252
  br label %4745

4745:                                             ; preds = %4742, %4739
  %4746 = phi ptr [ %4744, %4742 ], [ null, %4739 ]
  %4747 = icmp eq ptr %4746, null
  br i1 %4747, label %4750, label %4748, !prof !292

4748:                                             ; preds = %4745
  %4749 = load ptr, ptr %4746, align 8, !tbaa !275
  br label %4750

4750:                                             ; preds = %4748, %4745
  %4751 = phi ptr [ %4749, %4748 ], [ null, %4745 ]
  %4752 = call ptr @gimple_get_lhs(ptr noundef %4751) #24
  br label %4753

4753:                                             ; preds = %4733, %4750
  %4754 = phi ptr [ %4752, %4750 ], [ %4695, %4733 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12)
  store ptr %4754, ptr %0, align 8, !tbaa !205
  br label %4759

4755:                                             ; preds = %4613, %4610
  %4756 = and i32 %4, 4
  %4757 = icmp eq i32 %4756, 0
  br i1 %4757, label %4758, label %4773

4758:                                             ; preds = %4755
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7315, ptr noundef nonnull @.str.1) #24
  br label %4773

4759:                                             ; preds = %4639, %4648, %4753, %4599
  %4760 = load ptr, ptr %0, align 8, !tbaa !205
  %4761 = call zeroext i8 %3(ptr noundef %4760) #24, !prof !611
  %4762 = icmp eq i8 %4761, 0
  br i1 %4762, label %4763, label %4764, !prof !287

4763:                                             ; preds = %4759
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7325, ptr noundef nonnull @.str.1) #24
  br label %4764

4764:                                             ; preds = %4759, %4763
  %4765 = load ptr, ptr %89, align 8, !tbaa !205
  %4766 = icmp eq ptr %4765, null
  br i1 %4766, label %4773, label %4767, !prof !610

4767:                                             ; preds = %4764
  %4768 = load ptr, ptr %4765, align 8, !tbaa !274
  %4769 = icmp eq ptr %4768, null
  br i1 %4769, label %4773, label %4770

4770:                                             ; preds = %4767
  %4771 = load i32, ptr @input_location, align 4, !tbaa !220
  call void @annotate_all_with_location(ptr noundef nonnull %4765, i32 noundef %4771)
  %4772 = load ptr, ptr %89, align 8, !tbaa !205
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %145, ptr noundef %4772)
  br label %4773

4773:                                             ; preds = %4573, %4556, %4755, %4764, %4545, %4758, %4767, %4770, %4583, %4548, %4436, %4437
  %4774 = phi i32 [ -2, %4437 ], [ -2, %4436 ], [ %4435, %4548 ], [ %4435, %4583 ], [ %4435, %4767 ], [ %4435, %4770 ], [ -2, %4758 ], [ %4435, %4545 ], [ %4435, %4764 ], [ -2, %4755 ], [ %4435, %4556 ], [ %4435, %4573 ]
  store i32 %164, ptr @input_location, align 4, !tbaa !220
  br label %4775

4775:                                             ; preds = %5, %4773
  %4776 = phi i32 [ %4774, %4773 ], [ 1, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %89) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %88) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %87) #24
  ret i32 %4776
}

declare zeroext i8 @is_gimple_stmt(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !204 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !220
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = ptrtoint ptr %1 to i64
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi ptr [ %32, %31 ], [ %0, %10 ]
  %14 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  %16 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %11) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %16, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !294
  %21 = and i64 %20, 4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = and i64 %20, 1
  %25 = or disjoint i64 %24, 16
  store i64 %25, ptr %19, align 8, !tbaa !294
  br label %31

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %13, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !269
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @omp_add_variable(ptr noundef %13, ptr noundef nonnull %1, i32 noundef 16)
  br label %31

31:                                               ; preds = %26, %30, %23
  %32 = load ptr, ptr %13, align 8, !tbaa !271
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !llvm.loop !612

34:                                               ; preds = %31, %18, %2, %4
  ret void
}

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) #3

declare zeroext i8 @is_gimple_call_addr(ptr noundef) #3

declare zeroext i8 @is_gimple_condexpr(ptr noundef) #3

declare zeroext i8 @is_gimple_mem_rhs(ptr noundef) #3

declare zeroext i8 @is_gimple_reg_rhs(ptr noundef) #3

declare zeroext i8 @is_gimple_asm_val(ptr noundef) #3

declare zeroext i8 @is_gimple_min_lval(ptr noundef) #3

declare zeroext i8 @is_gimple_lvalue(ptr noundef) #3

declare zeroext i8 @is_gimple_addressable(ptr noundef) #3

declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gimplify_compound_expr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #12 !prof !613 !PGOFuncName !614 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  br label %5

5:                                                ; preds = %21, %3
  %6 = phi ptr [ %4, %3 ], [ %23, %21 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !205
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 52
  br i1 %11, label %12, label %14, !prof !615

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext 0), !range !471
  br label %21

14:                                               ; preds = %5
  %15 = load ptr, ptr %1, align 8, !tbaa !205
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !250

17:                                               ; preds = %14
  %18 = tail call ptr @gimple_seq_alloc() #24
  store ptr %18, ptr %1, align 8, !tbaa !205
  br label %19

19:                                               ; preds = %17, %14
  %20 = tail call i32 @gimplify_expr(ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0)
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 52
  br i1 %26, label %5, label %27, !prof !615, !llvm.loop !616

27:                                               ; preds = %21
  store ptr %23, ptr %0, align 8, !tbaa !205
  %28 = icmp eq i8 %2, 0
  br i1 %28, label %29, label %31, !prof !615

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef %1), !range !249
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi i32 [ 1, %29 ], [ 0, %27 ]
  ret i32 %32
}

declare void @recalculate_side_effects(ptr noundef) local_unnamed_addr #3

declare i32 @gimplify_va_arg_expr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimplify_seq_add_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #14 !prof !326 !PGOFuncName !617 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5, !prof !427

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !205
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !428

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #24
  store ptr %9, ptr %0, align 8, !tbaa !205
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr %0, align 8, !tbaa !205
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !427

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gimple_seq_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !252, !noalias !618
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ null, %10 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19, !prof !432

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !275, !noalias !618
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !433

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %20, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !216, !noalias !618
  br label %25

25:                                               ; preds = %16, %19, %22
  %26 = phi ptr [ %24, %22 ], [ null, %19 ], [ null, %16 ]
  store ptr %17, ptr %3, align 8, !tbaa.struct !417
  %27 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %27, align 8, !tbaa.struct !244
  %28 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %26, ptr %28, align 8, !tbaa.struct !245
  call void @gsi_insert_after_without_update(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #24
  br label %29

29:                                               ; preds = %2, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret void
}

declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_predict(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @gimplify_asm_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #15 !prof !204 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #24
  %14 = load ptr, ptr %0, align 8, !tbaa !205
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = tail call i32 @list_length(ptr noundef %17) #24
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = alloca i8, i64 %20, align 16
  %22 = load ptr, ptr %16, align 8, !tbaa !216
  %23 = icmp eq ptr %22, null
  br i1 %23, label %183, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %176
  %27 = phi i64 [ 0, %24 ], [ %179, %176 ]
  %28 = phi ptr [ %22, %24 ], [ %32, %176 ]
  %29 = phi i32 [ 1, %24 ], [ %178, %176 ]
  %30 = phi ptr [ null, %24 ], [ %177, %176 ]
  %31 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = getelementptr inbounds %struct.tree_list, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !216
  %35 = getelementptr inbounds %struct.tree_list, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !216
  %37 = getelementptr inbounds %struct.tree_string, ptr %36, i64 0, i32 2
  store ptr %37, ptr %5, align 8, !tbaa !205
  %38 = getelementptr inbounds ptr, ptr %21, i64 %27
  store ptr %37, ptr %38, align 8, !tbaa !205
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %176, label %41

41:                                               ; preds = %26
  %42 = trunc i64 %27 to i32
  %43 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %5, i32 noundef %42, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8 0, ptr %8, align 1, !tbaa !216
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %29, %41 ], [ -2, %45 ]
  %48 = load i8, ptr %7, align 1, !tbaa !216
  %49 = icmp eq i8 %48, 0
  %50 = load i8, ptr %6, align 1
  %51 = icmp ne i8 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tree_list, ptr %28, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !216
  call void @mark_addressable(ptr noundef %55)
  br label %56

56:                                               ; preds = %53, %46
  %57 = getelementptr inbounds %struct.tree_list, ptr %28, i64 0, i32 2
  %58 = load i8, ptr %8, align 1, !tbaa !216
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, ptr @is_gimple_lvalue, ptr @is_gimple_min_lval
  %61 = call i32 @gimplify_expr(ptr noundef nonnull %57, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %60, i32 noundef 6)
  %62 = icmp eq i32 %61, -2
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = trunc i64 %27 to i32
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %64) #24
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi i32 [ -2, %63 ], [ %47, %56 ]
  %67 = icmp eq ptr %30, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.VEC_tree_base, ptr %30, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !384
  %71 = load i32, ptr %30, align 8, !tbaa !318
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65, %68
  %74 = call ptr @vec_gc_p_reserve(ptr noundef %30, i32 noundef 1) #24
  br label %75

75:                                               ; preds = %68, %73
  %76 = phi ptr [ %74, %73 ], [ %30, %68 ]
  %77 = load i32, ptr %76, align 8, !tbaa !318
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8, !tbaa !318
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds %struct.VEC_tree_base, ptr %76, i64 0, i32 2, i64 %79
  store ptr %28, ptr %80, align 8, !tbaa !205
  store ptr null, ptr %31, align 8, !tbaa !216
  %81 = load i8, ptr %8, align 1, !tbaa !216
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %176, label %83

83:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #24
  %84 = load ptr, ptr %5, align 8, !tbaa !205
  %85 = call ptr @xstrdup(ptr noundef %84) #24
  store i8 61, ptr %85, align 1, !tbaa !216
  %86 = trunc i64 %39 to i32
  %87 = call ptr @build_string(i32 noundef %86, ptr noundef nonnull %85) #24
  %88 = load ptr, ptr %33, align 8, !tbaa !216
  %89 = getelementptr inbounds %struct.tree_list, ptr %88, i64 0, i32 2
  store ptr %87, ptr %89, align 8, !tbaa !216
  %90 = load i8, ptr %7, align 1, !tbaa !216
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %162, label %92

92:                                               ; preds = %83
  %93 = trunc i64 %27 to i32
  %94 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %93)
  %95 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %85, i32 noundef 44)
  %96 = icmp eq ptr %95, null
  %97 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9)
  br i1 %96, label %159, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds i8, ptr %85, i64 1
  br label %100

100:                                              ; preds = %108, %98
  %101 = phi i64 [ 0, %98 ], [ %115, %108 ]
  %102 = phi ptr [ %99, %98 ], [ %118, %108 ]
  %103 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %102, i32 noundef 44)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = call i64 @strlen(ptr nonnull dereferenceable(1) %102)
  %107 = getelementptr inbounds i8, ptr %102, i64 %106
  br label %108

108:                                              ; preds = %105, %100
  %109 = phi ptr [ %107, %105 ], [ %103, %100 ]
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %102 to i64
  %112 = sub i64 %110, %111
  %113 = call i64 @llvm.umax.i64(i64 %112, i64 %97)
  %114 = add i64 %101, 1
  %115 = add i64 %114, %113
  %116 = load i8, ptr %109, align 1, !tbaa !216
  %117 = icmp eq i8 %116, 0
  %118 = getelementptr inbounds i8, ptr %109, i64 1
  br i1 %117, label %119, label %100, !llvm.loop !621

119:                                              ; preds = %108
  %120 = alloca i8, i64 %115, align 16
  %121 = trunc i64 %27 to i32
  br label %122

122:                                              ; preds = %148, %119
  %123 = phi ptr [ %99, %119 ], [ %152, %148 ]
  %124 = phi ptr [ %120, %119 ], [ %150, %148 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #24
  %125 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %123, i32 noundef 44)
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i8 0, ptr %125, align 1, !tbaa !216
  br label %128

128:                                              ; preds = %127, %122
  %129 = getelementptr inbounds i8, ptr %123, i64 -1
  store i8 61, ptr %129, align 1, !tbaa !216
  store ptr %129, ptr %10, align 8, !tbaa !205
  %130 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %10, i32 noundef %121, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %131 = icmp eq ptr %124, %120
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %124, i64 1
  store i8 44, ptr %124, align 1, !tbaa !216
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi ptr [ %133, %132 ], [ %124, %128 ]
  %136 = load i8, ptr %12, align 1, !tbaa !216
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr nonnull align 1 %9, i64 %97, i1 false)
  br label %148

139:                                              ; preds = %134
  br i1 %126, label %144, label %140

140:                                              ; preds = %139
  %141 = ptrtoint ptr %125 to i64
  %142 = ptrtoint ptr %123 to i64
  %143 = sub i64 %141, %142
  br label %146

144:                                              ; preds = %139
  %145 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %123)
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi i64 [ %143, %140 ], [ %145, %144 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %123, i64 %147, i1 false)
  br label %148

148:                                              ; preds = %146, %138
  %149 = phi i64 [ %97, %138 ], [ %147, %146 ]
  %150 = getelementptr inbounds i8, ptr %135, i64 %149
  %151 = getelementptr inbounds i8, ptr %125, i64 1
  %152 = select i1 %126, ptr %123, ptr %151
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  br i1 %126, label %153, label %122

153:                                              ; preds = %148
  store i8 0, ptr %150, align 1, !tbaa !216
  %154 = ptrtoint ptr %150 to i64
  %155 = ptrtoint ptr %120 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = call ptr @build_string(i32 noundef %157, ptr noundef nonnull %120) #24
  br label %167

159:                                              ; preds = %92
  %160 = trunc i64 %97 to i32
  %161 = call ptr @build_string(i32 noundef %160, ptr noundef nonnull %9) #24
  br label %167

162:                                              ; preds = %83
  %163 = add i32 %86, -1
  %164 = load ptr, ptr %5, align 8, !tbaa !205
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  %166 = call ptr @build_string(i32 noundef %163, ptr noundef nonnull %165) #24
  br label %167

167:                                              ; preds = %153, %159, %162
  %168 = phi ptr [ %158, %153 ], [ %161, %159 ], [ %166, %162 ]
  call void @free(ptr noundef %85)
  %169 = call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %168) #24
  %170 = load ptr, ptr %57, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %170, ptr %4, align 8, !tbaa !205
  %171 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %172 = load ptr, ptr %4, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %173 = call ptr @build_tree_list_stat(ptr noundef %169, ptr noundef %172) #24
  %174 = load ptr, ptr %25, align 8, !tbaa !216
  %175 = call ptr @chainon(ptr noundef %174, ptr noundef %173) #24
  store ptr %175, ptr %25, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #24
  br label %176

176:                                              ; preds = %75, %167, %26
  %177 = phi ptr [ %30, %26 ], [ %76, %75 ], [ %76, %167 ]
  %178 = phi i32 [ %29, %26 ], [ %66, %75 ], [ %66, %167 ]
  %179 = add nuw i64 %27, 1
  %180 = icmp eq ptr %32, null
  br i1 %180, label %181, label %26, !llvm.loop !622

181:                                              ; preds = %176
  %182 = trunc i64 %179 to i32
  br label %183

183:                                              ; preds = %181, %3
  %184 = phi ptr [ null, %3 ], [ %177, %181 ]
  %185 = phi i32 [ 1, %3 ], [ %178, %181 ]
  %186 = phi i32 [ 0, %3 ], [ %182, %181 ]
  %187 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !216
  %189 = icmp eq ptr %188, null
  br i1 %189, label %268, label %190

190:                                              ; preds = %183, %260
  %191 = phi i32 [ %266, %260 ], [ %186, %183 ]
  %192 = phi ptr [ %196, %260 ], [ %188, %183 ]
  %193 = phi i32 [ %251, %260 ], [ %185, %183 ]
  %194 = phi ptr [ %261, %260 ], [ null, %183 ]
  %195 = getelementptr inbounds %struct.tree_common, ptr %192, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !216
  %197 = getelementptr inbounds %struct.tree_list, ptr %192, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !216
  %199 = getelementptr inbounds %struct.tree_list, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !216
  %201 = getelementptr inbounds %struct.tree_string, ptr %200, i64 0, i32 2
  store ptr %201, ptr %5, align 8, !tbaa !205
  %202 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef %18, i32 noundef 0, ptr noundef nonnull %21, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %203 = getelementptr inbounds %struct.tree_list, ptr %192, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !216
  %205 = getelementptr inbounds %struct.tree_common, ptr %204, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !216
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 262144
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %190
  %211 = load i8, ptr %6, align 1, !tbaa !216
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  store i8 0, ptr %7, align 1, !tbaa !216
  br label %215

214:                                              ; preds = %210
  call void (ptr, ...) @error(ptr noundef nonnull @.str.13) #24
  call void (ptr, ...) @error(ptr noundef nonnull @.str.14, i32 noundef %191) #24
  br label %339

215:                                              ; preds = %213, %190
  %216 = load i8, ptr %7, align 1, !tbaa !216
  %217 = icmp eq i8 %216, 0
  %218 = load i8, ptr %6, align 1
  %219 = icmp ne i8 %218, 0
  %220 = select i1 %217, i1 %219, i1 false
  br i1 %220, label %221, label %246

221:                                              ; preds = %215
  %222 = call i32 @gimplify_expr(ptr noundef nonnull %203, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 6)
  %223 = load ptr, ptr %203, align 8, !tbaa !216
  call void @mark_addressable(ptr noundef %223)
  %224 = icmp eq i32 %222, -2
  br i1 %224, label %225, label %250

225:                                              ; preds = %221
  %226 = load ptr, ptr %203, align 8, !tbaa !216
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 65535
  %229 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !220
  %231 = add i32 %230, -4
  %232 = icmp ult i32 %231, 7
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.tree_exp, ptr %226, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !216
  br label %236

236:                                              ; preds = %225, %233
  %237 = phi i32 [ %235, %233 ], [ 0, %225 ]
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %236
  br i1 %232, label %240, label %243

240:                                              ; preds = %239
  %241 = getelementptr inbounds %struct.tree_exp, ptr %226, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !216
  br label %243

243:                                              ; preds = %239, %240
  %244 = phi i32 [ %242, %240 ], [ 0, %239 ]
  store i32 %244, ptr @input_location, align 4, !tbaa !220
  br label %245

245:                                              ; preds = %243, %236
  call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %191) #24
  br label %250

246:                                              ; preds = %215
  %247 = call i32 @gimplify_expr(ptr noundef nonnull %203, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_asm_val, i32 noundef 1)
  %248 = icmp eq i32 %247, -2
  %249 = select i1 %248, i32 -2, i32 %193
  br label %250

250:                                              ; preds = %246, %221, %245
  %251 = phi i32 [ -2, %245 ], [ %193, %221 ], [ %249, %246 ]
  store ptr null, ptr %195, align 8, !tbaa !216
  %252 = icmp eq ptr %194, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.VEC_tree_base, ptr %194, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !384
  %256 = load i32, ptr %194, align 8, !tbaa !318
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %250, %253
  %259 = call ptr @vec_gc_p_reserve(ptr noundef %194, i32 noundef 1) #24
  br label %260

260:                                              ; preds = %253, %258
  %261 = phi ptr [ %259, %258 ], [ %194, %253 ]
  %262 = load i32, ptr %261, align 8, !tbaa !318
  %263 = add i32 %262, 1
  store i32 %263, ptr %261, align 8, !tbaa !318
  %264 = zext i32 %262 to i64
  %265 = getelementptr inbounds %struct.VEC_tree_base, ptr %261, i64 0, i32 2, i64 %264
  store ptr %192, ptr %265, align 8, !tbaa !205
  %266 = add nuw nsw i32 %191, 1
  %267 = icmp eq ptr %196, null
  br i1 %267, label %268, label %190, !llvm.loop !623

268:                                              ; preds = %260, %183
  %269 = phi ptr [ null, %183 ], [ %261, %260 ]
  %270 = phi i32 [ %185, %183 ], [ %251, %260 ]
  %271 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !216
  %273 = icmp eq ptr %272, null
  br i1 %273, label %294, label %274

274:                                              ; preds = %268, %285
  %275 = phi ptr [ %292, %285 ], [ %272, %268 ]
  %276 = phi ptr [ %286, %285 ], [ null, %268 ]
  %277 = icmp eq ptr %276, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.VEC_tree_base, ptr %276, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !384
  %281 = load i32, ptr %276, align 8, !tbaa !318
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %274, %278
  %284 = call ptr @vec_gc_p_reserve(ptr noundef %276, i32 noundef 1) #24
  br label %285

285:                                              ; preds = %278, %283
  %286 = phi ptr [ %284, %283 ], [ %276, %278 ]
  %287 = load i32, ptr %286, align 8, !tbaa !318
  %288 = add i32 %287, 1
  store i32 %288, ptr %286, align 8, !tbaa !318
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds %struct.VEC_tree_base, ptr %286, i64 0, i32 2, i64 %289
  store ptr %275, ptr %290, align 8, !tbaa !205
  %291 = getelementptr inbounds %struct.tree_common, ptr %275, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !216
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %274, !llvm.loop !624

294:                                              ; preds = %285, %268
  %295 = phi ptr [ null, %268 ], [ %286, %285 ]
  %296 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !216
  %298 = icmp eq ptr %297, null
  br i1 %298, label %319, label %299

299:                                              ; preds = %294, %310
  %300 = phi ptr [ %317, %310 ], [ %297, %294 ]
  %301 = phi ptr [ %311, %310 ], [ null, %294 ]
  %302 = icmp eq ptr %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.VEC_tree_base, ptr %301, i64 0, i32 1
  %305 = load i32, ptr %304, align 4, !tbaa !384
  %306 = load i32, ptr %301, align 8, !tbaa !318
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %299, %303
  %309 = call ptr @vec_gc_p_reserve(ptr noundef %301, i32 noundef 1) #24
  br label %310

310:                                              ; preds = %303, %308
  %311 = phi ptr [ %309, %308 ], [ %301, %303 ]
  %312 = load i32, ptr %311, align 8, !tbaa !318
  %313 = add i32 %312, 1
  store i32 %313, ptr %311, align 8, !tbaa !318
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds %struct.VEC_tree_base, ptr %311, i64 0, i32 2, i64 %314
  store ptr %300, ptr %315, align 8, !tbaa !205
  %316 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !216
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %299, !llvm.loop !625

319:                                              ; preds = %310, %294
  %320 = phi ptr [ null, %294 ], [ %311, %310 ]
  %321 = icmp eq i32 %270, -2
  br i1 %321, label %339, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr %15, align 8, !tbaa !216
  %324 = getelementptr inbounds %struct.tree_string, ptr %323, i64 0, i32 2
  %325 = call ptr @gimple_build_asm_vec(ptr noundef nonnull %324, ptr noundef %269, ptr noundef %184, ptr noundef %295, ptr noundef %320) #24
  %326 = load i64, ptr %14, align 8
  %327 = load i32, ptr %325, align 8
  %328 = and i32 %327, -131073
  %329 = trunc i64 %326 to i32
  %330 = lshr i32 %329, 10
  %331 = and i32 %330, 131072
  %332 = or disjoint i32 %328, %331
  store i32 %332, ptr %325, align 8
  %333 = load i64, ptr %14, align 8
  %334 = and i32 %332, -65537
  %335 = trunc i64 %333 to i32
  %336 = lshr i32 %335, 10
  %337 = and i32 %336, 65536
  %338 = or disjoint i32 %337, %334
  store i32 %338, ptr %325, align 8
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef nonnull %325)
  br label %339

339:                                              ; preds = %319, %322, %214
  %340 = phi i32 [ -2, %214 ], [ %270, %322 ], [ %270, %319 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret i32 %340
}

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_catch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_eh_filter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @omp_notice_variable(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !204 {
  %3 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %212, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %212, label %9

9:                                                ; preds = %5
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = lshr i64 %15, 25
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 1
  br label %19

19:                                               ; preds = %9, %13
  %20 = phi i8 [ 1, %9 ], [ %18, %13 ]
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 49152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %212

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 67108864
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #24
  %34 = tail call ptr @get_base_address(ptr noundef %33) #24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %34, align 8
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !220
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %34, i64 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 49152
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %212

47:                                               ; preds = %32, %36, %42, %27, %19
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !293
  %50 = ptrtoint ptr %1 to i64
  %51 = tail call ptr @splay_tree_lookup(ptr noundef %49, i64 noundef %50) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %151

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !269
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %200, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !626
  %60 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 11), align 8, !tbaa !627
  %61 = tail call i32 %60(ptr noundef nonnull %1) #24
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %59, i32 %61
  switch i32 %63, label %133 [
    i32 2, label %64
    i32 1, label %134
    i32 3, label %69
    i32 4, label %70
    i32 0, label %71
  ]

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !216
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, ptr noundef %66) #24
  %67 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !628
  tail call void (i32, ptr, ...) @error_at(i32 noundef %68, ptr noundef nonnull @.str.19) #24
  br label %134

69:                                               ; preds = %57
  br label %134

70:                                               ; preds = %57
  br label %134

71:                                               ; preds = %57
  %72 = load i32, ptr %54, align 8, !tbaa !269
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5520, ptr noundef nonnull @.str.1) #24
  br label %75

75:                                               ; preds = %71, %74
  %76 = load ptr, ptr %0, align 8, !tbaa !271
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %76, ptr noundef nonnull %1)
  br label %80

80:                                               ; preds = %78, %75
  br label %81

81:                                               ; preds = %80, %103
  %82 = phi ptr [ %84, %103 ], [ %0, %80 ]
  %83 = phi i32 [ %105, %103 ], [ 1, %80 ]
  %84 = load ptr, ptr %82, align 8, !tbaa !271
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %84, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !293
  %89 = tail call ptr @splay_tree_lookup(ptr noundef %88, i64 noundef %50) #24
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.splay_tree_node_s, ptr %89, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !294
  %94 = and i64 %93, 252
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = or i32 %83, 16
  br label %103

98:                                               ; preds = %91, %86
  %99 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %84, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !269
  %101 = shl i32 %100, 1
  %102 = and i32 %101, 4
  br label %103

103:                                              ; preds = %98, %96
  %104 = phi i32 [ 4, %96 ], [ %102, %98 ]
  %105 = phi i32 [ %97, %96 ], [ %83, %98 ]
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %81, label %107, !llvm.loop !629

107:                                              ; preds = %103, %81
  %108 = phi i32 [ %83, %81 ], [ %105, %103 ]
  %109 = and i32 %108, 16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  br i1 %85, label %112, label %131

112:                                              ; preds = %111
  %113 = load i64, ptr %1, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 34
  br i1 %115, label %129, label %116

116:                                              ; preds = %112
  %117 = and i64 %113, 67108864
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 33554432
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !216
  %127 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124, %112
  %130 = or disjoint i32 %108, 16
  br label %134

131:                                              ; preds = %116, %124, %119, %111
  %132 = or i32 %108, 4
  br label %134

133:                                              ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5549, ptr noundef nonnull @.str.1) #24
  br label %134

134:                                              ; preds = %64, %57, %107, %133, %131, %129, %70, %69
  %135 = phi i32 [ 1, %133 ], [ %108, %107 ], [ %130, %129 ], [ %132, %131 ], [ 17, %70 ], [ 9, %69 ], [ 5, %57 ], [ 5, %64 ]
  %136 = and i32 %135, 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !630
  %140 = tail call zeroext i8 %139(ptr noundef nonnull %1) #24
  %141 = icmp eq i8 %140, 0
  %142 = or i32 %135, 512
  %143 = select i1 %141, i32 %135, i32 %142
  br label %144

144:                                              ; preds = %138, %134
  %145 = phi i32 [ %135, %134 ], [ %143, %138 ]
  tail call fastcc void @omp_add_variable(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %145)
  %146 = trunc i32 %145 to i8
  %147 = lshr i8 %146, 2
  %148 = and i8 %147, 1
  %149 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 12), align 8, !tbaa !631
  %150 = tail call zeroext i8 %149(ptr noundef nonnull %1, i8 noundef zeroext %148) #24
  br label %200

151:                                              ; preds = %47
  %152 = getelementptr inbounds %struct.splay_tree_node_s, ptr %51, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !294
  %154 = and i64 %153, 129
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !216
  %159 = icmp eq ptr %158, null
  br i1 %159, label %186, label %160

160:                                              ; preds = %156
  %161 = load i64, ptr %158, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 23
  br i1 %163, label %186, label %164

164:                                              ; preds = %160
  %165 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #24
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 47
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5570, ptr noundef nonnull @.str.1) #24
  br label %170

170:                                              ; preds = %164, %169
  %171 = getelementptr inbounds %struct.tree_exp, ptr %165, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !216
  %173 = load i64, ptr %172, align 8
  %174 = and i64 %173, 65535
  %175 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !220
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %179, label %178

178:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5572, ptr noundef nonnull @.str.1) #24
  br label %179

179:                                              ; preds = %170, %178
  %180 = load ptr, ptr %48, align 8, !tbaa !293
  %181 = ptrtoint ptr %172 to i64
  %182 = tail call ptr @splay_tree_lookup(ptr noundef %180, i64 noundef %181) #24
  %183 = getelementptr inbounds %struct.splay_tree_node_s, ptr %182, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !294
  %185 = or i64 %184, 1
  store i64 %185, ptr %183, align 8, !tbaa !294
  br label %186

186:                                              ; preds = %179, %160, %156, %151
  %187 = load i64, ptr %152, align 8, !tbaa !294
  %188 = trunc i64 %187 to i8
  %189 = lshr i8 %188, 2
  %190 = and i8 %189, 1
  %191 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 12), align 8, !tbaa !631
  %192 = tail call zeroext i8 %191(ptr noundef nonnull %1, i8 noundef zeroext %190) #24
  %193 = load i64, ptr %152, align 8, !tbaa !294
  %194 = and i64 %193, 1
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %186
  %197 = trunc i64 %193 to i32
  %198 = or disjoint i32 %197, 1
  %199 = zext i32 %198 to i64
  store i64 %199, ptr %152, align 8, !tbaa !294
  br label %200

200:                                              ; preds = %144, %53, %196
  %201 = phi i8 [ %192, %196 ], [ %150, %144 ], [ 0, %53 ]
  %202 = phi i32 [ %198, %196 ], [ %145, %144 ], [ 1, %53 ]
  %203 = and i32 %202, 520
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %212, label %205

205:                                              ; preds = %200
  %206 = load ptr, ptr %0, align 8, !tbaa !271
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %206, ptr noundef nonnull %1)
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208, %205
  br label %212

212:                                              ; preds = %208, %200, %186, %42, %22, %2, %5, %211
  %213 = phi i8 [ %201, %211 ], [ 0, %5 ], [ 0, %2 ], [ 0, %22 ], [ 0, %42 ], [ %192, %186 ], [ %201, %200 ], [ 1, %208 ]
  ret i8 %213
}

declare ptr @gimple_build_omp_section(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_master(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_ordered(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_critical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @maybe_fold_offset_to_address(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_scalar_mode_aggregate_compare(ptr nocapture noundef %0) unnamed_addr #15 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !220
  %7 = add i32 %6, -4
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !216
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !632
  %21 = load i64, ptr %19, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #24
  br label %31

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %25, %24 ], [ %30, %26 ]
  %33 = tail call ptr %20(i32 noundef %32, i32 noundef 1) #24
  %34 = tail call ptr @fold_build1_stat_loc(i32 noundef %13, i32 noundef 118, ptr noundef %33, ptr noundef %15) #24
  %35 = tail call ptr @fold_build1_stat_loc(i32 noundef %13, i32 noundef 118, ptr noundef %33, ptr noundef %17) #24
  %36 = load ptr, ptr %0, align 8, !tbaa !205
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !216
  %42 = tail call ptr @fold_build2_stat_loc(i32 noundef %13, i32 noundef %39, ptr noundef %41, ptr noundef %34, ptr noundef %35) #24
  store ptr %42, ptr %0, align 8, !tbaa !205
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_variable_sized_compare(ptr nocapture noundef %0) unnamed_addr #15 !prof !204 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !205
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !220
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !216
  br label %17

17:                                               ; preds = %1, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %22, ptr %2, align 8, !tbaa !205
  %23 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %24 = load ptr, ptr %2, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 131072
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %24, ptr noundef %5) #24
  br label %32

32:                                               ; preds = %17, %26, %30
  %33 = phi ptr [ %31, %30 ], [ %24, %26 ], [ %24, %17 ]
  %34 = call ptr @build_fold_addr_expr_loc(i32 noundef %18, ptr noundef %7) #24
  %35 = call ptr @build_fold_addr_expr_loc(i32 noundef %18, ptr noundef %5) #24
  %36 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 329), align 8, !tbaa !205
  %37 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %18, ptr noundef %36, i32 noundef 3, ptr noundef %35, ptr noundef %34, ptr noundef %33) #24
  %38 = load ptr, ptr %0, align 8, !tbaa !205
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !205
  %45 = call ptr @build2_stat(i32 noundef %41, ptr noundef %43, ptr noundef %37, ptr noundef %44) #24
  store ptr %45, ptr %0, align 8, !tbaa !205
  ret void
}

declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @gimplify_seq_add_seq(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #12 !prof !204 !PGOFuncName !633 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5, !prof !413

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !205
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !327

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #24
  store ptr %9, ptr %0, align 8, !tbaa !205
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr %0, align 8, !tbaa !205
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !327

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gimple_seq_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !252, !noalias !634
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ null, %10 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19, !prof !327

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !275, !noalias !634
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !327

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %20, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !216, !noalias !634
  br label %25

25:                                               ; preds = %16, %19, %22
  %26 = phi ptr [ %24, %22 ], [ null, %19 ], [ null, %16 ]
  store ptr %17, ptr %3, align 8, !tbaa.struct !417
  %27 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %27, align 8, !tbaa.struct !244
  %28 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %26, ptr %28, align 8, !tbaa.struct !245
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #24
  br label %29

29:                                               ; preds = %2, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret void
}

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gimplify_type_sizes(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !637 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !638
  br i1 %6, label %111, label %7, !prof !638

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 131072
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %111, !prof !639

13:                                               ; preds = %7
  %14 = or disjoint i64 %10, 131072
  store i64 %14, ptr %9, align 8
  %15 = trunc i64 %10 to i16
  switch i16 %15, label %94 [
    i16 8, label %16
    i16 6, label %16
    i16 7, label %16
    i16 9, label %16
    i16 11, label %16
    i16 15, label %31
    i16 16, label %75
    i16 17, label %75
    i16 18, label %75
  ], !prof !640

16:                                               ; preds = %13, %13, %13, %13, %13
  %17 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 13
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %17, ptr noundef %1)
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 14
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %18, ptr noundef %1)
  %19 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  %21 = icmp eq ptr %20, null
  br i1 %21, label %94, label %22, !prof !641

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %16 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !216
  %25 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 13
  store ptr %24, ptr %25, align 8, !tbaa !216
  %26 = load ptr, ptr %18, align 8, !tbaa !216
  %27 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 14
  store ptr %26, ptr %27, align 8, !tbaa !216
  %28 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = icmp eq ptr %29, null
  br i1 %30, label %94, label %22, !prof !642, !llvm.loop !643

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  tail call void @gimplify_type_sizes(ptr noundef %33, ptr noundef %1)
  %34 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  tail call void @gimplify_type_sizes(ptr noundef %35, ptr noundef %1)
  %36 = load ptr, ptr %34, align 8, !tbaa !216
  %37 = icmp eq ptr %36, null
  br i1 %37, label %94, label %38, !prof !644

38:                                               ; preds = %31
  %39 = load i64, ptr %36, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -6
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %94, !prof !645

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !216
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48, !prof !644

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 32
  br i1 %51, label %52, label %59, !prof !644

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 4096
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = and i64 %54, -1025
  store i64 %58, ptr %53, align 8
  br label %59

59:                                               ; preds = %57, %52, %48, %44
  %60 = load ptr, ptr %34, align 8, !tbaa !216
  %61 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !216
  %63 = icmp eq ptr %62, null
  br i1 %63, label %94, label %64, !prof !644

64:                                               ; preds = %59
  %65 = load i64, ptr %62, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 32
  br i1 %67, label %68, label %94, !prof !644

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %62, i64 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 4096
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %68
  %74 = and i64 %70, -1025
  store i64 %74, ptr %69, align 8
  br label %94

75:                                               ; preds = %13, %13, %13
  %76 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !216
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %75, %90
  %80 = phi ptr [ %92, %90 ], [ %77, %75 ]
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 31
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.tree_field_decl, ptr %80, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %85, ptr noundef %1)
  %86 = getelementptr inbounds %struct.tree_decl_common, ptr %80, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %86, ptr noundef %1)
  %87 = getelementptr inbounds %struct.tree_decl_common, ptr %80, i64 0, i32 4
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %87, ptr noundef %1)
  %88 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !216
  tail call void @gimplify_type_sizes(ptr noundef %89, ptr noundef %1)
  br label %90

90:                                               ; preds = %79, %84
  %91 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !216
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %79, !llvm.loop !646

94:                                               ; preds = %90, %22, %75, %16, %38, %13, %31, %73, %68, %64, %59
  %95 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %95, ptr noundef %1)
  %96 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %96, ptr noundef %1)
  %97 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 15
  %98 = load ptr, ptr %97, align 8, !tbaa !216
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100, !prof !647

100:                                              ; preds = %94, %100
  %101 = phi ptr [ %109, %100 ], [ %98, %94 ]
  %102 = load ptr, ptr %95, align 8, !tbaa !216
  %103 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !216
  %104 = load ptr, ptr %96, align 8, !tbaa !216
  %105 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 3
  store ptr %104, ptr %105, align 8, !tbaa !216
  %106 = load i64, ptr %101, align 8
  %107 = or i64 %106, 131072
  store i64 %107, ptr %101, align 8
  %108 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 15
  %109 = load ptr, ptr %108, align 8, !tbaa !216
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %100, !prof !648, !llvm.loop !649

111:                                              ; preds = %100, %94, %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gimplify_one_sizepos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !650 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6, !prof !651

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 131072
  %9 = icmp ne i64 %8, 0
  %10 = and i64 %7, 65535
  %11 = icmp eq i64 %10, 32
  %12 = or i1 %9, %11
  br i1 %12, label %55, label %13, !prof !652

13:                                               ; preds = %6
  %14 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %4) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %4, ptr %3, align 8, !tbaa !205
  %19 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %20 = load ptr, ptr %3, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  store ptr %20, ptr %0, align 8, !tbaa !205
  %21 = call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %22 = load ptr, ptr %0, align 8, !tbaa !205
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !216
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %55, label %26

26:                                               ; preds = %16
  %27 = load i64, ptr %18, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = call ptr @create_tmp_var(ptr noundef nonnull %18, ptr noundef null)
  store ptr %36, ptr %0, align 8, !tbaa !205
  %37 = call ptr @build1_stat(i32 noundef 116, ptr noundef nonnull %18, ptr noundef %22) #24
  %38 = load ptr, ptr %0, align 8, !tbaa !205
  %39 = call ptr @gimplify_assign(ptr noundef %38, ptr noundef %37, ptr noundef %1) #24
  %40 = load i64, ptr %22, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !220
  %44 = add i32 %43, -4
  %45 = icmp ult i32 %44, 7
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !216
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35, %46
  %51 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi i32 [ %51, %50 ], [ %48, %46 ]
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %39, i64 0, i32 2
  store i32 %53, ptr %54, align 8, !tbaa !216
  br label %55

55:                                               ; preds = %52, %16, %26, %30, %2, %6, %13
  ret void
}

declare zeroext i8 @contains_placeholder_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @gimplify_body(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #12 !prof !653 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimplify_ctx, align 8
  %7 = load i32, ptr @input_location, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #24
  %8 = load i8, ptr @timevar_enable, align 1, !tbaa !216
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !235

10:                                               ; preds = %3
  tail call void @timevar_push_1(i32 noundef 48) #24
  br label %11

11:                                               ; preds = %10, %3
  tail call void @default_rtl_profile() #24
  %12 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !235

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7506, ptr noundef nonnull @.str.1) #24
  br label %15

15:                                               ; preds = %11, %14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  %16 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %16, ptr %6, align 8, !tbaa !227
  store ptr %6, ptr @gimplify_ctxp, align 8, !tbaa !205
  call fastcc void @unshare_body(ptr noundef %0, ptr noundef %1)
  call fastcc void @unvisit_body(ptr noundef %0, ptr noundef %1)
  %17 = call ptr @cgraph_node(ptr noundef %1) #24
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !654
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !235

21:                                               ; preds = %15
  %22 = call ptr @pointer_set_create() #24
  store ptr %22, ptr @nonlocal_vlas, align 8, !tbaa !205
  br label %23

23:                                               ; preds = %21, %15
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !216
  store i32 %25, ptr @input_location, align 4, !tbaa !220
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %29, label %27, !prof !237

27:                                               ; preds = %23
  %28 = call ptr @gimplify_parameters() #24
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %28, %27 ], [ null, %23 ]
  store ptr %30, ptr %4, align 8, !tbaa !205
  store ptr null, ptr %5, align 8, !tbaa !205
  %31 = call ptr @gimple_seq_alloc() #24
  store ptr %31, ptr %5, align 8, !tbaa !205
  %32 = call i32 @gimplify_expr(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #25
  %33 = load ptr, ptr %5, align 8, !tbaa !205
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !251

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 8, !tbaa !274
  br label %37

37:                                               ; preds = %29, %35
  %38 = phi ptr [ %36, %35 ], [ null, %29 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !237

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !275
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47, !prof !237

45:                                               ; preds = %42
  %46 = call ptr @gimple_build_nop() #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %46)
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi ptr [ %43, %42 ], [ %46, %45 ]
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %65, !prof !235

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 8, !tbaa !205
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !237

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 8, !tbaa !274
  br label %57

57:                                               ; preds = %52, %55
  %58 = phi ptr [ %56, %55 ], [ null, %52 ]
  br i1 %54, label %62, label %59, !prof !237

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.gimple_seq_d, ptr %53, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !252
  br label %62

62:                                               ; preds = %57, %59
  %63 = phi ptr [ %61, %59 ], [ null, %57 ]
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %68, label %65, !prof !235

65:                                               ; preds = %62, %47
  %66 = load ptr, ptr %5, align 8, !tbaa !205
  %67 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %66, ptr noundef null) #24
  br label %68

68:                                               ; preds = %62, %65
  %69 = phi ptr [ %48, %62 ], [ %67, %65 ]
  store ptr null, ptr %0, align 8, !tbaa !205
  %70 = icmp eq ptr %30, null
  br i1 %70, label %94, label %71, !prof !235

71:                                               ; preds = %68
  %72 = load ptr, ptr %30, align 8, !tbaa !274
  %73 = icmp eq ptr %72, null
  br i1 %73, label %94, label %74, !prof !235

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gimple_statement_bind, ptr %69, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !216
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %4, ptr noundef %76)
  %77 = load ptr, ptr %4, align 8, !tbaa !205
  store ptr %77, ptr %75, align 8, !tbaa !216
  %78 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  %79 = getelementptr inbounds %struct.tree_decl_non_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !216
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %74, %90
  %83 = phi ptr [ %92, %90 ], [ %80, %74 ]
  %84 = getelementptr inbounds %struct.tree_decl_common, ptr %83, i64 0, i32 2
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 67108864
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = and i64 %85, -67109889
  store i64 %89, ptr %84, align 8
  br label %90

90:                                               ; preds = %82, %88
  %91 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !216
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %82, !llvm.loop !662

94:                                               ; preds = %90, %74, %68, %71
  %95 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !205
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97, !prof !235

97:                                               ; preds = %94
  call void @pointer_set_destroy(ptr noundef nonnull %95) #24
  store ptr null, ptr @nonlocal_vlas, align 8, !tbaa !205
  br label %98

98:                                               ; preds = %97, %94
  call void @pop_gimplify_context(ptr noundef %69)
  %99 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !235

101:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7571, ptr noundef nonnull @.str.1) #24
  br label %102

102:                                              ; preds = %98, %101
  %103 = load i8, ptr @timevar_enable, align 1, !tbaa !216
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105, !prof !235

105:                                              ; preds = %102
  call void @timevar_pop_1(i32 noundef 48) #24
  br label %106

106:                                              ; preds = %105, %102
  store i32 %7, ptr @input_location, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret ptr %69
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @default_rtl_profile() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @unshare_body(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !653 !PGOFuncName !663 {
  %3 = tail call ptr @cgraph_node(ptr noundef %1) #24
  %4 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @copy_if_shared_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18, !prof !235

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !642

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !664
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  tail call fastcc void @unshare_body(ptr noundef nonnull %14, ptr noundef %13)
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !prof !642, !llvm.loop !665

18:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unvisit_body(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !653 !PGOFuncName !666 {
  %3 = tail call ptr @cgraph_node(ptr noundef %1) #24
  %4 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @unmark_visited_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18, !prof !235

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !642

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !664
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  tail call fastcc void @unvisit_body(ptr noundef nonnull %14, ptr noundef %13)
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !prof !642, !llvm.loop !667

18:                                               ; preds = %11, %7, %2
  ret void
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

declare ptr @gimplify_parameters() local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gimplify_function_tree(ptr noundef %0) local_unnamed_addr #12 !prof !653 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %5 = tail call ptr @gimple_body(ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !235

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7597, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !205
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !205
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !216
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !237

13:                                               ; preds = %8
  tail call void @push_cfun(ptr noundef nonnull %11) #24
  br label %15

14:                                               ; preds = %8
  tail call void @push_struct_function(ptr noundef %0) #24
  br label %15

15:                                               ; preds = %14, %13
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19, !prof !668

19:                                               ; preds = %15, %39
  %20 = phi ptr [ %41, %39 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !216
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -13
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %39, !prof !237

28:                                               ; preds = %19
  %29 = load i64, ptr %20, align 8
  %30 = and i64 %29, 524288
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %20) #24
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = or i64 %37, 134217728
  store i64 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %19, %28, %32, %35
  %40 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !216
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !prof !669, !llvm.loop !670

43:                                               ; preds = %39, %15
  %44 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !216
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !216
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -13
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %60, !prof !237

53:                                               ; preds = %43
  %54 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef %45) #24
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = or i64 %58, 134217728
  store i64 %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %43, %56, %53
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  %62 = tail call ptr @gimplify_body(ptr noundef nonnull %61, ptr noundef %0, i8 noundef zeroext 1)
  %63 = tail call ptr @gimple_seq_alloc() #24
  store ptr %63, ptr %2, align 8, !tbaa !205
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %62) #24
  %64 = load ptr, ptr %2, align 8, !tbaa !205
  call void @gimple_set_body(ptr noundef %0, ptr noundef %64) #24
  %65 = load i32, ptr @flag_instrument_function_entry_exit, align 4, !tbaa !220
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %89, label %67, !prof !235

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 16777216
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = call zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef %0) #24
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !205
  %76 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 547), align 8, !tbaa !205
  %77 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %76, i32 noundef 0) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %77)
  %78 = load ptr, ptr %2, align 8, !tbaa !205
  %79 = load ptr, ptr %3, align 8, !tbaa !205
  %80 = call ptr @gimple_build_try(ptr noundef %78, ptr noundef %79, i32 noundef 2) #24
  %81 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 546), align 16, !tbaa !205
  %82 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %81, i32 noundef 0) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %82)
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %80)
  %83 = load ptr, ptr %4, align 8, !tbaa !205
  %84 = getelementptr inbounds %struct.gimple_statement_bind, ptr %62, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !216
  %86 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %83, ptr noundef %85) #24
  store ptr null, ptr %84, align 8, !tbaa !216
  %87 = call ptr @gimple_seq_alloc() #24
  store ptr %87, ptr %2, align 8, !tbaa !205
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %86) #24
  %88 = load ptr, ptr %2, align 8, !tbaa !205
  call void @gimple_set_body(ptr noundef %0, ptr noundef %88) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  br label %89

89:                                               ; preds = %75, %72, %67, %60
  store ptr null, ptr %61, align 8, !tbaa !216
  %90 = load ptr, ptr @cfun, align 8, !tbaa !205
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 17
  store i32 1, ptr %91, align 8, !tbaa !671
  store ptr %9, ptr @current_function_decl, align 8, !tbaa !205
  call void @pop_cfun() #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @push_struct_function(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_regimplify_operands(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !204 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  %10 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %10, ptr %4, align 8, !tbaa !227
  store ptr %4, ptr @gimplify_ctxp, align 8, !tbaa !205
  %11 = load ptr, ptr @cfun, align 8, !tbaa !205
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !673
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 10
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 1
  br label %21

21:                                               ; preds = %2, %13, %17
  %22 = phi i8 [ 0, %13 ], [ 0, %2 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.gimplify_ctx, ptr %4, i64 0, i32 10
  store i8 %22, ptr %23, align 1, !tbaa !290
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, -1
  %27 = call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 31)
  switch i32 %27, label %201 [
    i32 0, label %28
    i32 2, label %64
    i32 9, label %81
    i32 3, label %84
  ]

28:                                               ; preds = %21
  %29 = add nsw i32 %25, -10
  %30 = icmp ult i32 %29, -9
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = zext nneg i32 %25 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !220
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !256
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds i8, ptr %0, i64 %37
  br label %42

42:                                               ; preds = %28, %40
  %43 = phi ptr [ %41, %40 ], [ null, %28 ]
  %44 = call i32 @gimplify_expr(ptr noundef %43, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 255
  %47 = add nsw i32 %46, -10
  %48 = icmp ult i32 %47, -9
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = zext nneg i32 %46 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !220
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !256
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds i8, ptr %0, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  br label %61

61:                                               ; preds = %42, %58
  %62 = phi ptr [ %60, %58 ], [ null, %42 ]
  %63 = call i32 @gimplify_expr(ptr noundef %62, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %502

64:                                               ; preds = %21
  %65 = add nsw i32 %25, -10
  %66 = icmp ult i32 %65, -9
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = zext nneg i32 %25 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !220
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !256
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %76

76:                                               ; preds = %75, %67
  %77 = getelementptr inbounds i8, ptr %0, i64 %73
  br label %78

78:                                               ; preds = %64, %76
  %79 = phi ptr [ %77, %76 ], [ null, %64 ]
  %80 = call i32 @gimplify_expr(ptr noundef %79, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %502

81:                                               ; preds = %21
  %82 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %83 = call i32 @gimplify_expr(ptr noundef nonnull %82, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %502

84:                                               ; preds = %21
  %85 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !216
  %87 = zext i8 %86 to i32
  %88 = zext i8 %86 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #24
  %89 = shl nuw nsw i64 %88, 3
  %90 = alloca i8, i64 %89, align 16
  %91 = icmp eq i8 %86, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  br label %98

94:                                               ; preds = %127, %84
  %95 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %96 = load i8, ptr %95, align 8, !tbaa !216
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %200, label %143

98:                                               ; preds = %92, %127
  %99 = phi i64 [ 0, %92 ], [ %141, %127 ]
  %100 = trunc i64 %99 to i32
  %101 = load i8, ptr %85, align 1, !tbaa !216
  %102 = zext i8 %101 to i32
  %103 = icmp ult i32 %102, %100
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2655, ptr noundef nonnull @.str.1) #24
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i8, ptr %93, align 8, !tbaa !216
  %107 = zext i8 %106 to i64
  %108 = add nuw i64 %99, %107
  %109 = load i32, ptr %0, align 8
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %127, label %113

113:                                              ; preds = %105
  %114 = zext nneg i32 %110 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !220
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !256
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %122

122:                                              ; preds = %121, %113
  %123 = getelementptr inbounds i8, ptr %0, i64 %119
  %124 = and i64 %108, 4294967295
  %125 = getelementptr inbounds ptr, ptr %123, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !205
  br label %127

127:                                              ; preds = %105, %122
  %128 = phi ptr [ %126, %122 ], [ null, %105 ]
  %129 = getelementptr inbounds %struct.tree_list, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !216
  %131 = getelementptr inbounds %struct.tree_list, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !216
  %133 = getelementptr inbounds %struct.tree_string, ptr %132, i64 0, i32 2
  store ptr %133, ptr %5, align 8, !tbaa !205
  %134 = getelementptr inbounds ptr, ptr %90, i64 %99
  store ptr %133, ptr %134, align 8, !tbaa !205
  %135 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %5, i32 noundef %100, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %136 = getelementptr inbounds %struct.tree_list, ptr %128, i64 0, i32 2
  %137 = load i8, ptr %8, align 1, !tbaa !216
  %138 = icmp eq i8 %137, 0
  %139 = select i1 %138, ptr @is_gimple_lvalue, ptr @is_gimple_min_lval
  %140 = call i32 @gimplify_expr(ptr noundef nonnull %136, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %139, i32 noundef 6)
  %141 = add nuw nsw i64 %99, 1
  %142 = icmp eq i64 %141, %88
  br i1 %142, label %94, label %98, !llvm.loop !674

143:                                              ; preds = %94, %195
  %144 = phi i8 [ %197, %195 ], [ %96, %94 ]
  %145 = phi i64 [ %196, %195 ], [ 0, %94 ]
  %146 = zext i8 %144 to i32
  %147 = trunc i64 %145 to i32
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2622, ptr noundef nonnull @.str.1) #24
  br label %150

150:                                              ; preds = %149, %143
  %151 = load i32, ptr %0, align 8
  %152 = and i32 %151, 255
  %153 = add nsw i32 %152, -10
  %154 = icmp ult i32 %153, -9
  br i1 %154, label %168, label %155

155:                                              ; preds = %150
  %156 = zext nneg i32 %152 to i64
  %157 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !220
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !256
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %164

164:                                              ; preds = %163, %155
  %165 = getelementptr inbounds i8, ptr %0, i64 %161
  %166 = getelementptr inbounds ptr, ptr %165, i64 %145
  %167 = load ptr, ptr %166, align 8, !tbaa !205
  br label %168

168:                                              ; preds = %150, %164
  %169 = phi ptr [ %167, %164 ], [ null, %150 ]
  %170 = getelementptr inbounds %struct.tree_list, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !216
  %172 = getelementptr inbounds %struct.tree_list, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !216
  %174 = getelementptr inbounds %struct.tree_string, ptr %173, i64 0, i32 2
  store ptr %174, ptr %5, align 8, !tbaa !205
  %175 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef %87, i32 noundef 0, ptr noundef nonnull %90, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %176 = getelementptr inbounds %struct.tree_list, ptr %169, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !216
  %178 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !216
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 262144
  %182 = icmp ne i64 %181, 0
  %183 = load i8, ptr %6, align 1
  %184 = icmp ne i8 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %187

186:                                              ; preds = %168
  store i8 0, ptr %7, align 1, !tbaa !216
  br label %187

187:                                              ; preds = %186, %168
  %188 = load i8, ptr %7, align 1, !tbaa !216
  %189 = icmp eq i8 %188, 0
  %190 = select i1 %189, i1 %184, i1 false
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 @gimplify_expr(ptr noundef nonnull %176, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 6)
  br label %195

193:                                              ; preds = %187
  %194 = call i32 @gimplify_expr(ptr noundef nonnull %176, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_asm_val, i32 noundef 1)
  br label %195

195:                                              ; preds = %193, %191
  %196 = add nuw nsw i64 %145, 1
  %197 = load i8, ptr %95, align 8, !tbaa !216
  %198 = zext i8 %197 to i64
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %143, label %200, !llvm.loop !675

200:                                              ; preds = %195, %94
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %502

201:                                              ; preds = %21
  %202 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !216
  %204 = call ptr @gimple_get_lhs(ptr noundef %0) #24
  %205 = icmp eq i32 %203, 0
  br i1 %205, label %322, label %206

206:                                              ; preds = %201
  %207 = zext i32 %203 to i64
  %208 = icmp eq i32 %203, 2
  br label %209

209:                                              ; preds = %206, %319
  %210 = phi i64 [ %207, %206 ], [ %320, %319 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  %211 = trunc i64 %210 to i32
  %212 = add i32 %211, -1
  %213 = load i32, ptr %0, align 8
  %214 = and i32 %213, 255
  %215 = add nsw i32 %214, -10
  %216 = icmp ult i32 %215, -9
  br i1 %216, label %231, label %217

217:                                              ; preds = %209
  %218 = zext nneg i32 %214 to i64
  %219 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !220
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %221
  %223 = load i64, ptr %222, align 8, !tbaa !256
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %226

226:                                              ; preds = %225, %217
  %227 = getelementptr inbounds i8, ptr %0, i64 %223
  %228 = zext i32 %212 to i64
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !205
  br label %231

231:                                              ; preds = %209, %226
  %232 = phi ptr [ %230, %226 ], [ null, %209 ]
  store ptr %232, ptr %9, align 8, !tbaa !205
  %233 = icmp eq ptr %232, null
  br i1 %233, label %319, label %234

234:                                              ; preds = %231
  switch i64 %210, label %292 [
    i64 1, label %235
    i64 2, label %242
  ]

235:                                              ; preds = %234
  %236 = load i32, ptr %0, align 8
  %237 = trunc i32 %236 to i8
  switch i8 %237, label %240 [
    i8 8, label %238
    i8 6, label %238
  ]

238:                                              ; preds = %235, %235
  %239 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2)
  br label %294

240:                                              ; preds = %235
  %241 = icmp eq i64 %210, 2
  br i1 %241, label %242, label %292

242:                                              ; preds = %234, %240
  %243 = load i32, ptr %0, align 8
  %244 = and i32 %243, 255
  %245 = icmp eq i32 %244, 6
  %246 = select i1 %245, i1 %208, i1 false
  br i1 %246, label %247, label %281

247:                                              ; preds = %242
  %248 = trunc i32 %243 to i8
  switch i8 %248, label %251 [
    i8 6, label %249
    i8 1, label %249
    i8 8, label %252
  ]

249:                                              ; preds = %247, %247
  %250 = lshr i32 %243, 16
  br label %252

251:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #24
  br label %252

252:                                              ; preds = %247, %249, %251
  %253 = phi i32 [ %250, %249 ], [ 0, %251 ], [ 59, %247 ]
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !216
  %257 = icmp eq i8 %256, 3
  br i1 %257, label %258, label %281

258:                                              ; preds = %252
  %259 = load i32, ptr %0, align 8
  %260 = and i32 %259, 255
  %261 = add nsw i32 %260, -10
  %262 = icmp ult i32 %261, -9
  br i1 %262, label %275, label %263

263:                                              ; preds = %258
  %264 = zext nneg i32 %260 to i64
  %265 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !220
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !256
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %272

272:                                              ; preds = %271, %263
  %273 = getelementptr inbounds i8, ptr %0, i64 %269
  %274 = load ptr, ptr %273, align 8, !tbaa !205
  br label %275

275:                                              ; preds = %258, %272
  %276 = phi ptr [ %274, %272 ], [ null, %258 ]
  %277 = call zeroext i8 @is_gimple_reg(ptr noundef %276) #24
  %278 = icmp eq i8 %277, 0
  %279 = select i1 %278, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  %280 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %279, i32 noundef 1)
  br label %294

281:                                              ; preds = %242, %252
  %282 = load i32, ptr %0, align 8
  %283 = and i32 %282, 255
  %284 = icmp eq i32 %283, 8
  br i1 %284, label %285, label %292

285:                                              ; preds = %281
  %286 = load ptr, ptr %9, align 8, !tbaa !205
  %287 = load i64, ptr %286, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 29
  br i1 %289, label %319, label %290

290:                                              ; preds = %285
  %291 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_call_addr, i32 noundef 1)
  br label %294

292:                                              ; preds = %281, %240, %234
  %293 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  br label %294

294:                                              ; preds = %275, %292, %290, %238
  %295 = load ptr, ptr %9, align 8, !tbaa !205
  %296 = load i32, ptr %0, align 8
  %297 = and i32 %296, 255
  %298 = add nsw i32 %297, -10
  %299 = icmp ult i32 %298, -9
  br i1 %299, label %303, label %300

300:                                              ; preds = %294
  %301 = load i32, ptr %202, align 4, !tbaa !216
  %302 = icmp ugt i32 %301, %212
  br i1 %302, label %304, label %303

303:                                              ; preds = %300, %294
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %304

304:                                              ; preds = %303, %300
  %305 = load i32, ptr %0, align 8
  %306 = and i32 %305, 255
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !220
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %310
  %312 = load i64, ptr %311, align 8, !tbaa !256
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %304
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %315

315:                                              ; preds = %304, %314
  %316 = getelementptr inbounds i8, ptr %0, i64 %312
  %317 = zext i32 %212 to i64
  %318 = getelementptr inbounds ptr, ptr %316, i64 %317
  store ptr %295, ptr %318, align 8, !tbaa !205
  br label %319

319:                                              ; preds = %285, %231, %315
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  %320 = add nsw i64 %210, -1
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %209, !llvm.loop !676

322:                                              ; preds = %319, %201
  %323 = call ptr @gimple_get_lhs(ptr noundef %0) #24
  %324 = icmp eq ptr %323, null
  br i1 %324, label %502, label %325

325:                                              ; preds = %322
  %326 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %323) #24
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %502

328:                                              ; preds = %325
  %329 = load i32, ptr %0, align 8
  %330 = and i32 %329, 255
  %331 = icmp eq i32 %330, 6
  %332 = icmp eq i32 %203, 2
  %333 = select i1 %331, i1 %332, i1 false
  br i1 %333, label %334, label %386

334:                                              ; preds = %328
  %335 = trunc i32 %329 to i8
  switch i8 %335, label %338 [
    i8 6, label %336
    i8 1, label %336
    i8 8, label %339
  ]

336:                                              ; preds = %334, %334
  %337 = lshr i32 %329, 16
  br label %339

338:                                              ; preds = %334
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #24
  br label %339

339:                                              ; preds = %334, %336, %338
  %340 = phi i32 [ %337, %336 ], [ 0, %338 ], [ 59, %334 ]
  %341 = zext nneg i32 %340 to i64
  %342 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !216
  %344 = icmp eq i8 %343, 3
  br i1 %344, label %345, label %386

345:                                              ; preds = %339
  %346 = load i32, ptr %0, align 8
  %347 = and i32 %346, 255
  %348 = add nsw i32 %347, -10
  %349 = icmp ult i32 %348, -9
  br i1 %349, label %362, label %350

350:                                              ; preds = %345
  %351 = zext nneg i32 %347 to i64
  %352 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !220
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %354
  %356 = load i64, ptr %355, align 8, !tbaa !256
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %350
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %359

359:                                              ; preds = %358, %350
  %360 = getelementptr inbounds i8, ptr %0, i64 %356
  %361 = getelementptr inbounds ptr, ptr %360, i64 1
  br label %362

362:                                              ; preds = %345, %359
  %363 = phi ptr [ %361, %359 ], [ null, %345 ]
  %364 = load i32, ptr %0, align 8
  %365 = and i32 %364, 255
  %366 = add nsw i32 %365, -10
  %367 = icmp ult i32 %366, -9
  br i1 %367, label %380, label %368

368:                                              ; preds = %362
  %369 = zext nneg i32 %365 to i64
  %370 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !220
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !256
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %377

377:                                              ; preds = %376, %368
  %378 = getelementptr inbounds i8, ptr %0, i64 %374
  %379 = load ptr, ptr %378, align 8, !tbaa !205
  br label %380

380:                                              ; preds = %362, %377
  %381 = phi ptr [ %379, %377 ], [ null, %362 ]
  %382 = call zeroext i8 @is_gimple_reg(ptr noundef %381) #24
  %383 = icmp eq i8 %382, 0
  %384 = select i1 %383, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  %385 = call i32 @gimplify_expr(ptr noundef %363, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %384, i32 noundef 1)
  br label %502

386:                                              ; preds = %339, %328
  %387 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %323) #24
  %388 = icmp eq i8 %387, 0
  %389 = getelementptr inbounds %struct.tree_common, ptr %323, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !216
  %391 = call zeroext i8 @is_gimple_reg_type(ptr noundef %390) #24
  %392 = icmp eq i8 %391, 0
  br i1 %388, label %411, label %393

393:                                              ; preds = %386
  br i1 %392, label %502, label %394

394:                                              ; preds = %393
  %395 = load i32, ptr %0, align 8
  %396 = and i32 %395, 255
  %397 = icmp eq i32 %396, 8
  br i1 %397, label %398, label %406

398:                                              ; preds = %394
  %399 = call i32 @gimple_call_flags(ptr noundef nonnull %0) #24
  %400 = zext i32 %399 to i64
  %401 = and i64 %400, 4
  %402 = icmp eq i64 %401, 0
  %403 = and i64 %400, 3
  %404 = icmp ne i64 %403, 0
  %405 = and i1 %402, %404
  br label %406

406:                                              ; preds = %398, %394
  %407 = phi i1 [ true, %394 ], [ %405, %398 ]
  %408 = call zeroext i8 @stmt_can_throw_internal(ptr noundef nonnull %0) #24
  %409 = icmp eq i8 %408, 0
  %410 = select i1 %409, i1 %407, i1 false
  br i1 %410, label %502, label %466

411:                                              ; preds = %386
  br i1 %392, label %412, label %466

412:                                              ; preds = %411
  %413 = load ptr, ptr %389, align 8, !tbaa !216
  %414 = load i64, ptr %413, align 8
  %415 = and i64 %414, 65535
  %416 = icmp eq i64 %415, 14
  br i1 %416, label %417, label %419

417:                                              ; preds = %412
  %418 = call i32 @vector_type_mode(ptr noundef nonnull %413) #24
  br label %424

419:                                              ; preds = %412
  %420 = getelementptr inbounds %struct.tree_type, ptr %413, i64 0, i32 6
  %421 = load i32, ptr %420, align 4
  %422 = lshr i32 %421, 16
  %423 = and i32 %422, 255
  br label %424

424:                                              ; preds = %419, %417
  %425 = phi i32 [ %418, %417 ], [ %423, %419 ]
  %426 = icmp eq i32 %425, 1
  br i1 %426, label %502, label %427

427:                                              ; preds = %424
  %428 = load i32, ptr %0, align 8
  %429 = and i32 %428, 255
  %430 = icmp eq i32 %429, 8
  br i1 %430, label %431, label %466

431:                                              ; preds = %427
  %432 = zext nneg i32 %429 to i64
  %433 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !220
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !256
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %431
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %440

440:                                              ; preds = %439, %431
  %441 = getelementptr inbounds i8, ptr %0, i64 %437
  %442 = getelementptr inbounds ptr, ptr %441, i64 1
  %443 = load ptr, ptr %442, align 8, !tbaa !205
  %444 = load i64, ptr %443, align 8
  %445 = and i64 %444, 65535
  %446 = icmp eq i64 %445, 121
  br i1 %446, label %447, label %450

447:                                              ; preds = %440
  %448 = getelementptr inbounds %struct.tree_exp, ptr %443, i64 0, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !216
  br label %450

450:                                              ; preds = %440, %447
  %451 = phi ptr [ %449, %447 ], [ null, %440 ]
  %452 = load ptr, ptr %389, align 8, !tbaa !216
  %453 = call i32 @aggregate_value_p(ptr noundef %452, ptr noundef %451) #24
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %502

455:                                              ; preds = %450
  %456 = icmp eq ptr %451, null
  br i1 %456, label %466, label %457

457:                                              ; preds = %455
  %458 = getelementptr inbounds %struct.tree_decl_non_common, ptr %451, i64 0, i32 3
  %459 = load ptr, ptr %458, align 8, !tbaa !216
  %460 = icmp eq ptr %459, null
  br i1 %460, label %466, label %461

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.tree_decl_common, ptr %459, i64 0, i32 2
  %463 = load i64, ptr %462, align 8
  %464 = and i64 %463, 268435456
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %502

466:                                              ; preds = %411, %427, %461, %457, %455, %406
  %467 = getelementptr inbounds %struct.tree_common, ptr %323, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !216
  %469 = call ptr @create_tmp_var(ptr noundef %468, ptr noundef null)
  %470 = load ptr, ptr %467, align 8, !tbaa !216
  %471 = load i64, ptr %470, align 8
  %472 = trunc i64 %471 to i32
  %473 = and i32 %472, 65535
  %474 = add nsw i32 %473, -13
  %475 = icmp ult i32 %474, 2
  br i1 %475, label %476, label %480

476:                                              ; preds = %466
  %477 = getelementptr inbounds %struct.tree_decl_common, ptr %469, i64 0, i32 2
  %478 = load i64, ptr %477, align 8
  %479 = or i64 %478, 134217728
  store i64 %479, ptr %477, align 8
  br label %480

480:                                              ; preds = %466, %476
  %481 = load ptr, ptr @cfun, align 8, !tbaa !205
  %482 = icmp eq ptr %481, null
  br i1 %482, label %494, label %483

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.function, ptr %481, i64 0, i32 3
  %485 = load ptr, ptr %484, align 8, !tbaa !673
  %486 = icmp eq ptr %485, null
  br i1 %486, label %494, label %487

487:                                              ; preds = %483
  %488 = getelementptr inbounds %struct.gimple_df, ptr %485, i64 0, i32 10
  %489 = load i8, ptr %488, align 8
  %490 = and i8 %489, 1
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %494, label %492

492:                                              ; preds = %487
  %493 = call ptr @make_ssa_name_fn(ptr noundef nonnull %481, ptr noundef %469, ptr noundef null) #24
  br label %494

494:                                              ; preds = %483, %480, %492, %487
  %495 = phi ptr [ %493, %492 ], [ %469, %487 ], [ %469, %480 ], [ %469, %483 ]
  call void @gimple_set_lhs(ptr noundef nonnull %0, ptr noundef %495) #24
  %496 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %323, ptr noundef %495) #24
  %497 = load i64, ptr %323, align 8
  %498 = and i64 %497, 65535
  %499 = icmp eq i64 %498, 141
  br i1 %499, label %500, label %502

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.tree_ssa_name, ptr %323, i64 0, i32 2
  store ptr %496, ptr %501, align 8, !tbaa !216
  br label %502

502:                                              ; preds = %380, %393, %424, %450, %461, %406, %500, %494, %322, %325, %200, %81, %78, %61
  %503 = phi ptr [ null, %325 ], [ null, %322 ], [ null, %200 ], [ null, %81 ], [ null, %78 ], [ null, %61 ], [ null, %406 ], [ %496, %500 ], [ %496, %494 ], [ null, %461 ], [ null, %450 ], [ null, %424 ], [ null, %393 ], [ null, %380 ]
  %504 = load ptr, ptr @cfun, align 8, !tbaa !205
  %505 = getelementptr inbounds %struct.function, ptr %504, i64 0, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !673
  %507 = icmp eq ptr %506, null
  br i1 %507, label %522, label %508

508:                                              ; preds = %502
  %509 = load ptr, ptr %506, align 8, !tbaa !677
  %510 = icmp eq ptr %509, null
  br i1 %510, label %522, label %511

511:                                              ; preds = %508
  %512 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %513 = getelementptr inbounds %struct.gimplify_ctx, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !216
  %515 = icmp eq ptr %514, null
  br i1 %515, label %522, label %516

516:                                              ; preds = %511, %516
  %517 = phi ptr [ %520, %516 ], [ %514, %511 ]
  %518 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %517) #24
  %519 = getelementptr inbounds %struct.tree_common, ptr %517, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !216
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %516, !llvm.loop !681

522:                                              ; preds = %516, %511, %502, %508
  %523 = load ptr, ptr %3, align 8, !tbaa !205
  %524 = icmp eq ptr %523, null
  br i1 %524, label %554, label %525

525:                                              ; preds = %522
  %526 = load ptr, ptr %523, align 8, !tbaa !274
  %527 = icmp eq ptr %526, null
  br i1 %527, label %554, label %528

528:                                              ; preds = %525
  %529 = load ptr, ptr @cfun, align 8, !tbaa !205
  %530 = icmp eq ptr %529, null
  br i1 %530, label %552, label %531

531:                                              ; preds = %528
  %532 = getelementptr inbounds %struct.function, ptr %529, i64 0, i32 3
  %533 = load ptr, ptr %532, align 8, !tbaa !673
  %534 = icmp eq ptr %533, null
  br i1 %534, label %552, label %535

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.gimple_df, ptr %533, i64 0, i32 10
  %537 = load i8, ptr %536, align 8
  %538 = and i8 %537, 1
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %552, label %540

540:                                              ; preds = %535
  br i1 %524, label %543, label %541

541:                                              ; preds = %540
  %542 = load ptr, ptr %523, align 8, !tbaa !274, !noalias !682
  br label %543

543:                                              ; preds = %541, %540
  %544 = phi ptr [ %542, %541 ], [ null, %540 ]
  %545 = icmp eq ptr %544, null
  br i1 %545, label %552, label %546

546:                                              ; preds = %543, %546
  %547 = phi ptr [ %550, %546 ], [ %544, %543 ]
  %548 = load ptr, ptr %547, align 8, !tbaa !275
  call void @mark_symbols_for_renaming(ptr noundef %548) #24
  %549 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %547, i64 0, i32 2
  %550 = load ptr, ptr %549, align 8, !tbaa !307
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %546, !llvm.loop !685

552:                                              ; preds = %546, %543, %531, %528, %535
  %553 = load ptr, ptr %3, align 8, !tbaa !205
  call void @gsi_insert_seq_before(ptr noundef %1, ptr noundef %553, i32 noundef 1) #24
  br label %554

554:                                              ; preds = %522, %552, %525
  %555 = icmp eq ptr %503, null
  br i1 %555, label %557, label %556

556:                                              ; preds = %554
  call void @gsi_insert_after(ptr noundef %1, ptr noundef nonnull %503, i32 noundef 0) #24
  br label %557

557:                                              ; preds = %556, %554
  call void @pop_gimplify_context(ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #3

declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @force_gimple_operand(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #12 !prof !686 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimplify_ctx, align 8
  store ptr %0, ptr %6, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #24
  store ptr null, ptr %1, align 8, !tbaa !205
  %8 = tail call zeroext i8 @is_gimple_val(ptr noundef %0) #24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %93, !prof !687

10:                                               ; preds = %4
  %11 = icmp eq i8 %2, 0
  %12 = select i1 %11, ptr @is_gimple_reg_rhs, ptr @is_gimple_val, !prof !688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %13 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %13, ptr %7, align 8, !tbaa !227
  store ptr %7, ptr @gimplify_ctxp, align 8, !tbaa !205
  %14 = load ptr, ptr @cfun, align 8, !tbaa !205
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16, !prof !689

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !673
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !689

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 10
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 1
  br label %24

24:                                               ; preds = %10, %16, %20
  %25 = phi i8 [ 0, %16 ], [ 0, %10 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.gimplify_ctx, ptr %7, i64 0, i32 10
  store i8 %25, ptr %26, align 1, !tbaa !290
  %27 = getelementptr inbounds %struct.gimplify_ctx, ptr %7, i64 0, i32 11
  store i8 1, ptr %27, align 2, !tbaa !405
  %28 = icmp eq ptr %3, null
  br i1 %28, label %34, label %29, !prof !690

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  %32 = load ptr, ptr %6, align 8, !tbaa !205
  %33 = call ptr @build2_stat(i32 noundef 53, ptr noundef %31, ptr noundef nonnull %3, ptr noundef %32) #24
  store ptr %33, ptr %6, align 8, !tbaa !205
  br label %34

34:                                               ; preds = %29, %24
  %35 = load ptr, ptr %6, align 8, !tbaa !205
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 53
  br i1 %38, label %46, label %39, !prof !689

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !216
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %46, !prof !689

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %35, ptr %5, align 8, !tbaa !205
  %45 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %1), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  store ptr null, ptr %6, align 8, !tbaa !205
  br label %50

46:                                               ; preds = %39, %34
  %47 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %12, i32 noundef 1)
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %49, label %50, !prof !689

49:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7901, ptr noundef nonnull @.str.1) #24
  br label %50

50:                                               ; preds = %49, %46, %44
  %51 = load ptr, ptr @cfun, align 8, !tbaa !205
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !673
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55, !prof !689

55:                                               ; preds = %50
  %56 = load ptr, ptr %53, align 8, !tbaa !677
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58, !prof !689

58:                                               ; preds = %55
  %59 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %60 = getelementptr inbounds %struct.gimplify_ctx, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !216
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63, !prof !691

63:                                               ; preds = %58, %63
  %64 = phi ptr [ %67, %63 ], [ %61, %58 ]
  %65 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %64) #24
  %66 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !216
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %63, !prof !692, !llvm.loop !693

69:                                               ; preds = %63, %58, %50, %55
  %70 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72, !prof !230

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.gimplify_ctx, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !231
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76, !prof !232

76:                                               ; preds = %72
  %77 = load i32, ptr %74, align 8, !tbaa !233
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !235

79:                                               ; preds = %76, %69
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #24
  br label %80

80:                                               ; preds = %79, %76, %72
  %81 = getelementptr inbounds %struct.gimplify_ctx, ptr %70, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !205
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84, !prof !232

84:                                               ; preds = %80
  call void @free(ptr noundef %82)
  br label %85

85:                                               ; preds = %84, %80
  store ptr null, ptr %81, align 8, !tbaa !205
  %86 = load ptr, ptr %70, align 8, !tbaa !227
  store ptr %86, ptr @gimplify_ctxp, align 8, !tbaa !205
  %87 = getelementptr inbounds %struct.gimplify_ctx, ptr %70, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !236
  call void @record_vars(ptr noundef %88) #24
  %89 = getelementptr inbounds %struct.gimplify_ctx, ptr %70, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !238
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !239

92:                                               ; preds = %85
  call void @htab_delete(ptr noundef nonnull %90) #24
  br label %93

93:                                               ; preds = %92, %85, %4
  %94 = load ptr, ptr %6, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #24
  ret ptr %94
}

; Function Attrs: nounwind uwtable
define dso_local ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #12 !prof !694 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %8 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext %2, ptr noundef %3)
  %9 = load ptr, ptr %7, align 8, !tbaa !205
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11, !prof !695

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !274
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14, !prof !695

14:                                               ; preds = %11
  %15 = load ptr, ptr @cfun, align 8, !tbaa !205
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17, !prof !696

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !673
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21, !prof !696

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 10
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26, !prof !696

26:                                               ; preds = %21
  br i1 %10, label %29, label %27, !prof !696

27:                                               ; preds = %26
  %28 = load ptr, ptr %9, align 8, !tbaa !274, !noalias !697
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi ptr [ %28, %27 ], [ null, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !700

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %36, %32 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !275
  call void @mark_symbols_for_renaming(ptr noundef %34) #24
  %35 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !307
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %32, !prof !701, !llvm.loop !702

38:                                               ; preds = %32, %29, %17, %14, %21
  %39 = icmp eq i8 %4, 0
  %40 = load ptr, ptr %7, align 8, !tbaa !205
  br i1 %39, label %42, label %41, !prof !696

41:                                               ; preds = %38
  call void @gsi_insert_seq_before(ptr noundef %0, ptr noundef %40, i32 noundef %5) #24
  br label %43

42:                                               ; preds = %38
  call void @gsi_insert_seq_after(ptr noundef %0, ptr noundef %40, i32 noundef %5) #24
  br label %43

43:                                               ; preds = %6, %41, %42, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  ret ptr %8
}

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #21

declare ptr @alloc_stmt_list() local_unnamed_addr #3

declare void @tsi_link_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gimple_tree_hash(ptr nocapture noundef readonly %0) #14 !prof !703 !PGOFuncName !704 {
  %2 = load ptr, ptr %0, align 8, !tbaa !281
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #24
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @gimple_tree_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !705 !PGOFuncName !706 {
  %3 = load ptr, ptr %0, align 8, !tbaa !281
  %4 = load ptr, ptr %1, align 8, !tbaa !281
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = xor i64 %6, %5
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %26, !prof !707

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26, !prof !708

16:                                               ; preds = %10
  %17 = tail call i32 @operand_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19, !prof !709

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !281
  %21 = tail call i32 @iterative_hash_expr(ptr noundef %20, i32 noundef 0) #24
  %22 = load ptr, ptr %1, align 8, !tbaa !281
  %23 = tail call i32 @iterative_hash_expr(ptr noundef %22, i32 noundef 0) #24
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %26, label %25, !prof !710

25:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.1) #24
  br label %26

26:                                               ; preds = %25, %19, %16, %2, %10
  %27 = phi i32 [ 0, %10 ], [ 0, %2 ], [ 0, %16 ], [ 1, %19 ], [ 1, %25 ]
  ret i32 %27
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @max_int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @copy_tree_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #15 !prof !204 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !711
  %12 = tail call i32 @pointer_set_insert(ptr noundef %11, ptr noundef %9) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %48 [
    i16 8, label %17
    i16 6, label %17
    i16 7, label %17
    i16 9, label %17
    i16 11, label %17
    i16 15, label %22
    i16 16, label %27
    i16 17, label %27
    i16 18, label %27
    i16 10, label %45
    i16 12, label %45
  ]

17:                                               ; preds = %14, %14, %14, %14, %14
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %19)
  %20 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %21)
  br label %48

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !216
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %24)
  %25 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !216
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %26)
  br label %48

27:                                               ; preds = %14, %14, %14
  %28 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27, %41
  %32 = phi ptr [ %43, %41 ], [ %29, %27 ]
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 31
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_field_decl, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %38)
  %39 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !216
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %40)
  br label %41

41:                                               ; preds = %31, %36
  %42 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %31, !llvm.loop !712

45:                                               ; preds = %14, %14
  %46 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !216
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %47)
  br label %48

48:                                               ; preds = %41, %27, %14, %45, %22, %17
  %49 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %50)
  %51 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !216
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %52)
  %53 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 10), align 8, !tbaa !713
  tail call void %53(ptr noundef %0, ptr noundef nonnull %9) #24
  br label %54

54:                                               ; preds = %7, %2, %48
  ret void
}

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @canonicalize_component_ref(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !714 !PGOFuncName !715 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 41
  br i1 %5, label %7, label %6, !prof !716

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1654, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -6
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %17, !prof !717

15:                                               ; preds = %7
  %16 = tail call ptr @get_unwidened(ptr noundef nonnull %2, ptr noundef null) #24
  br label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %16, %15 ], [ %19, %17 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  %24 = load ptr, ptr %8, align 8, !tbaa !216
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %71, label %26, !prof !716

26:                                               ; preds = %20
  %27 = load i64, ptr %23, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 20
  %30 = and i32 %29, 1
  %31 = lshr i32 %28, 18
  %32 = and i32 %31, 2
  %33 = or disjoint i32 %30, %32
  %34 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 11
  %37 = and i32 %36, 4
  %38 = or disjoint i32 %33, %37
  %39 = lshr i64 %27, 48
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65280
  %42 = or disjoint i32 %38, %41
  %43 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !216
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !216
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %48, 20
  %50 = and i32 %49, 1
  %51 = lshr i32 %48, 18
  %52 = and i32 %51, 2
  %53 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 11
  %56 = and i32 %55, 4
  %57 = lshr i64 %47, 48
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 65280
  %60 = or disjoint i32 %52, %50
  %61 = or disjoint i32 %60, %56
  %62 = or disjoint i32 %61, %59
  %63 = or i32 %62, %42
  %64 = icmp eq i32 %42, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %26
  %66 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 16
  %67 = load ptr, ptr %66, align 8, !tbaa !216
  %68 = tail call ptr @build_qualified_type(ptr noundef %67, i32 noundef %63) #24
  br label %69

69:                                               ; preds = %65, %26
  %70 = phi ptr [ %68, %65 ], [ %23, %26 ]
  store ptr %70, ptr %8, align 8, !tbaa !216
  br label %71

71:                                               ; preds = %69, %20
  ret void
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_unwidened(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @generic_expr_could_trap_p(ptr noundef %0) unnamed_addr #15 !prof !204 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !220
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %46

13:                                               ; preds = %6
  %14 = tail call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %0) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !220
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !216
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %24, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !216
  %27 = trunc i64 %26 to i32
  br label %32

28:                                               ; preds = %16
  %29 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %18
  %30 = load i8, ptr %29, align 1, !tbaa !216
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %22, %28
  %33 = phi i32 [ %27, %22 ], [ %31, %28 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = zext i32 %33 to i64
  br label %40

37:                                               ; preds = %40
  %38 = add nuw nsw i64 %41, 1
  %39 = icmp eq i64 %38, %36
  br i1 %39, label %46, label %40, !llvm.loop !718

40:                                               ; preds = %35, %37
  %41 = phi i64 [ 0, %35 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef %43), !range !249
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %37, label %46

46:                                               ; preds = %40, %37, %32, %6, %13, %1, %3
  %47 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 1, %13 ], [ 1, %6 ], [ 0, %32 ], [ 0, %37 ], [ 1, %40 ]
  ret i8 %47
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @gimplify_pure_cond_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #15 !prof !204 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !216
  %7 = tail call ptr @gimple_boolify(ptr noundef %6)
  store ptr %7, ptr %3, align 8, !tbaa !205
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %15 [
    i16 91, label %11
    i16 92, label %10
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i64 [ 94, %10 ], [ 93, %2 ]
  %13 = and i64 %8, -65536
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %7, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = call i32 @gimplify_expr(ptr noundef nonnull %3, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_condexpr, i32 noundef 1)
  %17 = load ptr, ptr %3, align 8, !tbaa !205
  %18 = load ptr, ptr %0, align 8, !tbaa !205
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !216
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %21 = call i32 @gimplify_expr(ptr noundef nonnull %20, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %22 = call i32 @llvm.smin.i32(i32 %16, i32 %21)
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %24 = call i32 @gimplify_expr(ptr noundef nonnull %23, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %25 = call i32 @llvm.smin.i32(i32 %22, i32 %24)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %25
}

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @shortcut_cond_expr(ptr noundef %0) unnamed_addr #12 !prof !719 !PGOFuncName !720 {
  %2 = alloca %struct.tree_stmt_iterator, align 8
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = alloca %struct.tree_stmt_iterator, align 8
  %5 = alloca %struct.tree_stmt_iterator, align 8
  %6 = alloca %struct.tree_stmt_iterator, align 8
  %7 = alloca %struct.tree_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  %17 = icmp eq ptr %14, null
  br i1 %17, label %22, label %18, !prof !721

18:                                               ; preds = %1
  %19 = load i64, ptr %14, align 8
  %20 = and i64 %19, 65536
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi i1 [ false, %1 ], [ %21, %18 ]
  %24 = icmp eq ptr %16, null
  br i1 %24, label %29, label %25, !prof !722

25:                                               ; preds = %22
  %26 = load i64, ptr %16, align 8
  %27 = and i64 %26, 65536
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %97, label %31, !prof !723

31:                                               ; preds = %29
  %32 = load i64, ptr %12, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 91
  br i1 %34, label %35, label %97, !prof !724

35:                                               ; preds = %31, %88
  %36 = phi ptr [ %90, %88 ], [ %12, %31 ]
  %37 = phi ptr [ %92, %88 ], [ %0, %31 ]
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !220
  %42 = add i32 %41, -4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %44, label %47, !prof !512

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !216
  br label %47

47:                                               ; preds = %35, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %35 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !327

50:                                               ; preds = %47
  br i1 %43, label %51, label %56, !prof !512

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !216
  br label %56

54:                                               ; preds = %47
  %55 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %56

56:                                               ; preds = %51, %50, %54
  %57 = phi i32 [ %55, %54 ], [ %53, %51 ], [ 0, %50 ]
  %58 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %59 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  %61 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  store ptr %60, ptr %61, align 8, !tbaa !216
  %62 = load i64, ptr %36, align 8
  %63 = and i64 %62, 65535
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !220
  %66 = add i32 %65, -4
  %67 = icmp ult i32 %66, 7
  br i1 %67, label %68, label %71, !prof !512

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !216
  br label %71

71:                                               ; preds = %56, %68
  %72 = phi i32 [ %70, %68 ], [ 0, %56 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74, !prof !327

74:                                               ; preds = %71
  br i1 %67, label %75, label %78, !prof !512

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !216
  br label %78

78:                                               ; preds = %74, %75
  %79 = phi i32 [ %77, %75 ], [ 0, %74 ]
  %80 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 1
  store i32 %79, ptr %80, align 8, !tbaa !216
  br label %81

81:                                               ; preds = %78, %71
  %82 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %37)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84, !prof !327

84:                                               ; preds = %81
  %85 = load i64, ptr %82, align 8
  %86 = and i64 %85, 65536
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ false, %81 ], [ %87, %84 ]
  %90 = load ptr, ptr %58, align 8, !tbaa !216
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %92 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %91, ptr noundef %90, ptr noundef %82, ptr noundef null) #24
  %93 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 1
  store i32 %57, ptr %93, align 8, !tbaa !216
  %94 = load i64, ptr %90, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 91
  br i1 %96, label %35, label %97, !prof !327, !llvm.loop !725

97:                                               ; preds = %88, %31, %29
  %98 = phi ptr [ %0, %29 ], [ %0, %31 ], [ %92, %88 ]
  %99 = phi i1 [ %23, %29 ], [ %23, %31 ], [ %89, %88 ]
  %100 = phi ptr [ %14, %29 ], [ %14, %31 ], [ %82, %88 ]
  %101 = phi ptr [ %12, %29 ], [ %12, %31 ], [ %90, %88 ]
  br i1 %99, label %168, label %102, !prof !726

102:                                              ; preds = %97
  %103 = load i64, ptr %101, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 92
  br i1 %105, label %106, label %168

106:                                              ; preds = %102, %159
  %107 = phi ptr [ %161, %159 ], [ %101, %102 ]
  %108 = phi ptr [ %163, %159 ], [ %98, %102 ]
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !220
  %113 = add i32 %112, -4
  %114 = icmp ult i32 %113, 7
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !216
  br label %118

118:                                              ; preds = %106, %115
  %119 = phi i32 [ %117, %115 ], [ 0, %106 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  br i1 %114, label %122, label %127

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !216
  br label %127

125:                                              ; preds = %118
  %126 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %127

127:                                              ; preds = %122, %121, %125
  %128 = phi i32 [ %126, %125 ], [ %124, %122 ], [ 0, %121 ]
  %129 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 3
  %130 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !216
  %132 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  store ptr %131, ptr %132, align 8, !tbaa !216
  %133 = load i64, ptr %107, align 8
  %134 = and i64 %133, 65535
  %135 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !220
  %137 = add i32 %136, -4
  %138 = icmp ult i32 %137, 7
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !216
  br label %142

142:                                              ; preds = %127, %139
  %143 = phi i32 [ %141, %139 ], [ 0, %127 ]
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  br i1 %138, label %146, label %149

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !216
  br label %149

149:                                              ; preds = %145, %146
  %150 = phi i32 [ %148, %146 ], [ 0, %145 ]
  %151 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 1
  store i32 %150, ptr %151, align 8, !tbaa !216
  br label %152

152:                                              ; preds = %149, %142
  %153 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %108)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = load i64, ptr %153, align 8
  %157 = and i64 %156, 65536
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi i1 [ false, %152 ], [ %158, %155 ]
  %161 = load ptr, ptr %129, align 8, !tbaa !216
  %162 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %163 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %162, ptr noundef %161, ptr noundef null, ptr noundef %153) #24
  %164 = getelementptr inbounds %struct.tree_exp, ptr %163, i64 0, i32 1
  store i32 %128, ptr %164, align 8, !tbaa !216
  %165 = load i64, ptr %161, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 92
  br i1 %167, label %106, label %168, !llvm.loop !727

168:                                              ; preds = %159, %102, %97
  %169 = phi ptr [ %98, %97 ], [ %98, %102 ], [ %163, %159 ]
  %170 = phi ptr [ %16, %97 ], [ %16, %102 ], [ %153, %159 ]
  %171 = phi i1 [ %30, %97 ], [ %30, %102 ], [ %160, %159 ]
  %172 = phi ptr [ %101, %97 ], [ %101, %102 ], [ %161, %159 ]
  %173 = load i64, ptr %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = and i32 %174, 65535
  %176 = add nsw i32 %175, -91
  %177 = icmp ult i32 %176, 2
  br i1 %177, label %178, label %431, !prof !723

178:                                              ; preds = %168
  store ptr null, ptr %10, align 8, !tbaa !205
  store ptr null, ptr %9, align 8, !tbaa !205
  store ptr null, ptr %8, align 8, !tbaa !205
  %179 = icmp eq ptr %100, null
  br i1 %179, label %191, label %180, !prof !728

180:                                              ; preds = %178
  %181 = load i64, ptr %100, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 134
  br i1 %183, label %184, label %191, !prof !728

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !216
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 30
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  store ptr %186, ptr %8, align 8, !tbaa !205
  br label %191

191:                                              ; preds = %190, %184, %180, %178
  %192 = phi i1 [ false, %190 ], [ %99, %184 ], [ %99, %180 ], [ %99, %178 ]
  %193 = phi ptr [ null, %190 ], [ %100, %184 ], [ %100, %180 ], [ null, %178 ]
  %194 = icmp eq ptr %170, null
  br i1 %194, label %206, label %195, !prof !728

195:                                              ; preds = %191
  %196 = load i64, ptr %170, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 134
  br i1 %198, label %199, label %206, !prof !728

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.tree_exp, ptr %170, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !216
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 30
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store ptr %201, ptr %9, align 8, !tbaa !205
  br label %206

206:                                              ; preds = %205, %199, %195, %191
  %207 = phi ptr [ null, %205 ], [ %170, %199 ], [ %170, %195 ], [ null, %191 ]
  %208 = phi i1 [ false, %205 ], [ %171, %199 ], [ %171, %195 ], [ %171, %191 ]
  %209 = load ptr, ptr %8, align 8, !tbaa !205
  %210 = icmp eq ptr %209, null
  %211 = select i1 %210, ptr null, ptr %8, !prof !729
  %212 = load ptr, ptr %9, align 8, !tbaa !205
  %213 = icmp ne ptr %212, null
  %214 = select i1 %213, i1 true, i1 %208, !prof !728
  %215 = select i1 %214, ptr %9, ptr null, !prof !729
  %216 = select i1 %192, i1 true, i1 %208, !prof !729
  br i1 %216, label %233, label %217, !prof !729

217:                                              ; preds = %206
  %218 = load i64, ptr %169, align 8
  %219 = and i64 %218, 65535
  %220 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !220
  %222 = add i32 %221, -4
  %223 = icmp ult i32 %222, 7
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.tree_exp, ptr %169, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !216
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %217, %224
  %229 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %230

230:                                              ; preds = %224, %228
  %231 = phi i32 [ %229, %228 ], [ %226, %224 ]
  %232 = call fastcc ptr @shortcut_cond_r(ptr noundef nonnull %172, ptr noundef %211, ptr noundef %215, i32 noundef %231)
  br label %431

233:                                              ; preds = %206
  br i1 %208, label %235, label %234, !prof !729

234:                                              ; preds = %233
  br i1 %192, label %235, label %238

235:                                              ; preds = %234, %233
  %236 = phi ptr [ %207, %233 ], [ %193, %234 ]
  %237 = tail call ptr @expr_last(ptr noundef %236) #24
  br label %238

238:                                              ; preds = %235, %234
  %239 = phi ptr [ null, %234 ], [ %237, %235 ]
  %240 = icmp eq ptr %239, null
  br i1 %240, label %248, label %241, !prof !728

241:                                              ; preds = %238
  %242 = load i64, ptr %239, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 133
  br i1 %244, label %245, label %248, !prof !728

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.tree_exp, ptr %239, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !216
  store ptr %247, ptr %10, align 8, !tbaa !205
  br label %248

248:                                              ; preds = %245, %241, %238
  %249 = select i1 %214, ptr %9, ptr %10, !prof !729
  %250 = load ptr, ptr %10, align 8, !tbaa !205
  %251 = icmp eq ptr %250, null
  %252 = load ptr, ptr %9, align 8, !tbaa !205
  %253 = icmp eq ptr %252, null
  %254 = tail call zeroext i8 @block_may_fallthru(ptr noundef %193) #24
  %255 = load i64, ptr %169, align 8
  %256 = and i64 %255, 65535
  %257 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !220
  %259 = add i32 %258, -4
  %260 = icmp ult i32 %259, 7
  br i1 %260, label %261, label %265, !prof !729

261:                                              ; preds = %248
  %262 = getelementptr inbounds %struct.tree_exp, ptr %169, i64 0, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !216
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %267, !prof !728

265:                                              ; preds = %248, %261
  %266 = load i32, ptr @input_location, align 4, !tbaa !220
  br label %267

267:                                              ; preds = %261, %265
  %268 = phi i32 [ %266, %265 ], [ %263, %261 ]
  %269 = call fastcc ptr @shortcut_cond_r(ptr noundef nonnull %172, ptr noundef %211, ptr noundef nonnull %249, i32 noundef %268)
  %270 = icmp eq ptr %269, null
  br i1 %270, label %286, label %271, !prof !728

271:                                              ; preds = %267
  %272 = load i64, ptr %269, align 8
  %273 = and i64 %272, 65536
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %286, label %275, !prof !728

275:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %276 = load i64, ptr %269, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 147
  br i1 %278, label %284, label %279, !prof !243

279:                                              ; preds = %275
  %280 = call ptr @alloc_stmt_list() #24
  %281 = getelementptr inbounds %struct.tree_statement_list, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !216
  store ptr %282, ptr %7, align 8, !tbaa.struct !244
  %283 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %280, ptr %283, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %7, ptr noundef nonnull %269, i32 noundef 4) #24
  br label %284

284:                                              ; preds = %275, %279
  %285 = phi ptr [ %280, %279 ], [ %269, %275 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %286

286:                                              ; preds = %267, %271, %284
  %287 = phi ptr [ null, %267 ], [ null, %271 ], [ %285, %284 ]
  %288 = icmp eq ptr %193, null
  br i1 %288, label %308, label %289, !prof !728

289:                                              ; preds = %286
  %290 = load i64, ptr %193, align 8
  %291 = and i64 %290, 65536
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %308, label %293, !prof !728

293:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %294 = icmp eq ptr %287, null
  br i1 %294, label %295, label %301, !prof !242

295:                                              ; preds = %293
  %296 = load i64, ptr %193, align 8
  %297 = and i64 %296, 65535
  %298 = icmp eq i64 %297, 147
  br i1 %298, label %306, label %299, !prof !243

299:                                              ; preds = %295
  %300 = call ptr @alloc_stmt_list() #24
  br label %301

301:                                              ; preds = %299, %293
  %302 = phi ptr [ %300, %299 ], [ %287, %293 ]
  %303 = getelementptr inbounds %struct.tree_statement_list, ptr %302, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !216
  store ptr %304, ptr %6, align 8, !tbaa.struct !244
  %305 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %302, ptr %305, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %6, ptr noundef nonnull %193, i32 noundef 4) #24
  br label %306

306:                                              ; preds = %295, %301
  %307 = phi ptr [ %302, %301 ], [ %193, %295 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %308

308:                                              ; preds = %286, %289, %306
  %309 = phi ptr [ %287, %286 ], [ %287, %289 ], [ %307, %306 ]
  br i1 %208, label %310, label %403, !prof !729

310:                                              ; preds = %308
  %311 = icmp eq i8 %254, 0
  br i1 %311, label %355, label %312, !prof !730

312:                                              ; preds = %310
  %313 = call ptr @expr_last(ptr noundef %309) #24
  %314 = load ptr, ptr %10, align 8, !tbaa !205
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %318, !prof !536

316:                                              ; preds = %312
  %317 = call ptr @create_artificial_label(i32 noundef 0) #24
  store ptr %317, ptr %10, align 8, !tbaa !205
  br label %318

318:                                              ; preds = %312, %316
  %319 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %320 = load ptr, ptr %10, align 8, !tbaa !205
  %321 = call ptr @build1_stat(i32 noundef 134, ptr noundef %319, ptr noundef %320) #24
  %322 = load i64, ptr %313, align 8
  %323 = and i64 %322, 65535
  %324 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !220
  %326 = add i32 %325, -4
  %327 = icmp ult i32 %326, 7
  br i1 %327, label %328, label %334, !prof !536

328:                                              ; preds = %318
  %329 = getelementptr inbounds %struct.tree_exp, ptr %313, i64 0, i32 1
  %330 = load i32, ptr %329, align 8, !tbaa !216
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332, !prof !536

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.tree_exp, ptr %321, i64 0, i32 1
  store i32 %330, ptr %333, align 8, !tbaa !216
  br label %334

334:                                              ; preds = %318, %332, %328
  %335 = icmp eq ptr %321, null
  br i1 %335, label %355, label %336, !prof !731

336:                                              ; preds = %334
  %337 = load i64, ptr %321, align 8
  %338 = and i64 %337, 65536
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %355, label %340, !prof !731

340:                                              ; preds = %336
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %341 = icmp eq ptr %309, null
  br i1 %341, label %342, label %348, !prof !242

342:                                              ; preds = %340
  %343 = load i64, ptr %321, align 8
  %344 = and i64 %343, 65535
  %345 = icmp eq i64 %344, 147
  br i1 %345, label %353, label %346, !prof !243

346:                                              ; preds = %342
  %347 = call ptr @alloc_stmt_list() #24
  br label %348

348:                                              ; preds = %346, %340
  %349 = phi ptr [ %347, %346 ], [ %309, %340 ]
  %350 = getelementptr inbounds %struct.tree_statement_list, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !216
  store ptr %351, ptr %5, align 8, !tbaa.struct !244
  %352 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %349, ptr %352, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %5, ptr noundef nonnull %321, i32 noundef 4) #24
  br label %353

353:                                              ; preds = %342, %348
  %354 = phi ptr [ %349, %348 ], [ %321, %342 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  br label %355

355:                                              ; preds = %353, %336, %334, %310
  %356 = phi ptr [ %309, %310 ], [ %309, %334 ], [ %309, %336 ], [ %354, %353 ]
  br i1 %253, label %357, label %381, !prof !729

357:                                              ; preds = %355
  %358 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %359 = load ptr, ptr %9, align 8, !tbaa !205
  %360 = call ptr @build1_stat(i32 noundef 133, ptr noundef %358, ptr noundef %359) #24
  %361 = icmp eq ptr %360, null
  br i1 %361, label %381, label %362, !prof !728

362:                                              ; preds = %357
  %363 = load i64, ptr %360, align 8
  %364 = and i64 %363, 65536
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %381, label %366, !prof !728

366:                                              ; preds = %362
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %367 = icmp eq ptr %356, null
  br i1 %367, label %368, label %374, !prof !242

368:                                              ; preds = %366
  %369 = load i64, ptr %360, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 147
  br i1 %371, label %379, label %372, !prof !243

372:                                              ; preds = %368
  %373 = call ptr @alloc_stmt_list() #24
  br label %374

374:                                              ; preds = %372, %366
  %375 = phi ptr [ %373, %372 ], [ %356, %366 ]
  %376 = getelementptr inbounds %struct.tree_statement_list, ptr %375, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !216
  store ptr %377, ptr %4, align 8, !tbaa.struct !244
  %378 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %375, ptr %378, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %4, ptr noundef nonnull %360, i32 noundef 4) #24
  br label %379

379:                                              ; preds = %368, %374
  %380 = phi ptr [ %375, %374 ], [ %360, %368 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  br label %381

381:                                              ; preds = %379, %362, %357, %355
  %382 = phi ptr [ %356, %357 ], [ %356, %362 ], [ %380, %379 ], [ %356, %355 ]
  %383 = icmp eq ptr %207, null
  br i1 %383, label %403, label %384, !prof !728

384:                                              ; preds = %381
  %385 = load i64, ptr %207, align 8
  %386 = and i64 %385, 65536
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %403, label %388, !prof !728

388:                                              ; preds = %384
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %389 = icmp eq ptr %382, null
  br i1 %389, label %390, label %396, !prof !242

390:                                              ; preds = %388
  %391 = load i64, ptr %207, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 147
  br i1 %393, label %401, label %394, !prof !243

394:                                              ; preds = %390
  %395 = call ptr @alloc_stmt_list() #24
  br label %396

396:                                              ; preds = %394, %388
  %397 = phi ptr [ %395, %394 ], [ %382, %388 ]
  %398 = getelementptr inbounds %struct.tree_statement_list, ptr %397, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !216
  store ptr %399, ptr %3, align 8, !tbaa.struct !244
  %400 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %397, ptr %400, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef nonnull %207, i32 noundef 4) #24
  br label %401

401:                                              ; preds = %390, %396
  %402 = phi ptr [ %397, %396 ], [ %207, %390 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %403

403:                                              ; preds = %401, %384, %381, %308
  %404 = phi ptr [ %382, %381 ], [ %382, %384 ], [ %402, %401 ], [ %309, %308 ]
  %405 = load ptr, ptr %10, align 8
  %406 = icmp ne ptr %405, null
  %407 = select i1 %251, i1 %406, i1 false, !prof !729
  br i1 %407, label %408, label %431, !prof !732

408:                                              ; preds = %403
  %409 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %410 = call ptr @build1_stat(i32 noundef 133, ptr noundef %409, ptr noundef nonnull %405) #24
  %411 = icmp eq ptr %410, null
  br i1 %411, label %431, label %412, !prof !731

412:                                              ; preds = %408
  %413 = load i64, ptr %410, align 8
  %414 = and i64 %413, 65536
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %431, label %416, !prof !731

416:                                              ; preds = %412
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %417 = icmp eq ptr %404, null
  br i1 %417, label %418, label %424, !prof !242

418:                                              ; preds = %416
  %419 = load i64, ptr %410, align 8
  %420 = and i64 %419, 65535
  %421 = icmp eq i64 %420, 147
  br i1 %421, label %429, label %422, !prof !243

422:                                              ; preds = %418
  %423 = call ptr @alloc_stmt_list() #24
  br label %424

424:                                              ; preds = %422, %416
  %425 = phi ptr [ %423, %422 ], [ %404, %416 ]
  %426 = getelementptr inbounds %struct.tree_statement_list, ptr %425, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !216
  store ptr %427, ptr %2, align 8, !tbaa.struct !244
  %428 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %425, ptr %428, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %2, ptr noundef nonnull %410, i32 noundef 4) #24
  br label %429

429:                                              ; preds = %418, %424
  %430 = phi ptr [ %425, %424 ], [ %410, %418 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  br label %431

431:                                              ; preds = %403, %408, %412, %429, %168, %230
  %432 = phi ptr [ %232, %230 ], [ %169, %168 ], [ %404, %408 ], [ %404, %412 ], [ %430, %429 ], [ %404, %403 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  ret ptr %432
}

declare void @gimple_cond_get_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_seq_may_fallthru(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @shortcut_cond_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #14 !prof !733 !PGOFuncName !734 {
  %5 = alloca %struct.tree_stmt_iterator, align 8
  %6 = alloca %struct.tree_stmt_iterator, align 8
  %7 = alloca %struct.tree_stmt_iterator, align 8
  %8 = alloca %struct.tree_stmt_iterator, align 8
  %9 = alloca %struct.tree_stmt_iterator, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  store ptr null, ptr %10, align 8, !tbaa !205
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %160 [
    i16 91, label %13
    i16 92, label %73
    i16 56, label %133
  ], !prof !735

13:                                               ; preds = %4
  %14 = icmp eq ptr %2, null
  %15 = select i1 %14, ptr %10, ptr %2, !prof !736
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = call fastcc ptr @shortcut_cond_r(ptr noundef %17, ptr noundef null, ptr noundef nonnull %15, i32 noundef %3)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20, !prof !737

20:                                               ; preds = %13
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 65536
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %35, label %24, !prof !737

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #24
  %25 = load i64, ptr %18, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 147
  br i1 %27, label %33, label %28, !prof !243

28:                                               ; preds = %24
  %29 = call ptr @alloc_stmt_list() #24
  %30 = getelementptr inbounds %struct.tree_statement_list, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  store ptr %31, ptr %9, align 8, !tbaa.struct !244
  %32 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %29, ptr %32, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %9, ptr noundef nonnull %18, i32 noundef 4) #24
  br label %33

33:                                               ; preds = %24, %28
  %34 = phi ptr [ %29, %28 ], [ %18, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  br label %35

35:                                               ; preds = %13, %20, %33
  %36 = phi ptr [ null, %13 ], [ null, %20 ], [ %34, %33 ]
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !220
  %41 = add i32 %40, -4
  %42 = icmp ult i32 %41, 7
  br i1 %42, label %43, label %48, !prof !738

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !216
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %3, i32 %45, !prof !737
  br label %48

48:                                               ; preds = %43, %35
  %49 = phi i32 [ %3, %35 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !216
  %52 = call fastcc ptr @shortcut_cond_r(ptr noundef %51, ptr noundef %1, ptr noundef nonnull %15, i32 noundef %49)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %188, label %54, !prof !737

54:                                               ; preds = %48
  %55 = load i64, ptr %52, align 8
  %56 = and i64 %55, 65536
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %188, label %58, !prof !737

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  %59 = icmp eq ptr %36, null
  br i1 %59, label %60, label %66, !prof !242

60:                                               ; preds = %58
  %61 = load i64, ptr %52, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 147
  br i1 %63, label %71, label %64, !prof !243

64:                                               ; preds = %60
  %65 = call ptr @alloc_stmt_list() #24
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi ptr [ %65, %64 ], [ %36, %58 ]
  %68 = getelementptr inbounds %struct.tree_statement_list, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !216
  store ptr %69, ptr %8, align 8, !tbaa.struct !244
  %70 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %67, ptr %70, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %8, ptr noundef nonnull %52, i32 noundef 4) #24
  br label %71

71:                                               ; preds = %60, %66
  %72 = phi ptr [ %67, %66 ], [ %52, %60 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %188

73:                                               ; preds = %4
  %74 = icmp eq ptr %1, null
  %75 = select i1 %74, ptr %10, ptr %1, !prof !739
  %76 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !216
  %78 = call fastcc ptr @shortcut_cond_r(ptr noundef %77, ptr noundef nonnull %75, ptr noundef null, i32 noundef %3)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80, !prof !740

80:                                               ; preds = %73
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 65536
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %95, label %84, !prof !740

84:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %85 = load i64, ptr %78, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 147
  br i1 %87, label %93, label %88, !prof !243

88:                                               ; preds = %84
  %89 = call ptr @alloc_stmt_list() #24
  %90 = getelementptr inbounds %struct.tree_statement_list, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !216
  store ptr %91, ptr %7, align 8, !tbaa.struct !244
  %92 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %89, ptr %92, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %7, ptr noundef nonnull %78, i32 noundef 4) #24
  br label %93

93:                                               ; preds = %84, %88
  %94 = phi ptr [ %89, %88 ], [ %78, %84 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %95

95:                                               ; preds = %73, %80, %93
  %96 = phi ptr [ null, %73 ], [ null, %80 ], [ %94, %93 ]
  %97 = load i64, ptr %0, align 8
  %98 = and i64 %97, 65535
  %99 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !220
  %101 = add i32 %100, -4
  %102 = icmp ult i32 %101, 7
  br i1 %102, label %103, label %108, !prof !741

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !216
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 %3, i32 %105, !prof !740
  br label %108

108:                                              ; preds = %103, %95
  %109 = phi i32 [ %3, %95 ], [ %107, %103 ]
  %110 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !216
  %112 = call fastcc ptr @shortcut_cond_r(ptr noundef %111, ptr noundef nonnull %75, ptr noundef %2, i32 noundef %109)
  %113 = icmp eq ptr %112, null
  br i1 %113, label %188, label %114, !prof !740

114:                                              ; preds = %108
  %115 = load i64, ptr %112, align 8
  %116 = and i64 %115, 65536
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %188, label %118, !prof !740

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %119 = icmp eq ptr %96, null
  br i1 %119, label %120, label %126, !prof !242

120:                                              ; preds = %118
  %121 = load i64, ptr %112, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 147
  br i1 %123, label %131, label %124, !prof !243

124:                                              ; preds = %120
  %125 = call ptr @alloc_stmt_list() #24
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %96, %118 ]
  %128 = getelementptr inbounds %struct.tree_statement_list, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !216
  store ptr %129, ptr %6, align 8, !tbaa.struct !244
  %130 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %127, ptr %130, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %6, ptr noundef nonnull %112, i32 noundef 4) #24
  br label %131

131:                                              ; preds = %120, %126
  %132 = phi ptr [ %127, %126 ], [ %112, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %188

133:                                              ; preds = %4
  %134 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 56), align 4, !tbaa !220
  %135 = add i32 %134, -4
  %136 = icmp ult i32 %135, 7
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !216
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = and i64 %11, 65535
  %143 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !220
  %145 = add i32 %144, -4
  %146 = icmp ult i32 %145, 7
  %147 = select i1 %146, i32 %139, i32 0
  br label %148

148:                                              ; preds = %141, %137, %133
  %149 = phi i32 [ %3, %133 ], [ %3, %137 ], [ %147, %141 ]
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %151 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !216
  %153 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !216
  %155 = tail call fastcc ptr @shortcut_cond_r(ptr noundef %154, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %156 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !216
  %158 = tail call fastcc ptr @shortcut_cond_r(ptr noundef %157, ptr noundef %1, ptr noundef %2, i32 noundef %149)
  %159 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %150, ptr noundef %152, ptr noundef %155, ptr noundef %158) #24
  br label %188

160:                                              ; preds = %4
  %161 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %162 = icmp eq ptr %1, null
  br i1 %162, label %172, label %163, !prof !324

163:                                              ; preds = %160
  %164 = load ptr, ptr %1, align 8, !tbaa !205
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %168, !prof !325

166:                                              ; preds = %163
  %167 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  store ptr %167, ptr %1, align 8, !tbaa !205
  br label %168

168:                                              ; preds = %166, %163
  %169 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %170 = load ptr, ptr %1, align 8, !tbaa !205
  %171 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %169, ptr noundef %170) #24
  br label %172

172:                                              ; preds = %160, %168
  %173 = phi ptr [ %171, %168 ], [ null, %160 ]
  %174 = icmp eq ptr %2, null
  br i1 %174, label %184, label %175, !prof !324

175:                                              ; preds = %172
  %176 = load ptr, ptr %2, align 8, !tbaa !205
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %180, !prof !325

178:                                              ; preds = %175
  %179 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  store ptr %179, ptr %2, align 8, !tbaa !205
  br label %180

180:                                              ; preds = %178, %175
  %181 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %182 = load ptr, ptr %2, align 8, !tbaa !205
  %183 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %181, ptr noundef %182) #24
  br label %184

184:                                              ; preds = %172, %180
  %185 = phi ptr [ %183, %180 ], [ null, %172 ]
  %186 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %161, ptr noundef nonnull %0, ptr noundef %173, ptr noundef %185) #24
  %187 = getelementptr inbounds %struct.tree_exp, ptr %186, i64 0, i32 1
  store i32 %3, ptr %187, align 8, !tbaa !216
  br label %188

188:                                              ; preds = %131, %114, %108, %71, %54, %48, %184, %148
  %189 = phi ptr [ %186, %184 ], [ %159, %148 ], [ %96, %108 ], [ %96, %114 ], [ %132, %131 ], [ %36, %48 ], [ %36, %54 ], [ %72, %71 ]
  %190 = load ptr, ptr %10, align 8, !tbaa !205
  %191 = icmp eq ptr %190, null
  br i1 %191, label %215, label %192, !prof !742

192:                                              ; preds = %188
  %193 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %194 = call ptr @build1_stat(i32 noundef 133, ptr noundef %193, ptr noundef nonnull %190) #24
  %195 = icmp eq ptr %194, null
  br i1 %195, label %215, label %196, !prof !743

196:                                              ; preds = %192
  %197 = load i64, ptr %194, align 8
  %198 = and i64 %197, 65536
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %215, label %200, !prof !743

200:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %201 = icmp eq ptr %189, null
  br i1 %201, label %202, label %208, !prof !242

202:                                              ; preds = %200
  %203 = load i64, ptr %194, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 147
  br i1 %205, label %213, label %206, !prof !243

206:                                              ; preds = %202
  %207 = call ptr @alloc_stmt_list() #24
  br label %208

208:                                              ; preds = %206, %200
  %209 = phi ptr [ %207, %206 ], [ %189, %200 ]
  %210 = getelementptr inbounds %struct.tree_statement_list, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !216
  store ptr %211, ptr %5, align 8, !tbaa.struct !244
  %212 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %209, ptr %212, align 8, !tbaa.struct !245
  call void @tsi_link_after(ptr noundef nonnull %5, ptr noundef nonnull %194, i32 noundef 4) #24
  br label %213

213:                                              ; preds = %202, %208
  %214 = phi ptr [ %209, %208 ], [ %194, %202 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  br label %215

215:                                              ; preds = %213, %196, %192, %188
  %216 = phi ptr [ %189, %188 ], [ %189, %192 ], [ %189, %196 ], [ %214, %213 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  ret ptr %216
}

declare ptr @expr_last(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @block_may_fallthru(ptr noundef) local_unnamed_addr #3

declare ptr @fold_call_expr(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @fold_builtin_next_arg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimplify_arg(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #14 !prof !204 !PGOFuncName !744 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !216
  %7 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %6) #24
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @is_gimple_lvalue, ptr @is_gimple_val, !prof !460
  %10 = select i1 %8, i32 3, i32 1, !prof !460
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %0)
  %11 = load ptr, ptr %0, align 8, !tbaa !205
  tail call void @protected_set_expr_location(ptr noundef %11, i32 noundef %2) #24
  %12 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, i32 noundef %10)
  ret void
}

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_from_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @maybe_with_size_expr(ptr nocapture noundef %0) unnamed_addr #14 !prof !204 !PGOFuncName !745 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !205
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 150
  %9 = load ptr, ptr @global_trees, align 16
  %10 = icmp eq ptr %5, %9
  %11 = select i1 %8, i1 true, i1 %10, !prof !462
  br i1 %11, label %33, label %12, !prof !462

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16, !prof !462

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 23
  br i1 %19, label %33, label %20, !prof !463

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %14, ptr %2, align 8, !tbaa !205
  %21 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %22 = load ptr, ptr %2, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %22, align 8
  %26 = and i64 %25, 131072
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %22, ptr noundef nonnull %3) #24
  br label %30

30:                                               ; preds = %20, %24, %28
  %31 = phi ptr [ %29, %28 ], [ %22, %24 ], [ %22, %20 ]
  %32 = call ptr @build2_stat(i32 noundef 150, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %31) #24
  store ptr %32, ptr %0, align 8, !tbaa !205
  br label %33

33:                                               ; preds = %12, %16, %1, %30
  ret void
}

declare void @protected_set_expr_location(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_modify_expr_to_memset(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #15 !prof !204 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !205
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !220
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !216
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 150
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !216
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi ptr [ %25, %23 ], [ %19, %16 ]
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 51
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_constructor, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 8, !tbaa !557
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3168, ptr noundef nonnull @.str.1) #24
  br label %39

39:                                               ; preds = %31, %35, %38
  %40 = load ptr, ptr %0, align 8, !tbaa !205
  %41 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  %43 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef %42) #24
  store ptr %43, ptr %5, align 8, !tbaa !205
  call fastcc void @gimplify_arg(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %17)
  %44 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 333), align 8, !tbaa !205
  %45 = load ptr, ptr %5, align 8, !tbaa !205
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !205
  %47 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %44, i32 noundef 3, ptr noundef %45, ptr noundef %46, ptr noundef %1) #24
  %48 = icmp eq i8 %2, 0
  br i1 %48, label %87, label %49

49:                                               ; preds = %39
  %50 = load ptr, ptr %5, align 8, !tbaa !205
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !216
  %53 = call ptr @create_tmp_var(ptr noundef %52, ptr noundef null)
  %54 = load i32, ptr %47, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.gimple_statement_base, ptr %47, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !216
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %49
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i32, ptr %47, align 8
  %65 = and i32 %64, 255
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !220
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !256
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %74

74:                                               ; preds = %73, %63
  %75 = getelementptr inbounds i8, ptr %47, i64 %71
  store ptr %53, ptr %75, align 8, !tbaa !205
  %76 = icmp eq ptr %53, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %53, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %53, i64 0, i32 2
  store ptr %47, ptr %82, align 8, !tbaa !216
  br label %83

83:                                               ; preds = %74, %77, %81
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef nonnull %47)
  %84 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !216
  %86 = call ptr @build1_stat(i32 noundef 47, ptr noundef %85, ptr noundef %53) #24
  br label %88

87:                                               ; preds = %39
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %47)
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi ptr [ null, %87 ], [ %86, %83 ]
  store ptr %89, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_modify_expr_to_memcpy(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #15 !prof !204 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %8 = load ptr, ptr %0, align 8, !tbaa !205
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !220
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !216
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %4 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  store ptr %23, ptr %6, align 8, !tbaa !205
  call fastcc void @prepare_gimple_addressable(ptr noundef nonnull %6, ptr noundef %3)
  %24 = load ptr, ptr %6, align 8, !tbaa !205
  tail call void @mark_addressable(ptr noundef %24)
  %25 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %19, ptr noundef %24) #24
  store ptr %25, ptr %7, align 8, !tbaa !205
  call fastcc void @gimplify_arg(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %19)
  call void @mark_addressable(ptr noundef %21)
  %26 = call ptr @build_fold_addr_expr_loc(i32 noundef %19, ptr noundef %21) #24
  store ptr %26, ptr %5, align 8, !tbaa !205
  call fastcc void @gimplify_arg(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %19)
  %27 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !205
  %28 = load ptr, ptr %5, align 8, !tbaa !205
  %29 = load ptr, ptr %7, align 8, !tbaa !205
  %30 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %27, i32 noundef 3, ptr noundef %28, ptr noundef %29, ptr noundef %1) #24
  %31 = icmp eq i8 %2, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %18
  %33 = load ptr, ptr %5, align 8, !tbaa !205
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = call ptr @create_tmp_var(ptr noundef %35, ptr noundef null)
  %37 = load i32, ptr %30, align 8
  %38 = and i32 %37, 255
  %39 = add nsw i32 %38, -10
  %40 = icmp ult i32 %39, -9
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.gimple_statement_base, ptr %30, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %32
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr %30, align 8
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !220
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !256
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %57

57:                                               ; preds = %56, %46
  %58 = getelementptr inbounds i8, ptr %30, i64 %54
  store ptr %36, ptr %58, align 8, !tbaa !205
  %59 = icmp eq ptr %36, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i64, ptr %36, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 2
  store ptr %30, ptr %65, align 8, !tbaa !216
  br label %66

66:                                               ; preds = %57, %60, %64
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef nonnull %30)
  %67 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !216
  %69 = call ptr @build1_stat(i32 noundef 47, ptr noundef %68, ptr noundef %36) #24
  br label %71

70:                                               ; preds = %18
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %30)
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi ptr [ null, %70 ], [ %69, %66 ]
  store ptr %72, ptr %0, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_modify_expr_complex_part(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #15 !prof !204 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !216
  %7 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = load i64, ptr %6, align 8
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !216
  %12 = and i64 %9, 65535
  %13 = icmp eq i64 %12, 43
  %14 = select i1 %13, i32 44, i32 43
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = tail call ptr @build1_stat(i32 noundef %14, ptr noundef %16, ptr noundef %11) #24
  %18 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %17, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1)
  %19 = select i1 %13, ptr %8, ptr %18
  %20 = select i1 %13, ptr %18, ptr %8
  %21 = load i64, ptr %19, align 8
  %22 = and i64 %21, 131072
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load i64, ptr %20, align 8
  %26 = and i64 %25, 131072
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  %31 = tail call ptr @build_complex(ptr noundef %30, ptr noundef nonnull %19, ptr noundef nonnull %20) #24
  br label %36

32:                                               ; preds = %24, %3
  %33 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !216
  %35 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef %34, ptr noundef nonnull %19, ptr noundef %20) #24
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %31, %28 ], [ %35, %32 ]
  %38 = tail call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %37) #24
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %38)
  %39 = icmp eq i8 %2, 0
  %40 = select i1 %39, ptr null, ptr %8
  store ptr %40, ptr %0, align 8, !tbaa !205
  ret void
}

declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #15 !prof !204 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimplify_init_ctor_preeval_data, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = load ptr, ptr %0, align 8, !tbaa !205
  %12 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !216
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 51
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3616, ptr noundef nonnull @.str.1) #24
  br label %18

18:                                               ; preds = %5, %17
  %19 = icmp ne i8 %4, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !205
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %23 = tail call i32 @gimplify_expr(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2)
  %24 = icmp eq i32 %23, -2
  br i1 %24, label %373, label %25

25:                                               ; preds = %20, %18
  %26 = load ptr, ptr %0, align 8, !tbaa !205
  %27 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !216
  %29 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  %31 = tail call fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef %30)
  %32 = load ptr, ptr %0, align 8, !tbaa !205
  %33 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  store ptr %31, ptr %33, align 8, !tbaa !216
  %34 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = getelementptr inbounds %struct.tree_constructor, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !216
  %38 = load i64, ptr %35, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %354 [
    i16 16, label %40
    i16 17, label %40
    i16 18, label %40
    i16 15, label %40
    i16 13, label %229
    i16 14, label %279
  ]

40:                                               ; preds = %25, %25, %25, %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #24
  %41 = icmp eq ptr %37, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %37, align 8, !tbaa !557
  br label %44

44:                                               ; preds = %40, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %40 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = select i1 %19, i32 1, i32 2
  br label %225

49:                                               ; preds = %44
  %50 = call zeroext i8 @categorize_ctor_elements(ptr noundef %31, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #24
  %51 = icmp ne i8 %50, 0
  %52 = load i64, ptr %9, align 8
  %53 = icmp sgt i64 %52, 1
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load i64, ptr %28, align 8
  %57 = and i64 %56, 1114111
  %58 = icmp eq i64 %57, 1048608
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32, ptr @flag_merge_constants, align 4, !tbaa !220
  %61 = icmp sgt i32 %60, 1
  %62 = and i64 %56, 262144
  %63 = icmp eq i64 %62, 0
  %64 = or i1 %63, %61
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  br i1 %19, label %225, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 5
  store ptr %31, ptr %67, align 8, !tbaa !216
  %68 = or i64 %56, 67108864
  store i64 %68, ptr %28, align 8
  %69 = getelementptr inbounds %struct.tree_decl_minimal, ptr %28, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !216
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.9)
  store ptr %73, ptr %69, align 8, !tbaa !216
  br label %74

74:                                               ; preds = %72, %66
  %75 = call ptr @walk_tree_1(ptr noundef nonnull %67, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  call void @lhd_set_decl_assembler_name(ptr noundef nonnull %28) #24
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %225

76:                                               ; preds = %59, %55, %49
  %77 = call i64 @count_type_elements(ptr noundef nonnull %35, i8 noundef zeroext 1) #24
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i64 @int_size_in_bytes(ptr noundef nonnull %35) #24
  %81 = icmp sgt i64 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i8 1, ptr %10, align 1, !tbaa !216
  br label %107

83:                                               ; preds = %79, %76
  %84 = load i64, ptr %9, align 8, !tbaa !256
  %85 = sub nsw i64 %77, %84
  %86 = load ptr, ptr @cfun, align 8, !tbaa !205
  %87 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %86) #24
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr @ix86_cost, align 8, !tbaa !205
  %91 = getelementptr inbounds %struct.processor_costs, ptr %90, i64 0, i32 10
  %92 = load i32, ptr %91, align 4, !tbaa !746
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 6)
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi i32 [ 2, %83 ], [ %93, %89 ]
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %85, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i64, ptr %9, align 8, !tbaa !256
  %100 = sdiv i64 %77, 4
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8 1, ptr %10, align 1, !tbaa !216
  br label %107

103:                                              ; preds = %98, %94
  %104 = load i64, ptr %8, align 8, !tbaa !256
  %105 = icmp slt i64 %104, %77
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i8 1, ptr %10, align 1, !tbaa !216
  br label %107

107:                                              ; preds = %102, %106, %103, %82
  %108 = icmp eq i8 %50, 0
  %109 = load i8, ptr %10, align 1
  %110 = icmp ne i8 %109, 0
  %111 = select i1 %108, i1 true, i1 %110
  %112 = load i64, ptr %9, align 8
  %113 = icmp eq i64 %112, 0
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %166, label %115

115:                                              ; preds = %107
  %116 = load i64, ptr %35, align 8
  %117 = and i64 %116, 262144
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %166

119:                                              ; preds = %115
  %120 = call i64 @int_size_in_bytes(ptr noundef nonnull %35) #24
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !216
  %125 = call i64 @int_size_in_bytes(ptr noundef %124) #24
  %126 = icmp sgt i64 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load ptr, ptr %123, align 8, !tbaa !216
  store ptr %128, ptr %34, align 8, !tbaa !216
  br label %129

129:                                              ; preds = %122, %127, %119
  %130 = phi i64 [ %125, %127 ], [ %125, %122 ], [ %120, %119 ]
  %131 = phi ptr [ %128, %127 ], [ %35, %122 ], [ %35, %119 ]
  %132 = load i64, ptr %28, align 8
  %133 = and i64 %132, 65535
  %134 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !220
  %136 = icmp eq i32 %135, 3
  %137 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 3
  %138 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 7
  %139 = select i1 %136, ptr %137, ptr %138
  %140 = load i32, ptr %139, align 8, !tbaa !216
  %141 = icmp sgt i64 %130, 0
  %142 = load i64, ptr %9, align 8
  %143 = icmp sgt i64 %142, 1
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %163

145:                                              ; preds = %129
  %146 = call i32 @can_move_by_pieces(i64 noundef %130, i32 noundef %140) #24
  %147 = icmp ne i32 %146, 0
  %148 = or i1 %19, %147
  br i1 %148, label %163, label %149

149:                                              ; preds = %145
  %150 = call ptr @create_tmp_var_raw(ptr noundef %131, ptr noundef nonnull @.str.9)
  call void @gimple_add_tmp_var(ptr noundef %150)
  %151 = load i64, ptr %150, align 8
  %152 = or i64 %151, 68157440
  store i64 %152, ptr %150, align 8
  %153 = getelementptr inbounds %struct.tree_decl_common, ptr %150, i64 0, i32 5
  store ptr %31, ptr %153, align 8, !tbaa !216
  %154 = getelementptr inbounds %struct.tree_decl_common, ptr %150, i64 0, i32 3
  %155 = load i32, ptr %154, align 8, !tbaa !216
  %156 = icmp ugt i32 %140, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  store i32 %140, ptr %154, align 8, !tbaa !216
  %158 = or i64 %151, 4398114668544
  store i64 %158, ptr %150, align 8
  br label %159

159:                                              ; preds = %157, %149
  %160 = call ptr @walk_tree_1(ptr noundef nonnull %153, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %161 = load ptr, ptr %0, align 8, !tbaa !205
  %162 = getelementptr inbounds %struct.tree_exp, ptr %161, i64 1
  store ptr %150, ptr %162, align 8, !tbaa !216
  br label %163

163:                                              ; preds = %145, %129, %159
  %164 = phi i1 [ false, %159 ], [ %147, %145 ], [ true, %129 ]
  %165 = phi i32 [ -1, %159 ], [ -2, %145 ], [ undef, %129 ]
  br i1 %164, label %166, label %225

166:                                              ; preds = %163, %115, %107
  %167 = phi ptr [ %35, %107 ], [ %35, %115 ], [ %131, %163 ]
  %168 = phi i32 [ undef, %107 ], [ undef, %115 ], [ %165, %163 ]
  %169 = load i64, ptr %28, align 8
  %170 = and i64 %169, 524288
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %166
  %173 = load i64, ptr %167, align 8
  %174 = and i64 %173, 262144
  %175 = icmp eq i64 %174, 0
  %176 = load i64, ptr %9, align 8
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %191

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.tree_type, ptr %167, i64 0, i32 16
  %181 = load ptr, ptr %180, align 8, !tbaa !216
  %182 = call ptr @create_tmp_var(ptr noundef %181, ptr noundef null)
  %183 = load ptr, ptr %0, align 8, !tbaa !205
  %184 = getelementptr inbounds %struct.tree_exp, ptr %183, i64 0, i32 3
  store ptr %182, ptr %184, align 8, !tbaa !216
  %185 = load ptr, ptr %0, align 8, !tbaa !205
  %186 = getelementptr inbounds %struct.tree_common, ptr %185, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !216
  %188 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %189 = call ptr @build2_stat(i32 noundef 53, ptr noundef %188, ptr noundef nonnull %28, ptr noundef %182) #24
  %190 = call ptr @build2_stat(i32 noundef 52, ptr noundef %187, ptr noundef %185, ptr noundef %189) #24
  store ptr %190, ptr %0, align 8, !tbaa !205
  br label %225

191:                                              ; preds = %172, %166
  br i1 %19, label %225, label %192

192:                                              ; preds = %191
  %193 = load i64, ptr %9, align 8, !tbaa !256
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = call ptr @get_base_address(ptr noundef nonnull %28) #24
  store ptr %196, ptr %7, align 8, !tbaa !748
  %197 = load i64, ptr %196, align 8
  %198 = and i64 %197, 65535
  %199 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !220
  %201 = icmp eq i32 %200, 3
  %202 = select i1 %201, ptr %196, ptr null
  store ptr %202, ptr %7, align 8
  %203 = call i32 @get_alias_set(ptr noundef nonnull %28) #24
  %204 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %7, i64 0, i32 1
  store i32 %203, ptr %204, align 8, !tbaa !750
  %205 = load ptr, ptr %0, align 8, !tbaa !205
  %206 = getelementptr inbounds %struct.tree_exp, ptr %205, i64 1
  call fastcc void @gimplify_init_ctor_preeval(ptr noundef nonnull %206, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7)
  br label %207

207:                                              ; preds = %195, %192
  %208 = load i8, ptr %10, align 1, !tbaa !216
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  store ptr null, ptr %36, align 8, !tbaa !216
  %211 = load i64, ptr %31, align 8
  %212 = and i64 %211, -65537
  store i64 %212, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %28, ptr %6, align 8, !tbaa !205
  %213 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %214 = load ptr, ptr %6, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %215 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef %1), !range !249
  br label %216

216:                                              ; preds = %210, %207
  %217 = phi ptr [ %214, %210 ], [ %28, %207 ]
  %218 = load i8, ptr %10, align 1, !tbaa !216
  %219 = icmp eq i8 %218, 0
  %220 = load i64, ptr %9, align 8
  %221 = icmp sgt i64 %220, 0
  %222 = select i1 %219, i1 true, i1 %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  call fastcc void @gimplify_init_ctor_eval(ptr noundef %217, ptr noundef %37, ptr noundef %1, i8 noundef zeroext %218)
  br label %224

224:                                              ; preds = %216, %223
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %225

225:                                              ; preds = %163, %191, %65, %47, %224, %179, %74
  %226 = phi i32 [ 2, %74 ], [ 1, %179 ], [ 0, %224 ], [ %48, %47 ], [ 1, %65 ], [ 1, %191 ], [ 1, %163 ]
  %227 = phi ptr [ %28, %74 ], [ %28, %179 ], [ %217, %224 ], [ %28, %47 ], [ %28, %65 ], [ %28, %191 ], [ %28, %163 ]
  %228 = phi i32 [ undef, %74 ], [ 0, %179 ], [ %168, %224 ], [ 0, %47 ], [ -2, %65 ], [ 0, %191 ], [ %165, %163 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  switch i32 %226, label %373 [
    i32 0, label %355
    i32 2, label %355
  ]

229:                                              ; preds = %25
  br i1 %19, label %277, label %230

230:                                              ; preds = %229
  %231 = icmp eq ptr %37, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %230
  %233 = load i32, ptr %37, align 8, !tbaa !557
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %236, label %235

235:                                              ; preds = %230, %232
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3844, ptr noundef nonnull @.str.1) #24
  br label %236

236:                                              ; preds = %232, %235
  %237 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %37, i64 0, i32 2, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !559
  %239 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %37, i64 1, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !559
  %241 = icmp eq ptr %238, null
  %242 = icmp eq ptr %240, null
  %243 = select i1 %241, i1 true, i1 %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !216
  %247 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !205
  %248 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %246, ptr noundef %247) #24
  %249 = select i1 %241, ptr %248, ptr %238
  %250 = select i1 %242, ptr %248, ptr %240
  br label %251

251:                                              ; preds = %236, %244
  %252 = phi ptr [ %249, %244 ], [ %238, %236 ]
  %253 = phi ptr [ %250, %244 ], [ %240, %236 ]
  %254 = load i64, ptr %252, align 8
  %255 = and i64 %254, 131072
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %251
  %258 = load i64, ptr %253, align 8
  %259 = and i64 %258, 131072
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  %262 = tail call ptr @build_complex(ptr noundef nonnull %35, ptr noundef nonnull %252, ptr noundef nonnull %253) #24
  %263 = load ptr, ptr %0, align 8, !tbaa !205
  %264 = getelementptr inbounds %struct.tree_exp, ptr %263, i64 1
  store ptr %262, ptr %264, align 8, !tbaa !216
  br label %277

265:                                              ; preds = %257, %251
  %266 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef nonnull %35, ptr noundef nonnull %252, ptr noundef %253) #24
  %267 = load ptr, ptr %0, align 8, !tbaa !205
  %268 = getelementptr inbounds %struct.tree_exp, ptr %267, i64 1
  store ptr %266, ptr %268, align 8, !tbaa !216
  %269 = load ptr, ptr %0, align 8, !tbaa !205
  %270 = getelementptr inbounds %struct.tree_exp, ptr %269, i64 0, i32 3
  %271 = getelementptr inbounds %struct.tree_exp, ptr %269, i64 1
  %272 = load ptr, ptr %270, align 8, !tbaa !216
  %273 = tail call zeroext i8 @is_gimple_reg(ptr noundef %272) #24
  %274 = icmp eq i8 %273, 0
  %275 = select i1 %274, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  %276 = tail call i32 @gimplify_expr(ptr noundef nonnull %271, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %275, i32 noundef 1)
  br label %277

277:                                              ; preds = %261, %265, %229
  %278 = phi i32 [ 1, %229 ], [ 1, %261 ], [ %276, %265 ]
  br i1 %19, label %373, label %355

279:                                              ; preds = %25
  br i1 %19, label %351, label %280

280:                                              ; preds = %279
  %281 = load i64, ptr %31, align 8
  %282 = and i64 %281, 131072
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %320, label %284

284:                                              ; preds = %280
  %285 = icmp eq ptr %37, null
  br label %286

286:                                              ; preds = %300, %284
  %287 = phi i64 [ %306, %300 ], [ 0, %284 ]
  %288 = phi ptr [ %299, %300 ], [ undef, %284 ]
  br i1 %285, label %291, label %289

289:                                              ; preds = %286
  %290 = load i32, ptr %37, align 8, !tbaa !557
  br label %291

291:                                              ; preds = %286, %289
  %292 = phi i32 [ %290, %289 ], [ 0, %286 ]
  %293 = zext i32 %292 to i64
  %294 = icmp ult i64 %287, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %37, i64 0, i32 2, i64 %287, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !559
  br label %298

298:                                              ; preds = %291, %295
  %299 = phi ptr [ %288, %291 ], [ %297, %295 ]
  br i1 %294, label %300, label %307

300:                                              ; preds = %298
  %301 = load i64, ptr %299, align 8
  %302 = and i64 %301, 65535
  %303 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !220
  %305 = icmp eq i32 %304, 1
  %306 = add nuw nsw i64 %287, 1
  br i1 %305, label %286, label %311, !llvm.loop !751

307:                                              ; preds = %298
  %308 = tail call ptr @build_vector_from_ctor(ptr noundef nonnull %35, ptr noundef %37) #24
  %309 = load ptr, ptr %0, align 8, !tbaa !205
  %310 = getelementptr inbounds %struct.tree_exp, ptr %309, i64 1
  store ptr %308, ptr %310, align 8, !tbaa !216
  br label %317

311:                                              ; preds = %300
  %312 = tail call ptr @initializer_constant_valid_p(ptr noundef nonnull %31, ptr noundef nonnull %35) #24
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i64, ptr %31, align 8
  %316 = and i64 %315, -131073
  store i64 %316, ptr %31, align 8
  br label %317

317:                                              ; preds = %311, %314, %307
  %318 = phi i1 [ false, %307 ], [ true, %314 ], [ false, %311 ]
  %319 = phi i32 [ 2, %307 ], [ 0, %314 ], [ 2, %311 ]
  br i1 %318, label %320, label %351

320:                                              ; preds = %317, %280
  %321 = icmp eq ptr %37, null
  br label %322

322:                                              ; preds = %335, %320
  %323 = phi i32 [ 1, %320 ], [ %339, %335 ]
  %324 = phi i64 [ 0, %320 ], [ %340, %335 ]
  br i1 %321, label %332, label %325

325:                                              ; preds = %322
  %326 = trunc i64 %324 to i32
  %327 = load i32, ptr %37, align 8, !tbaa !557
  %328 = icmp ugt i32 %327, %326
  br i1 %328, label %329, label %332

329:                                              ; preds = %325
  %330 = and i64 %324, 4294967295
  %331 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %37, i64 0, i32 2, i64 %330
  br label %332

332:                                              ; preds = %322, %325, %329
  %333 = phi ptr [ %331, %329 ], [ null, %325 ], [ null, %322 ]
  %334 = phi i1 [ false, %329 ], [ true, %325 ], [ true, %322 ]
  br i1 %334, label %341, label %335

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.constructor_elt_d, ptr %333, i64 0, i32 1
  %337 = tail call i32 @gimplify_expr(ptr noundef nonnull %336, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %338 = icmp eq i32 %337, -2
  %339 = select i1 %338, i32 -2, i32 %323
  %340 = add i64 %324, 1
  br label %322, !llvm.loop !752

341:                                              ; preds = %332
  %342 = load ptr, ptr %0, align 8, !tbaa !205
  %343 = getelementptr inbounds %struct.tree_exp, ptr %342, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !216
  %345 = tail call zeroext i8 @is_gimple_reg(ptr noundef %344) #24
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef nonnull %31, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1)
  %349 = load ptr, ptr %0, align 8, !tbaa !205
  %350 = getelementptr inbounds %struct.tree_exp, ptr %349, i64 1
  store ptr %348, ptr %350, align 8, !tbaa !216
  br label %351

351:                                              ; preds = %341, %347, %279, %317
  %352 = phi i32 [ %319, %317 ], [ 1, %279 ], [ 0, %347 ], [ 0, %341 ]
  %353 = phi i32 [ 1, %317 ], [ 1, %279 ], [ %323, %347 ], [ %323, %341 ]
  switch i32 %352, label %373 [
    i32 0, label %355
    i32 2, label %355
  ]

354:                                              ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3933, ptr noundef nonnull @.str.1) #24
  br label %355

355:                                              ; preds = %351, %277, %225, %354, %351, %225
  %356 = phi i32 [ 1, %354 ], [ %353, %351 ], [ 1, %225 ], [ 1, %225 ], [ %278, %277 ], [ %353, %351 ]
  %357 = phi ptr [ %28, %354 ], [ %28, %351 ], [ %227, %225 ], [ %227, %225 ], [ %28, %277 ], [ %28, %351 ]
  %358 = icmp eq i32 %356, -2
  br i1 %358, label %373, label %359

359:                                              ; preds = %355
  %360 = icmp eq i8 %3, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %359
  %362 = load ptr, ptr %0, align 8, !tbaa !205
  %363 = icmp eq ptr %362, null
  br i1 %363, label %373, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.tree_exp, ptr %362, i64 0, i32 3
  %366 = load ptr, ptr %365, align 8, !tbaa !216
  %367 = getelementptr inbounds %struct.tree_exp, ptr %362, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !216
  %369 = call ptr @gimple_build_assign_stat(ptr noundef %366, ptr noundef %368) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %369)
  br label %370

370:                                              ; preds = %359, %364
  %371 = phi ptr [ null, %364 ], [ %357, %359 ]
  %372 = phi i32 [ 1, %364 ], [ 0, %359 ]
  store ptr %371, ptr %0, align 8, !tbaa !205
  br label %373

373:                                              ; preds = %370, %351, %225, %361, %355, %20, %277
  %374 = phi i32 [ 0, %277 ], [ -2, %20 ], [ -2, %355 ], [ 1, %361 ], [ %228, %225 ], [ 0, %351 ], [ %372, %370 ]
  ret i32 %374
}

declare zeroext i8 @is_gimple_non_addressable(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef %0) unnamed_addr #15 !prof !204 {
  %2 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !557
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %7
  %11 = zext i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %64
  %13 = phi i64 [ 0, %10 ], [ %67, %64 ]
  %14 = phi ptr [ %0, %10 ], [ %66, %64 ]
  %15 = phi ptr [ %3, %10 ], [ %65, %64 ]
  %16 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %15, i64 0, i32 2, i64 %13, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !559
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %38 [
    i16 51, label %35
    i16 119, label %20
  ]

20:                                               ; preds = %12
  %21 = and i64 %18, 262144
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !216
  %26 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = load i64, ptr %27, align 8
  %31 = and i64 %30, 262144
  %32 = icmp eq i64 %31, 0
  %33 = icmp ne ptr %29, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %23, %12
  %36 = phi ptr [ %17, %12 ], [ %29, %23 ]
  %37 = tail call fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef nonnull %36)
  br label %38

38:                                               ; preds = %35, %20, %23, %12
  %39 = phi ptr [ %17, %12 ], [ %17, %20 ], [ %17, %23 ], [ %37, %35 ]
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %64, label %41

41:                                               ; preds = %38
  %42 = icmp eq ptr %14, %0
  br i1 %42, label %43, label %60

43:                                               ; preds = %41
  %44 = tail call ptr @copy_node_stat(ptr noundef %0) #24
  %45 = icmp eq ptr %15, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %15, align 8, !tbaa !557
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %47, %46 ], [ 0, %43 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = zext i32 %49 to i64
  %53 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %49, i64 noundef 8, i64 noundef 16) #24
  store i32 %49, ptr %53, align 8, !tbaa !753
  %54 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %53, i64 0, i32 2
  %55 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %15, i64 0, i32 2
  %56 = shl nuw nsw i64 %52, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %54, ptr nonnull align 8 %55, i64 %56, i1 false)
  br label %57

57:                                               ; preds = %48, %51
  %58 = phi ptr [ %53, %51 ], [ null, %48 ]
  %59 = getelementptr inbounds %struct.tree_constructor, ptr %44, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !216
  br label %60

60:                                               ; preds = %57, %41
  %61 = phi ptr [ %58, %57 ], [ %15, %41 ]
  %62 = phi ptr [ %44, %57 ], [ %14, %41 ]
  %63 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %61, i64 0, i32 2, i64 %13, i32 1
  store ptr %39, ptr %63, align 8, !tbaa !559
  br label %64

64:                                               ; preds = %38, %60
  %65 = phi ptr [ %61, %60 ], [ %15, %38 ]
  %66 = phi ptr [ %62, %60 ], [ %14, %38 ]
  %67 = add nuw nsw i64 %13, 1
  %68 = icmp eq i64 %67, %11
  br i1 %68, label %69, label %12, !llvm.loop !755

69:                                               ; preds = %64, %7
  %70 = phi ptr [ %0, %7 ], [ %66, %64 ]
  ret ptr %70
}

declare zeroext i8 @categorize_ctor_elements(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lhd_set_decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare i64 @count_type_elements(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @can_move_by_pieces(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_init_ctor_preeval(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #15 !prof !204 {
  %5 = load ptr, ptr %0, align 8, !tbaa !205
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = and i64 %6, 65536
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3263, ptr noundef nonnull @.str.1) #24
  br label %66

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 262144
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = and i64 %6, 65535
  %21 = icmp eq i64 %20, 51
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_constructor, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !216
  %25 = icmp eq ptr %24, null
  br label %26

26:                                               ; preds = %38, %22
  %27 = phi i64 [ 0, %22 ], [ %40, %38 ]
  br i1 %25, label %35, label %28

28:                                               ; preds = %26
  %29 = trunc i64 %27 to i32
  %30 = load i32, ptr %24, align 8, !tbaa !557
  %31 = icmp ugt i32 %30, %29
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = and i64 %27, 4294967295
  %34 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %24, i64 0, i32 2, i64 %33
  br label %35

35:                                               ; preds = %26, %28, %32
  %36 = phi ptr [ %34, %32 ], [ null, %28 ], [ null, %26 ]
  %37 = phi i1 [ false, %32 ], [ true, %28 ], [ true, %26 ]
  br i1 %37, label %66, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.constructor_elt_d, ptr %36, i64 0, i32 1
  tail call fastcc void @gimplify_init_ctor_preeval(ptr noundef nonnull %39, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %40 = add i64 %27, 1
  br label %26, !llvm.loop !756

41:                                               ; preds = %19
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %0)
  %42 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_mem_rhs, i32 noundef 1)
  %43 = icmp eq i32 %42, -2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store ptr null, ptr %0, align 8, !tbaa !205
  br label %66

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 8, !tbaa !205
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !220
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !216
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !216
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 23
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = tail call ptr @walk_tree_1(ptr noundef nonnull %0, ptr noundef nonnull @gimplify_init_ctor_preeval_1, ptr noundef %3, ptr noundef null, ptr noundef null) #24
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !205
  %65 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %64, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1)
  store ptr %65, ptr %0, align 8, !tbaa !205
  br label %66

66:                                               ; preds = %35, %60, %52, %45, %13, %12, %9, %63, %44
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_init_ctor_eval(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #15 !prof !204 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !216
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 15
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !216
  br label %19

19:                                               ; preds = %14, %4
  %20 = phi ptr [ %18, %14 ], [ null, %4 ]
  %21 = icmp eq ptr %1, null
  %22 = icmp eq i8 %3, 0
  %23 = icmp eq ptr %20, null
  br label %24

24:                                               ; preds = %155, %19
  %25 = phi ptr [ undef, %19 ], [ %40, %155 ]
  %26 = phi ptr [ undef, %19 ], [ %156, %155 ]
  %27 = phi i64 [ 0, %19 ], [ %157, %155 ]
  br i1 %21, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 8, !tbaa !557
  br label %30

30:                                               ; preds = %24, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %24 ]
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1, i64 0, i32 2, i64 %27
  %36 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1, i64 0, i32 2, i64 %27, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !559
  %38 = load ptr, ptr %35, align 8, !tbaa !757
  br label %39

39:                                               ; preds = %30, %34
  %40 = phi ptr [ %25, %30 ], [ %37, %34 ]
  %41 = phi ptr [ %26, %30 ], [ %38, %34 ]
  br i1 %33, label %42, label %158

42:                                               ; preds = %39
  %43 = icmp eq ptr %40, null
  br i1 %43, label %155, label %44

44:                                               ; preds = %42
  br i1 %22, label %48, label %45

45:                                               ; preds = %44
  %46 = call zeroext i8 @initializer_zerop(ptr noundef nonnull %40) #24
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %155

48:                                               ; preds = %45, %44
  %49 = icmp eq ptr %41, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3447, ptr noundef nonnull @.str.1) #24
  br label %51

51:                                               ; preds = %48, %50
  %52 = load i64, ptr %40, align 8
  %53 = and i64 %52, 65536
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i64, ptr %41, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 31
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !216
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = call i32 @integer_zerop(ptr noundef nonnull %61) #24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %155

66:                                               ; preds = %63, %55, %59, %51
  %67 = load i64, ptr %41, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 111
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !216
  %73 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !216
  %75 = call i32 @simple_cst_equal(ptr noundef %72, ptr noundef %74) #24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %70
  %78 = call ptr @create_artificial_label(i32 noundef 0) #24
  %79 = call ptr @create_artificial_label(i32 noundef 0) #24
  %80 = call ptr @create_artificial_label(i32 noundef 0) #24
  %81 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !216
  %83 = call ptr @create_tmp_var(ptr noundef %82, ptr noundef null)
  %84 = call ptr @gimple_build_assign_stat(ptr noundef %83, ptr noundef %72) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %84)
  %85 = call ptr @gimple_build_label(ptr noundef %78) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %85)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %0, ptr %5, align 8, !tbaa !205
  %86 = call ptr @walk_tree_1(ptr noundef nonnull %5, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %87 = load ptr, ptr %5, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %88 = call ptr @build4_stat(i32 noundef 45, ptr noundef %20, ptr noundef %87, ptr noundef %83, ptr noundef null, ptr noundef null) #24
  %89 = load i64, ptr %40, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 51
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.tree_constructor, ptr %40, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !216
  call fastcc void @gimplify_init_ctor_eval(ptr noundef %88, ptr noundef %94, ptr noundef %2, i8 noundef zeroext %3)
  br label %97

95:                                               ; preds = %77
  %96 = call ptr @gimple_build_assign_stat(ptr noundef %88, ptr noundef nonnull %40) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %96)
  br label %97

97:                                               ; preds = %92, %95
  %98 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %83, ptr noundef %74, ptr noundef %79, ptr noundef %80) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %98)
  %99 = call ptr @gimple_build_label(ptr noundef %80) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %99)
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !205
  %101 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %82, ptr noundef %100) #24
  %102 = call ptr @build2_stat(i32 noundef 63, ptr noundef %82, ptr noundef %83, ptr noundef %101) #24
  %103 = call ptr @gimple_build_assign_stat(ptr noundef %83, ptr noundef %102) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %103)
  %104 = call ptr @gimple_build_goto(ptr noundef %78) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %104)
  %105 = call ptr @gimple_build_label(ptr noundef %79) #24
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %2, ptr noundef %105)
  br label %106

106:                                              ; preds = %70, %97
  %107 = phi ptr [ %41, %97 ], [ %74, %70 ]
  br i1 %76, label %155, label %108

108:                                              ; preds = %106, %66
  %109 = phi ptr [ %107, %106 ], [ %41, %66 ]
  br i1 %23, label %124, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr %9, align 8, !tbaa !216
  %112 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !216
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !216
  %118 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %117, ptr noundef %109) #24
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi ptr [ %118, %115 ], [ %109, %110 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %0, ptr %8, align 8, !tbaa !205
  %121 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %122 = load ptr, ptr %8, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %123 = call ptr @build4_stat(i32 noundef 45, ptr noundef nonnull %20, ptr noundef %122, ptr noundef %120, ptr noundef null, ptr noundef null) #24
  br label %135

124:                                              ; preds = %108
  %125 = load i64, ptr %109, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 31
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3487, ptr noundef nonnull @.str.1) #24
  br label %129

129:                                              ; preds = %124, %128
  %130 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %0, ptr %7, align 8, !tbaa !205
  %132 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %133 = load ptr, ptr %7, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %134 = call ptr @build3_stat(i32 noundef 41, ptr noundef %131, ptr noundef %133, ptr noundef nonnull %109, ptr noundef null) #24
  br label %135

135:                                              ; preds = %129, %119
  %136 = phi ptr [ %123, %119 ], [ %134, %129 ]
  %137 = phi ptr [ %120, %119 ], [ %109, %129 ]
  %138 = load i64, ptr %40, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 51
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !216
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_constructor, ptr %40, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !216
  call fastcc void @gimplify_init_ctor_eval(ptr noundef %136, ptr noundef %149, ptr noundef %2, i8 noundef zeroext %3)
  br label %155

150:                                              ; preds = %141, %135
  %151 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !216
  %153 = call ptr @build2_stat(i32 noundef 54, ptr noundef %152, ptr noundef %136, ptr noundef nonnull %40) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %153, ptr %6, align 8, !tbaa !205
  %154 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %6, ptr noundef %2), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @ggc_free(ptr noundef %153) #24
  br label %155

155:                                              ; preds = %106, %63, %147, %150, %45, %42
  %156 = phi ptr [ %41, %42 ], [ %41, %45 ], [ %137, %150 ], [ %137, %147 ], [ %41, %63 ], [ %107, %106 ]
  %157 = add nuw nsw i64 %27, 1
  br label %24, !llvm.loop !758

158:                                              ; preds = %39
  ret void
}

declare ptr @build_complex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector_from_ctor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @gimplify_init_ctor_preeval_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #15 !prof !204 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = load ptr, ptr %2, align 8, !tbaa !748
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %71, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 47
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = load i64, ptr %5, align 8
  %15 = and i64 %14, 262144
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %11
  %18 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !750
  %20 = tail call i32 @get_alias_set(ptr noundef nonnull %4) #24
  %21 = tail call i32 @alias_sets_conflict_p(i32 noundef %19, i32 noundef %20) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %17, %13, %7
  %24 = load i64, ptr %4, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 59
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %2, i64 0, i32 1
  br label %39

39:                                               ; preds = %37, %59
  %40 = phi ptr [ %35, %37 ], [ %61, %59 ]
  %41 = getelementptr inbounds %struct.tree_list, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %59 [
    i16 10, label %45
    i16 12, label %45
  ]

45:                                               ; preds = %39, %39
  %46 = load ptr, ptr %2, align 8, !tbaa !748
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 262144
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48, %45
  %53 = load i32, ptr %38, align 8, !tbaa !750
  %54 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !216
  %56 = tail call i32 @get_alias_set(ptr noundef %55) #24
  %57 = tail call i32 @alias_sets_conflict_p(i32 noundef %53, i32 noundef %56) #24
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %39, %48, %52
  %60 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !216
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %39, !llvm.loop !759

63:                                               ; preds = %59, %27, %23
  %64 = load i64, ptr %4, align 8
  %65 = and i64 %64, 65535
  %66 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !220
  %68 = and i32 %67, -2
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, ptr %1, align 4, !tbaa !220
  br label %71

71:                                               ; preds = %52, %63, %70, %17, %3
  %72 = phi ptr [ %4, %3 ], [ %4, %17 ], [ null, %63 ], [ null, %70 ], [ %4, %52 ]
  ret ptr %72
}

declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @initializer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @prepare_gimple_addressable(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #14 !prof !204 !PGOFuncName !760 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %11 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !205
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 42, label %11
    i16 41, label %11
    i16 45, label %11
    i16 46, label %11
    i16 118, label %11
    i16 43, label %11
    i16 44, label %11
  ], !prof !496

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %5) #24
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %13, !prof !494

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  br label %3, !llvm.loop !497

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !tbaa !205
  %15 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %14, ptr noundef %1, ptr noundef null, i8 noundef zeroext 0)
  store ptr %15, ptr %4, align 8, !tbaa !205
  br label %16

16:                                               ; preds = %13, %8
  ret void
}

declare zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_sign_nop_conversions(ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_vla_decl(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !204 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %4, ptr noundef %1)
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %5, ptr noundef %1)
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #24
  %9 = tail call ptr @get_name(ptr noundef %0) #24
  %10 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef %9)
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, -1025
  store i64 %13, ptr %11, align 8
  %14 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %10) #24
  tail call void @decl_value_expr_insert(ptr noundef %0, ptr noundef %14) #24
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, 67108864
  store i64 %17, ptr %15, align 8
  %18 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !205
  %19 = load ptr, ptr %5, align 8, !tbaa !216
  %20 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %18, i32 noundef 1, ptr noundef %19) #24
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %20) #24
  %22 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  %24 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %23, ptr noundef %10, ptr noundef %21) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %24, ptr %3, align 8, !tbaa !205
  %25 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %3, ptr noundef %1), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %26 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %27 = getelementptr inbounds %struct.gimplify_ctx, ptr %26, i64 0, i32 9
  store i8 1, ptr %27, align 4, !tbaa !513
  ret void
}

declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_switch_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

declare void @gsi_insert_after_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #3

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #16

declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_asm_vec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gsi_split_seq_after(ptr noundef byval(%struct.gimple_stmt_iterator) align 8) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimple_push_cleanup(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #15 !prof !204 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !205
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !205
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !220
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !220
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %17 = getelementptr inbounds %struct.gimplify_ctx, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !409
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %39, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !205
  %22 = tail call ptr @create_tmp_var(ptr noundef %21, ptr noundef nonnull @.str.17)
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !205
  %24 = tail call ptr @gimple_build_assign_stat(ptr noundef %22, ptr noundef %23) #24
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !205
  %26 = tail call ptr @gimple_build_assign_stat(ptr noundef %22, ptr noundef %25) #24
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %28 = load ptr, ptr %5, align 8, !tbaa !205
  %29 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %27, ptr noundef %22, ptr noundef %28, ptr noundef null) #24
  store ptr %29, ptr %5, align 8, !tbaa !205
  %30 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %6), !range !249
  %31 = load ptr, ptr %6, align 8, !tbaa !205
  %32 = call ptr @gimple_build_wce(ptr noundef %31) #24
  %33 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %34 = getelementptr inbounds %struct.gimplify_ctx, ptr %33, i64 0, i32 3
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %34, ptr noundef %24)
  %35 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  %36 = getelementptr inbounds %struct.gimplify_ctx, ptr %35, i64 0, i32 3
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %36, ptr noundef %32)
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %26)
  %37 = load i64, ptr %0, align 8
  %38 = or i64 %37, 8388608
  store i64 %38, ptr %0, align 8
  br label %48

39:                                               ; preds = %15
  %40 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %6), !range !249
  %41 = load ptr, ptr %6, align 8, !tbaa !205
  %42 = call ptr @gimple_build_wce(ptr noundef %41) #24
  %43 = zext nneg i8 %2 to i32
  %44 = load i32, ptr %42, align 8
  %45 = shl nuw nsw i32 %43, 16
  %46 = and i32 %44, 65535
  %47 = or disjoint i32 %46, %45
  store i32 %47, ptr %42, align 8
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef nonnull %42)
  br label %48

48:                                               ; preds = %20, %39, %4, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  ret void
}

declare ptr @gimple_build_wce(ptr noundef) local_unnamed_addr #3

declare void @tsi_delink(ptr noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_scan_omp_clauses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #15 !prof !204 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #24
  %8 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #24
  %9 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  store ptr %9, ptr %8, align 8, !tbaa !271
  %10 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_decl_uid, ptr noundef null, ptr noundef null) #24
  %11 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %8, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !293
  %12 = tail call ptr @pointer_set_create() #24
  %13 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %8, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !711
  %14 = load i32, ptr @input_location, align 4, !tbaa !220
  %15 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %8, i64 0, i32 3
  store i32 %14, ptr %15, align 8, !tbaa !628
  %16 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %8, i64 0, i32 5
  store i32 %2, ptr %16, align 8, !tbaa !269
  %17 = icmp ne i32 %2, 1
  %18 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %8, i64 0, i32 4
  %19 = zext i1 %17 to i32
  store i32 %19, ptr %18, align 4, !tbaa !626
  %20 = load ptr, ptr %8, align 8, !tbaa !271
  %21 = load ptr, ptr %0, align 8, !tbaa !205
  %22 = icmp eq ptr %21, null
  br i1 %22, label %209, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %8, i64 0, i32 4
  %25 = icmp eq ptr %20, null
  %26 = icmp eq i32 %2, 0
  br label %27

27:                                               ; preds = %23, %205
  %28 = phi ptr [ %21, %23 ], [ %207, %205 ]
  %29 = phi ptr [ %0, %23 ], [ %206, %205 ]
  %30 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !216
  switch i32 %31, label %199 [
    i32 1, label %32
    i32 2, label %44
    i32 3, label %41
    i32 4, label %42
    i32 5, label %43
    i32 6, label %133
    i32 7, label %133
    i32 8, label %188
    i32 10, label %192
    i32 9, label %192
    i32 11, label %203
    i32 12, label %203
    i32 15, label %203
    i32 14, label %203
    i32 13, label %196
  ]

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !630
  %34 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = call zeroext i8 %33(ptr noundef %35) #24
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, ptr %28, align 8
  %40 = or i64 %39, 268435456
  store i64 %40, ptr %28, align 8
  br label %44

41:                                               ; preds = %27
  br label %44

42:                                               ; preds = %27
  br label %44

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %27, %32, %38, %43, %42, %41
  %45 = phi i1 [ false, %43 ], [ false, %42 ], [ false, %41 ], [ false, %38 ], [ true, %32 ], [ false, %27 ]
  %46 = phi ptr [ @.str.22, %43 ], [ @.str.21, %42 ], [ @.str.20, %41 ], [ null, %38 ], [ null, %32 ], [ null, %27 ]
  %47 = phi i32 [ 67, %43 ], [ 35, %42 ], [ 18, %41 ], [ 522, %38 ], [ 10, %32 ], [ 6, %27 ]
  %48 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !216
  %50 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %200, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !216
  %55 = icmp eq ptr %54, %50
  br i1 %55, label %200, label %56

56:                                               ; preds = %52
  call fastcc void @omp_add_variable(ptr noundef nonnull %8, ptr noundef %49, i32 noundef %47)
  %57 = load i32, ptr %30, align 4, !tbaa !216
  switch i32 %57, label %132 [
    i32 5, label %58
    i32 4, label %99
  ]

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 1, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  %61 = icmp eq ptr %60, null
  br i1 %61, label %97, label %62

62:                                               ; preds = %58
  call fastcc void @omp_add_variable(ptr noundef nonnull %8, ptr noundef nonnull %60, i32 noundef 129)
  store ptr %8, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %63 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %63, ptr %7, align 8, !tbaa !227
  store ptr %7, ptr @gimplify_ctxp, align 8, !tbaa !205
  %64 = call ptr @gimple_seq_alloc() #24
  %65 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 4
  store ptr %64, ptr %65, align 8, !tbaa !216
  %66 = call ptr @gimple_seq_alloc() #24
  %67 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 5
  store ptr %66, ptr %67, align 8, !tbaa !216
  %68 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %69, ptr %6, align 8, !tbaa !205
  %70 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %6, ptr noundef nonnull %65), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %71 = load ptr, ptr %65, align 8, !tbaa !216
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = load ptr, ptr %71, align 8, !tbaa !274
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi ptr [ %74, %73 ], [ null, %62 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 8, !tbaa !275
  br label %80

80:                                               ; preds = %75, %78
  %81 = phi ptr [ %79, %78 ], [ null, %75 ]
  call void @pop_gimplify_context(ptr noundef %81)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %82 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %82, ptr %7, align 8, !tbaa !227
  store ptr %7, ptr @gimplify_ctxp, align 8, !tbaa !205
  %83 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %84, ptr %5, align 8, !tbaa !205
  %85 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %67), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %86 = load ptr, ptr %67, align 8, !tbaa !216
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr %86, align 8, !tbaa !274
  br label %90

90:                                               ; preds = %88, %80
  %91 = phi ptr [ %89, %88 ], [ null, %80 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %91, align 8, !tbaa !275
  br label %95

95:                                               ; preds = %90, %93
  %96 = phi ptr [ %94, %93 ], [ null, %90 ]
  call void @pop_gimplify_context(ptr noundef %96)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  br label %131

97:                                               ; preds = %58
  %98 = icmp eq i32 %57, 4
  br i1 %98, label %99, label %132

99:                                               ; preds = %56, %97
  %100 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !216
  %102 = icmp eq ptr %101, null
  br i1 %102, label %132, label %103

103:                                              ; preds = %99
  store ptr %8, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %104 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !205
  store ptr %104, ptr %7, align 8, !tbaa !227
  store ptr %7, ptr @gimplify_ctxp, align 8, !tbaa !205
  %105 = load ptr, ptr %100, align 8, !tbaa !216
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 58
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !205
  %111 = call ptr @build3_stat(i32 noundef 58, ptr noundef %110, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, 65536
  store i64 %113, ptr %111, align 8
  %114 = load ptr, ptr %100, align 8, !tbaa !216
  %115 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 1
  store ptr %114, ptr %115, align 8, !tbaa !216
  store ptr %111, ptr %100, align 8, !tbaa !216
  br label %116

116:                                              ; preds = %109, %103
  %117 = load ptr, ptr %100, align 8, !tbaa !216
  %118 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %117, ptr %4, align 8, !tbaa !205
  %119 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %4, ptr noundef nonnull %118), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %120 = load ptr, ptr %118, align 8, !tbaa !216
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %120, align 8, !tbaa !274
  br label %124

124:                                              ; preds = %122, %116
  %125 = phi ptr [ %123, %122 ], [ null, %116 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %125, align 8, !tbaa !275
  br label %129

129:                                              ; preds = %124, %127
  %130 = phi ptr [ %128, %127 ], [ null, %124 ]
  call void @pop_gimplify_context(ptr noundef %130)
  store ptr null, ptr %100, align 8, !tbaa !216
  br label %131

131:                                              ; preds = %95, %129
  store ptr %20, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  br label %132

132:                                              ; preds = %131, %56, %97, %99
  br i1 %45, label %203, label %142

133:                                              ; preds = %27, %27
  %134 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !216
  %136 = load ptr, ptr @global_trees, align 16, !tbaa !205
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %200, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !216
  %141 = icmp eq ptr %140, %136
  br i1 %141, label %200, label %142

142:                                              ; preds = %138, %132
  %143 = phi ptr [ null, %138 ], [ %46, %132 ]
  %144 = phi ptr [ %135, %138 ], [ %49, %132 ]
  br i1 %25, label %147, label %145

145:                                              ; preds = %142
  %146 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %20, ptr noundef %144)
  br label %147

147:                                              ; preds = %142, %145
  %148 = icmp ne ptr %143, null
  %149 = and i1 %26, %148
  br i1 %149, label %150, label %203

150:                                              ; preds = %147
  %151 = ptrtoint ptr %144 to i64
  br label %152

152:                                              ; preds = %150, %179
  %153 = phi ptr [ %154, %179 ], [ %8, %150 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !271
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i64, ptr %144, align 8
  %158 = and i64 %157, 67108864
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %203

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.tree_decl_common, ptr %144, i64 0, i32 2
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 33554432
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %160
  %166 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !296
  %167 = call zeroext i8 %166(ptr noundef nonnull %144) #24
  %168 = icmp eq i8 %167, 0
  br label %183

169:                                              ; preds = %152
  %170 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %154, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !293
  %172 = call ptr @splay_tree_lookup(ptr noundef %171, i64 noundef %151) #24
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.splay_tree_node_s, ptr %172, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !294
  %177 = and i64 %176, 4
  %178 = icmp eq i64 %177, 0
  br label %183

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %154, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !269
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %152, label %203, !llvm.loop !761

183:                                              ; preds = %165, %174
  %184 = phi i1 [ %178, %174 ], [ %168, %165 ]
  br i1 %184, label %185, label %203

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.tree_decl_minimal, ptr %144, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !216
  call void (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef nonnull %143, ptr noundef %187) #24
  br label %200

188:                                              ; preds = %27
  %189 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !216
  %191 = call ptr @gimple_boolify(ptr noundef %190)
  store ptr %191, ptr %189, align 8, !tbaa !216
  br label %192

192:                                              ; preds = %27, %27, %188
  %193 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 6
  %194 = call i32 @gimplify_expr(ptr noundef nonnull %193, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %195 = icmp eq i32 %194, -2
  br i1 %195, label %200, label %203

196:                                              ; preds = %27
  %197 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 3
  %198 = load i32, ptr %197, align 8, !tbaa !216
  store i32 %198, ptr %24, align 4, !tbaa !626
  br label %203

199:                                              ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5821, ptr noundef nonnull @.str.1) #24
  br label %203

200:                                              ; preds = %138, %133, %185, %52, %44, %192
  %201 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !216
  store ptr %202, ptr %29, align 8, !tbaa !205
  br label %205

203:                                              ; preds = %179, %192, %27, %27, %27, %160, %156, %199, %196, %27, %183, %147, %132
  %204 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi ptr [ %29, %200 ], [ %204, %203 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !205
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %27, !llvm.loop !762

209:                                              ; preds = %205, %3
  store ptr %8, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gimplify_and_return_first(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !204 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !205
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gimple_seq_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !252, !noalias !763
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %0, ptr %3, align 8, !tbaa !205
  %12 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %3, ptr noundef nonnull %1), !range !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br i1 %11, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !307
  br label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr %1, align 8, !tbaa !205
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !274
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ null, %16 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %13
  %25 = phi ptr [ %15, %13 ], [ %22, %21 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !275
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ null, %21 ], [ %26, %24 ]
  ret ptr %28
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_adjust_omp_clauses(ptr noundef %0) unnamed_addr #15 !prof !204 {
  %2 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %3 = load ptr, ptr %0, align 8, !tbaa !205
  %4 = icmp eq ptr %3, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %5, %63
  %9 = phi ptr [ %3, %5 ], [ %65, %63 ]
  %10 = phi ptr [ %0, %5 ], [ %64, %63 ]
  %11 = getelementptr inbounds %struct.tree_omp_clause, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !216
  switch i32 %12, label %57 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %44
    i32 5, label %61
    i32 6, label %61
    i32 7, label %61
    i32 8, label %61
    i32 9, label %61
    i32 10, label %61
    i32 11, label %61
    i32 12, label %61
    i32 13, label %61
    i32 15, label %61
    i32 14, label %61
  ]

13:                                               ; preds = %8, %8, %8
  %14 = getelementptr inbounds %struct.tree_omp_clause, ptr %9, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  %16 = load ptr, ptr %7, align 8, !tbaa !293
  %17 = ptrtoint ptr %15 to i64
  %18 = tail call ptr @splay_tree_lookup(ptr noundef %16, i64 noundef %17) #24
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !294
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %13
  %24 = and i64 %20, 256
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, ptr %11, align 4, !tbaa !216
  %28 = icmp eq i32 %27, 2
  %29 = zext i1 %28 to i8
  %30 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 13), align 8, !tbaa !766
  %31 = tail call zeroext i8 %30(ptr noundef %15, i8 noundef zeroext %29) #24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %26, %23
  %34 = load i64, ptr %19, align 8, !tbaa !294
  %35 = and i64 %34, 256
  %36 = icmp eq i64 %35, 0
  %37 = and i64 %34, 252
  %38 = icmp eq i64 %37, 8
  %39 = or i1 %36, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5927, ptr noundef nonnull @.str.1) #24
  br label %41

41:                                               ; preds = %33, %40
  store i32 1, ptr %11, align 4, !tbaa !216
  %42 = load i64, ptr %9, align 8
  %43 = or i64 %42, 134217728
  store i64 %43, ptr %9, align 8
  br label %61

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.tree_omp_clause, ptr %9, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !216
  %47 = load ptr, ptr %6, align 8, !tbaa !293
  %48 = ptrtoint ptr %46 to i64
  %49 = tail call ptr @splay_tree_lookup(ptr noundef %47, i64 noundef %48) #24
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %49, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !294
  %52 = load i64, ptr %9, align 8
  %53 = shl i64 %51, 23
  %54 = and i64 %53, 134217728
  %55 = and i64 %52, -134217729
  %56 = or disjoint i64 %55, %54
  store i64 %56, ptr %9, align 8
  br label %61

57:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5957, ptr noundef nonnull @.str.1) #24
  br label %61

58:                                               ; preds = %13
  %59 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  store ptr %60, ptr %10, align 8, !tbaa !205
  br label %63

61:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %57, %8, %44, %41, %26
  %62 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi ptr [ %10, %58 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !205
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %8, !llvm.loop !767

67:                                               ; preds = %63, %1
  %68 = phi ptr [ %0, %1 ], [ %64, %63 ]
  %69 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !293
  %71 = tail call i32 @splay_tree_foreach(ptr noundef %70, ptr noundef nonnull @gimplify_adjust_omp_clauses_1, ptr noundef nonnull %68) #24
  %72 = load ptr, ptr %2, align 8, !tbaa !271
  store ptr %72, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %73 = load ptr, ptr %69, align 8, !tbaa !293
  tail call void @splay_tree_delete(ptr noundef %73) #24
  %74 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !711
  tail call void @pointer_set_destroy(ptr noundef %75) #24
  tail call void @free(ptr noundef %2)
  ret void
}

declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @splay_tree_compare_decl_uid(i64 noundef %0, i64 noundef %1) #13 !prof !204 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !216
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !216
  %9 = sub i32 %6, %8
  ret i32 %9
}

declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @gimplify_adjust_omp_clauses_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #15 !prof !204 {
  %3 = load i64, ptr %0, align 8, !tbaa !768
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !294
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 131
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %87

10:                                               ; preds = %2
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = and i32 %7, 124
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5852, ptr noundef nonnull @.str.1) #24
  br label %24

17:                                               ; preds = %10
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 13), align 8, !tbaa !766
  %19 = trunc i64 %6 to i8
  %20 = lshr i8 %19, 2
  %21 = and i8 %20, 1
  %22 = tail call zeroext i8 %18(ptr noundef %4, i8 noundef zeroext %21) #24
  %23 = icmp eq i8 %22, 0
  br label %24

24:                                               ; preds = %16, %13, %17
  %25 = phi i1 [ %23, %17 ], [ false, %13 ], [ false, %16 ]
  br i1 %25, label %26, label %69

26:                                               ; preds = %24
  %27 = and i32 %7, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %4, align 8
  %31 = and i64 %30, 67108864
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 33554432
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %29, %33
  %39 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %40 = load ptr, ptr %39, align 8, !tbaa !271
  br label %41

41:                                               ; preds = %56, %38
  %42 = phi ptr [ %40, %38 ], [ %58, %56 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !293
  %47 = tail call ptr @splay_tree_lookup(ptr noundef %46, i64 noundef %3) #24
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %47, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !294
  %52 = and i64 %51, 120
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44
  %55 = load ptr, ptr %42, align 8, !tbaa !271
  br label %56

56:                                               ; preds = %49, %54
  %57 = phi i1 [ true, %54 ], [ false, %49 ]
  %58 = phi ptr [ %55, %54 ], [ %42, %49 ]
  br i1 %57, label %41, label %59

59:                                               ; preds = %56, %41
  %60 = phi ptr [ null, %41 ], [ %58, %56 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %87, label %69

62:                                               ; preds = %26
  %63 = and i32 %7, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = and i32 %7, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5885, ptr noundef nonnull @.str.1) #24
  unreachable

69:                                               ; preds = %65, %62, %33, %59, %24
  %70 = phi i1 [ false, %24 ], [ true, %59 ], [ true, %33 ], [ false, %62 ], [ true, %65 ]
  %71 = phi i32 [ 1, %24 ], [ 2, %59 ], [ 2, %33 ], [ 1, %62 ], [ 3, %65 ]
  %72 = load i32, ptr @input_location, align 4, !tbaa !220
  %73 = tail call ptr @build_omp_clause(i32 noundef %72, i32 noundef %71) #24
  %74 = getelementptr inbounds %struct.tree_omp_clause, ptr %73, i64 0, i32 6
  store ptr %4, ptr %74, align 8, !tbaa !216
  %75 = load ptr, ptr %1, align 8, !tbaa !205
  %76 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 1
  store ptr %75, ptr %76, align 8, !tbaa !216
  br i1 %25, label %77, label %81

77:                                               ; preds = %69
  %78 = and i32 %7, 512
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %79, %70
  br i1 %80, label %85, label %81

81:                                               ; preds = %77, %69
  %82 = phi i64 [ 134217728, %69 ], [ 268435456, %77 ]
  %83 = load i64, ptr %73, align 8
  %84 = or i64 %83, %82
  store i64 %84, ptr %73, align 8
  br label %85

85:                                               ; preds = %81, %77
  store ptr %73, ptr %1, align 8, !tbaa !205
  %86 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 19), align 8, !tbaa !769
  tail call void %86(ptr noundef %73) #24
  br label %87

87:                                               ; preds = %2, %59, %85
  ret i32 0
}

declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @omp_is_private(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #15 !prof !204 {
  br label %3

3:                                                ; preds = %59, %2
  %4 = phi ptr [ %0, %2 ], [ %60, %59 ]
  %5 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = ptrtoint ptr %1 to i64
  %8 = tail call ptr @splay_tree_lookup(ptr noundef %6, i64 noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.splay_tree_node_s, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !294
  %13 = and i64 %12, 4
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, ptr noundef %20) #24
  store i64 8, ptr %11, align 8, !tbaa !294
  br label %62

21:                                               ; preds = %10
  %22 = and i64 %12, 2
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %4, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !269
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 8, !tbaa !271
  %33 = icmp eq ptr %32, %4
  br i1 %33, label %34, label %44

34:                                               ; preds = %31, %24
  %35 = and i64 %12, 16
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = and i64 %12, 64
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37, %34
  %41 = phi ptr [ @.str.25, %34 ], [ @.str.26, %37 ]
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  tail call void (ptr, ...) @error(ptr noundef nonnull %41, ptr noundef %43) #24
  br label %44

44:                                               ; preds = %40, %21, %27, %31, %37
  %45 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !205
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %4, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !269
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load ptr, ptr %45, align 8, !tbaa !271
  %53 = icmp eq ptr %52, %4
  %54 = zext i1 %53 to i8
  br label %62

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %4, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !269
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 8, !tbaa !271
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %3

62:                                               ; preds = %59, %55, %44, %51, %47, %15, %18
  %63 = phi i8 [ 1, %18 ], [ 0, %15 ], [ 1, %44 ], [ 0, %47 ], [ %54, %51 ], [ 0, %55 ], [ 0, %59 ]
  ret i8 %63
}

declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_sections(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @goa_stabilize_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #15 !prof !204 {
  %5 = load ptr, ptr %0, align 8, !tbaa !205
  %6 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %5) #24
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 47
  br i1 %9, label %10, label %51

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %59, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %35, %31 ], [ %12, %10 ]
  %16 = phi ptr [ %33, %31 ], [ %2, %10 ]
  %17 = load i64, ptr %15, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %37 [
    i16 116, label %19
    i16 113, label %19
    i16 117, label %19
  ]

19:                                               ; preds = %14, %14, %14
  %20 = load i64, ptr %16, align 8
  %21 = xor i64 %20, %17
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !216
  %27 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !216
  %29 = tail call zeroext i8 @types_compatible_p(ptr noundef %26, ptr noundef %28) #24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  %34 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = icmp eq ptr %35, %33
  br i1 %36, label %59, label %14, !llvm.loop !770

37:                                               ; preds = %14, %19, %24
  %38 = load i64, ptr %16, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 121
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i64, ptr %15, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 121
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !216
  %48 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !216
  %50 = icmp eq ptr %47, %49
  br i1 %50, label %59, label %60

51:                                               ; preds = %4
  %52 = load i64, ptr %2, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 121
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !216
  %58 = icmp eq ptr %6, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %31, %10, %45, %55
  store ptr %3, ptr %0, align 8, !tbaa !205
  br label %90

60:                                               ; preds = %51, %55, %41, %37, %45
  %61 = tail call zeroext i8 @is_gimple_val(ptr noundef %5) #24
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load i64, ptr %5, align 8
  %65 = and i64 %64, 65535
  %66 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !220
  switch i32 %67, label %83 [
    i32 7, label %68
    i32 5, label %68
    i32 6, label %78
    i32 10, label %71
  ]

68:                                               ; preds = %63, %63
  %69 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %70 = tail call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %78

71:                                               ; preds = %63
  %72 = trunc i64 %64 to i16
  %73 = add i16 %72, -91
  %74 = icmp ult i16 %73, 2
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %77 = tail call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %76, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %78

78:                                               ; preds = %68, %63, %75
  %79 = phi i32 [ %77, %75 ], [ 0, %63 ], [ %70, %68 ]
  %80 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %81 = tail call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %80, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %82 = or i32 %81, %79
  br label %83

83:                                               ; preds = %78, %71, %63
  %84 = phi i32 [ 0, %63 ], [ 0, %71 ], [ %82, %78 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1)
  %88 = icmp ne i32 %87, 1
  %89 = sext i1 %88 to i32
  br label %90

90:                                               ; preds = %83, %86, %60, %59
  %91 = phi i32 [ 1, %59 ], [ 0, %60 ], [ %89, %86 ], [ %84, %83 ]
  ret i32 %91
}

declare ptr @gimple_build_omp_atomic_load(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_atomic_store(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noalias noundef ptr @copy_if_shared_r(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #14 !prof !771 !PGOFuncName !772 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !220
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 3
  %11 = and i64 %5, 1099511627776
  %12 = icmp eq i64 %11, 0
  br i1 %10, label %13, label %17, !prof !773

13:                                               ; preds = %3
  br i1 %12, label %15, label %14, !prof !774

14:                                               ; preds = %13
  store i32 0, ptr %1, align 4, !tbaa !220
  br label %22

15:                                               ; preds = %13
  %16 = or disjoint i64 %5, 1099511627776
  store i64 %16, ptr %4, align 8
  br label %22

17:                                               ; preds = %3
  br i1 %12, label %20, label %18, !prof !775

18:                                               ; preds = %17
  %19 = tail call ptr @walk_tree_1(ptr noundef nonnull %0, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #24
  store i32 0, ptr %1, align 4, !tbaa !220
  br label %22

20:                                               ; preds = %17
  %21 = or disjoint i64 %5, 1099511627776
  store i64 %21, ptr %4, align 8
  br label %22

22:                                               ; preds = %18, %20, %14, %15
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @unmark_visited_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #22 !prof !771 !PGOFuncName !776 {
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8, !prof !777

8:                                                ; preds = %3
  %9 = and i64 %5, -1099511627777
  store i64 %9, ptr %4, align 8
  br label %11

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !220
  br label %11

11:                                               ; preds = %10, %8
  ret ptr null
}

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!203}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!35 = !{ptr @pop_gimplify_context, ptr @free, i64 4}
!36 = !{ptr @pop_gimplify_context, ptr @nreverse, i64 4}
!37 = !{ptr @pop_gimplify_context, ptr @record_vars, i64 75}
!38 = !{ptr @pop_gimplify_context, ptr @htab_delete, i64 69}
!39 = !{ptr @append_to_statement_list, ptr @alloc_stmt_list, i64 6}
!40 = !{ptr @append_to_statement_list, ptr @tsi_link_after, i64 40}
!41 = !{ptr @append_to_statement_list_force, ptr @alloc_stmt_list, i64 29105}
!42 = !{ptr @append_to_statement_list_force, ptr @tsi_link_after, i64 180612}
!43 = !{ptr @create_tmp_var_name, ptr @strlen, i64 30660}
!44 = !{ptr @create_tmp_var_name, ptr @sprintf, i64 10220}
!45 = !{ptr @create_tmp_var_name, ptr @get_identifier, i64 10220}
!46 = !{ptr @create_tmp_var_raw, ptr @build_qualified_type, i64 76}
!47 = !{ptr @create_tmp_var_raw, ptr @create_tmp_var_name, i64 7}
!48 = !{ptr @create_tmp_var_raw, ptr @build_decl_stat, i64 76}
!49 = !{ptr @create_tmp_var, ptr @build_qualified_type, i64 112767}
!50 = !{ptr @create_tmp_var, ptr @create_tmp_var_name, i64 10213}
!51 = !{ptr @create_tmp_var, ptr @build_decl_stat, i64 112767}
!52 = !{ptr @create_tmp_var, ptr @host_integerp, i64 112767}
!53 = !{ptr @create_tmp_var, ptr @record_vars, i64 824}
!54 = !{ptr @internal_get_tmp_var, ptr @gimplify_expr, i64 19508}
!55 = !{ptr @internal_get_tmp_var, ptr @get_name, i64 5129}
!56 = !{ptr @internal_get_tmp_var, ptr @create_tmp_var, i64 5129}
!57 = !{ptr @internal_get_tmp_var, ptr @htab_create, i64 32}
!58 = !{ptr @internal_get_tmp_var, ptr @htab_find_slot, i64 6233}
!59 = !{ptr @internal_get_tmp_var, ptr @xmalloc, i64 1608}
!60 = !{ptr @internal_get_tmp_var, ptr @walk_tree_1, i64 9754}
!61 = !{ptr @internal_get_tmp_var, ptr @build2_stat, i64 9754}
!62 = !{ptr @internal_get_tmp_var, ptr @gimple_seq_alloc, i64 520}
!63 = !{ptr @internal_get_tmp_var, ptr @ggc_free, i64 9754}
!64 = !{ptr @internal_get_tmp_var, ptr @gimple_get_lhs, i64 30}
!65 = !{ptr @unshare_expr, ptr @walk_tree_1, i64 575677}
!66 = !{ptr @mostly_copy_tree_r, ptr @copy_tree_r, i64 177531}
!67 = !{ptr @compare_case_labels, ptr @tree_int_cst_compare, i64 263214}
!68 = !{ptr @build_and_jump, ptr @create_artificial_label, i64 32}
!69 = !{ptr @build_and_jump, ptr @build1_stat, i64 83}
!70 = !{ptr @gimple_boolify, ptr @integer_zerop, i64 21798}
!71 = !{ptr @gimple_boolify, ptr @get_callee_fndecl, i64 21798}
!72 = !{ptr @gimple_boolify, ptr @gimple_boolify, i64 225366}
!73 = !{ptr @gimple_boolify, ptr @fold_convert_loc, i64 5108}
!74 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_type, i64 2}
!75 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_val, i64 2}
!76 = !{ptr @gimple_fold_indirect_ref, ptr @tree_strip_nop_conversions, i64 187}
!77 = !{ptr @gimplify_expr, ptr @tree_ssa_strip_useless_type_conversions, i64 2837943}
!78 = !{ptr @gimplify_expr, ptr @vec_heap_p_reserve_exact, i64 44999}
!79 = !{ptr @gimplify_expr, ptr @fold_indirect_ref_loc, i64 1032}
!80 = !{ptr @gimplify_expr, ptr @array_ref_low_bound, i64 44666}
!81 = !{ptr @gimplify_expr, ptr @walk_tree_1, i64 330082}
!82 = !{ptr @gimplify_expr, ptr @is_gimple_min_invariant, i64 172123}
!83 = !{ptr @gimplify_expr, ptr @array_ref_element_size, i64 44666}
!84 = !{ptr @gimplify_expr, ptr @size_int_kind, i64 82785}
!85 = !{ptr @gimplify_expr, ptr @size_binop_loc, i64 82785}
!86 = !{ptr @gimplify_expr, ptr @component_ref_field_offset, i64 38119}
!87 = !{ptr @gimplify_expr, ptr @gimplify_expr, i64 2834324}
!88 = !{ptr @gimplify_expr, ptr @recalculate_side_effects, i64 374134}
!89 = !{ptr @gimplify_expr, ptr @canonicalize_component_ref, i64 514}
!90 = !{ptr @gimplify_expr, ptr @free, i64 44959}
!91 = !{ptr @gimplify_expr, ptr @create_tmp_var, i64 106814}
!92 = !{ptr @gimplify_expr, ptr @build2_stat, i64 203043}
!93 = !{ptr @gimplify_expr, ptr @gimple_seq_alloc, i64 181994}
!94 = !{ptr @gimplify_expr, ptr @gimple_boolify, i64 181722}
!95 = !{ptr @gimplify_expr, ptr @shortcut_cond_expr, i64 37950}
!96 = !{ptr @gimplify_expr, ptr @gsi_insert_seq_after_without_update, i64 39}
!97 = !{ptr @gimplify_expr, ptr @gimple_seq_add_seq, i64 181722}
!98 = !{ptr @gimplify_expr, ptr @create_artificial_label, i64 120085}
!99 = !{ptr @gimplify_expr, ptr @gimple_cond_get_ops_from_tree, i64 143772}
!100 = !{ptr @gimplify_expr, ptr @gimple_build_cond, i64 143772}
!101 = !{ptr @gimplify_expr, ptr @gsi_insert_after_without_update, i64 656614}
!102 = !{ptr @gimplify_expr, ptr @gimple_build_label, i64 210565}
!103 = !{ptr @gimplify_expr, ptr @gimple_seq_may_fallthru, i64 2892}
!104 = !{ptr @gimplify_expr, ptr @gimple_build_goto, i64 225}
!105 = !{ptr @gimplify_expr, ptr @gimplify_seq_add_stmt, i64 38}
!106 = !{ptr @gimplify_expr, ptr @get_callee_fndecl, i64 406116}
!107 = !{ptr @gimplify_expr, ptr @is_gimple_reg_type, i64 255165}
!108 = !{ptr @gimplify_expr, ptr @protected_set_expr_location, i64 240339}
!109 = !{ptr @gimplify_expr, ptr @fold_call_expr, i64 203058}
!110 = !{ptr @gimplify_expr, ptr @call_expr_flags, i64 203058}
!111 = !{ptr @gimplify_expr, ptr @gimple_build_call_from_tree, i64 69244}
!112 = !{ptr @gimplify_expr, ptr @gimplify_compound_expr, i64 133}
!113 = !{ptr @gimplify_expr, ptr @useless_type_conversion_p, i64 217377}
!114 = !{ptr @gimplify_expr, ptr @gimple_fold_indirect_ref, i64 12}
!115 = !{ptr @gimplify_expr, ptr @aggregate_value_p, i64 177600}
!116 = !{ptr @gimplify_expr, ptr @is_gimple_reg, i64 460254}
!117 = !{ptr @gimplify_expr, ptr @gimple_call_flags, i64 67046}
!118 = !{ptr @gimplify_expr, ptr @gimple_build_assign_stat, i64 189260}
!119 = !{ptr @gimplify_expr, ptr @make_ssa_name_fn, i64 661}
!120 = !{ptr @gimplify_expr, ptr @gimple_set_lhs, i64 661}
!121 = !{ptr @gimplify_expr, ptr @fold_convert_loc, i64 412}
!122 = !{ptr @gimplify_expr, ptr @build3_stat, i64 206}
!123 = !{ptr @gimplify_expr, ptr @types_compatible_p, i64 203187}
!124 = !{ptr @gimplify_expr, ptr @recompute_tree_invariant_for_addr_expr, i64 203187}
!125 = !{ptr @gimplify_expr, ptr @tree_strip_sign_nop_conversions, i64 14949}
!126 = !{ptr @gimplify_expr, ptr @tree_ssa_useless_type_conversion, i64 14949}
!127 = !{ptr @gimplify_expr, ptr @maybe_fold_offset_to_address, i64 123}
!128 = !{ptr @gimplify_expr, ptr @gimplify_type_sizes, i64 16}
!129 = !{ptr @gimplify_expr, ptr @voidify_wrapper_expr, i64 38029}
!130 = !{ptr @gimplify_expr, ptr @gimple_build_bind, i64 40}
!131 = !{ptr @gimplify_expr, ptr @spec_qsort, i64 38}
!132 = !{ptr @gimplify_expr, ptr @gimple_build_switch_vec, i64 38}
!133 = !{ptr @gimplify_expr, ptr @decl_function_context, i64 64793}
!134 = !{ptr @gimplify_expr, ptr @vec_heap_p_reserve, i64 327}
!135 = !{ptr @gimplify_expr, ptr @gimple_build_return, i64 43508}
!136 = !{ptr @gimplify_expr, ptr @internal_get_tmp_var, i64 9754}
!137 = !{ptr @gimplify_expr, ptr @tsi_delink, i64 312493}
!138 = !{ptr @gimplify_expr, ptr @is_gimple_stmt, i64 172332}
!139 = !{ptr @gimplify_expr, ptr @is_gimple_val, i64 995218}
!140 = !{ptr @gimplify_expr, ptr @is_gimple_reg_rhs_or_call, i64 468652}
!141 = !{ptr @gimplify_expr, ptr @is_gimple_lvalue, i64 256306}
!142 = !{ptr @gimplify_expr, ptr @get_name, i64 106549}
!143 = !{ptr @gimplify_expr, ptr @htab_create, i64 662}
!144 = !{ptr @gimplify_expr, ptr @htab_find_slot, i64 129453}
!145 = !{ptr @gimplify_expr, ptr @xmalloc, i64 33409}
!146 = !{ptr @gimplify_expr, ptr @ggc_free, i64 202593}
!147 = !{ptr @gimplify_expr, ptr @gimple_get_lhs, i64 631}
!148 = !{ptr @gimplify_expr, ptr @is_gimple_condexpr, i64 14678}
!149 = !{ptr @gimplify_compound_expr, ptr @gimple_seq_alloc, i64 7}
!150 = !{ptr @gimplify_compound_expr, ptr @gimplify_expr, i64 134}
!151 = !{ptr @gimplify_seq_add_stmt, ptr @gimple_seq_alloc, i64 8}
!152 = !{ptr @gimplify_seq_add_stmt, ptr @gsi_insert_after_without_update, i64 38}
!153 = !{ptr @gimplify_type_sizes, ptr @gimplify_one_sizepos, i64 100}
!154 = !{ptr @gimplify_type_sizes, ptr @gimplify_type_sizes, i64 32}
!155 = !{ptr @gimplify_body, ptr @default_rtl_profile, i64 40}
!156 = !{ptr @gimplify_body, ptr @unshare_body, i64 40}
!157 = !{ptr @gimplify_body, ptr @unvisit_body, i64 40}
!158 = !{ptr @gimplify_body, ptr @cgraph_node, i64 40}
!159 = !{ptr @gimplify_body, ptr @gimplify_parameters, i64 40}
!160 = !{ptr @gimplify_body, ptr @gimple_seq_alloc, i64 40}
!161 = !{ptr @gimplify_body, ptr @gimplify_expr, i64 40}
!162 = !{ptr @gimplify_body, ptr @pop_gimplify_context, i64 40}
!163 = !{ptr @unshare_body, ptr @cgraph_node, i64 40}
!164 = !{ptr @unshare_body, ptr @walk_tree_1, i64 40}
!165 = !{ptr @unvisit_body, ptr @cgraph_node, i64 40}
!166 = !{ptr @unvisit_body, ptr @walk_tree_1, i64 40}
!167 = !{ptr @gimplify_function_tree, ptr @gimple_body, i64 40}
!168 = !{ptr @gimplify_function_tree, ptr @push_cfun, i64 40}
!169 = !{ptr @gimplify_function_tree, ptr @gimplify_body, i64 40}
!170 = !{ptr @gimplify_function_tree, ptr @gimple_seq_alloc, i64 40}
!171 = !{ptr @gimplify_function_tree, ptr @gimple_seq_add_stmt, i64 40}
!172 = !{ptr @gimplify_function_tree, ptr @gimple_set_body, i64 40}
!173 = !{ptr @gimplify_function_tree, ptr @pop_cfun, i64 40}
!174 = !{ptr @force_gimple_operand, ptr @is_gimple_val, i64 819}
!175 = !{ptr @force_gimple_operand, ptr @gimplify_expr, i64 721}
!176 = !{ptr @force_gimple_operand, ptr @add_referenced_var, i64 661}
!177 = !{ptr @force_gimple_operand, ptr @free, i64 36}
!178 = !{ptr @force_gimple_operand, ptr @record_vars, i64 721}
!179 = !{ptr @force_gimple_operand, ptr @htab_delete, i64 625}
!180 = !{ptr @force_gimple_operand_gsi, ptr @force_gimple_operand, i64 753}
!181 = !{ptr @force_gimple_operand_gsi, ptr @mark_symbols_for_renaming, i64 575}
!182 = !{ptr @force_gimple_operand_gsi, ptr @gsi_insert_seq_before, i64 570}
!183 = !{ptr @gimple_tree_hash, ptr @iterative_hash_expr, i64 173248}
!184 = !{ptr @gimple_tree_eq, ptr @operand_equal_p, i64 115744}
!185 = !{ptr @gimple_tree_eq, ptr @iterative_hash_expr, i64 201338}
!186 = !{ptr @canonicalize_component_ref, ptr @get_unwidened, i64 271}
!187 = !{ptr @shortcut_cond_expr, ptr @shortcut_cond_expr, i64 38}
!188 = !{ptr @shortcut_cond_expr, ptr @build3_stat, i64 38}
!189 = !{ptr @shortcut_cond_expr, ptr @expr_last, i64 38118}
!190 = !{ptr @shortcut_cond_expr, ptr @block_may_fallthru, i64 37912}
!191 = !{ptr @shortcut_cond_expr, ptr @shortcut_cond_r, i64 37912}
!192 = !{ptr @shortcut_cond_expr, ptr @alloc_stmt_list, i64 39567}
!193 = !{ptr @shortcut_cond_expr, ptr @tsi_link_after, i64 126195}
!194 = !{ptr @shortcut_cond_expr, ptr @create_artificial_label, i64 206}
!195 = !{ptr @shortcut_cond_expr, ptr @build1_stat, i64 38324}
!196 = !{ptr @shortcut_cond_r, ptr @shortcut_cond_r, i64 205782}
!197 = !{ptr @shortcut_cond_r, ptr @alloc_stmt_list, i64 81108}
!198 = !{ptr @shortcut_cond_r, ptr @tsi_link_after, i64 179437}
!199 = !{ptr @shortcut_cond_r, ptr @create_artificial_label, i64 64690}
!200 = !{ptr @shortcut_cond_r, ptr @build1_stat, i64 194209}
!201 = !{ptr @shortcut_cond_r, ptr @build3_stat, i64 140803}
!202 = !{ptr @copy_if_shared_r, ptr @walk_tree_1, i64 9754}
!203 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!204 = !{!"function_entry_count", i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"any pointer", !207, i64 0}
!207 = !{!"omnipotent char", !208, i64 0}
!208 = !{!"Simple C/C++ TBAA"}
!209 = !{!210, !206, i64 8}
!210 = !{!"_IO_FILE", !211, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !206, i64 104, !211, i64 112, !211, i64 116, !212, i64 120, !213, i64 128, !207, i64 130, !207, i64 131, !206, i64 136, !212, i64 144, !206, i64 152, !206, i64 160, !206, i64 168, !206, i64 176, !212, i64 184, !211, i64 192, !207, i64 196}
!211 = !{!"int", !207, i64 0}
!212 = !{!"long", !207, i64 0}
!213 = !{!"short", !207, i64 0}
!214 = !{!210, !206, i64 16}
!215 = !{!"branch_weights", i32 2000, i32 1}
!216 = !{!207, !207, i64 0}
!217 = !{!210, !206, i64 40}
!218 = !{!210, !206, i64 48}
!219 = !{!210, !211, i64 0}
!220 = !{!211, !211, i64 0}
!221 = distinct !{!221, !222, !223}
!222 = !{!"llvm.loop.mustprogress"}
!223 = !{!"llvm.loop.unroll.disable"}
!224 = !{!"branch_weights", i32 -1715432136, i32 0, i32 88894, i32 1562000, i32 0, i32 0, i32 0, i32 0, i32 774650, i32 0, i32 0}
!225 = distinct !{!225, !222, !223}
!226 = !{!"function_entry_count", i64 39}
!227 = !{!228, !206, i64 0}
!228 = !{!"gimplify_ctx", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !211, i64 64, !207, i64 68, !207, i64 69, !207, i64 70}
!229 = !{!"function_entry_count", i64 79}
!230 = !{!"branch_weights", i32 0, i32 800}
!231 = !{!228, !206, i64 8}
!232 = !{!"branch_weights", i32 760, i32 40}
!233 = !{!234, !211, i64 0}
!234 = !{!"VEC_gimple_base", !211, i64 0, !211, i64 4, !207, i64 8}
!235 = !{!"branch_weights", i32 40, i32 0}
!236 = !{!228, !206, i64 16}
!237 = !{!"branch_weights", i32 0, i32 40}
!238 = !{!228, !206, i64 56}
!239 = !{!"branch_weights", i32 106, i32 694}
!240 = !{!"function_entry_count", i64 44}
!241 = !{!"branch_weights", i32 0, i32 44}
!242 = !{!"branch_weights", i32 140847, i32 443352}
!243 = !{!"branch_weights", i32 55676, i32 85171}
!244 = !{i64 0, i64 8, !205, i64 8, i64 8, !205}
!245 = !{i64 0, i64 8, !205}
!246 = !{!"gimplify.c;append_to_statement_list_1"}
!247 = !{!"function_entry_count", i64 199638}
!248 = !{!"branch_weights", i32 0, i32 199638}
!249 = !{i8 0, i8 2}
!250 = !{!"branch_weights", i32 38723, i32 688118}
!251 = !{!"branch_weights", i32 0, i32 726841}
!252 = !{!253, !206, i64 8}
!253 = !{!"gimple_seq_d", !206, i64 0, !206, i64 8, !206, i64 16}
!254 = !{!"function_entry_count", i64 10220}
!255 = !{!"branch_weights", i32 0, i32 10220}
!256 = !{!212, !212, i64 0}
!257 = !{!"VP", i32 1, i64 10220, i64 9, i64 9823, i64 6, i64 225, i64 7, i64 118, i64 17, i64 32}
!258 = !{!"branch_weights", i32 10217, i32 1}
!259 = !{!"branch_weights", i32 10217, i32 50104}
!260 = distinct !{!260, !222, !223}
!261 = !{!"branch_weights", i32 2, i32 60319}
!262 = !{!"function_entry_count", i64 76}
!263 = !{!"branch_weights", i32 102623, i32 10220}
!264 = !{!"function_entry_count", i64 112767}
!265 = !{!"branch_weights", i32 112767, i32 0}
!266 = !{!"branch_weights", i32 0, i32 112767}
!267 = !{!"branch_weights", i32 824, i32 111943}
!268 = !{!"branch_weights", i32 111943, i32 0}
!269 = !{!270, !211, i64 32}
!270 = !{!"gimplify_omp_ctx", !206, i64 0, !206, i64 8, !206, i64 16, !211, i64 24, !211, i64 28, !211, i64 32}
!271 = !{!270, !206, i64 0}
!272 = distinct !{!272, !222, !223}
!273 = !{!"branch_weights", i32 0, i32 824}
!274 = !{!253, !206, i64 0}
!275 = !{!276, !206, i64 0}
!276 = !{!"gimple_seq_node_d", !206, i64 0, !206, i64 8, !206, i64 16}
!277 = !{!"function_entry_count", i64 9754}
!278 = !{!"gimplify.c;internal_get_tmp_var"}
!279 = !{!"branch_weights", i32 202593, i32 9754}
!280 = !{!"branch_weights", i32 135686, i32 66907}
!281 = !{!282, !206, i64 0}
!282 = !{!"gimple_temp_hash_elt", !206, i64 0, !206, i64 8}
!283 = !{!"branch_weights", i32 694, i32 134992}
!284 = !{!"branch_weights", i32 35017, i32 100669}
!285 = !{!282, !206, i64 8}
!286 = !{!"branch_weights", i32 9754, i32 202593}
!287 = !{!"branch_weights", i32 0, i32 202593}
!288 = !{!"branch_weights", i32 135662, i32 76685}
!289 = !{!"branch_weights", i32 802, i32 134860}
!290 = !{!228, !207, i64 69}
!291 = !{!"branch_weights", i32 211686, i32 661}
!292 = !{!"branch_weights", i32 0, i32 661}
!293 = !{!270, !206, i64 8}
!294 = !{!295, !212, i64 8}
!295 = !{!"splay_tree_node_s", !212, i64 0, !212, i64 8, !206, i64 16, !206, i64 24}
!296 = !{!297, !206, i64 352}
!297 = !{!"lang_hooks", !206, i64 0, !212, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !206, i64 104, !206, i64 112, !206, i64 120, !206, i64 128, !206, i64 136, !206, i64 144, !206, i64 152, !206, i64 160, !206, i64 168, !206, i64 176, !206, i64 184, !206, i64 192, !206, i64 200, !206, i64 208, !206, i64 216, !206, i64 224, !206, i64 232, !298, i64 240, !299, i64 248, !300, i64 256, !301, i64 272, !302, i64 432, !303, i64 560, !206, i64 584, !206, i64 592, !206, i64 600, !206, i64 608, !206, i64 616, !206, i64 624, !206, i64 632, !206, i64 640, !206, i64 648, !206, i64 656, !206, i64 664, !207, i64 672}
!298 = !{!"lang_hooks_for_tree_inlining", !206, i64 0}
!299 = !{!"lang_hooks_for_callgraph", !206, i64 0}
!300 = !{!"lang_hooks_for_tree_dump", !206, i64 0, !206, i64 8}
!301 = !{!"lang_hooks_for_decls", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !206, i64 104, !206, i64 112, !206, i64 120, !206, i64 128, !206, i64 136, !206, i64 144, !206, i64 152}
!302 = !{!"lang_hooks_for_types", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !206, i64 104, !206, i64 112, !207, i64 120}
!303 = !{!"lang_hooks_for_lto", !206, i64 0, !206, i64 8, !206, i64 16}
!304 = !{!305}
!305 = distinct !{!305, !306, !"gsi_start: argument 0"}
!306 = distinct !{!306, !"gsi_start"}
!307 = !{!276, !206, i64 16}
!308 = distinct !{!308, !222, !223}
!309 = !{!"function_entry_count", i64 575677}
!310 = !{!"function_entry_count", i64 1420245}
!311 = !{!"gimplify.c;mostly_copy_tree_r"}
!312 = !{!"branch_weights", i32 429659, i32 429659, i32 429659, i32 429659, i32 0}
!313 = !{!"function_entry_count", i64 38029}
!314 = !{!"branch_weights", i32 0, i32 38029}
!315 = !{!"branch_weights", i32 38029, i32 0}
!316 = distinct !{!316, !222, !223}
!317 = distinct !{!317, !222, !223}
!318 = !{!319, !211, i64 0}
!319 = !{!"VEC_tree_base", !211, i64 0, !211, i64 4, !207, i64 8}
!320 = !{!"function_entry_count", i64 263214}
!321 = !{!"gimplify.c;compare_case_labels"}
!322 = !{!"branch_weights", i32 0, i32 263214}
!323 = !{!"function_entry_count", i64 140}
!324 = !{!"branch_weights", i32 114128, i32 167618}
!325 = !{!"branch_weights", i32 64723, i32 102895}
!326 = !{!"function_entry_count", i64 38}
!327 = !{!"branch_weights", i32 0, i32 38}
!328 = !{!"function_entry_count", i64 407088}
!329 = !{!"branch_weights", i32 407009, i32 79}
!330 = !{!"branch_weights", i32 40475, i32 366613}
!331 = !{!"branch_weights", i32 21798, i32 18677}
!332 = !{!"branch_weights", i32 0, i32 21798}
!333 = !{!"branch_weights", i32 140879, i32 266209}
!334 = !{!"branch_weights", i32 5108, i32 0, i32 9754, i32 0, i32 75718, i32 27211, i32 0, i32 125412, i32 20348, i32 2616, i32 3, i32 39, i32 0}
!335 = !{!"function_entry_count", i64 468652}
!336 = !{!"gimplify.c;is_gimple_reg_rhs_or_call"}
!337 = !{!"function_entry_count", i64 2}
!338 = !{!"gimplify.c;is_gimple_mem_rhs_or_call"}
!339 = !{!"branch_weights", i32 0, i32 2}
!340 = !{!"function_entry_count", i64 187}
!341 = !{!"branch_weights", i32 0, i32 187, i32 0}
!342 = !{!"branch_weights", i32 0, i32 187}
!343 = !{!"branch_weights", i32 6, i32 181}
!344 = !{!"branch_weights", i32 0, i32 6}
!345 = !{!"function_entry_count", i64 2854727}
!346 = !{!"branch_weights", i32 114205, i32 2740522}
!347 = !{!"branch_weights", i32 0, i32 2740522}
!348 = !{!"branch_weights", i32 519, i32 2740003}
!349 = !{!"branch_weights", i32 0, i32 519}
!350 = !{!"branch_weights", i32 1622953, i32 1117050}
!351 = !{!"branch_weights", i32 0, i32 1622953}
!352 = !{!"branch_weights", i32 301227, i32 815823}
!353 = !{!"branch_weights", i32 0, i32 301227}
!354 = !{!"branch_weights", i32 203187, i32 612636}
!355 = !{!"branch_weights", i32 0, i32 203187}
!356 = !{!"branch_weights", i32 612636, i32 0}
!357 = !{!"branch_weights", i32 1403157, i32 1337365}
!358 = !{!"branch_weights", i32 4011, i32 2736511}
!359 = !{!360}
!360 = distinct !{!360, !361, !"gsi_last: argument 0"}
!361 = distinct !{!361, !"gsi_last"}
!362 = !{!"branch_weights", i32 2740522, i32 0}
!363 = !{!364}
!364 = distinct !{!364, !365, !"gsi_last: argument 0"}
!365 = distinct !{!365, !"gsi_last"}
!366 = !{!"branch_weights", i32 1374317, i32 1366205}
!367 = !{!"branch_weights", i32 1542975, i32 1197547}
!368 = !{!"branch_weights", i32 1197547, i32 0}
!369 = !{!"branch_weights", i32 0, i32 2740962}
!370 = !{!297, !206, i64 608}
!371 = !{!"VP", i32 0, i64 2740962, i64 1887601838236546476, i64 2740962}
!372 = !{!"branch_weights", i32 0, i32 0, i32 2740962}
!373 = !{!"branch_weights", i32 478813, i32 0, i32 0, i32 0, i32 0, i32 44412, i32 0, i32 0, i32 0, i32 509, i32 0, i32 181947, i32 203058, i32 0, i32 111, i32 0, i32 43959, i32 212347, i32 38, i32 168, i32 0, i32 203187, i32 0, i32 14949, i32 0, i32 0, i32 519, i32 0, i32 0, i32 325835, i32 0, i32 0, i32 61, i32 0, i32 0, i32 0, i32 38, i32 40, i32 0, i32 38, i32 0, i32 206, i32 0, i32 64793, i32 25687, i32 43508, i32 0, i32 19508, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37989, i32 0, i32 676105, i32 161127, i32 0, i32 1992, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18}
!374 = !{!"branch_weights", i32 44921, i32 0}
!375 = !{!"branch_weights", i32 513, i32 127199}
!376 = !{!"branch_weights", i32 25784654, i32 0, i32 1712343599, i32 2006710912, i32 0, i32 0, i32 0, i32 0, i32 1992111587, i32 0}
!377 = !{!"branch_weights", i32 720452, i32 161127}
!378 = !{!"branch_weights", i32 308927, i32 411525}
!379 = !{!"branch_weights", i32 0, i32 308927}
!380 = !{!"branch_weights", i32 881579, i32 0}
!381 = distinct !{!381, !222, !223}
!382 = !{!297, !206, i64 120}
!383 = !{!"branch_weights", i32 0, i32 82791}
!384 = !{!319, !211, i64 4}
!385 = distinct !{!385, !223}
!386 = !{!"branch_weights", i32 0, i32 44921}
!387 = !{!"branch_weights", i32 44920, i32 1}
!388 = !{!"branch_weights", i32 0, i32 44672, i32 0, i32 38119}
!389 = !{!"branch_weights", i32 44666, i32 6}
!390 = !{!"branch_weights", i32 0, i32 44666}
!391 = !{!"branch_weights", i32 38119, i32 0}
!392 = !{!"branch_weights", i32 0, i32 38119}
!393 = !{!"branch_weights", i32 37871, i32 44920}
!394 = distinct !{!394, !222, !223}
!395 = !{!"branch_weights", i32 0, i32 127712}
!396 = !{!"branch_weights", i32 44921, i32 82791}
!397 = !{!"branch_weights", i32 38119, i32 44672, i32 0, i32 0}
!398 = !{!"branch_weights", i32 0, i32 44672}
!399 = distinct !{!399, !222, !223}
!400 = !{!"branch_weights", i32 1, i32 44920}
!401 = !{!"branch_weights", i32 508, i32 44412}
!402 = !{!"branch_weights", i32 181947, i32 0}
!403 = !{!"branch_weights", i32 181722, i32 225}
!404 = !{!"branch_weights", i32 225, i32 0}
!405 = !{!228, !207, i64 70}
!406 = !{!"branch_weights", i32 0, i32 225}
!407 = !{!"branch_weights", i32 37950, i32 143772}
!408 = !{!"branch_weights", i32 0, i32 37950}
!409 = !{!228, !211, i64 64}
!410 = !{!"branch_weights", i32 181722, i32 0}
!411 = !{!"branch_weights", i32 2761, i32 178961}
!412 = !{!228, !206, i64 24}
!413 = !{!"branch_weights", i32 2761, i32 38}
!414 = !{!415}
!415 = distinct !{!415, !416, !"gsi_last: argument 0"}
!416 = distinct !{!416, !"gsi_last"}
!417 = !{i64 0, i64 8, !205, i64 8, i64 8, !205, i64 16, i64 8, !205}
!418 = !{!"branch_weights", i32 0, i32 143772}
!419 = !{!"branch_weights", i32 94760, i32 49012}
!420 = !{!"branch_weights", i32 46043, i32 2969}
!421 = !{!"branch_weights", i32 46043, i32 0}
!422 = !{!"branch_weights", i32 0, i32 46043}
!423 = !{!"branch_weights", i32 19445, i32 124327}
!424 = !{!"branch_weights", i32 121435, i32 2892}
!425 = !{!"branch_weights", i32 121435, i32 0}
!426 = !{!"branch_weights", i32 0, i32 121435}
!427 = !{!"branch_weights", i32 0, i32 656652}
!428 = !{!"branch_weights", i32 143772, i32 512880}
!429 = !{!430}
!430 = distinct !{!430, !431, !"gsi_last: argument 0"}
!431 = distinct !{!431, !"gsi_last"}
!432 = !{!"branch_weights", i32 182494, i32 474158}
!433 = !{!"branch_weights", i32 0, i32 474158}
!434 = !{!"branch_weights", i32 97729, i32 46043}
!435 = !{!"branch_weights", i32 97729, i32 0}
!436 = !{!437}
!437 = distinct !{!437, !438, !"gsi_last: argument 0"}
!438 = distinct !{!438, !"gsi_last"}
!439 = !{!"branch_weights", i32 94760, i32 2969}
!440 = !{!"branch_weights", i32 77, i32 2892}
!441 = !{!"branch_weights", i32 2873, i32 19}
!442 = !{!"branch_weights", i32 22337, i32 121435}
!443 = !{!444}
!444 = distinct !{!444, !445, !"gsi_last: argument 0"}
!445 = distinct !{!445, !"gsi_last"}
!446 = !{!"branch_weights", i32 143753, i32 19}
!447 = !{!448}
!448 = distinct !{!448, !449, !"gsi_last: argument 0"}
!449 = distinct !{!449, !"gsi_last"}
!450 = !{!"branch_weights", i32 49012, i32 94760}
!451 = !{!"branch_weights", i32 143772, i32 0}
!452 = !{!"branch_weights", i32 0, i32 181947}
!453 = !{!"branch_weights", i32 203058, i32 0}
!454 = !{!"branch_weights", i32 0, i32 203058}
!455 = !{!"branch_weights", i32 44652, i32 158406}
!456 = !{!"branch_weights", i32 240339, i32 203058}
!457 = !{!"branch_weights", i32 203057, i32 1}
!458 = !{!"branch_weights", i32 37282, i32 203057}
!459 = distinct !{!459, !222, !223}
!460 = !{!"branch_weights", i32 0, i32 240339}
!461 = !{!"branch_weights", i32 240339, i32 0}
!462 = !{!"branch_weights", i32 0, i32 496645}
!463 = !{!"branch_weights", i32 496645, i32 0}
!464 = !{!"branch_weights", i32 37281, i32 203058}
!465 = distinct !{!465, !222, !223}
!466 = !{!"branch_weights", i32 200860, i32 2198}
!467 = !{!"branch_weights", i32 0, i32 200860}
!468 = !{!469}
!469 = distinct !{!469, !470, !"gsi_last: argument 0"}
!470 = distinct !{!470, !"gsi_last"}
!471 = !{i32 0, i32 2}
!472 = !{!"branch_weights", i32 256306, i32 0}
!473 = !{!"branch_weights", i32 242116, i32 14190, i32 0}
!474 = !{!"branch_weights", i32 0, i32 14190}
!475 = !{!"branch_weights", i32 225134, i32 153372, i32 12, i32 0, i32 23, i32 0, i32 1, i32 134093, i32 0, i32 0, i32 0, i32 0}
!476 = !{!"branch_weights", i32 0, i32 153372}
!477 = !{!"branch_weights", i32 12, i32 0}
!478 = !{!"branch_weights", i32 0, i32 1}
!479 = !{!"branch_weights", i32 134093, i32 0}
!480 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call}
!481 = !{!"branch_weights", i32 0, i32 256306}
!482 = !{!"branch_weights", i32 1, i32 256305}
!483 = !{!"branch_weights", i32 255645, i32 661}
!484 = !{!"branch_weights", i32 76687, i32 178958}
!485 = !{!"branch_weights", i32 76685, i32 2}
!486 = !{!"branch_weights", i32 1, i32 1}
!487 = !{!"branch_weights", i32 67046, i32 189260}
!488 = !{!"branch_weights", i32 67046, i32 0}
!489 = !{!"branch_weights", i32 0, i32 67046}
!490 = !{!"branch_weights", i32 189260, i32 0}
!491 = !{!492}
!492 = distinct !{!492, !493, !"gsi_last: argument 0"}
!493 = distinct !{!493, !"gsi_last"}
!494 = !{!"branch_weights", i32 203187, i32 0}
!495 = !{!"branch_weights", i32 203187, i32 0, i32 0, i32 0}
!496 = !{!"branch_weights", i32 203187, i32 0, i32 7, i32 123, i32 0, i32 0, i32 0, i32 0}
!497 = distinct !{!497, !222, !223}
!498 = !{!"branch_weights", i32 14949, i32 0}
!499 = !{!"branch_weights", i32 0, i32 14949}
!500 = !{!"branch_weights", i32 0, i32 14949, i32 0}
!501 = !{!"branch_weights", i32 14826, i32 123, i32 0}
!502 = !{!"branch_weights", i32 0, i32 123, i32 0}
!503 = !{!"branch_weights", i32 123, i32 0}
!504 = !{!"branch_weights", i32 0, i32 123}
!505 = !{!"branch_weights", i32 123, i32 14826, i32 0}
!506 = !{!"branch_weights", i32 14820, i32 6, i32 0}
!507 = !{!"branch_weights", i32 0, i32 14826}
!508 = !{!"branch_weights", i32 14826, i32 123}
!509 = !{!"branch_weights", i32 519, i32 0}
!510 = !{!"branch_weights", i32 0, i32 0, i32 38}
!511 = !{!"branch_weights", i32 16, i32 22}
!512 = !{!"branch_weights", i32 38, i32 0}
!513 = !{!228, !207, i64 68}
!514 = !{!"branch_weights", i32 2, i32 38}
!515 = distinct !{!515, !222, !223}
!516 = !{!234, !211, i64 4}
!517 = !{!518}
!518 = distinct !{!518, !519, !"gsi_last: argument 0"}
!519 = distinct !{!519, !"gsi_last"}
!520 = !{!228, !206, i64 32}
!521 = !{!228, !206, i64 48}
!522 = !{!"branch_weights", i32 0, i32 25725}
!523 = !{!"branch_weights", i32 25687, i32 38}
!524 = !{!"branch_weights", i32 38, i32 25649}
!525 = !{!"branch_weights", i32 25649, i32 0}
!526 = !{!"branch_weights", i32 25649, i32 38}
!527 = !{!"VP", i32 1, i64 38, i64 0, i64 38}
!528 = distinct !{!528, !222, !223}
!529 = distinct !{!529, !222, !223}
!530 = !{!531}
!531 = distinct !{!531, !532, !"gsi_last: argument 0"}
!532 = distinct !{!532, !"gsi_last"}
!533 = !{!534}
!534 = distinct !{!534, !535, !"gsi_last: argument 0"}
!535 = distinct !{!535, !"gsi_last"}
!536 = !{!"branch_weights", i32 206, i32 0}
!537 = !{!538}
!538 = distinct !{!538, !539, !"gsi_last: argument 0"}
!539 = distinct !{!539, !"gsi_last"}
!540 = !{!"branch_weights", i32 64793, i32 0}
!541 = !{!542}
!542 = distinct !{!542, !543, !"gsi_last: argument 0"}
!543 = distinct !{!543, !"gsi_last"}
!544 = !{!"branch_weights", i32 0, i32 25687}
!545 = distinct !{!545, !223}
!546 = !{!"branch_weights", i32 327, i32 25360}
!547 = !{!548}
!548 = distinct !{!548, !549, !"gsi_last: argument 0"}
!549 = distinct !{!549, !"gsi_last"}
!550 = !{!"branch_weights", i32 0, i32 43508}
!551 = !{!"branch_weights", i32 43508, i32 0}
!552 = !{!228, !206, i64 40}
!553 = !{!"branch_weights", i32 40, i32 43468}
!554 = !{!555}
!555 = distinct !{!555, !556, !"gsi_last: argument 0"}
!556 = distinct !{!556, !"gsi_last"}
!557 = !{!558, !211, i64 0}
!558 = !{!"VEC_constructor_elt_base", !211, i64 0, !211, i64 4, !207, i64 8}
!559 = !{!560, !206, i64 8}
!560 = !{!"constructor_elt_d", !206, i64 0, !206, i64 8}
!561 = distinct !{!561, !222, !223}
!562 = !{!"branch_weights", i32 19508, i32 0}
!563 = !{!"branch_weights", i32 9754, i32 9754}
!564 = !{!"branch_weights", i32 0, i32 9754}
!565 = !{i32 -2, i32 2}
!566 = !{!567}
!567 = distinct !{!567, !568, !"gsi_start: argument 0"}
!568 = distinct !{!568, !"gsi_start"}
!569 = !{!570, !206, i64 0}
!570 = !{!"", !206, i64 0, !206, i64 8, !206, i64 16}
!571 = !{!572}
!572 = distinct !{!572, !573, !"gsi_start: argument 0"}
!573 = distinct !{!573, !"gsi_start"}
!574 = !{!"branch_weights", i32 1, i32 37988}
!575 = !{!"branch_weights", i32 37988, i32 274505}
!576 = distinct !{!576, !222, !223}
!577 = !{!"branch_weights", i32 37989, i32 0}
!578 = distinct !{!578, !222, !223}
!579 = distinct !{!579, !222, !223}
!580 = !{!581, !206, i64 8}
!581 = !{!"gimple_omp_for_iter", !211, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32}
!582 = !{!581, !206, i64 16}
!583 = !{!581, !211, i64 0}
!584 = !{!581, !206, i64 24}
!585 = !{!581, !206, i64 32}
!586 = distinct !{!586, !222, !223}
!587 = !{!"branch_weights", i32 0, i32 18}
!588 = !{!"branch_weights", i32 29262, i32 189437, i32 0, i32 57074, i32 203058, i32 0}
!589 = !{!"branch_weights", i32 0, i32 189437}
!590 = !{!"branch_weights", i32 29262, i32 0}
!591 = !{!"branch_weights", i32 45567, i32 2695395}
!592 = !{!"branch_weights", i32 440, i32 2740522}
!593 = distinct !{!593, !222, !223}
!594 = !{!"branch_weights", i32 2740522, i32 0, i32 0}
!595 = !{!"branch_weights", i32 612636, i32 2127886}
!596 = !{!"branch_weights", i32 440304, i32 172332}
!597 = !{!"branch_weights", i32 111, i32 172221}
!598 = !{!"branch_weights", i32 111, i32 0}
!599 = !{!"branch_weights", i32 0, i32 612636}
!600 = !{!"branch_weights", i32 38, i32 612598}
!601 = !{!"branch_weights", i32 114706, i32 497892}
!602 = !{!"branch_weights", i32 1, i32 612597}
!603 = !{!"branch_weights", i32 11206820, i32 25724474}
!604 = !{!"branch_weights", i32 10949562, i32 257258}
!605 = !{!"branch_weights", i32 612597, i32 36318697}
!606 = distinct !{!606, !222, !223}
!607 = !{!"branch_weights", i32 2127886, i32 0}
!608 = !{!"VP", i32 0, i64 2127886, i64 4822494519001994746, i64 807404, i64 -4849410917531199500, i64 468652, i64 2931359700446812069, i64 256306}
!609 = !{!"branch_weights", i32 202593, i32 1925293}
!610 = !{!"branch_weights", i32 202593, i32 0}
!611 = !{!"VP", i32 0, i64 202593, i64 4822494519001994746, i64 187814, i64 -2766070242118499141, i64 14678, i64 -3508194081090413068, i64 100}
!612 = distinct !{!612, !222, !223}
!613 = !{!"function_entry_count", i64 134}
!614 = !{!"gimplify.c;gimplify_compound_expr"}
!615 = !{!"branch_weights", i32 0, i32 134}
!616 = distinct !{!616, !222, !223}
!617 = !{!"gimplify.c;gimplify_seq_add_stmt"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"gsi_last: argument 0"}
!620 = distinct !{!620, !"gsi_last"}
!621 = distinct !{!621, !223}
!622 = distinct !{!622, !222, !223}
!623 = distinct !{!623, !222, !223}
!624 = distinct !{!624, !222, !223}
!625 = distinct !{!625, !222, !223}
!626 = !{!270, !211, i64 28}
!627 = !{!297, !206, i64 360}
!628 = !{!270, !211, i64 24}
!629 = distinct !{!629, !222, !223}
!630 = !{!297, !206, i64 384}
!631 = !{!297, !206, i64 368}
!632 = !{!297, !206, i64 448}
!633 = !{!"gimplify.c;gimplify_seq_add_seq"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"gsi_last: argument 0"}
!636 = distinct !{!636, !"gsi_last"}
!637 = !{!"function_entry_count", i64 48}
!638 = !{!"branch_weights", i32 0, i32 48}
!639 = !{!"branch_weights", i32 33, i32 15}
!640 = !{!"branch_weights", i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0}
!641 = !{!"branch_weights", i32 16, i32 1}
!642 = !{!"branch_weights", i32 1, i32 0}
!643 = distinct !{!643, !222, !223}
!644 = !{!"branch_weights", i32 0, i32 16}
!645 = !{!"branch_weights", i32 16, i32 0}
!646 = distinct !{!646, !222, !223}
!647 = !{!"branch_weights", i32 16, i32 17}
!648 = !{!"branch_weights", i32 17, i32 0}
!649 = distinct !{!649, !222, !223}
!650 = !{!"function_entry_count", i64 100}
!651 = !{!"branch_weights", i32 0, i32 100}
!652 = !{!"branch_weights", i32 100, i32 0}
!653 = !{!"function_entry_count", i64 40}
!654 = !{!655, !206, i64 40}
!655 = !{!"cgraph_node", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !206, i64 104, !206, i64 112, !206, i64 120, !206, i64 128, !206, i64 136, !656, i64 144, !658, i64 184, !659, i64 224, !660, i64 232, !661, i64 256, !212, i64 288, !211, i64 296, !211, i64 300, !211, i64 304, !211, i64 308, !211, i64 308, !211, i64 308, !211, i64 308, !211, i64 308, !211, i64 308, !211, i64 308, !211, i64 308, !211, i64 309, !211, i64 309}
!656 = !{!"cgraph_local_info", !206, i64 0, !657, i64 8, !211, i64 32, !211, i64 32, !211, i64 32, !211, i64 32, !211, i64 32, !211, i64 32, !211, i64 32, !211, i64 32}
!657 = !{!"inline_summary", !212, i64 0, !211, i64 8, !211, i64 12, !211, i64 16, !211, i64 20}
!658 = !{!"cgraph_global_info", !212, i64 0, !212, i64 8, !206, i64 16, !211, i64 24, !211, i64 28, !211, i64 32, !207, i64 36}
!659 = !{!"cgraph_rtl_info", !211, i64 0}
!660 = !{!"cgraph_clone_info", !206, i64 0, !206, i64 8, !206, i64 16}
!661 = !{!"cgraph_thunk_info", !212, i64 0, !212, i64 8, !206, i64 16, !207, i64 24, !207, i64 25, !207, i64 26}
!662 = distinct !{!662, !222, !223}
!663 = !{!"gimplify.c;unshare_body"}
!664 = !{!655, !206, i64 0}
!665 = distinct !{!665, !222, !223}
!666 = !{!"gimplify.c;unvisit_body"}
!667 = distinct !{!667, !222, !223}
!668 = !{!"branch_weights", i32 1, i32 159}
!669 = !{!"branch_weights", i32 159, i32 1}
!670 = distinct !{!670, !222, !223}
!671 = !{!672, !211, i64 120}
!672 = !{!"function", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !211, i64 104, !211, i64 108, !211, i64 112, !211, i64 116, !211, i64 120, !211, i64 124, !206, i64 128, !211, i64 136, !211, i64 137, !211, i64 138, !211, i64 138, !211, i64 138, !211, i64 138, !211, i64 138, !211, i64 138, !211, i64 138, !211, i64 139, !211, i64 139, !211, i64 139, !211, i64 139, !211, i64 139, !211, i64 139, !211, i64 139}
!673 = !{!672, !206, i64 24}
!674 = distinct !{!674, !222, !223}
!675 = distinct !{!675, !222, !223}
!676 = distinct !{!676, !222, !223}
!677 = !{!678, !206, i64 0}
!678 = !{!"gimple_df", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !679, i64 32, !679, i64 48, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !211, i64 96, !680, i64 104}
!679 = !{!"pt_solution", !211, i64 0, !211, i64 0, !211, i64 0, !211, i64 0, !211, i64 0, !211, i64 0, !206, i64 8}
!680 = !{!"ssa_operands", !206, i64 0, !211, i64 8, !211, i64 12, !207, i64 16, !206, i64 24, !206, i64 32}
!681 = distinct !{!681, !222, !223}
!682 = !{!683}
!683 = distinct !{!683, !684, !"gsi_start: argument 0"}
!684 = distinct !{!684, !"gsi_start"}
!685 = distinct !{!685, !222, !223}
!686 = !{!"function_entry_count", i64 819}
!687 = !{!"branch_weights", i32 721, i32 98}
!688 = !{!"branch_weights", i32 66, i32 655}
!689 = !{!"branch_weights", i32 0, i32 721}
!690 = !{!"branch_weights", i32 721, i32 0}
!691 = !{!"branch_weights", i32 60, i32 661}
!692 = !{!"branch_weights", i32 661, i32 0}
!693 = distinct !{!693, !222, !223}
!694 = !{!"function_entry_count", i64 753}
!695 = !{!"branch_weights", i32 98, i32 655}
!696 = !{!"branch_weights", i32 0, i32 655}
!697 = !{!698}
!698 = distinct !{!698, !699, !"gsi_start: argument 0"}
!699 = distinct !{!699, !"gsi_start"}
!700 = !{!"branch_weights", i32 1, i32 654}
!701 = !{!"branch_weights", i32 654, i32 7}
!702 = distinct !{!702, !222, !223}
!703 = !{!"function_entry_count", i64 173248}
!704 = !{!"gimplify.c;gimple_tree_hash"}
!705 = !{!"function_entry_count", i64 165334}
!706 = !{!"gimplify.c;gimple_tree_eq"}
!707 = !{!"branch_weights", i32 115744, i32 49590}
!708 = !{!"branch_weights", i32 115744, i32 0}
!709 = !{!"branch_weights", i32 15075, i32 100669}
!710 = !{!"branch_weights", i32 100669, i32 0}
!711 = !{!270, !206, i64 16}
!712 = distinct !{!712, !222, !223}
!713 = !{!297, !206, i64 512}
!714 = !{!"function_entry_count", i64 514}
!715 = !{!"gimplify.c;canonicalize_component_ref"}
!716 = !{!"branch_weights", i32 514, i32 0}
!717 = !{!"branch_weights", i32 271, i32 243}
!718 = distinct !{!718, !222, !223}
!719 = !{!"function_entry_count", i64 37988}
!720 = !{!"gimplify.c;shortcut_cond_expr"}
!721 = !{!"branch_weights", i32 0, i32 37988}
!722 = !{!"branch_weights", i32 76, i32 37912}
!723 = !{!"branch_weights", i32 37912, i32 76}
!724 = !{!"branch_weights", i32 38, i32 38}
!725 = distinct !{!725, !222, !223}
!726 = !{!"branch_weights", i32 37988, i32 0}
!727 = distinct !{!727, !222, !223}
!728 = !{!"branch_weights", i32 0, i32 37912}
!729 = !{!"branch_weights", i32 37912, i32 0}
!730 = !{!"branch_weights", i32 37706, i32 206}
!731 = !{!"branch_weights", i32 0, i32 206}
!732 = !{!"branch_weights", i32 206, i32 37706}
!733 = !{!"function_entry_count", i64 243694}
!734 = !{!"gimplify.c;shortcut_cond_r"}
!735 = !{!"branch_weights", i32 140803, i32 75680, i32 27211, i32 0}
!736 = !{!"branch_weights", i32 7843, i32 67837}
!737 = !{!"branch_weights", i32 0, i32 75680}
!738 = !{!"branch_weights", i32 75680, i32 0}
!739 = !{!"branch_weights", i32 18832, i32 8379}
!740 = !{!"branch_weights", i32 0, i32 27211}
!741 = !{!"branch_weights", i32 27211, i32 0}
!742 = !{!"branch_weights", i32 217019, i32 26675}
!743 = !{!"branch_weights", i32 0, i32 26675}
!744 = !{!"gimplify.c;gimplify_arg"}
!745 = !{!"gimplify.c;maybe_with_size_expr"}
!746 = !{!747, !211, i64 72}
!747 = !{!"processor_costs", !211, i64 0, !211, i64 4, !211, i64 8, !211, i64 12, !207, i64 16, !211, i64 36, !207, i64 40, !211, i64 60, !211, i64 64, !211, i64 68, !211, i64 72, !211, i64 76, !207, i64 80, !207, i64 92, !211, i64 104, !207, i64 108, !207, i64 120, !211, i64 132, !207, i64 136, !207, i64 144, !211, i64 152, !207, i64 156, !207, i64 168, !211, i64 180, !211, i64 184, !211, i64 188, !211, i64 192, !211, i64 196, !211, i64 200, !211, i64 204, !211, i64 208, !211, i64 212, !211, i64 216, !211, i64 220, !211, i64 224, !207, i64 228, !207, i64 300, !211, i64 372, !211, i64 376, !211, i64 380, !211, i64 384, !211, i64 388, !211, i64 392, !211, i64 396, !211, i64 400, !211, i64 404, !211, i64 408, !211, i64 412}
!748 = !{!749, !206, i64 0}
!749 = !{!"gimplify_init_ctor_preeval_data", !206, i64 0, !211, i64 8}
!750 = !{!749, !211, i64 8}
!751 = distinct !{!751, !222, !223}
!752 = distinct !{!752, !222, !223}
!753 = !{!754, !211, i64 0}
!754 = !{!"VEC_constructor_elt_gc", !558, i64 0}
!755 = distinct !{!755, !222, !223}
!756 = distinct !{!756, !222, !223}
!757 = !{!560, !206, i64 0}
!758 = distinct !{!758, !222, !223}
!759 = distinct !{!759, !222, !223}
!760 = !{!"gimplify.c;prepare_gimple_addressable"}
!761 = distinct !{!761, !222, !223}
!762 = distinct !{!762, !222, !223}
!763 = !{!764}
!764 = distinct !{!764, !765, !"gsi_last: argument 0"}
!765 = distinct !{!765, !"gsi_last"}
!766 = !{!297, !206, i64 376}
!767 = distinct !{!767, !222, !223}
!768 = !{!295, !212, i64 0}
!769 = !{!297, !206, i64 424}
!770 = distinct !{!770, !222, !223}
!771 = !{!"function_entry_count", i64 1345019}
!772 = !{!"gimplify.c;copy_if_shared_r"}
!773 = !{!"branch_weights", i32 630749, i32 714270}
!774 = !{!"branch_weights", i32 54004, i32 576745}
!775 = !{!"branch_weights", i32 704516, i32 9754}
!776 = !{!"gimplify.c;unmark_visited_r"}
!777 = !{!"branch_weights", i32 586499, i32 758520}
