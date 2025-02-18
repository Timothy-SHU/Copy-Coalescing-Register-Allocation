; ModuleID = 'tree-nested.c'
source_filename = "tree-nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.nesting_copy_body_data = type { %struct.copy_body_data, ptr }
%struct.copy_body_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.nesting_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_flags = external global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A;; Function %s\0A\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@nesting_info_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@trampoline_type = internal global ptr null, align 8
@gt_ggc_r_gt_tree_nested_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @trampoline_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@optimize = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"tree-nested.c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FRAME.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__chain\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Setting static-chain for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CHAIN\00", align 1
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.9 = private unnamed_addr constant [14 x i8] c"__nl_goto_buf\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Guessing no static-chain for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"convert_all_function_calls iterations: %d\0A\0A\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.12 = private unnamed_addr constant [7 x i8] c"__data\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"__builtin_trampoline\00", align 1
@warn_padded = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
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
  %5 = tail call ptr @__ctype_tolower_loc() #16
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
  %5 = tail call ptr @__ctype_toupper_loc() #16
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
define dso_local ptr @build_addr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi ptr [ %0, %2 ], [ %14, %12 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 42, label %12
    i16 41, label %12
    i16 45, label %12
    i16 46, label %12
    i16 118, label %12
    i16 43, label %12
    i16 44, label %12
  ]

7:                                                ; preds = %3
  %8 = and i64 %5, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %15, label %17

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %13 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  br label %3, !llvm.loop !54

15:                                               ; preds = %7
  %16 = or i64 %5, 262144
  store i64 %16, ptr %4, align 8
  br label %17

17:                                               ; preds = %15, %7
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call ptr @build_pointer_type(ptr noundef %20) #16
  %22 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %21, ptr noundef %0) #16
  store ptr %18, ptr @current_function_decl, align 8, !tbaa !35
  ret ptr %22
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @insert_field_into_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  store ptr %0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %17, label %24

13:                                               ; preds = %17
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %17, label %22, !llvm.loop !55

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %20, %13 ], [ %5, %7 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !55

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  br label %24

24:                                               ; preds = %22, %7, %2
  %25 = phi ptr [ %4, %2 ], [ %4, %7 ], [ %23, %22 ]
  %26 = phi ptr [ %5, %2 ], [ %5, %7 ], [ %20, %22 ]
  %27 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !46
  store ptr %1, ptr %25, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 %31, ptr %28, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %33, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lower_nested_functions(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.nesting_copy_body_data, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = tail call ptr @cgraph_node(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = icmp eq ptr %9, null
  br i1 %10, label %615, label %11

11:                                               ; preds = %1
  tail call fastcc void @gimplify_all_functions(ptr noundef %7)
  %12 = tail call ptr @dump_begin(i32 noundef 6, ptr noundef nonnull @dump_flags) #16
  store ptr %12, ptr @dump_file, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !64
  %16 = tail call ptr %15(ptr noundef %0, i32 noundef 2) #16
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef %16)
  br label %18

18:                                               ; preds = %14, %11
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @nesting_info_bitmap_obstack) #16
  %19 = tail call fastcc ptr @create_nesting_tree(ptr noundef %7)
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %19)
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %19)
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_nl_goto_reference, ptr noundef null, ptr noundef %19)
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_nl_goto_receiver, ptr noundef null, ptr noundef %19)
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %19, %18 ], [ %23, %20 ]
  %22 = getelementptr inbounds %struct.nesting_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !74

25:                                               ; preds = %20
  %26 = icmp eq ptr %21, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %75, %25
  %28 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 3
  %30 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  %31 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  br label %78

32:                                               ; preds = %25, %75
  %33 = phi ptr [ %76, %75 ], [ %21, %25 ]
  %34 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = load ptr, ptr %33, align 8, !tbaa !76
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %42, %32
  %47 = getelementptr inbounds %struct.tree_function_decl, ptr %35, i64 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, -4194305
  store i32 %49, ptr %47, align 8
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !64
  %58 = tail call ptr %57(ptr noundef %35, i32 noundef 2) #16
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.10, ptr noundef %58)
  br label %64

60:                                               ; preds = %42, %38
  %61 = getelementptr inbounds %struct.tree_function_decl, ptr %35, i64 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = or i32 %62, 4194304
  store i32 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %60, %56, %52, %46
  %65 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !79
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64, %68
  %69 = phi ptr [ %71, %68 ], [ %66, %64 ]
  %70 = getelementptr inbounds %struct.nesting_info, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %68, !llvm.loop !74

73:                                               ; preds = %64
  %74 = load ptr, ptr %33, align 8, !tbaa !76
  br label %75

75:                                               ; preds = %68, %73
  %76 = phi ptr [ %74, %73 ], [ %69, %68 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %27, label %32, !llvm.loop !80

78:                                               ; preds = %27, %131
  %79 = phi i32 [ %80, %131 ], [ 0, %27 ]
  %80 = add nuw nsw i32 %79, 1
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %81)
  br label %89

89:                                               ; preds = %87, %83, %78
  br label %90

90:                                               ; preds = %89, %90
  %91 = phi ptr [ %93, %90 ], [ %19, %89 ]
  %92 = getelementptr inbounds %struct.nesting_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !72
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %90, !llvm.loop !74

95:                                               ; preds = %90
  %96 = icmp eq ptr %91, null
  br i1 %96, label %131, label %97

97:                                               ; preds = %95, %128
  %98 = phi ptr [ %129, %128 ], [ %91, %95 ]
  %99 = phi i8 [ %117, %128 ], [ 0, %95 ]
  %100 = getelementptr inbounds %struct.nesting_info, ptr %98, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = getelementptr inbounds %struct.tree_function_decl, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %102, align 8
  %104 = call ptr @gimple_body(ptr noundef %101) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %98, ptr %28, align 8, !tbaa !81
  store i8 1, ptr %29, align 8, !tbaa !84
  %105 = call ptr @walk_gimple_seq(ptr noundef %104, ptr noundef nonnull @convert_tramp_reference_stmt, ptr noundef nonnull @convert_tramp_reference_op, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  %106 = load ptr, ptr %100, align 8, !tbaa !75
  %107 = call ptr @gimple_body(ptr noundef %106) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store ptr %98, ptr %30, align 8, !tbaa !81
  store i8 1, ptr %31, align 8, !tbaa !84
  %108 = call ptr @walk_gimple_seq(ptr noundef %107, ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  %109 = and i32 %103, 4194304
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load i32, ptr %102, align 8
  %113 = and i32 %112, 4194304
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i8 %99, i8 1
  br label %116

116:                                              ; preds = %111, %97
  %117 = phi i8 [ %99, %97 ], [ %115, %111 ]
  %118 = getelementptr inbounds %struct.nesting_info, ptr %98, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !79
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %116, %121
  %122 = phi ptr [ %124, %121 ], [ %119, %116 ]
  %123 = getelementptr inbounds %struct.nesting_info, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !72
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %121, !llvm.loop !74

126:                                              ; preds = %116
  %127 = load ptr, ptr %98, align 8, !tbaa !76
  br label %128

128:                                              ; preds = %121, %126
  %129 = phi ptr [ %127, %126 ], [ %122, %121 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %97, !llvm.loop !85

131:                                              ; preds = %128, %95
  %132 = phi i8 [ 0, %95 ], [ %117, %128 ]
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %78, !llvm.loop !86

134:                                              ; preds = %131
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %139 = and i32 %138, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %135, ptr noundef nonnull @.str.11, i32 noundef %80)
  br label %143

143:                                              ; preds = %134, %137, %141
  br label %144

144:                                              ; preds = %143, %144
  %145 = phi ptr [ %147, %144 ], [ %19, %143 ]
  %146 = getelementptr inbounds %struct.nesting_info, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !72
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %144, !llvm.loop !74

149:                                              ; preds = %144
  %150 = icmp eq ptr %145, null
  br i1 %150, label %552, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 1
  %153 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 2
  br label %154

154:                                              ; preds = %151, %549
  %155 = phi ptr [ %145, %151 ], [ %550, %549 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %156 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !75
  store ptr null, ptr %2, align 8, !tbaa !35
  %158 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !87
  %160 = icmp eq ptr %159, null
  br i1 %160, label %201, label %161

161:                                              ; preds = %154
  %162 = load i32, ptr @warn_padded, align 4, !tbaa !50
  store i32 0, ptr @warn_padded, align 4, !tbaa !50
  call void @layout_type(ptr noundef nonnull %159) #16
  store i32 %162, ptr @warn_padded, align 4, !tbaa !50
  %163 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 10
  %164 = load ptr, ptr %163, align 8, !tbaa !88
  call void @layout_decl(ptr noundef %164, i32 noundef 0) #16
  %165 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !35
  %167 = load ptr, ptr %163, align 8, !tbaa !88
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %182, label %169

169:                                              ; preds = %161, %176
  %170 = phi ptr [ %179, %176 ], [ %166, %161 ]
  %171 = phi ptr [ %178, %176 ], [ %165, %161 ]
  %172 = getelementptr inbounds %struct.tree_common, ptr %170, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2287, ptr noundef nonnull @.str.2) #16
  br label %176

176:                                              ; preds = %175, %169
  %177 = load ptr, ptr %171, align 8, !tbaa !35
  %178 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !35
  %180 = load ptr, ptr %163, align 8, !tbaa !88
  %181 = icmp eq ptr %179, %180
  br i1 %181, label %182, label %169, !llvm.loop !89

182:                                              ; preds = %176, %161
  %183 = phi ptr [ %165, %161 ], [ %178, %176 ]
  %184 = phi ptr [ %166, %161 ], [ %179, %176 ]
  %185 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  store ptr %186, ptr %183, align 8, !tbaa !35
  %187 = load ptr, ptr %163, align 8, !tbaa !88
  %188 = getelementptr inbounds %struct.tree_common, ptr %187, i64 0, i32 1
  store ptr null, ptr %188, align 8, !tbaa !46
  %189 = load ptr, ptr %163, align 8, !tbaa !88
  %190 = call ptr @gimple_body(ptr noundef %157) #16
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %182
  %193 = load ptr, ptr %190, align 8, !tbaa !90
  br label %194

194:                                              ; preds = %192, %182
  %195 = phi ptr [ %193, %192 ], [ null, %182 ]
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %195, align 8, !tbaa !92
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi ptr [ %198, %197 ], [ null, %194 ]
  call void @declare_vars(ptr noundef %189, ptr noundef %200, i8 noundef zeroext 1) #16
  br label %201

201:                                              ; preds = %199, %154
  %202 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 14
  %203 = load i8, ptr %202, align 8, !tbaa !94
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %305, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_decl_non_common, ptr %157, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = icmp eq ptr %207, null
  br i1 %208, label %305, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 3
  %211 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 10
  br label %212

212:                                              ; preds = %209, %301
  %213 = phi ptr [ %207, %209 ], [ %303, %301 ]
  %214 = load ptr, ptr %210, align 8, !tbaa !95
  %215 = call ptr @pointer_map_contains(ptr noundef %214, ptr noundef nonnull %213) #16
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %215, align 8, !tbaa !35
  br label %219

219:                                              ; preds = %217, %212
  %220 = phi ptr [ %218, %217 ], [ null, %212 ]
  %221 = icmp eq ptr %220, null
  br i1 %221, label %301, label %222

222:                                              ; preds = %219
  %223 = load i64, ptr %213, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 34
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !46
  %229 = load i64, ptr %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = and i32 %230, 65535
  %232 = add nsw i32 %231, -15
  %233 = icmp ult i32 %232, 4
  br label %242

234:                                              ; preds = %222
  %235 = getelementptr inbounds %struct.tree_decl_common, ptr %213, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  %237 = icmp eq ptr %236, null
  br i1 %237, label %244, label %238

238:                                              ; preds = %234
  %239 = load i64, ptr %236, align 8
  %240 = and i64 %239, 131072
  %241 = icmp eq i64 %240, 0
  br label %242

242:                                              ; preds = %238, %226
  %243 = phi i1 [ %241, %238 ], [ %233, %226 ]
  br i1 %243, label %244, label %246

244:                                              ; preds = %242, %234
  %245 = call ptr @build_addr(ptr noundef nonnull %213, ptr noundef %157)
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi ptr [ %245, %244 ], [ %213, %242 ]
  %248 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !46
  %250 = load ptr, ptr %211, align 8, !tbaa !88
  %251 = call ptr @build3_stat(i32 noundef 41, ptr noundef %249, ptr noundef %250, ptr noundef nonnull %220, ptr noundef null) #16
  %252 = call ptr @gimple_build_assign_stat(ptr noundef %251, ptr noundef %247) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %252) #16
  %253 = call zeroext i8 @is_gimple_reg(ptr noundef %247) #16
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %301

255:                                              ; preds = %246
  %256 = getelementptr inbounds %struct.tree_common, ptr %247, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = call zeroext i8 @is_gimple_reg_type(ptr noundef %257) #16
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %301, label %260

260:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %261 = load ptr, ptr %2, align 8, !tbaa !35
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %262 = icmp eq ptr %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.gimple_seq_d, ptr %261, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !99, !noalias !96
  br label %266

266:                                              ; preds = %263, %260
  %267 = phi ptr [ %265, %263 ], [ null, %260 ]
  store ptr %267, ptr %3, align 8, !tbaa !100, !alias.scope !96
  store ptr %261, ptr %152, align 8, !tbaa !101, !alias.scope !96
  %268 = icmp eq ptr %267, null
  br i1 %268, label %275, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %267, align 8, !tbaa !92, !noalias !96
  %271 = icmp eq ptr %270, null
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.gimple_statement_base, ptr %270, i64 0, i32 4
  %274 = load ptr, ptr %273, align 8, !tbaa !46, !noalias !96
  br label %275

275:                                              ; preds = %272, %269, %266
  %276 = phi ptr [ %274, %272 ], [ null, %269 ], [ null, %266 ]
  store ptr %276, ptr %153, align 8, !tbaa !102, !alias.scope !96
  %277 = call fastcc ptr @init_tmp_var(ptr noundef nonnull %155, ptr noundef %247, ptr noundef nonnull %3)
  %278 = load i32, ptr %252, align 8
  %279 = and i32 %278, 255
  %280 = add nsw i32 %279, -10
  %281 = icmp ult i32 %280, -9
  br i1 %281, label %286, label %282

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.gimple_statement_base, ptr %252, i64 0, i32 3
  %284 = load i32, ptr %283, align 4, !tbaa !46
  %285 = icmp ugt i32 %284, 1
  br i1 %285, label %287, label %286

286:                                              ; preds = %282, %275
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #16
  br label %287

287:                                              ; preds = %286, %282
  %288 = load i32, ptr %252, align 8
  %289 = and i32 %288, 255
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !50
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !103
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %287
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %298

298:                                              ; preds = %297, %287
  %299 = getelementptr inbounds i8, ptr %252, i64 %295
  %300 = getelementptr inbounds ptr, ptr %299, i64 1
  store ptr %277, ptr %300, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %301

301:                                              ; preds = %298, %255, %246, %219
  %302 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !46
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %212, !llvm.loop !104

305:                                              ; preds = %301, %205, %201
  %306 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 11
  %307 = load ptr, ptr %306, align 8, !tbaa !78
  %308 = icmp eq ptr %307, null
  br i1 %308, label %317, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.tree_common, ptr %307, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !46
  %312 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 10
  %313 = load ptr, ptr %312, align 8, !tbaa !88
  %314 = call ptr @build3_stat(i32 noundef 41, ptr noundef %311, ptr noundef %313, ptr noundef nonnull %307, ptr noundef null) #16
  %315 = call fastcc ptr @get_chain_decl(ptr noundef nonnull %155)
  %316 = call ptr @gimple_build_assign_stat(ptr noundef %314, ptr noundef %315) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %316) #16
  br label %317

317:                                              ; preds = %309, %305
  %318 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 15
  %319 = load i8, ptr %318, align 1, !tbaa !105
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %363, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !35
  %324 = icmp eq ptr %323, null
  br i1 %324, label %363, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 4
  %327 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 10
  br label %328

328:                                              ; preds = %325, %359
  %329 = phi ptr [ %323, %325 ], [ %361, %359 ]
  %330 = getelementptr inbounds %struct.nesting_info, ptr %329, i64 0, i32 6
  %331 = load ptr, ptr %330, align 8, !tbaa !75
  %332 = load ptr, ptr %326, align 8, !tbaa !106
  %333 = call ptr @pointer_map_contains(ptr noundef %332, ptr noundef %331) #16
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %328
  %336 = load ptr, ptr %333, align 8, !tbaa !35
  br label %337

337:                                              ; preds = %335, %328
  %338 = phi ptr [ %336, %335 ], [ null, %328 ]
  %339 = icmp eq ptr %338, null
  br i1 %339, label %359, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr %330, align 8, !tbaa !75
  %342 = getelementptr inbounds %struct.tree_function_decl, ptr %341, i64 0, i32 5
  %343 = load i32, ptr %342, align 8
  %344 = and i32 %343, 4194304
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %340
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2352, ptr noundef nonnull @.str.2) #16
  br label %347

347:                                              ; preds = %346, %340
  %348 = load ptr, ptr %327, align 8, !tbaa !88
  %349 = call ptr @build_addr(ptr noundef %348, ptr noundef %157)
  %350 = load ptr, ptr %330, align 8, !tbaa !75
  %351 = call ptr @build_addr(ptr noundef %350, ptr noundef %157)
  %352 = getelementptr inbounds %struct.tree_common, ptr %338, i64 0, i32 2
  %353 = load ptr, ptr %352, align 8, !tbaa !46
  %354 = load ptr, ptr %327, align 8, !tbaa !88
  %355 = call ptr @build3_stat(i32 noundef 41, ptr noundef %353, ptr noundef %354, ptr noundef nonnull %338, ptr noundef null) #16
  %356 = call ptr @build_addr(ptr noundef %355, ptr noundef %157)
  %357 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 520), align 16, !tbaa !35
  %358 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %357, i32 noundef 3, ptr noundef %356, ptr noundef %351, ptr noundef %349) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %358) #16
  br label %359

359:                                              ; preds = %347, %337
  %360 = getelementptr inbounds %struct.nesting_info, ptr %329, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !35
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %328, !llvm.loop !107

363:                                              ; preds = %359, %321, %317
  %364 = load ptr, ptr %2, align 8, !tbaa !35
  %365 = icmp eq ptr %364, null
  br i1 %365, label %383, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.tree_decl_minimal, ptr %157, i64 0, i32 1
  %368 = load i32, ptr %367, align 8, !tbaa !46
  call void @annotate_all_with_location(ptr noundef nonnull %364, i32 noundef %368) #16
  %369 = call ptr @gimple_body(ptr noundef %157) #16
  %370 = icmp eq ptr %369, null
  br i1 %370, label %373, label %371

371:                                              ; preds = %366
  %372 = load ptr, ptr %369, align 8, !tbaa !90
  br label %373

373:                                              ; preds = %371, %366
  %374 = phi ptr [ %372, %371 ], [ null, %366 ]
  %375 = icmp eq ptr %374, null
  br i1 %375, label %378, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr %374, align 8, !tbaa !92
  br label %378

378:                                              ; preds = %376, %373
  %379 = phi ptr [ %377, %376 ], [ null, %373 ]
  %380 = getelementptr inbounds %struct.gimple_statement_bind, ptr %379, i64 0, i32 3
  %381 = load ptr, ptr %380, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %2, ptr noundef %381) #16
  %382 = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %382, ptr %380, align 8, !tbaa !46
  br label %383

383:                                              ; preds = %378, %363
  %384 = load ptr, ptr %156, align 8, !tbaa !75
  %385 = getelementptr inbounds %struct.tree_function_decl, ptr %384, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !46
  %387 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 12
  %388 = load ptr, ptr %387, align 8, !tbaa !77
  %389 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 7
  store ptr %388, ptr %389, align 8, !tbaa !108
  %390 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 13
  %391 = load ptr, ptr %390, align 8, !tbaa !110
  %392 = icmp eq ptr %391, null
  br i1 %392, label %399, label %393

393:                                              ; preds = %383
  %394 = call fastcc ptr @get_frame_field(ptr noundef nonnull %155, ptr noundef %157, ptr noundef nonnull %391, ptr noundef null)
  %395 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 8
  store ptr %394, ptr %395, align 8, !tbaa !111
  %396 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 20
  %397 = load i32, ptr %396, align 8
  %398 = or i32 %397, 1048576
  store i32 %398, ptr %396, align 8
  br label %399

399:                                              ; preds = %393, %383
  %400 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 7
  %401 = load ptr, ptr %400, align 8, !tbaa !112
  %402 = icmp eq ptr %401, null
  br i1 %402, label %416, label %403

403:                                              ; preds = %399
  %404 = load ptr, ptr %156, align 8, !tbaa !75
  %405 = call ptr @gimple_body(ptr noundef %404) #16
  %406 = icmp eq ptr %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %403
  %408 = load ptr, ptr %405, align 8, !tbaa !90
  br label %409

409:                                              ; preds = %407, %403
  %410 = phi ptr [ %408, %407 ], [ null, %403 ]
  %411 = icmp eq ptr %410, null
  br i1 %411, label %414, label %412

412:                                              ; preds = %409
  %413 = load ptr, ptr %410, align 8, !tbaa !92
  br label %414

414:                                              ; preds = %412, %409
  %415 = phi ptr [ %413, %412 ], [ null, %409 ]
  call void @declare_vars(ptr noundef nonnull %401, ptr noundef %415, i8 noundef zeroext 0) #16
  br label %416

416:                                              ; preds = %414, %399
  %417 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 8
  %418 = load ptr, ptr %417, align 8, !tbaa !113
  %419 = icmp eq ptr %418, null
  br i1 %419, label %530, label %420

420:                                              ; preds = %416
  %421 = load ptr, ptr %156, align 8, !tbaa !75
  %422 = getelementptr inbounds %struct.tree_decl_common, ptr %421, i64 0, i32 5
  %423 = load ptr, ptr %422, align 8, !tbaa !46
  call fastcc void @remap_vla_decls(ptr noundef %423, ptr noundef nonnull %155)
  %424 = load ptr, ptr %417, align 8, !tbaa !46
  %425 = icmp eq ptr %424, null
  br i1 %425, label %507, label %426

426:                                              ; preds = %420, %432
  %427 = phi ptr [ %434, %432 ], [ %424, %420 ]
  %428 = getelementptr inbounds %struct.tree_common, ptr %427, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !46
  %430 = call zeroext i8 @variably_modified_type_p(ptr noundef %429, ptr noundef null) #16
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.tree_common, ptr %427, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !46
  %435 = icmp eq ptr %434, null
  br i1 %435, label %507, label %426, !llvm.loop !114

436:                                              ; preds = %426
  %437 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 7
  %438 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  %439 = getelementptr inbounds %struct.nesting_copy_body_data, ptr %4, i64 0, i32 1
  %440 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 1
  %441 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 160, i1 false)
  store ptr @nesting_copy_decl, ptr %437, align 8, !tbaa !115
  %442 = call ptr @pointer_map_create() #16
  store ptr %442, ptr %438, align 8, !tbaa !118
  store ptr %155, ptr %439, align 8, !tbaa !119
  br label %443

443:                                              ; preds = %436, %501
  %444 = phi ptr [ %427, %436 ], [ %503, %501 ]
  %445 = getelementptr inbounds %struct.tree_common, ptr %444, i64 0, i32 2
  %446 = load ptr, ptr %445, align 8, !tbaa !46
  %447 = call zeroext i8 @variably_modified_type_p(ptr noundef %446, ptr noundef null) #16
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %501, label %449

449:                                              ; preds = %443
  %450 = load ptr, ptr %445, align 8, !tbaa !46
  br label %451

451:                                              ; preds = %449, %457
  %452 = phi ptr [ %458, %457 ], [ %155, %449 ]
  %453 = getelementptr inbounds %struct.nesting_info, ptr %452, i64 0, i32 6
  %454 = load ptr, ptr %453, align 8, !tbaa !75
  %455 = call zeroext i8 @variably_modified_type_p(ptr noundef %450, ptr noundef %454) #16
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %451
  %458 = load ptr, ptr %452, align 8, !tbaa !76
  %459 = icmp eq ptr %458, null
  br i1 %459, label %501, label %451, !llvm.loop !120

460:                                              ; preds = %451
  %461 = getelementptr inbounds %struct.nesting_info, ptr %452, i64 0, i32 6
  %462 = load ptr, ptr %461, align 8, !tbaa !75
  store ptr %462, ptr %4, align 8, !tbaa !121
  store ptr %462, ptr %440, align 8, !tbaa !122
  %463 = load ptr, ptr %156, align 8, !tbaa !75
  %464 = getelementptr inbounds %struct.tree_function_decl, ptr %463, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !46
  store ptr %465, ptr %441, align 8, !tbaa !123
  %466 = call ptr @remap_type(ptr noundef %450, ptr noundef nonnull %4) #16
  store ptr %466, ptr %445, align 8, !tbaa !46
  br label %467

467:                                              ; preds = %476, %460
  %468 = phi ptr [ %466, %460 ], [ %478, %476 ]
  %469 = phi ptr [ %450, %460 ], [ %480, %476 ]
  %470 = load i64, ptr %468, align 8
  %471 = trunc i64 %470 to i16
  switch i16 %471, label %481 [
    i16 10, label %472
    i16 12, label %472
  ]

472:                                              ; preds = %467, %467
  %473 = getelementptr inbounds %struct.tree_type, ptr %468, i64 0, i32 12
  %474 = load ptr, ptr %473, align 8, !tbaa !46
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %481

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.tree_common, ptr %468, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !46
  %479 = getelementptr inbounds %struct.tree_common, ptr %469, i64 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !46
  br label %467, !llvm.loop !124

481:                                              ; preds = %467, %472
  %482 = getelementptr inbounds %struct.tree_type, ptr %468, i64 0, i32 12
  %483 = load ptr, ptr %482, align 8, !tbaa !46
  %484 = icmp eq ptr %483, null
  br i1 %484, label %501, label %485

485:                                              ; preds = %481
  %486 = load i64, ptr %483, align 8
  %487 = and i64 %486, 65535
  %488 = icmp eq i64 %487, 35
  br i1 %488, label %489, label %501

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.tree_decl_non_common, ptr %483, i64 0, i32 3
  %491 = load ptr, ptr %490, align 8, !tbaa !46
  %492 = icmp eq ptr %491, null
  %493 = icmp eq ptr %468, %469
  %494 = select i1 %492, i1 true, i1 %493
  br i1 %494, label %501, label %495

495:                                              ; preds = %489
  %496 = getelementptr inbounds %struct.tree_type, ptr %469, i64 0, i32 12
  %497 = load ptr, ptr %496, align 8, !tbaa !46
  %498 = icmp eq ptr %483, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %495
  %500 = call ptr @remap_decl(ptr noundef nonnull %483, ptr noundef nonnull %4) #16
  store ptr %500, ptr %482, align 8, !tbaa !46
  br label %501

501:                                              ; preds = %457, %499, %495, %489, %485, %481, %443
  %502 = getelementptr inbounds %struct.tree_common, ptr %444, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !46
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %443, !llvm.loop !125

505:                                              ; preds = %501
  %506 = load ptr, ptr %438, align 8, !tbaa !118
  call void @pointer_map_destroy(ptr noundef %506) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #16
  br label %507

507:                                              ; preds = %432, %420, %505
  %508 = load ptr, ptr %156, align 8, !tbaa !75
  %509 = call ptr @gimple_body(ptr noundef %508) #16
  %510 = icmp ne ptr %509, null
  call void @llvm.assume(i1 %510)
  %511 = load ptr, ptr %509, align 8, !tbaa !90, !nonnull !126, !noundef !126
  %512 = load ptr, ptr %511, align 8, !tbaa !92
  %513 = getelementptr inbounds %struct.gimple_statement_bind, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !46
  %515 = icmp eq ptr %514, null
  br i1 %515, label %518, label %516

516:                                              ; preds = %507
  %517 = load ptr, ptr %417, align 8, !tbaa !113
  call void @declare_vars(ptr noundef %517, ptr noundef %512, i8 noundef zeroext 1) #16
  br label %530

518:                                              ; preds = %507
  %519 = load ptr, ptr %156, align 8, !tbaa !75
  %520 = getelementptr inbounds %struct.tree_decl_common, ptr %519, i64 0, i32 5
  %521 = load ptr, ptr %520, align 8, !tbaa !46
  %522 = getelementptr inbounds %struct.tree_block, ptr %521, i64 0, i32 3
  %523 = load ptr, ptr %522, align 8, !tbaa !46
  %524 = load ptr, ptr %417, align 8, !tbaa !113
  %525 = call ptr @chainon(ptr noundef %523, ptr noundef %524) #16
  %526 = load ptr, ptr %156, align 8, !tbaa !75
  %527 = getelementptr inbounds %struct.tree_decl_common, ptr %526, i64 0, i32 5
  %528 = load ptr, ptr %527, align 8, !tbaa !46
  %529 = getelementptr inbounds %struct.tree_block, ptr %528, i64 0, i32 3
  store ptr %525, ptr %529, align 8, !tbaa !46
  br label %530

530:                                              ; preds = %518, %516, %416
  %531 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %532 = icmp eq ptr %531, null
  br i1 %532, label %538, label %533

533:                                              ; preds = %530
  %534 = call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr nonnull %531)
  %535 = load ptr, ptr %156, align 8, !tbaa !75
  %536 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %537 = load i32, ptr @dump_flags, align 4, !tbaa !50
  call void @dump_function_to_file(ptr noundef %535, ptr noundef %536, i32 noundef %537) #16
  br label %538

538:                                              ; preds = %533, %530
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %539 = getelementptr inbounds %struct.nesting_info, ptr %155, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !79
  %541 = icmp eq ptr %540, null
  br i1 %541, label %547, label %542

542:                                              ; preds = %538, %542
  %543 = phi ptr [ %545, %542 ], [ %540, %538 ]
  %544 = getelementptr inbounds %struct.nesting_info, ptr %543, i64 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !72
  %546 = icmp eq ptr %545, null
  br i1 %546, label %549, label %542, !llvm.loop !74

547:                                              ; preds = %538
  %548 = load ptr, ptr %155, align 8, !tbaa !76
  br label %549

549:                                              ; preds = %542, %547
  %550 = phi ptr [ %548, %547 ], [ %543, %542 ]
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %154, !llvm.loop !127

552:                                              ; preds = %549, %149
  br label %553

553:                                              ; preds = %552, %553
  %554 = phi ptr [ %556, %553 ], [ %19, %552 ]
  %555 = getelementptr inbounds %struct.nesting_info, ptr %554, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !72
  %557 = icmp eq ptr %556, null
  br i1 %557, label %558, label %553, !llvm.loop !74

558:                                              ; preds = %553
  %559 = icmp eq ptr %554, null
  br i1 %559, label %586, label %560

560:                                              ; preds = %558, %583
  %561 = phi ptr [ %584, %583 ], [ %554, %558 ]
  %562 = getelementptr inbounds %struct.nesting_info, ptr %561, i64 0, i32 6
  %563 = load ptr, ptr %562, align 8, !tbaa !75
  %564 = call ptr @cgraph_node(ptr noundef %563) #16
  %565 = getelementptr inbounds %struct.cgraph_node, ptr %564, i64 0, i32 5
  %566 = load ptr, ptr %565, align 8, !tbaa !128
  %567 = icmp eq ptr %566, null
  br i1 %567, label %572, label %568

568:                                              ; preds = %560
  %569 = load ptr, ptr %562, align 8, !tbaa !75
  %570 = call ptr @cgraph_node(ptr noundef %569) #16
  call void @cgraph_unnest_node(ptr noundef %570) #16
  %571 = load ptr, ptr %562, align 8, !tbaa !75
  call void @cgraph_finalize_function(ptr noundef %571, i8 noundef zeroext 1) #16
  br label %572

572:                                              ; preds = %568, %560
  %573 = getelementptr inbounds %struct.nesting_info, ptr %561, i64 0, i32 2
  %574 = load ptr, ptr %573, align 8, !tbaa !79
  %575 = icmp eq ptr %574, null
  br i1 %575, label %581, label %576

576:                                              ; preds = %572, %576
  %577 = phi ptr [ %579, %576 ], [ %574, %572 ]
  %578 = getelementptr inbounds %struct.nesting_info, ptr %577, i64 0, i32 1
  %579 = load ptr, ptr %578, align 8, !tbaa !72
  %580 = icmp eq ptr %579, null
  br i1 %580, label %583, label %576, !llvm.loop !74

581:                                              ; preds = %572
  %582 = load ptr, ptr %561, align 8, !tbaa !76
  br label %583

583:                                              ; preds = %576, %581
  %584 = phi ptr [ %582, %581 ], [ %577, %576 ]
  %585 = icmp eq ptr %584, null
  br i1 %585, label %586, label %560, !llvm.loop !129

586:                                              ; preds = %583, %558
  br label %587

587:                                              ; preds = %586, %587
  %588 = phi ptr [ %590, %587 ], [ %19, %586 ]
  %589 = getelementptr inbounds %struct.nesting_info, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !72
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %587, !llvm.loop !74

592:                                              ; preds = %587, %604
  %593 = phi ptr [ %605, %604 ], [ %588, %587 ]
  %594 = getelementptr inbounds %struct.nesting_info, ptr %593, i64 0, i32 2
  %595 = load ptr, ptr %594, align 8, !tbaa !79
  %596 = icmp eq ptr %595, null
  br i1 %596, label %602, label %597

597:                                              ; preds = %592, %597
  %598 = phi ptr [ %600, %597 ], [ %595, %592 ]
  %599 = getelementptr inbounds %struct.nesting_info, ptr %598, i64 0, i32 1
  %600 = load ptr, ptr %599, align 8, !tbaa !72
  %601 = icmp eq ptr %600, null
  br i1 %601, label %604, label %597, !llvm.loop !74

602:                                              ; preds = %592
  %603 = load ptr, ptr %593, align 8, !tbaa !76
  br label %604

604:                                              ; preds = %597, %602
  %605 = phi ptr [ %603, %602 ], [ %598, %597 ]
  %606 = getelementptr inbounds %struct.nesting_info, ptr %593, i64 0, i32 4
  %607 = load ptr, ptr %606, align 8, !tbaa !106
  call void @pointer_map_destroy(ptr noundef %607) #16
  %608 = getelementptr inbounds %struct.nesting_info, ptr %593, i64 0, i32 3
  %609 = load ptr, ptr %608, align 8, !tbaa !95
  call void @pointer_map_destroy(ptr noundef %609) #16
  call void @free(ptr noundef %593)
  %610 = icmp eq ptr %605, null
  br i1 %610, label %611, label %592, !llvm.loop !130

611:                                              ; preds = %604
  call void @bitmap_obstack_release(ptr noundef nonnull @nesting_info_bitmap_obstack) #16
  %612 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %613 = icmp eq ptr %612, null
  br i1 %613, label %615, label %614

614:                                              ; preds = %611
  call void @dump_end(i32 noundef 6, ptr noundef nonnull %612) #16
  store ptr null, ptr @dump_file, align 8, !tbaa !35
  br label %615

615:                                              ; preds = %611, %614, %1
  ret void
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gimplify_all_functions(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = tail call ptr @gimple_body(ptr noundef %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @gimplify_function_tree(ptr noundef %6) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  tail call fastcc void @gimplify_all_functions(ptr noundef nonnull %12)
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !132

16:                                               ; preds = %11, %7
  ret void
}

declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @create_nesting_tree(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 120) #16
  %3 = tail call ptr @pointer_map_create() #16
  %4 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !95
  %5 = tail call ptr @pointer_map_create() #16
  %6 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !106
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @nesting_info_bitmap_obstack) #16
  %8 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !133
  %9 = load ptr, ptr %0, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %12, %14 ], [ %22, %16 ]
  %18 = tail call fastcc ptr @create_nesting_tree(ptr noundef nonnull %17)
  store ptr %2, ptr %18, align 8, !tbaa !76
  %19 = load ptr, ptr %15, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.nesting_info, ptr %18, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !79
  store ptr %18, ptr %15, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !134

24:                                               ; preds = %16, %1
  %25 = load ptr, ptr %10, align 8, !tbaa !75
  %26 = tail call fastcc zeroext i8 @check_for_nested_with_variably_modified(ptr noundef %25, ptr noundef %25), !range !135
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.tree_function_decl, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 32768
  store i32 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %28, %24
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @walk_all_functions(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.walk_stmt_info, align 8
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %2, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.nesting_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !74

10:                                               ; preds = %5
  %11 = icmp eq ptr %6, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 3
  br label %15

15:                                               ; preds = %12, %31
  %16 = phi ptr [ %6, %12 ], [ %32, %31 ]
  %17 = getelementptr inbounds %struct.nesting_info, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = call ptr @gimple_body(ptr noundef %18) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %16, ptr %13, align 8, !tbaa !81
  store i8 1, ptr %14, align 8, !tbaa !84
  %20 = call ptr @walk_gimple_seq(ptr noundef %19, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  %21 = getelementptr inbounds %struct.nesting_info, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %15, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %15 ]
  %26 = getelementptr inbounds %struct.nesting_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %24, !llvm.loop !74

29:                                               ; preds = %15
  %30 = load ptr, ptr %16, align 8, !tbaa !76
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %30, %29 ], [ %25, %24 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %15, !llvm.loop !136

34:                                               ; preds = %31, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_nonlocal_reference_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = alloca %struct.walk_stmt_info, align 8
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = load ptr, ptr %0, align 1
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %120 [
    i8 3, label %15
    i8 26, label %36
    i8 27, label %36
    i8 23, label %73
    i8 30, label %83
    i8 32, label %93
    i8 29, label %103
    i8 24, label %103
    i8 25, label %103
    i8 10, label %109
    i8 1, label %117
  ]

15:                                               ; preds = %3
  %16 = and i32 %13, 255
  %17 = add nsw i32 %16, -1
  %18 = icmp ult i32 %17, 9
  tail call void @llvm.assume(i1 %18)
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !103
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %27

27:                                               ; preds = %26, %15
  %28 = getelementptr inbounds i8, ptr %12, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 30
  br i1 %32, label %120, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %34, align 8, !tbaa !84
  %35 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %35, align 1, !tbaa !137
  br label %120

36:                                               ; preds = %3, %3
  %37 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  %39 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %12, i64 0, i32 1
  %40 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %39, ptr noundef %2), !range !135
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = tail call fastcc ptr @get_chain_decl(ptr noundef %10)
  %44 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = tail call ptr @build_omp_clause(i32 noundef %45, i32 noundef 3) #16
  %47 = getelementptr inbounds %struct.tree_omp_clause, ptr %46, i64 0, i32 6
  store ptr %43, ptr %47, align 8, !tbaa !46
  %48 = load ptr, ptr %39, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !46
  store ptr %46, ptr %39, align 8, !tbaa !46
  br label %50

50:                                               ; preds = %42, %36
  %51 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !112
  store ptr null, ptr %51, align 8, !tbaa !112
  %53 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  %55 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 1
  store ptr %10, ptr %55, align 8, !tbaa !81
  %56 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 3
  store i8 1, ptr %56, align 8, !tbaa !84
  %57 = call ptr @walk_gimple_seq(ptr noundef %54, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #16
  %58 = load ptr, ptr %51, align 8, !tbaa !112
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %50
  %61 = load ptr, ptr %53, align 8, !tbaa !46
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !90
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi ptr [ %64, %63 ], [ null, %60 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !92
  br label %70

70:                                               ; preds = %65, %68
  %71 = phi ptr [ %69, %68 ], [ null, %65 ]
  call void @declare_vars(ptr noundef nonnull %58, ptr noundef %71, i8 noundef zeroext 0) #16
  br label %72

72:                                               ; preds = %70, %50
  store ptr %52, ptr %51, align 8, !tbaa !112
  store ptr %38, ptr %37, align 8, !tbaa !133
  br label %120

73:                                               ; preds = %3
  %74 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !133
  %76 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %12, i64 0, i32 1
  %77 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %76, ptr noundef %2), !range !135
  tail call fastcc void @walk_gimple_omp_for(ptr noundef nonnull %12, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %10)
  %78 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %80 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  store ptr %10, ptr %80, align 8, !tbaa !81
  %81 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 3
  store i8 1, ptr %81, align 8, !tbaa !84
  %82 = call ptr @walk_gimple_seq(ptr noundef %79, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  store ptr %75, ptr %74, align 8, !tbaa !133
  br label %120

83:                                               ; preds = %3
  %84 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !133
  %86 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %12, i64 0, i32 1
  %87 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %86, ptr noundef %2), !range !135
  %88 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %90 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  store ptr %10, ptr %90, align 8, !tbaa !81
  %91 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 3
  store i8 1, ptr %91, align 8, !tbaa !84
  %92 = call ptr @walk_gimple_seq(ptr noundef %89, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  store ptr %85, ptr %84, align 8, !tbaa !133
  br label %120

93:                                               ; preds = %3
  %94 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !133
  %96 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %12, i64 0, i32 1
  %97 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %96, ptr noundef %2), !range !135
  %98 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %100 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %10, ptr %100, align 8, !tbaa !81
  %101 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %101, align 8, !tbaa !84
  %102 = call ptr @walk_gimple_seq(ptr noundef %99, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  store ptr %95, ptr %94, align 8, !tbaa !133
  br label %120

103:                                              ; preds = %3, %3, %3
  %104 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %106 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %10, ptr %106, align 8, !tbaa !81
  %107 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 3
  store i8 1, ptr %107, align 8, !tbaa !84
  %108 = call ptr @walk_gimple_seq(ptr noundef %105, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  br label %120

109:                                              ; preds = %3
  %110 = load i32, ptr @optimize, align 4, !tbaa !50
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.gimple_statement_bind, ptr %12, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  tail call fastcc void @note_nonlocal_block_vlas(ptr noundef %10, ptr noundef nonnull %114)
  br label %120

117:                                              ; preds = %3
  %118 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %118, align 8, !tbaa !84
  %119 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %119, align 1, !tbaa !137
  br label %120

120:                                              ; preds = %72, %73, %83, %93, %103, %27, %3, %109, %112, %116, %117, %33
  %121 = phi i8 [ 0, %117 ], [ 1, %33 ], [ 0, %116 ], [ 0, %112 ], [ 0, %109 ], [ 0, %3 ], [ 1, %27 ], [ 1, %103 ], [ 1, %93 ], [ 1, %83 ], [ 1, %73 ], [ 1, %72 ]
  store i8 %121, ptr %1, align 1, !tbaa !46
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_nonlocal_reference_op(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  store i32 0, ptr %1, align 4, !tbaa !50
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %144 [
    i16 32, label %9
    i16 34, label %17
    i16 30, label %85
    i16 121, label %93
    i16 43, label %115
    i16 44, label %115
    i16 41, label %115
    i16 45, label %115
    i16 46, label %115
    i16 42, label %115
    i16 118, label %143
  ]

9:                                                ; preds = %3
  %10 = and i64 %7, 67108864
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %153

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %153

17:                                               ; preds = %12, %3
  %18 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #16
  %19 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %153, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 1, ptr %23, align 2, !tbaa !138
  %24 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef %5, ptr noundef nonnull %6)
  %25 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !133
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %28) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %22
  %32 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #16
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %5, %31 ], [ %35, %33 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.nesting_info, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !139

39:                                               ; preds = %33
  %40 = tail call fastcc ptr @lookup_field_for_decl(ptr noundef %35, ptr noundef nonnull %6, i32 noundef 1)
  %41 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef %32, ptr noundef %40, ptr noundef %2)
  %42 = load i64, ptr %6, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 34
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -15
  %52 = icmp ult i32 %51, 4
  br label %61

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 131072
  %60 = icmp eq i64 %59, 0
  br label %61

61:                                               ; preds = %45, %57
  %62 = phi i1 [ %60, %57 ], [ %52, %45 ]
  br i1 %62, label %63, label %70

63:                                               ; preds = %53, %61
  %64 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %41, ptr noundef %2)
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %68, ptr noundef %64) #16
  br label %70

70:                                               ; preds = %61, %63, %22
  %71 = phi ptr [ %24, %22 ], [ %69, %63 ], [ %41, %61 ]
  %72 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %73 = load i8, ptr %72, align 8, !tbaa !84
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %77 = load i8, ptr %76, align 1, !tbaa !137
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call fastcc ptr @save_tmp_var(ptr noundef %5, ptr noundef %71, ptr noundef %2)
  br label %83

81:                                               ; preds = %75
  %82 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %71, ptr noundef %2)
  br label %83

83:                                               ; preds = %79, %81, %70
  %84 = phi ptr [ %80, %79 ], [ %82, %81 ], [ %71, %70 ]
  store ptr %84, ptr %0, align 8, !tbaa !35
  br label %153

85:                                               ; preds = %3
  %86 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #16
  %87 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %153, label %90

90:                                               ; preds = %85
  %91 = load i64, ptr %6, align 8
  %92 = or i64 %91, 65536
  store i64 %92, ptr %6, align 8
  br label %153

93:                                               ; preds = %3
  %94 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %95 = load i8, ptr %94, align 8, !tbaa !84
  store i8 0, ptr %94, align 8, !tbaa !84
  %96 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %96, align 1, !tbaa !137
  %97 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 0, ptr %97, align 2, !tbaa !138
  %98 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %99 = tail call ptr @walk_tree_1(ptr noundef nonnull %98, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %94, align 8, !tbaa !84
  %100 = load i8, ptr %97, align 2, !tbaa !138
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %153, label %102

102:                                              ; preds = %93
  %103 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %104 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !75
  store ptr %105, ptr @current_function_decl, align 8, !tbaa !35
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %6) #16
  store ptr %103, ptr @current_function_decl, align 8, !tbaa !35
  %106 = icmp eq i8 %95, 0
  br i1 %106, label %153, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %4, align 8, !tbaa !81
  %109 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %6) #16
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @init_tmp_var(ptr noundef %108, ptr noundef nonnull %6, ptr noundef %2)
  br label %113

113:                                              ; preds = %107, %111
  %114 = phi ptr [ %112, %111 ], [ %6, %107 ]
  store ptr %114, ptr %0, align 8, !tbaa !35
  br label %153

115:                                              ; preds = %3, %3, %3, %3, %3, %3
  %116 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %116, align 8, !tbaa !84
  %117 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %117, align 1, !tbaa !137
  br label %118

118:                                              ; preds = %140, %115
  %119 = phi ptr [ %6, %115 ], [ %142, %140 ]
  %120 = phi ptr [ %0, %115 ], [ %141, %140 ]
  %121 = load i64, ptr %119, align 8
  %122 = trunc i64 %121 to i16
  switch i16 %122, label %123 [
    i16 41, label %125
    i16 45, label %127
    i16 46, label %127
    i16 42, label %133
    i16 43, label %140
    i16 44, label %140
    i16 118, label %140
  ]

123:                                              ; preds = %118
  store i8 0, ptr %116, align 8, !tbaa !84
  %124 = tail call ptr @walk_tree_1(ptr noundef nonnull %120, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  br label %153

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 1, i32 0, i32 1
  br label %137

127:                                              ; preds = %118, %118
  %128 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 1
  %129 = tail call ptr @walk_tree_1(ptr noundef nonnull %128, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %130 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 1, i32 0, i32 1
  %131 = tail call ptr @walk_tree_1(ptr noundef nonnull %130, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %132 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 1, i32 0, i32 2
  br label %137

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 1
  %135 = tail call ptr @walk_tree_1(ptr noundef nonnull %134, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %136 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 1, i32 0, i32 1
  br label %137

137:                                              ; preds = %127, %133, %125
  %138 = phi ptr [ %126, %125 ], [ %136, %133 ], [ %132, %127 ]
  %139 = tail call ptr @walk_tree_1(ptr noundef nonnull %138, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  br label %140

140:                                              ; preds = %137, %118, %118, %118
  %141 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  br label %118, !llvm.loop !140

143:                                              ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !50
  br label %153

144:                                              ; preds = %3
  %145 = and i64 %7, 65535
  %146 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !50
  %148 = and i32 %147, -2
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  store i32 1, ptr %1, align 4, !tbaa !50
  %151 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %151, align 8, !tbaa !84
  %152 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %152, align 1, !tbaa !137
  br label %153

153:                                              ; preds = %12, %144, %93, %113, %102, %150, %85, %90, %17, %83, %9, %143, %123
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_local_reference_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = alloca %struct.walk_stmt_info, align 8
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = load ptr, ptr %0, align 1
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %93 [
    i8 26, label %15
    i8 27, label %15
    i8 23, label %54
    i8 30, label %64
    i8 32, label %74
    i8 29, label %84
    i8 24, label %84
    i8 25, label %84
    i8 1, label %90
  ]

15:                                               ; preds = %3, %3
  %16 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %12, i64 0, i32 1
  %19 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %18, ptr noundef %2), !range !135
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @get_frame_type(ptr noundef %10)
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = tail call ptr @build_omp_clause(i32 noundef %24, i32 noundef 2) #16
  %26 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = getelementptr inbounds %struct.tree_omp_clause, ptr %25, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !46
  %29 = load ptr, ptr %18, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !46
  store ptr %25, ptr %18, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %21, %15
  %32 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  store ptr null, ptr %32, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  %36 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 1
  store ptr %10, ptr %36, align 8, !tbaa !81
  %37 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 3
  store i8 1, ptr %37, align 8, !tbaa !84
  %38 = call ptr @walk_gimple_seq(ptr noundef %35, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #16
  %39 = load ptr, ptr %32, align 8, !tbaa !112
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %34, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 8, !tbaa !90
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %45, %44 ], [ null, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !92
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %50, %49 ], [ null, %46 ]
  call void @declare_vars(ptr noundef nonnull %39, ptr noundef %52, i8 noundef zeroext 0) #16
  br label %53

53:                                               ; preds = %51, %31
  store ptr %33, ptr %32, align 8, !tbaa !112
  store ptr %17, ptr %16, align 8, !tbaa !133
  br label %93

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !133
  %57 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %12, i64 0, i32 1
  %58 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %57, ptr noundef %2), !range !135
  tail call fastcc void @walk_gimple_omp_for(ptr noundef nonnull %12, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %10)
  %59 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %61 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  store ptr %10, ptr %61, align 8, !tbaa !81
  %62 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 3
  store i8 1, ptr %62, align 8, !tbaa !84
  %63 = call ptr @walk_gimple_seq(ptr noundef %60, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  store ptr %56, ptr %55, align 8, !tbaa !133
  br label %93

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !133
  %67 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %12, i64 0, i32 1
  %68 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %67, ptr noundef %2), !range !135
  %69 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %71 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  store ptr %10, ptr %71, align 8, !tbaa !81
  %72 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 3
  store i8 1, ptr %72, align 8, !tbaa !84
  %73 = call ptr @walk_gimple_seq(ptr noundef %70, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  store ptr %66, ptr %65, align 8, !tbaa !133
  br label %93

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.nesting_info, ptr %10, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !133
  %77 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %12, i64 0, i32 1
  %78 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %77, ptr noundef %2), !range !135
  %79 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %81 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %10, ptr %81, align 8, !tbaa !81
  %82 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %82, align 8, !tbaa !84
  %83 = call ptr @walk_gimple_seq(ptr noundef %80, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  store ptr %76, ptr %75, align 8, !tbaa !133
  br label %93

84:                                               ; preds = %3, %3, %3
  %85 = getelementptr inbounds %struct.gimple_statement_omp, ptr %12, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %87 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %10, ptr %87, align 8, !tbaa !81
  %88 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 3
  store i8 1, ptr %88, align 8, !tbaa !84
  %89 = call ptr @walk_gimple_seq(ptr noundef %86, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  br label %93

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %91, align 8, !tbaa !84
  %92 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %92, align 1, !tbaa !137
  br label %93

93:                                               ; preds = %53, %54, %64, %74, %84, %3, %90
  %94 = phi i8 [ 0, %90 ], [ 0, %3 ], [ 1, %84 ], [ 1, %74 ], [ 1, %64 ], [ 1, %54 ], [ 1, %53 ]
  store i8 %94, ptr %1, align 1, !tbaa !46
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_local_reference_op(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  store i32 0, ptr %1, align 4, !tbaa !50
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %137 [
    i16 32, label %9
    i16 34, label %17
    i16 121, label %81
    i16 43, label %107
    i16 44, label %107
    i16 41, label %107
    i16 45, label %107
    i16 46, label %107
    i16 42, label %107
    i16 118, label %136
  ]

9:                                                ; preds = %3
  %10 = and i64 %7, 67108864
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %146

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %146

17:                                               ; preds = %12, %3
  %18 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #16
  %19 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %146

22:                                               ; preds = %17
  %23 = load i64, ptr %6, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 34
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -15
  %33 = icmp ult i32 %32, 4
  br label %42

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %146, label %38

38:                                               ; preds = %34
  %39 = load i64, ptr %36, align 8
  %40 = and i64 %39, 131072
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %26, %38
  %43 = phi i1 [ %41, %38 ], [ %33, %26 ]
  br i1 %43, label %146, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = tail call ptr @pointer_map_contains(ptr noundef %46, ptr noundef nonnull %6) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %47, align 8, !tbaa !35
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %50, %49 ], [ null, %44 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %146, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 1, ptr %55, align 2, !tbaa !138
  %56 = tail call fastcc ptr @get_local_debug_decl(ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %52)
  %57 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !133
  %59 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !46
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %58, i32 noundef %60) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load ptr, ptr %19, align 8, !tbaa !75
  %65 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef %64, ptr noundef nonnull %52, ptr noundef %2)
  br label %66

66:                                               ; preds = %63, %54
  %67 = phi ptr [ %56, %54 ], [ %65, %63 ]
  %68 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %69 = load i8, ptr %68, align 8, !tbaa !84
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %73 = load i8, ptr %72, align 1, !tbaa !137
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call fastcc ptr @save_tmp_var(ptr noundef %5, ptr noundef %67, ptr noundef %2)
  br label %79

77:                                               ; preds = %71
  %78 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %67, ptr noundef %2)
  br label %79

79:                                               ; preds = %75, %77, %66
  %80 = phi ptr [ %76, %75 ], [ %78, %77 ], [ %67, %66 ]
  store ptr %80, ptr %0, align 8, !tbaa !35
  br label %146

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %83 = load i8, ptr %82, align 8, !tbaa !84
  store i8 0, ptr %82, align 8, !tbaa !84
  %84 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %84, align 1, !tbaa !137
  %85 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 0, ptr %85, align 2, !tbaa !138
  %86 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %87 = tail call ptr @walk_tree_1(ptr noundef nonnull %86, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  store i8 %83, ptr %82, align 8, !tbaa !84
  %88 = load i8, ptr %85, align 2, !tbaa !138
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %146, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 10
  %92 = load ptr, ptr %91, align 8, !tbaa !88
  %93 = load i64, ptr %92, align 8
  %94 = or i64 %93, 262144
  store i64 %94, ptr %92, align 8
  %95 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %96 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !75
  store ptr %97, ptr @current_function_decl, align 8, !tbaa !35
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %6) #16
  store ptr %95, ptr @current_function_decl, align 8, !tbaa !35
  %98 = icmp eq i8 %83, 0
  br i1 %98, label %146, label %99

99:                                               ; preds = %90
  %100 = load ptr, ptr %4, align 8, !tbaa !81
  %101 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %6) #16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = tail call fastcc ptr @init_tmp_var(ptr noundef %100, ptr noundef nonnull %6, ptr noundef %2)
  br label %105

105:                                              ; preds = %99, %103
  %106 = phi ptr [ %104, %103 ], [ %6, %99 ]
  store ptr %106, ptr %0, align 8, !tbaa !35
  br label %146

107:                                              ; preds = %3, %3, %3, %3, %3, %3
  %108 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %109 = load i8, ptr %108, align 8, !tbaa !84
  store i8 1, ptr %108, align 8, !tbaa !84
  %110 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %110, align 1, !tbaa !137
  br label %111

111:                                              ; preds = %133, %107
  %112 = phi ptr [ %6, %107 ], [ %135, %133 ]
  %113 = phi ptr [ %0, %107 ], [ %134, %133 ]
  %114 = load i64, ptr %112, align 8
  %115 = trunc i64 %114 to i16
  switch i16 %115, label %116 [
    i16 41, label %118
    i16 45, label %120
    i16 46, label %120
    i16 42, label %126
    i16 43, label %133
    i16 44, label %133
    i16 118, label %133
  ]

116:                                              ; preds = %111
  store i8 0, ptr %108, align 8, !tbaa !84
  %117 = tail call ptr @walk_tree_1(ptr noundef nonnull %113, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  store i8 %109, ptr %108, align 8, !tbaa !84
  br label %146

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 1, i32 0, i32 1
  br label %130

120:                                              ; preds = %111, %111
  %121 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 1
  %122 = tail call ptr @walk_tree_1(ptr noundef nonnull %121, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %123 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 1, i32 0, i32 1
  %124 = tail call ptr @walk_tree_1(ptr noundef nonnull %123, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %125 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 1, i32 0, i32 2
  br label %130

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 1
  %128 = tail call ptr @walk_tree_1(ptr noundef nonnull %127, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %129 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 1, i32 0, i32 1
  br label %130

130:                                              ; preds = %120, %126, %118
  %131 = phi ptr [ %119, %118 ], [ %129, %126 ], [ %125, %120 ]
  %132 = tail call ptr @walk_tree_1(ptr noundef nonnull %131, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  br label %133

133:                                              ; preds = %130, %111, %111, %111
  %134 = getelementptr inbounds %struct.tree_exp, ptr %112, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  br label %111, !llvm.loop !141

136:                                              ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !50
  br label %146

137:                                              ; preds = %3
  %138 = and i64 %7, 65535
  %139 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !50
  %141 = and i32 %140, -2
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  store i32 1, ptr %1, align 4, !tbaa !50
  %144 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %144, align 8, !tbaa !84
  %145 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %145, align 1, !tbaa !137
  br label %146

146:                                              ; preds = %34, %12, %137, %90, %105, %143, %81, %17, %79, %51, %42, %9, %136, %116
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @convert_nl_goto_reference(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %119

11:                                               ; preds = %3
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !103
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %7, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 30
  br i1 %25, label %26, label %119

26:                                               ; preds = %20
  %27 = tail call ptr @decl_function_context(ptr noundef nonnull %22) #16
  %28 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %119, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %33, %31 ], [ %5, %26 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = icmp eq ptr %27, %35
  br i1 %36, label %37, label %31, !llvm.loop !142

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = tail call ptr @pointer_map_insert(ptr noundef %39, ptr noundef nonnull %22) #16
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = tail call ptr @create_artificial_label(i32 noundef 0) #16
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 256
  store i64 %47, ptr %45, align 8
  store ptr %44, ptr %40, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %37, %43
  %49 = phi ptr [ %44, %43 ], [ %41, %37 ]
  %50 = getelementptr inbounds %struct.nesting_info, ptr %33, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !110
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %106

53:                                               ; preds = %48
  %54 = load i32, ptr @ptr_mode, align 4, !tbaa !50
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  br label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !143
  %60 = tail call ptr %59(i32 noundef 16, i32 noundef 1) #16
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi ptr [ %57, %56 ], [ %60, %58 ]
  %63 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 2) #16
  %64 = tail call ptr @build_index_type(ptr noundef %63) #16
  %65 = tail call ptr @build_array_type(ptr noundef %62, ptr noundef %64) #16
  %66 = tail call ptr @make_node_stat(i32 noundef 31) #16
  %67 = tail call ptr @get_identifier(ptr noundef nonnull @.str.9) #16
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %66, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  store ptr %65, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 3
  store i32 %71, ptr %72, align 8, !tbaa !46
  %73 = load i64, ptr %66, align 8
  %74 = or i64 %73, 262144
  store i64 %74, ptr %66, align 8
  %75 = tail call fastcc ptr @get_frame_type(ptr noundef %33)
  %76 = getelementptr inbounds %struct.tree_decl_minimal, ptr %66, i64 0, i32 4
  store ptr %75, ptr %76, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = icmp eq ptr %78, null
  br i1 %79, label %96, label %80

80:                                               ; preds = %61
  %81 = load i32, ptr %72, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %78, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %89, label %96

85:                                               ; preds = %89
  %86 = getelementptr inbounds %struct.tree_decl_common, ptr %92, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !46
  %88 = icmp ult i32 %81, %87
  br i1 %88, label %89, label %94, !llvm.loop !55

89:                                               ; preds = %80, %85
  %90 = phi ptr [ %92, %85 ], [ %78, %80 ]
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %85, !llvm.loop !55

94:                                               ; preds = %89, %85
  %95 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 1
  br label %96

96:                                               ; preds = %94, %80, %61
  %97 = phi ptr [ %77, %61 ], [ %77, %80 ], [ %95, %94 ]
  %98 = phi ptr [ %78, %61 ], [ %78, %80 ], [ %92, %94 ]
  %99 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !46
  store ptr %66, ptr %97, align 8, !tbaa !35
  %100 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !46
  %102 = load i32, ptr %72, align 8, !tbaa !46
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 %102, ptr %100, align 8, !tbaa !46
  br label %105

105:                                              ; preds = %104, %96
  store ptr %66, ptr %50, align 8, !tbaa !110
  br label %106

106:                                              ; preds = %48, %105
  %107 = phi ptr [ %51, %48 ], [ %66, %105 ]
  %108 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef %27, ptr noundef nonnull %107, ptr noundef %2)
  %109 = tail call ptr @build_addr(ptr noundef %108, ptr noundef %27)
  %110 = tail call zeroext i8 @is_gimple_val(ptr noundef %109) #16
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %109, ptr noundef %2)
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi ptr [ %113, %112 ], [ %109, %106 ]
  %116 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 522), align 16, !tbaa !35
  %117 = tail call ptr @build_addr(ptr noundef %49, ptr noundef %27)
  %118 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %116, i32 noundef 2, ptr noundef %117, ptr noundef %115) #16
  tail call void @gsi_replace(ptr noundef %2, ptr noundef %118, i8 noundef zeroext 0) #16
  br label %119

119:                                              ; preds = %26, %20, %3, %114
  %120 = phi i8 [ 1, %114 ], [ 0, %3 ], [ 0, %20 ], [ 0, %26 ]
  store i8 %120, ptr %1, align 1, !tbaa !46
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_nl_goto_receiver(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !103
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %7, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = tail call ptr @pointer_map_contains(ptr noundef %24, ptr noundef %22) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %2, align 8, !tbaa.struct !144
  %29 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !145
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %30, align 8, !tbaa !92
  %34 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %33) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %27
  %37 = tail call ptr @gimple_build_goto(ptr noundef %22) #16
  tail call void @gsi_insert_before(ptr noundef nonnull %0, ptr noundef %37, i32 noundef 1) #16
  br label %38

38:                                               ; preds = %36, %32
  %39 = load ptr, ptr %25, align 8, !tbaa !35
  %40 = tail call ptr @gimple_build_label(ptr noundef %39) #16
  tail call void @gsi_insert_before(ptr noundef nonnull %0, ptr noundef %40, i32 noundef 1) #16
  br label %41

41:                                               ; preds = %20, %3, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %3 ], [ 0, %20 ]
  store i8 %42, ptr %1, align 1, !tbaa !46
  ret ptr null
}

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

declare void @gimplify_function_tree(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @check_for_nested_with_variably_modified(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @cgraph_node(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %11

7:                                                ; preds = %27
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11, !llvm.loop !146

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !llvm.loop !147

21:                                               ; preds = %11, %17
  %22 = phi ptr [ %19, %17 ], [ %15, %11 ]
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %24, ptr noundef %1) #16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %17, label %31

27:                                               ; preds = %17, %11
  %28 = load ptr, ptr %12, align 8, !tbaa !131
  %29 = tail call fastcc zeroext i8 @check_for_nested_with_variably_modified(ptr noundef %28, ptr noundef %1), !range !135
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %7, label %31

31:                                               ; preds = %27, %7, %21, %2
  %32 = phi i8 [ 0, %2 ], [ 1, %21 ], [ 0, %7 ], [ 1, %27 ]
  ret i8 %32
}

declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.walk_stmt_info, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %9 = tail call ptr @bitmap_gc_alloc_stat() #16
  %10 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  tail call void @bitmap_copy(ptr noundef %9, ptr noundef %11) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 6
  br label %16

16:                                               ; preds = %14, %65
  %17 = phi ptr [ %12, %14 ], [ %69, %65 ]
  %18 = phi i8 [ 0, %14 ], [ %67, %65 ]
  %19 = phi i8 [ 0, %14 ], [ %66, %65 ]
  %20 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !46
  switch i32 %21, label %64 [
    i32 5, label %22
    i32 4, label %24
    i32 1, label %31
    i32 3, label %31
    i32 7, label %31
    i32 2, label %31
    i32 10, label %55
    i32 8, label %59
    i32 9, label %59
    i32 11, label %65
    i32 12, label %65
    i32 13, label %65
    i32 6, label %65
    i32 14, label %65
    i32 15, label %65
  ]

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 1, i32 0, i32 2
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 4
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 %19, i8 1
  br label %31

31:                                               ; preds = %26, %16, %16, %16, %16
  %32 = phi i8 [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = and i64 %35, 67108864
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 33554432
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41, %31
  %47 = tail call ptr @decl_function_context(ptr noundef nonnull %34) #16
  %48 = load ptr, ptr %15, align 8, !tbaa !75
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !46
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %52) #16
  %54 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef %8, ptr noundef nonnull %34)
  store ptr %54, ptr %33, align 8, !tbaa !46
  br label %65

55:                                               ; preds = %16
  %56 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %16, %55, %16
  %60 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 3
  %61 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 4
  store i8 1, ptr %60, align 8, !tbaa !84
  store i8 0, ptr %61, align 1, !tbaa !137
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %63 = call ptr @convert_nonlocal_reference_op(ptr noundef nonnull %62, ptr noundef nonnull %6, ptr noundef %1)
  br label %65

64:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1116, ptr noundef nonnull @.str.2) #16
  br label %65

65:                                               ; preds = %55, %46, %41, %16, %16, %16, %16, %16, %59, %64, %38, %50, %16
  %66 = phi i8 [ %19, %64 ], [ %19, %16 ], [ %19, %59 ], [ %32, %38 ], [ %32, %50 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %32, %41 ], [ %32, %46 ], [ %19, %55 ]
  %67 = phi i8 [ %18, %64 ], [ %18, %16 ], [ %18, %59 ], [ %18, %38 ], [ 1, %50 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %41 ], [ %18, %46 ], [ %18, %55 ]
  %68 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %16, !llvm.loop !148

71:                                               ; preds = %65
  %72 = icmp eq i8 %66, 0
  br label %73

73:                                               ; preds = %71, %2
  %74 = phi i1 [ true, %2 ], [ %72, %71 ]
  %75 = phi i8 [ 0, %2 ], [ %67, %71 ]
  store ptr %9, ptr %10, align 8, !tbaa !133
  br i1 %74, label %115, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %0, align 8, !tbaa !46
  %78 = icmp eq ptr %77, null
  br i1 %78, label %115, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  %81 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 3
  %82 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 6
  %83 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  %84 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  %85 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  %86 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 3
  br label %87

87:                                               ; preds = %79, %111
  %88 = phi ptr [ %77, %79 ], [ %113, %111 ]
  %89 = getelementptr inbounds %struct.tree_omp_clause, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !46
  switch i32 %90, label %111 [
    i32 5, label %91
    i32 4, label %107
  ]

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tree_omp_clause, ptr %88, i64 1, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = icmp eq ptr %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tree_decl_minimal, ptr %93, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = load ptr, ptr %82, align 8, !tbaa !75
  store ptr %98, ptr %96, align 8, !tbaa !46
  %99 = getelementptr inbounds %struct.tree_omp_clause, ptr %88, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store ptr %8, ptr %83, align 8, !tbaa !81
  store i8 1, ptr %84, align 8, !tbaa !84
  %101 = call ptr @walk_gimple_seq(ptr noundef %100, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  %102 = getelementptr inbounds %struct.tree_omp_clause, ptr %88, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %8, ptr %85, align 8, !tbaa !81
  store i8 1, ptr %86, align 8, !tbaa !84
  %104 = call ptr @walk_gimple_seq(ptr noundef %103, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  %105 = load ptr, ptr %92, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.tree_decl_minimal, ptr %105, i64 0, i32 4
  store ptr %97, ptr %106, align 8, !tbaa !46
  br label %111

107:                                              ; preds = %87
  %108 = getelementptr inbounds %struct.tree_omp_clause, ptr %88, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %8, ptr %80, align 8, !tbaa !81
  store i8 1, ptr %81, align 8, !tbaa !84
  %110 = call ptr @walk_gimple_seq(ptr noundef %109, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  br label %111

111:                                              ; preds = %107, %95, %91, %87
  %112 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %87, !llvm.loop !149

115:                                              ; preds = %111, %76, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i8 %75
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_chain_decl(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %45

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  %7 = tail call fastcc ptr @get_frame_type(ptr noundef %6)
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.8) #16
  %14 = tail call ptr @build_decl_stat(i32 noundef %12, i32 noundef 34, ptr noundef %13, ptr noundef %8) #16
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, 5120
  store i64 %17, ptr %15, align 8
  %18 = load i64, ptr %14, align 8
  %19 = or i64 %18, 16777216
  store i64 %19, ptr %14, align 8
  %20 = load ptr, ptr %9, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  store ptr %8, ptr %22, align 8, !tbaa !46
  %23 = or i64 %18, 17825792
  store i64 %23, ptr %14, align 8
  store ptr %14, ptr %2, align 8, !tbaa !77
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %5
  %27 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %9, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !64
  %38 = tail call ptr %37(ptr noundef %31, i32 noundef 2) #16
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.7, ptr noundef %38)
  br label %40

40:                                               ; preds = %36, %30, %26, %5
  %41 = load ptr, ptr %9, align 8, !tbaa !75
  %42 = getelementptr inbounds %struct.tree_function_decl, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 4194304
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %40, %1
  %46 = phi ptr [ %3, %1 ], [ %14, %40 ]
  ret ptr %46
}

declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @declare_vars(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @walk_gimple_omp_for(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %10 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %3, ptr %10, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %11, align 8, !tbaa !84
  %12 = call ptr @walk_gimple_seq(ptr noundef %9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  %13 = call ptr @gimple_seq_alloc() #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %14 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !81
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.gimple_seq_d, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !99, !noalias !150
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi ptr [ %18, %16 ], [ null, %4 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !92, !noalias !150
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !46, !noalias !150
  br label %28

28:                                               ; preds = %19, %22, %25
  %29 = phi ptr [ %27, %25 ], [ null, %22 ], [ null, %19 ]
  store ptr %20, ptr %6, align 8, !tbaa.struct !144
  %30 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %13, ptr %30, align 8, !tbaa.struct !153
  %31 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %29, ptr %31, align 8, !tbaa.struct !154
  %32 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !46
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 3
  %37 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %38 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 4
  br label %39

39:                                               ; preds = %35, %71
  %40 = phi i64 [ 0, %35 ], [ %76, %71 ]
  store i8 0, ptr %36, align 8, !tbaa !84
  %41 = load ptr, ptr %37, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %41, i64 %40, i32 1
  %43 = call ptr @walk_tree_1(ptr noundef nonnull %42, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %36, align 8, !tbaa !84
  store i8 0, ptr %38, align 1, !tbaa !137
  %44 = load i64, ptr %32, align 8, !tbaa !46
  %45 = icmp ugt i64 %44, %40
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3497, ptr noundef nonnull @.str.2) #16
  br label %47

47:                                               ; preds = %39, %46
  %48 = load ptr, ptr %37, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %48, i64 %40, i32 2
  %50 = call ptr @walk_tree_1(ptr noundef nonnull %49, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %36, align 8, !tbaa !84
  store i8 0, ptr %38, align 1, !tbaa !137
  %51 = load i64, ptr %32, align 8, !tbaa !46
  %52 = icmp ugt i64 %51, %40
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3530, ptr noundef nonnull @.str.2) #16
  br label %54

54:                                               ; preds = %47, %53
  %55 = load ptr, ptr %37, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %55, i64 %40, i32 3
  %57 = call ptr @walk_tree_1(ptr noundef nonnull %56, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  %58 = load i64, ptr %32, align 8, !tbaa !46
  %59 = icmp ugt i64 %58, %40
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3552, ptr noundef nonnull @.str.2) #16
  br label %61

61:                                               ; preds = %54, %60
  %62 = load ptr, ptr %37, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %62, i64 %40, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !155
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = icmp eq i32 %68, 7
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 640, ptr noundef nonnull @.str.2) #16
  br label %71

71:                                               ; preds = %61, %70
  store i8 0, ptr %36, align 8, !tbaa !84
  %72 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %73 = call ptr @walk_tree_1(ptr noundef nonnull %72, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %36, align 8, !tbaa !84
  store i8 0, ptr %38, align 1, !tbaa !137
  %74 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 1
  %75 = call ptr @walk_tree_1(ptr noundef nonnull %74, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  %76 = add nuw i64 %40, 1
  %77 = load i64, ptr %32, align 8, !tbaa !46
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %39, label %79, !llvm.loop !157

79:                                               ; preds = %71, %28
  br i1 %15, label %83, label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr %13, align 8, !tbaa !90
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %80
  call void @gimple_seq_free(ptr noundef %13) #16
  br label %89

84:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %85 = load ptr, ptr %8, align 8, !tbaa !46
  store ptr %85, ptr %7, align 8, !tbaa !35
  %86 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !46
  call void @annotate_all_with_location(ptr noundef nonnull %13, i32 noundef %87) #16
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef nonnull %13) #16
  %88 = load ptr, ptr %7, align 8, !tbaa !35
  store ptr %88, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %89

89:                                               ; preds = %84, %83
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @note_nonlocal_block_vlas(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %15, ptr noundef null) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 67108864
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @decl_function_context(ptr noundef nonnull %9) #16
  %25 = load ptr, ptr %7, align 8, !tbaa !75
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %14, align 8, !tbaa !46
  tail call fastcc void @note_nonlocal_vla_type(ptr noundef %0, ptr noundef %28)
  br label %29

29:                                               ; preds = %8, %13, %18, %23, %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !158

33:                                               ; preds = %29, %2
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_nonlocal_debug_decl(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call ptr @pointer_map_insert(ptr noundef %4, ptr noundef %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %148

8:                                                ; preds = %2
  %9 = tail call ptr @decl_function_context(ptr noundef %1) #16
  %10 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @get_frame_type(ptr noundef %0)
  %15 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  br label %47

17:                                               ; preds = %8
  %18 = tail call fastcc ptr @get_chain_decl(ptr noundef %0)
  %19 = load ptr, ptr %0, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.nesting_info, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %39, label %23

23:                                               ; preds = %17, %23
  %24 = phi ptr [ %35, %23 ], [ %19, %17 ]
  %25 = phi ptr [ %34, %23 ], [ %18, %17 ]
  %26 = tail call fastcc ptr @get_chain_field(ptr noundef %24)
  %27 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %30, ptr noundef %25) #16
  %32 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %33, ptr noundef %31, ptr noundef %26, ptr noundef null) #16
  %35 = load ptr, ptr %24, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.nesting_info, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = icmp eq ptr %37, %9
  br i1 %38, label %39, label %23, !llvm.loop !159

39:                                               ; preds = %23, %17
  %40 = phi ptr [ %18, %17 ], [ %34, %23 ]
  %41 = phi ptr [ %19, %17 ], [ %35, %23 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %45, ptr noundef %40) #16
  br label %47

47:                                               ; preds = %39, %13
  %48 = phi ptr [ %16, %13 ], [ %46, %39 ]
  %49 = phi ptr [ %0, %13 ], [ %41, %39 ]
  %50 = tail call fastcc ptr @lookup_field_for_decl(ptr noundef %49, ptr noundef %1, i32 noundef 1)
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %52, ptr noundef %48, ptr noundef %50, ptr noundef null) #16
  %54 = load i64, ptr %1, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 34
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -15
  %64 = icmp ult i32 %63, 4
  br label %73

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i64, ptr %67, align 8
  %71 = and i64 %70, 131072
  %72 = icmp eq i64 %71, 0
  br label %73

73:                                               ; preds = %57, %69
  %74 = phi i1 [ %72, %69 ], [ %64, %57 ]
  br i1 %74, label %75, label %81

75:                                               ; preds = %65, %73
  %76 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %79, ptr noundef %53) #16
  br label %81

81:                                               ; preds = %75, %73
  %82 = phi ptr [ %80, %75 ], [ %53, %73 ]
  %83 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !46
  %85 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = tail call ptr @build_decl_stat(i32 noundef %84, i32 noundef 32, ptr noundef %86, ptr noundef %88) #16
  %90 = load ptr, ptr %10, align 8, !tbaa !75
  %91 = getelementptr inbounds %struct.tree_decl_minimal, ptr %89, i64 0, i32 4
  store ptr %90, ptr %91, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 4096
  %95 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, -4097
  %98 = or disjoint i64 %97, %94
  store i64 %98, ptr %95, align 8
  %99 = load i64, ptr %92, align 8
  %100 = and i64 %99, 1024
  %101 = and i64 %98, -1025
  %102 = or disjoint i64 %101, %100
  store i64 %102, ptr %95, align 8
  %103 = load i64, ptr %1, align 8
  %104 = and i64 %103, 524288
  %105 = load i64, ptr %89, align 8
  %106 = and i64 %105, -524289
  %107 = or disjoint i64 %106, %104
  store i64 %107, ptr %89, align 8
  %108 = load i64, ptr %1, align 8
  %109 = and i64 %108, 65536
  %110 = and i64 %107, -65537
  %111 = or disjoint i64 %110, %109
  store i64 %111, ptr %89, align 8
  %112 = load i64, ptr %1, align 8
  %113 = and i64 %112, 1048576
  %114 = and i64 %111, -1048577
  %115 = or disjoint i64 %114, %113
  store i64 %115, ptr %89, align 8
  %116 = load i64, ptr %1, align 8
  %117 = and i64 %116, 262144
  %118 = and i64 %115, -262145
  %119 = or disjoint i64 %118, %117
  store i64 %119, ptr %89, align 8
  %120 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %89, i64 0, i32 4
  %121 = load i32, ptr %120, align 8
  %122 = or i32 %121, 256
  store i32 %122, ptr %120, align 8
  %123 = load i64, ptr %1, align 8
  %124 = trunc i64 %123 to i16
  switch i16 %124, label %131 [
    i16 34, label %125
    i16 36, label %125
    i16 32, label %125
  ]

125:                                              ; preds = %81, %81, %81
  %126 = load i64, ptr %92, align 8
  %127 = and i64 %126, 268435456
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = or i64 %102, 268435456
  store i64 %130, ptr %95, align 8
  br label %131

131:                                              ; preds = %81, %129, %125
  tail call void @decl_value_expr_insert(ptr noundef nonnull %89, ptr noundef %82) #16
  %132 = load i64, ptr %95, align 8
  %133 = or i64 %132, 67108864
  store i64 %133, ptr %95, align 8
  store ptr %89, ptr %5, align 8, !tbaa !35
  %134 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !113
  %136 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 1
  store ptr %135, ptr %136, align 8, !tbaa !46
  store ptr %89, ptr %134, align 8, !tbaa !113
  %137 = load i32, ptr @optimize, align 4, !tbaa !50
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load ptr, ptr %10, align 8, !tbaa !75
  %141 = icmp eq ptr %140, %9
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %87, align 8, !tbaa !46
  %144 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %143, ptr noundef null) #16
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %87, align 8, !tbaa !46
  tail call fastcc void @note_nonlocal_vla_type(ptr noundef %0, ptr noundef %147)
  br label %148

148:                                              ; preds = %131, %139, %142, %146, %2
  %149 = phi ptr [ %6, %2 ], [ %89, %146 ], [ %89, %142 ], [ %89, %139 ], [ %89, %131 ]
  ret ptr %149
}

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_frame_type(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = tail call ptr @make_node_stat(i32 noundef 16) #16
  %7 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.4, ptr noundef %12, ptr noundef null) #16
  %14 = tail call ptr @get_identifier(ptr noundef %13) #16
  %15 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  store ptr %14, ptr %15, align 8, !tbaa !46
  tail call void @free(ptr noundef %13)
  store ptr %6, ptr %2, align 8, !tbaa !87
  %16 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.5)
  %17 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  store ptr %16, ptr %17, align 8, !tbaa !88
  %18 = load i64, ptr %16, align 8
  %19 = or i64 %18, 262144
  store i64 %19, ptr %16, align 8
  br label %20

20:                                               ; preds = %5, %1
  %21 = phi ptr [ %3, %1 ], [ %6, %5 ]
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_chain_field(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %73

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  %7 = tail call fastcc ptr @get_frame_type(ptr noundef %6)
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #16
  %9 = tail call ptr @make_node_stat(i32 noundef 31) #16
  %10 = tail call ptr @get_identifier(ptr noundef nonnull @.str.6) #16
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  store ptr %8, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 3
  store i32 %14, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 67108864
  store i64 %18, ptr %16, align 8
  %19 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0)
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %5
  %25 = load i32, ptr %15, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %33, label %40

29:                                               ; preds = %33
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp ult i32 %25, %31
  br i1 %32, label %33, label %38, !llvm.loop !55

33:                                               ; preds = %24, %29
  %34 = phi ptr [ %36, %29 ], [ %22, %24 ]
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29, !llvm.loop !55

38:                                               ; preds = %33, %29
  %39 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  br label %40

40:                                               ; preds = %38, %24, %5
  %41 = phi ptr [ %21, %5 ], [ %21, %24 ], [ %39, %38 ]
  %42 = phi ptr [ %22, %5 ], [ %22, %24 ], [ %36, %38 ]
  %43 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !46
  store ptr %9, ptr %41, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = load i32, ptr %15, align 8, !tbaa !46
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 %46, ptr %44, align 8, !tbaa !46
  br label %49

49:                                               ; preds = %40, %48
  store ptr %9, ptr %2, align 8, !tbaa !78
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = getelementptr inbounds %struct.tree_function_decl, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 4194304
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !64
  %65 = tail call ptr %64(ptr noundef %58, i32 noundef 2) #16
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.7, ptr noundef %65)
  br label %67

67:                                               ; preds = %63, %56, %52, %49
  %68 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = getelementptr inbounds %struct.tree_function_decl, ptr %69, i64 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 4194304
  store i32 %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %67, %1
  %74 = phi ptr [ %3, %1 ], [ %9, %67 ]
  ret ptr %74
}

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lookup_field_for_decl(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  br i1 %4, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %1) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %124, label %121

10:                                               ; preds = %3
  %11 = tail call ptr @pointer_map_insert(ptr noundef %6, ptr noundef %1) #16
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %121

14:                                               ; preds = %10
  %15 = tail call ptr @make_node_stat(i32 noundef 31) #16
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !46
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 34
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -15
  %29 = icmp ult i32 %28, 4
  br label %38

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 131072
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %22, %34
  %39 = phi i1 [ %37, %34 ], [ %29, %22 ]
  br i1 %39, label %40, label %51

40:                                               ; preds = %30, %38
  %41 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = tail call ptr @build_pointer_type(ptr noundef %42) #16
  %44 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 3
  store i32 %46, ptr %47, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = or i64 %49, 67108864
  store i64 %50, ptr %48, align 8
  br label %82

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 1
  store i32 %56, ptr %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 3
  store i32 %59, ptr %60, align 8, !tbaa !46
  %61 = load i64, ptr %1, align 8
  %62 = and i64 %61, 4398046511104
  %63 = load i64, ptr %15, align 8
  %64 = and i64 %63, -4398046511105
  %65 = or disjoint i64 %64, %62
  store i64 %65, ptr %15, align 8
  %66 = load i64, ptr %1, align 8
  %67 = and i64 %66, 262144
  %68 = and i64 %65, -262145
  %69 = or disjoint i64 %68, %67
  store i64 %69, ptr %15, align 8
  %70 = load i64, ptr %1, align 8
  %71 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = shl i64 %70, 8
  %74 = and i64 %73, 67108864
  %75 = and i64 %72, -67108865
  %76 = or disjoint i64 %74, %75
  %77 = xor i64 %76, 67108864
  store i64 %77, ptr %71, align 8
  %78 = load i64, ptr %1, align 8
  %79 = and i64 %78, 524288
  %80 = and i64 %69, -524289
  %81 = or disjoint i64 %79, %80
  store i64 %81, ptr %15, align 8
  br label %82

82:                                               ; preds = %51, %40
  %83 = tail call fastcc ptr @get_frame_type(ptr noundef %0)
  %84 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 4
  store ptr %83, ptr %84, align 8, !tbaa !46
  %85 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !35
  %87 = icmp eq ptr %86, null
  br i1 %87, label %105, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !46
  %91 = getelementptr inbounds %struct.tree_decl_common, ptr %86, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !46
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %98, label %105

94:                                               ; preds = %98
  %95 = getelementptr inbounds %struct.tree_decl_common, ptr %101, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !46
  %97 = icmp ult i32 %90, %96
  br i1 %97, label %98, label %103, !llvm.loop !55

98:                                               ; preds = %88, %94
  %99 = phi ptr [ %101, %94 ], [ %86, %88 ]
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %94, !llvm.loop !55

103:                                              ; preds = %98, %94
  %104 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 1
  br label %105

105:                                              ; preds = %103, %88, %82
  %106 = phi ptr [ %85, %82 ], [ %85, %88 ], [ %104, %103 ]
  %107 = phi ptr [ %86, %82 ], [ %86, %88 ], [ %101, %103 ]
  %108 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  store ptr %107, ptr %108, align 8, !tbaa !46
  store ptr %15, ptr %106, align 8, !tbaa !35
  %109 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !46
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !46
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 %112, ptr %109, align 8, !tbaa !46
  br label %115

115:                                              ; preds = %105, %114
  store ptr %15, ptr %11, align 8, !tbaa !35
  %116 = load i64, ptr %1, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 34
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 14
  store i8 1, ptr %120, align 8, !tbaa !94
  br label %121

121:                                              ; preds = %10, %119, %115, %7
  %122 = phi ptr [ %8, %7 ], [ %11, %115 ], [ %11, %119 ], [ %11, %10 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  br label %124

124:                                              ; preds = %121, %7
  %125 = phi ptr [ null, %7 ], [ %123, %121 ]
  ret ptr %125
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @note_nonlocal_vla_type(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %1, %2 ], [ %13, %11 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %14 [
    i16 10, label %7
    i16 12, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %3, !llvm.loop !160

14:                                               ; preds = %3, %7
  %15 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %16, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 35
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %4, ptr %24
  br label %27

27:                                               ; preds = %22, %18, %14
  %28 = phi ptr [ %26, %22 ], [ %4, %14 ], [ %4, %18 ]
  br label %29

29:                                               ; preds = %27, %33
  %30 = phi ptr [ %35, %33 ], [ %28, %27 ]
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %70 [
    i16 10, label %33
    i16 12, label %33
    i16 14, label %33
    i16 20, label %33
    i16 21, label %33
    i16 15, label %36
  ]

33:                                               ; preds = %29, %29, %29, %29, %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  br label %29, !llvm.loop !161

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  tail call fastcc void @note_nonlocal_vla_type(ptr noundef %0, ptr noundef %38)
  %39 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %70, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %44, align 8
  %48 = trunc i64 %47 to i16
  switch i16 %48, label %56 [
    i16 32, label %49
    i16 34, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = tail call ptr @decl_function_context(ptr noundef nonnull %44) #16
  %51 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef %0, ptr noundef nonnull %44)
  br label %56

56:                                               ; preds = %49, %46, %54, %42
  %57 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = load i64, ptr %58, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %70 [
    i16 32, label %63
    i16 34, label %63
  ]

63:                                               ; preds = %60, %60
  %64 = tail call ptr @decl_function_context(ptr noundef nonnull %58) #16
  %65 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef %0, ptr noundef nonnull %58)
  br label %70

70:                                               ; preds = %29, %63, %36, %68, %56, %60
  ret void
}

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @create_tmp_var_for(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 262144
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 148, ptr noundef nonnull @.str.2) #16
  br label %17

17:                                               ; preds = %8, %12, %16
  %18 = tail call ptr @create_tmp_var_raw(ptr noundef nonnull %1, ptr noundef %2) #16
  %19 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %18, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %18, i64 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = or i32 %26, 256
  store i32 %27, ptr %25, align 8
  %28 = load i64, ptr %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -13
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = or i64 %35, 134217728
  store i64 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %17, %33
  store ptr %18, ptr %22, align 8, !tbaa !112
  ret ptr %18
}

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_free(ptr noundef) local_unnamed_addr #3

declare void @annotate_all_with_location(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_frame_field(ptr nocapture noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_frame_type(ptr noundef %0)
  %10 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  br label %42

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @get_chain_decl(ptr noundef %0)
  %14 = load ptr, ptr %0, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.nesting_info, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %35, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %31, %18 ], [ %14, %12 ]
  %20 = phi ptr [ %30, %18 ], [ %13, %12 ]
  %21 = tail call fastcc ptr @get_chain_field(ptr noundef %19)
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %25, ptr noundef %20) #16
  %27 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %28, ptr noundef %26, ptr noundef %21, ptr noundef null) #16
  %30 = tail call fastcc ptr @init_tmp_var(ptr noundef nonnull %0, ptr noundef %29, ptr noundef %3)
  %31 = load ptr, ptr %19, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.nesting_info, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %18, !llvm.loop !162

35:                                               ; preds = %18, %12
  %36 = phi ptr [ %13, %12 ], [ %30, %18 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %40, ptr noundef %36) #16
  br label %42

42:                                               ; preds = %35, %8
  %43 = phi ptr [ %11, %8 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %45, ptr noundef %43, ptr noundef %2, ptr noundef null) #16
  ret ptr %46
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @init_tmp_var(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %0, ptr noundef %5, ptr noundef null)
  %7 = tail call ptr @gimple_build_assign_stat(ptr noundef %6, ptr noundef %1) #16
  %8 = load ptr, ptr %2, align 1
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %10, %3
  tail call void @gsi_insert_before_without_update(ptr noundef nonnull %2, ptr noundef %7, i32 noundef 1) #16
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @save_tmp_var(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %0, ptr noundef %5, ptr noundef null)
  %7 = tail call ptr @gimple_build_assign_stat(ptr noundef %1, ptr noundef %6) #16
  %8 = load ptr, ptr %2, align 1
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %10, %3
  tail call void @gsi_insert_after_without_update(ptr noundef nonnull %2, ptr noundef %7, i32 noundef 1) #16
  ret ptr %6
}

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @convert_local_omp_clauses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.walk_stmt_info, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %9 = tail call ptr @bitmap_gc_alloc_stat() #16
  %10 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  tail call void @bitmap_copy(ptr noundef %9, ptr noundef %11) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %105, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 6
  %16 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %97
  %18 = phi ptr [ %12, %14 ], [ %101, %97 ]
  %19 = phi i8 [ 0, %14 ], [ %99, %97 ]
  %20 = phi i8 [ 0, %14 ], [ %98, %97 ]
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !46
  switch i32 %22, label %96 [
    i32 5, label %23
    i32 4, label %25
    i32 1, label %32
    i32 3, label %32
    i32 7, label %32
    i32 2, label %32
    i32 10, label %87
    i32 8, label %91
    i32 9, label %91
    i32 11, label %97
    i32 12, label %97
    i32 13, label %97
    i32 6, label %97
    i32 14, label %97
    i32 15, label %97
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 1, i32 0, i32 2
  br label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 0, i32 4
  br label %27

27:                                               ; preds = %23, %25
  %28 = phi ptr [ %26, %25 ], [ %24, %23 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i8 %20, i8 1
  br label %32

32:                                               ; preds = %27, %17, %17, %17, %17
  %33 = phi i8 [ %20, %17 ], [ %20, %17 ], [ %20, %17 ], [ %20, %17 ], [ %31, %27 ]
  %34 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 32
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = and i64 %36, 67108864
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 33554432
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %42, %32
  %48 = tail call ptr @decl_function_context(ptr noundef nonnull %35) #16
  %49 = load ptr, ptr %15, align 8, !tbaa !75
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %47
  %52 = load i64, ptr %35, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 34
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -15
  %62 = icmp ult i32 %61, 4
  br label %71

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = icmp eq ptr %65, null
  br i1 %66, label %97, label %67

67:                                               ; preds = %63
  %68 = load i64, ptr %65, align 8
  %69 = and i64 %68, 131072
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %55, %67
  %72 = phi i1 [ %70, %67 ], [ %62, %55 ]
  br i1 %72, label %97, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %16, align 8, !tbaa !95
  %75 = tail call ptr @pointer_map_contains(ptr noundef %74, ptr noundef nonnull %35) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %75, align 8, !tbaa !35
  br label %79

79:                                               ; preds = %73, %77
  %80 = phi ptr [ %78, %77 ], [ null, %73 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %97, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !46
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %84) #16
  %86 = tail call fastcc ptr @get_local_debug_decl(ptr noundef %8, ptr noundef nonnull %35, ptr noundef nonnull %80)
  store ptr %86, ptr %34, align 8, !tbaa !46
  br label %97

87:                                               ; preds = %17
  %88 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %17, %87, %17
  %92 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 3
  %93 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 4
  store i8 1, ptr %92, align 8, !tbaa !84
  store i8 0, ptr %93, align 1, !tbaa !137
  %94 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 0, i32 6
  %95 = call ptr @convert_local_reference_op(ptr noundef nonnull %94, ptr noundef nonnull %6, ptr noundef %1)
  br label %97

96:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1598, ptr noundef nonnull @.str.2) #16
  br label %97

97:                                               ; preds = %63, %87, %47, %42, %17, %17, %17, %17, %17, %79, %82, %91, %96, %39, %71, %17
  %98 = phi i8 [ %20, %96 ], [ %20, %17 ], [ %20, %91 ], [ %33, %39 ], [ %33, %71 ], [ %33, %82 ], [ %33, %79 ], [ %20, %17 ], [ %20, %17 ], [ %20, %17 ], [ %20, %17 ], [ %20, %17 ], [ %33, %42 ], [ %33, %47 ], [ %20, %87 ], [ %33, %63 ]
  %99 = phi i8 [ %19, %96 ], [ %19, %17 ], [ %19, %91 ], [ %19, %39 ], [ %19, %71 ], [ 1, %82 ], [ %19, %79 ], [ %19, %17 ], [ %19, %17 ], [ %19, %17 ], [ %19, %17 ], [ %19, %17 ], [ %19, %42 ], [ %19, %47 ], [ %19, %87 ], [ %19, %63 ]
  %100 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %17, !llvm.loop !163

103:                                              ; preds = %97
  %104 = icmp eq i8 %98, 0
  br label %105

105:                                              ; preds = %103, %2
  %106 = phi i1 [ true, %2 ], [ %104, %103 ]
  %107 = phi i8 [ 0, %2 ], [ %99, %103 ]
  store ptr %9, ptr %10, align 8, !tbaa !133
  br i1 %106, label %147, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %0, align 8, !tbaa !46
  %110 = icmp eq ptr %109, null
  br i1 %110, label %147, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  %113 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 3
  %114 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 6
  %115 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  %116 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  %117 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  %118 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 3
  br label %119

119:                                              ; preds = %111, %143
  %120 = phi ptr [ %109, %111 ], [ %145, %143 ]
  %121 = getelementptr inbounds %struct.tree_omp_clause, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !46
  switch i32 %122, label %143 [
    i32 5, label %123
    i32 4, label %139
  ]

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tree_omp_clause, ptr %120, i64 1, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = icmp eq ptr %125, null
  br i1 %126, label %143, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tree_decl_minimal, ptr %125, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = load ptr, ptr %114, align 8, !tbaa !75
  store ptr %130, ptr %128, align 8, !tbaa !46
  %131 = getelementptr inbounds %struct.tree_omp_clause, ptr %120, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store ptr %8, ptr %115, align 8, !tbaa !81
  store i8 1, ptr %116, align 8, !tbaa !84
  %133 = call ptr @walk_gimple_seq(ptr noundef %132, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  %134 = getelementptr inbounds %struct.tree_omp_clause, ptr %120, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %8, ptr %117, align 8, !tbaa !81
  store i8 1, ptr %118, align 8, !tbaa !84
  %136 = call ptr @walk_gimple_seq(ptr noundef %135, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  %137 = load ptr, ptr %124, align 8, !tbaa !46
  %138 = getelementptr inbounds %struct.tree_decl_minimal, ptr %137, i64 0, i32 4
  store ptr %129, ptr %138, align 8, !tbaa !46
  br label %143

139:                                              ; preds = %119
  %140 = getelementptr inbounds %struct.tree_omp_clause, ptr %120, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %8, ptr %112, align 8, !tbaa !81
  store i8 1, ptr %113, align 8, !tbaa !84
  %142 = call ptr @walk_gimple_seq(ptr noundef %141, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  br label %143

143:                                              ; preds = %139, %127, %123, %119
  %144 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %119, !llvm.loop !164

147:                                              ; preds = %143, %108, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i8 %107
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_local_debug_decl(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call ptr @pointer_map_insert(ptr noundef %5, ptr noundef %1) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %73

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @get_frame_type(ptr noundef %0)
  %11 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %14, ptr noundef %12, ptr noundef %2, ptr noundef null) #16
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call ptr @build_decl_stat(i32 noundef %17, i32 noundef 32, ptr noundef %19, ptr noundef %21) #16
  %23 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 4096
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, -4097
  %32 = or disjoint i64 %31, %28
  store i64 %32, ptr %29, align 8
  %33 = load i64, ptr %26, align 8
  %34 = and i64 %33, 1024
  %35 = and i64 %32, -1025
  %36 = or disjoint i64 %35, %34
  store i64 %36, ptr %29, align 8
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 524288
  %39 = load i64, ptr %22, align 8
  %40 = and i64 %39, -524289
  %41 = or disjoint i64 %40, %38
  store i64 %41, ptr %22, align 8
  %42 = load i64, ptr %1, align 8
  %43 = and i64 %42, 65536
  %44 = and i64 %41, -65537
  %45 = or disjoint i64 %44, %43
  store i64 %45, ptr %22, align 8
  %46 = load i64, ptr %1, align 8
  %47 = and i64 %46, 1048576
  %48 = and i64 %45, -1048577
  %49 = or disjoint i64 %48, %47
  store i64 %49, ptr %22, align 8
  %50 = load i64, ptr %1, align 8
  %51 = and i64 %50, 262144
  %52 = and i64 %49, -262145
  %53 = or disjoint i64 %52, %51
  store i64 %53, ptr %22, align 8
  %54 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = or i32 %55, 256
  store i32 %56, ptr %54, align 8
  %57 = load i64, ptr %1, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %65 [
    i16 34, label %59
    i16 36, label %59
    i16 32, label %59
  ]

59:                                               ; preds = %9, %9, %9
  %60 = load i64, ptr %26, align 8
  %61 = and i64 %60, 268435456
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = or i64 %36, 268435456
  store i64 %64, ptr %29, align 8
  br label %65

65:                                               ; preds = %9, %63, %59
  tail call void @decl_value_expr_insert(ptr noundef nonnull %22, ptr noundef %15) #16
  %66 = load i64, ptr %29, align 8
  %67 = or i64 %66, 67108864
  store i64 %67, ptr %29, align 8
  store ptr %22, ptr %6, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !113
  %70 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !46
  store ptr %22, ptr %68, align 8, !tbaa !113
  %71 = load i64, ptr %26, align 8
  %72 = or i64 %71, 1024
  store i64 %72, ptr %26, align 8
  br label %73

73:                                               ; preds = %3, %65
  %74 = phi ptr [ %22, %65 ], [ %7, %3 ]
  ret ptr %74
}

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_stmt_may_fallthru(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_tramp_reference_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr %0, align 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = add i32 %11, -3
  %13 = zext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %9, %35
  %16 = phi i64 [ %38, %35 ], [ 0, %9 ]
  %17 = add nuw nsw i64 %16, 3
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 255
  %20 = add nsw i32 %19, -10
  %21 = icmp ult i32 %20, -9
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = zext nneg i32 %19 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !103
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %31

31:                                               ; preds = %30, %22
  %32 = getelementptr inbounds i8, ptr %5, i64 %28
  %33 = and i64 %17, 4294967295
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  br label %35

35:                                               ; preds = %15, %31
  %36 = phi ptr [ %34, %31 ], [ null, %15 ]
  %37 = tail call ptr @walk_tree_1(ptr noundef %36, ptr noundef nonnull @convert_tramp_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #16
  %38 = add nuw nsw i64 %16, 1
  %39 = icmp eq i64 %38, %13
  br i1 %39, label %40, label %15, !llvm.loop !165

40:                                               ; preds = %35, %9, %3
  %41 = phi i8 [ 0, %3 ], [ 1, %9 ], [ 1, %35 ]
  store i8 %41, ptr %1, align 1, !tbaa !46
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_tramp_reference_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  store i32 0, ptr %1, align 4, !tbaa !50
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 121
  br i1 %9, label %10, label %116

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 29
  br i1 %15, label %16, label %122

16:                                               ; preds = %10
  %17 = tail call ptr @decl_function_context(ptr noundef nonnull %12) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %122, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 4194304
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %122, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %6, align 8
  %26 = and i64 %25, 67108864
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = icmp eq ptr %30, %17
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %34, %32 ], [ %5, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.nesting_info, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = icmp eq ptr %36, %17
  br i1 %37, label %38, label %32, !llvm.loop !166

38:                                               ; preds = %32, %28
  %39 = phi ptr [ %5, %28 ], [ %34, %32 ]
  %40 = tail call fastcc ptr @lookup_tramp_for_decl(ptr noundef %39, ptr noundef nonnull %12, i32 noundef 1)
  %41 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef nonnull %17, ptr noundef %40, ptr noundef %2)
  %42 = tail call ptr @build_addr(ptr noundef %41, ptr noundef nonnull %17)
  %43 = tail call zeroext i8 @is_gimple_val(ptr noundef %42) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %42, ptr noundef %2)
  br label %47

47:                                               ; preds = %38, %45
  %48 = phi ptr [ %46, %45 ], [ %42, %38 ]
  %49 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 521), align 8, !tbaa !35
  %50 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %49, i32 noundef 1, ptr noundef %48) #16
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 255
  %53 = add nsw i32 %52, -1
  %54 = icmp ult i32 %53, 9
  tail call void @llvm.assume(i1 %54)
  %55 = zext nneg i32 %52 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !50
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !103
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %63

63:                                               ; preds = %62, %47
  %64 = getelementptr inbounds i8, ptr %50, i64 %60
  %65 = getelementptr inbounds ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %5, ptr noundef %72, ptr noundef null)
  %74 = load i32, ptr %50, align 8
  %75 = and i32 %74, 255
  %76 = add nsw i32 %75, -10
  %77 = icmp ult i32 %76, -9
  br i1 %77, label %82, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.gimple_statement_base, ptr %50, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !46
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #16
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, ptr %50, align 8
  %85 = and i32 %84, 255
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !103
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %94

94:                                               ; preds = %93, %83
  %95 = getelementptr inbounds i8, ptr %50, i64 %91
  store ptr %73, ptr %95, align 8, !tbaa !35
  %96 = icmp eq ptr %73, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i64, ptr %73, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 141
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %73, i64 0, i32 2
  store ptr %50, ptr %102, align 8, !tbaa !46
  br label %103

103:                                              ; preds = %101, %97, %94
  %104 = load ptr, ptr %2, align 1
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %104, align 8, !tbaa !92
  %108 = getelementptr inbounds %struct.gimple_statement_base, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !46
  %110 = getelementptr inbounds %struct.gimple_statement_base, ptr %50, i64 0, i32 2
  store i32 %109, ptr %110, align 8, !tbaa !46
  br label %111

111:                                              ; preds = %103, %106
  tail call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef nonnull %50, i32 noundef 1) #16
  %112 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %113, ptr noundef %73) #16
  %115 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %114, ptr noundef nonnull %2)
  store ptr %115, ptr %0, align 8, !tbaa !35
  br label %122

116:                                              ; preds = %3
  %117 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = and i32 %118, -2
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  store i32 1, ptr %1, align 4, !tbaa !50
  br label %122

122:                                              ; preds = %116, %121, %24, %19, %16, %10, %111
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @convert_gimple_call(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = load ptr, ptr %0, align 1
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 255
  %13 = trunc i32 %11 to i8
  switch i8 %13, label %168 [
    i8 8, label %14
    i8 26, label %101
    i8 27, label %101
    i8 23, label %156
    i8 30, label %162
    i8 29, label %162
    i8 32, label %162
    i8 24, label %162
    i8 25, label %162
    i8 22, label %162
  ]

14:                                               ; preds = %3
  %15 = add nsw i32 %12, -10
  %16 = icmp ult i32 %15, -9
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = zext nneg i32 %12 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !103
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr inbounds i8, ptr %10, i64 %23
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %168

31:                                               ; preds = %14, %26
  %32 = load i32, ptr %10, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -9
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = zext nneg i32 %33 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !103
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %45

45:                                               ; preds = %44, %36
  %46 = getelementptr inbounds i8, ptr %10, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %45, %31
  %50 = phi ptr [ %48, %45 ], [ null, %31 ]
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 121
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi ptr [ %56, %54 ], [ null, %49 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %168, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @decl_function_context(ptr noundef nonnull %58) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %168, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.tree_function_decl, ptr %58, i64 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 4194304
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %168, label %68

68:                                               ; preds = %63
  %69 = tail call fastcc ptr @get_static_chain(ptr noundef %8, ptr noundef nonnull %61, ptr noundef %2)
  %70 = load i32, ptr %10, align 8
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, -10
  %73 = icmp ult i32 %72, -9
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.gimple_statement_base, ptr %10, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !46
  %77 = icmp ugt i32 %76, 2
  br i1 %77, label %79, label %78

78:                                               ; preds = %74, %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #16
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, ptr %10, align 8
  %81 = and i32 %80, 255
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !103
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %90

90:                                               ; preds = %79, %89
  %91 = getelementptr inbounds i8, ptr %10, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  store ptr %69, ptr %92, align 8, !tbaa !35
  %93 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !75
  %95 = icmp ne ptr %94, %61
  %96 = zext i1 %95 to i8
  %97 = shl nuw nsw i8 1, %96
  %98 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 16
  %99 = load i8, ptr %98, align 2, !tbaa !167
  %100 = or i8 %97, %99
  store i8 %100, ptr %98, align 2, !tbaa !167
  br label %168

101:                                              ; preds = %3, %3
  %102 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 16
  %103 = load i8, ptr %102, align 2, !tbaa !167
  store i8 0, ptr %102, align 2, !tbaa !167
  %104 = getelementptr inbounds %struct.gimple_statement_omp, ptr %10, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %106 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  store ptr %8, ptr %106, align 8, !tbaa !81
  %107 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 3
  store i8 1, ptr %107, align 8, !tbaa !84
  %108 = call ptr @walk_gimple_seq(ptr noundef %105, ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  %109 = getelementptr inbounds %struct.nesting_info, ptr %8, i64 0, i32 10
  %110 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %10, i64 0, i32 1
  %111 = getelementptr inbounds %struct.gimple_statement_base, ptr %10, i64 0, i32 2
  br label %112

112:                                              ; preds = %101, %150
  %113 = phi i32 [ 0, %101 ], [ %151, %150 ]
  %114 = load i8, ptr %102, align 2, !tbaa !167
  %115 = sext i8 %114 to i32
  %116 = shl nuw nsw i32 1, %113
  %117 = and i32 %116, %115
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %112
  %120 = icmp eq i32 %113, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = call fastcc ptr @get_chain_decl(ptr noundef %8)
  br label %125

123:                                              ; preds = %119
  %124 = load ptr, ptr %109, align 8, !tbaa !88
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi ptr [ %122, %121 ], [ %124, %123 ]
  %127 = load ptr, ptr %110, align 8, !tbaa !46
  %128 = icmp eq ptr %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %125, %139
  %130 = phi ptr [ %141, %139 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.tree_omp_clause, ptr %130, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !46
  %133 = and i32 %132, -2
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.tree_omp_clause, ptr %130, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = icmp eq ptr %137, %126
  br i1 %138, label %150, label %139

139:                                              ; preds = %129, %135
  %140 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %129, !llvm.loop !168

143:                                              ; preds = %139, %125
  %144 = load i32, ptr %111, align 8, !tbaa !46
  %145 = select i1 %120, i32 2, i32 3
  %146 = call ptr @build_omp_clause(i32 noundef %144, i32 noundef %145) #16
  %147 = getelementptr inbounds %struct.tree_omp_clause, ptr %146, i64 0, i32 6
  store ptr %126, ptr %147, align 8, !tbaa !46
  %148 = load ptr, ptr %110, align 8, !tbaa !46
  %149 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !46
  store ptr %146, ptr %110, align 8, !tbaa !46
  br label %150

150:                                              ; preds = %135, %143, %112
  %151 = add nuw nsw i32 %113, 1
  %152 = icmp eq i32 %113, 0
  br i1 %152, label %112, label %153, !llvm.loop !169

153:                                              ; preds = %150
  %154 = load i8, ptr %102, align 2, !tbaa !167
  %155 = or i8 %154, %103
  store i8 %155, ptr %102, align 2, !tbaa !167
  br label %168

156:                                              ; preds = %3
  %157 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %10, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %159 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %8, ptr %159, align 8, !tbaa !81
  %160 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %160, align 8, !tbaa !84
  %161 = call ptr @walk_gimple_seq(ptr noundef %158, ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  br label %162

162:                                              ; preds = %3, %3, %3, %3, %3, %3, %156
  %163 = getelementptr inbounds %struct.gimple_statement_omp, ptr %10, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %165 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %8, ptr %165, align 8, !tbaa !81
  %166 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 3
  store i8 1, ptr %166, align 8, !tbaa !84
  %167 = call ptr @walk_gimple_seq(ptr noundef %164, ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  br label %168

168:                                              ; preds = %153, %162, %26, %57, %90, %63, %60, %3
  %169 = phi i8 [ 0, %3 ], [ 1, %60 ], [ 1, %63 ], [ 1, %90 ], [ 1, %57 ], [ 1, %26 ], [ 1, %162 ], [ 1, %153 ]
  store i8 %169, ptr %1, align 1, !tbaa !46
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lookup_tramp_for_decl(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  br i1 %4, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %1) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %84, label %81

10:                                               ; preds = %3
  %11 = tail call ptr @pointer_map_insert(ptr noundef %6, ptr noundef %1) #16
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = tail call ptr @make_node_stat(i32 noundef 31) #16
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !46
  %19 = load ptr, ptr @trampoline_type, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 9) #16
  %23 = tail call ptr @build_index_type(ptr noundef %22) #16
  %24 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %25 = tail call ptr @build_array_type(ptr noundef %24, ptr noundef %23) #16
  %26 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = tail call ptr @get_identifier(ptr noundef nonnull @.str.12) #16
  %31 = tail call ptr @build_decl_stat(i32 noundef %29, i32 noundef 31, ptr noundef %30, ptr noundef %25) #16
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 3
  store i32 8, ptr %32, align 8, !tbaa !46
  %33 = load i64, ptr %31, align 8
  %34 = or i64 %33, 4398046511104
  store i64 %34, ptr %31, align 8
  %35 = tail call ptr @make_node_stat(i32 noundef 16) #16
  store ptr %35, ptr @trampoline_type, align 8, !tbaa !35
  %36 = tail call ptr @get_identifier(ptr noundef nonnull @.str.13) #16
  %37 = load ptr, ptr @trampoline_type, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 12
  store ptr %36, ptr %38, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 1
  store ptr %31, ptr %39, align 8, !tbaa !46
  tail call void @layout_type(ptr noundef %37) #16
  %40 = load ptr, ptr @trampoline_type, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 4
  store ptr %40, ptr %41, align 8, !tbaa !46
  br label %42

42:                                               ; preds = %14, %21
  %43 = phi ptr [ %40, %21 ], [ %19, %14 ]
  %44 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !46
  %45 = load i64, ptr %15, align 8
  %46 = or i64 %45, 262144
  store i64 %46, ptr %15, align 8
  %47 = tail call fastcc ptr @get_frame_type(ptr noundef %0)
  %48 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 4
  store ptr %47, ptr %48, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !46
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %62, label %69

58:                                               ; preds = %62
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %65, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !46
  %61 = icmp ult i32 %54, %60
  br i1 %61, label %62, label %67, !llvm.loop !55

62:                                               ; preds = %52, %58
  %63 = phi ptr [ %65, %58 ], [ %50, %52 ]
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %58, !llvm.loop !55

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  br label %69

69:                                               ; preds = %67, %52, %42
  %70 = phi ptr [ %49, %42 ], [ %49, %52 ], [ %68, %67 ]
  %71 = phi ptr [ %50, %42 ], [ %50, %52 ], [ %65, %67 ]
  %72 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  store ptr %71, ptr %72, align 8, !tbaa !46
  store ptr %15, ptr %70, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !46
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 %76, ptr %73, align 8, !tbaa !46
  br label %79

79:                                               ; preds = %69, %78
  store ptr %15, ptr %11, align 8, !tbaa !35
  %80 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 15
  store i8 1, ptr %80, align 1, !tbaa !105
  br label %81

81:                                               ; preds = %10, %79, %7
  %82 = phi ptr [ %8, %7 ], [ %11, %79 ], [ %11, %10 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %81, %7
  %85 = phi ptr [ null, %7 ], [ %83, %81 ]
  ret ptr %85
}

declare void @layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_static_chain(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = tail call ptr @build_addr(ptr noundef %9, ptr noundef %1)
  br label %34

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @get_chain_decl(ptr noundef %0)
  %13 = load ptr, ptr %0, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.nesting_info, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %34, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %30, %17 ], [ %13, %11 ]
  %19 = phi ptr [ %29, %17 ], [ %12, %11 ]
  %20 = tail call fastcc ptr @get_chain_field(ptr noundef %18)
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %24, ptr noundef %19) #16
  %26 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %27, ptr noundef %25, ptr noundef %20, ptr noundef null) #16
  %29 = tail call fastcc ptr @init_tmp_var(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2)
  %30 = load ptr, ptr %18, align 8, !tbaa !76
  %31 = getelementptr inbounds %struct.nesting_info, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %17, !llvm.loop !170

34:                                               ; preds = %17, %11, %7
  %35 = phi ptr [ %10, %7 ], [ %12, %11 ], [ %29, %17 ]
  ret ptr %35
}

declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remap_vla_decls(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.nesting_copy_body_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %2 ]
  tail call fastcc void @remap_vla_decls(ptr noundef nonnull %10, ptr noundef %1)
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !171

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %140, label %18

18:                                               ; preds = %14, %41
  %19 = phi ptr [ %43, %41 ], [ %16, %14 ]
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = call zeroext i8 @variably_modified_type_p(ptr noundef %25, ptr noundef null) #16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 67108864
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %24, align 8, !tbaa !46
  store ptr %34, ptr %4, align 8, !tbaa !35
  %35 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %19) #16
  store ptr %35, ptr %3, align 8, !tbaa !35
  %36 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %18, %23, %28, %38
  %42 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %140, label %18, !llvm.loop !172

45:                                               ; preds = %38, %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, i8 0, i64 160, i1 false)
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 7
  store ptr @nesting_copy_decl, ptr %46, align 8, !tbaa !115
  %47 = call ptr @pointer_map_create() #16
  %48 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  store ptr %47, ptr %48, align 8, !tbaa !118
  %49 = getelementptr inbounds %struct.nesting_copy_body_data, ptr %5, i64 0, i32 1
  store ptr %1, ptr %49, align 8, !tbaa !119
  %50 = icmp eq ptr %1, null
  %51 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 1
  %52 = getelementptr inbounds %struct.nesting_info, ptr %1, i64 0, i32 6
  %53 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 4
  br label %54

54:                                               ; preds = %45, %134
  %55 = phi ptr [ %19, %45 ], [ %136, %134 ]
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 32
  br i1 %58, label %59, label %134

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = call zeroext i8 @variably_modified_type_p(ptr noundef %61, ptr noundef null) #16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %134, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 67108864
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %134, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %60, align 8, !tbaa !46
  store ptr %70, ptr %4, align 8, !tbaa !35
  %71 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %55) #16
  store ptr %71, ptr %3, align 8, !tbaa !35
  %72 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %134, label %77

77:                                               ; preds = %74, %69
  %78 = call ptr @decl_function_context(ptr noundef nonnull %55) #16
  br i1 %50, label %134, label %79

79:                                               ; preds = %77, %84
  %80 = phi ptr [ %85, %84 ], [ %1, %77 ]
  %81 = getelementptr inbounds %struct.nesting_info, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = icmp eq ptr %82, %78
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %80, align 8, !tbaa !76
  %86 = icmp eq ptr %85, null
  br i1 %86, label %134, label %79, !llvm.loop !173

87:                                               ; preds = %79
  store ptr %82, ptr %5, align 8, !tbaa !121
  store ptr %82, ptr %51, align 8, !tbaa !122
  %88 = load ptr, ptr %52, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.tree_function_decl, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  store ptr %90, ptr %53, align 8, !tbaa !123
  %91 = load ptr, ptr %4, align 8, !tbaa !35
  %92 = call ptr @remap_type(ptr noundef %91, ptr noundef nonnull %5) #16
  store ptr %92, ptr %60, align 8, !tbaa !46
  br label %93

93:                                               ; preds = %102, %87
  %94 = phi ptr [ %92, %87 ], [ %104, %102 ]
  %95 = phi ptr [ %70, %87 ], [ %106, %102 ]
  %96 = load i64, ptr %94, align 8
  %97 = trunc i64 %96 to i16
  switch i16 %97, label %107 [
    i16 10, label %98
    i16 12, label %98
  ]

98:                                               ; preds = %93, %93
  %99 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 12
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  br label %93, !llvm.loop !174

107:                                              ; preds = %93, %98
  %108 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = icmp eq ptr %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %107
  %112 = load i64, ptr %109, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 35
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tree_decl_non_common, ptr %109, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = icmp eq ptr %117, null
  %119 = icmp eq ptr %94, %95
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 12
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  %124 = icmp eq ptr %109, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call ptr @remap_decl(ptr noundef nonnull %109, ptr noundef nonnull %5) #16
  store ptr %126, ptr %108, align 8, !tbaa !46
  br label %127

127:                                              ; preds = %125, %121, %115, %111, %107
  %128 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #16
  %129 = load ptr, ptr %3, align 8, !tbaa !35
  %130 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %55) #16
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %3, align 8, !tbaa !35
  call void @decl_value_expr_insert(ptr noundef nonnull %55, ptr noundef %133) #16
  br label %134

134:                                              ; preds = %84, %77, %74, %132, %127, %54, %59, %64
  %135 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %54, !llvm.loop !175

138:                                              ; preds = %134
  %139 = load ptr, ptr %48, align 8, !tbaa !118
  call void @pointer_map_destroy(ptr noundef %139) #16
  br label %140

140:                                              ; preds = %41, %14, %138
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal ptr @nesting_copy_decl(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = getelementptr inbounds %struct.nesting_copy_body_data, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.nesting_info, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  br label %28

11:                                               ; preds = %2
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 35
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @copy_decl_no_change(ptr noundef nonnull %0, ptr noundef %1) #16
  %21 = load ptr, ptr %16, align 8, !tbaa !46
  %22 = tail call ptr @remap_type(ptr noundef %21, ptr noundef %1) #16
  %23 = getelementptr inbounds %struct.tree_decl_non_common, ptr %20, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !46
  br label %28

24:                                               ; preds = %15, %11
  %25 = trunc i64 %12 to i16
  switch i16 %25, label %26 [
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
  ]

26:                                               ; preds = %24
  %27 = tail call ptr @copy_decl_no_change(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %28

28:                                               ; preds = %24, %24, %24, %26, %19, %9
  %29 = phi ptr [ %10, %9 ], [ %20, %19 ], [ %27, %26 ], [ %0, %24 ], [ %0, %24 ], [ %0, %24 ]
  ret ptr %29
}

declare ptr @remap_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @remap_decl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @contains_remapped_vars(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = tail call ptr @pointer_map_contains(ptr noundef %12, ptr noundef nonnull %4) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %3, %10, %15
  %18 = phi ptr [ %16, %15 ], [ null, %10 ], [ null, %3 ]
  ret ptr %18
}

declare ptr @copy_tree_body_r(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @copy_decl_no_change(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_unnest_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_finalize_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

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
attributes #10 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }

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
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = !{!57, !36, i64 48}
!57 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !58, i64 144, !60, i64 184, !61, i64 224, !62, i64 232, !63, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!58 = !{!"cgraph_local_info", !36, i64 0, !59, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!59 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!61 = !{!"cgraph_rtl_info", !41, i64 0}
!62 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!63 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!64 = !{!65, !36, i64 176}
!65 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !66, i64 240, !67, i64 248, !68, i64 256, !69, i64 272, !70, i64 432, !71, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!66 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!67 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!68 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!69 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!70 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!71 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{!73, !36, i64 8}
!73 = !{!"nesting_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 113, !37, i64 114}
!74 = distinct !{!74, !52, !53}
!75 = !{!73, !36, i64 48}
!76 = !{!73, !36, i64 0}
!77 = !{!73, !36, i64 96}
!78 = !{!73, !36, i64 88}
!79 = !{!73, !36, i64 16}
!80 = distinct !{!80, !52, !53}
!81 = !{!82, !36, i64 24}
!82 = !{!"walk_stmt_info", !83, i64 0, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !36, i64 48}
!83 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!84 = !{!82, !37, i64 40}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = !{!73, !36, i64 72}
!88 = !{!73, !36, i64 80}
!89 = distinct !{!89, !52, !53}
!90 = !{!91, !36, i64 0}
!91 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!92 = !{!93, !36, i64 0}
!93 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!94 = !{!73, !37, i64 112}
!95 = !{!73, !36, i64 24}
!96 = !{!97}
!97 = distinct !{!97, !98, !"gsi_last: argument 0"}
!98 = distinct !{!98, !"gsi_last"}
!99 = !{!91, !36, i64 8}
!100 = !{!83, !36, i64 0}
!101 = !{!83, !36, i64 8}
!102 = !{!83, !36, i64 16}
!103 = !{!42, !42, i64 0}
!104 = distinct !{!104, !52, !53}
!105 = !{!73, !37, i64 113}
!106 = !{!73, !36, i64 32}
!107 = distinct !{!107, !52, !53}
!108 = !{!109, !36, i64 56}
!109 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!110 = !{!73, !36, i64 104}
!111 = !{!109, !36, i64 64}
!112 = !{!73, !36, i64 56}
!113 = !{!73, !36, i64 64}
!114 = distinct !{!114, !52, !53}
!115 = !{!116, !36, i64 56}
!116 = !{!"nesting_copy_body_data", !117, i64 0, !36, i64 152}
!117 = !{!"copy_body_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !41, i64 96, !37, i64 100, !37, i64 101, !37, i64 102, !37, i64 103, !41, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144}
!118 = !{!116, !36, i64 48}
!119 = !{!116, !36, i64 152}
!120 = distinct !{!120, !52, !53}
!121 = !{!116, !36, i64 0}
!122 = !{!116, !36, i64 8}
!123 = !{!116, !36, i64 32}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = !{}
!127 = distinct !{!127, !52, !53}
!128 = !{!57, !36, i64 40}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = !{!57, !36, i64 0}
!132 = distinct !{!132, !52, !53}
!133 = !{!73, !36, i64 40}
!134 = distinct !{!134, !52, !53}
!135 = !{i8 0, i8 2}
!136 = distinct !{!136, !52, !53}
!137 = !{!82, !37, i64 41}
!138 = !{!82, !37, i64 42}
!139 = distinct !{!139, !52, !53}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = !{!65, !36, i64 448}
!144 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!145 = !{!93, !36, i64 8}
!146 = distinct !{!146, !52, !53}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_last: argument 0"}
!152 = distinct !{!152, !"gsi_last"}
!153 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!154 = !{i64 0, i64 8, !35}
!155 = !{!156, !36, i64 32}
!156 = !{!"gimple_omp_for_iter", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = distinct !{!161, !52, !53}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = distinct !{!164, !52, !53}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = !{!73, !37, i64 114}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
