; ModuleID = 'tree-dfa.c'
source_filename = "tree-dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"*referenced_vars\00", align 1
@pass_referenced_vars = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @find_referenced_vars, ptr null, ptr null, i32 0, i32 55, i32 12, i32 16, i32 0, i32 1, i32 1 } }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tree-dfa.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\0AReferenced variables in %s: %u\0A\0A\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Variable: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"<nil>\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c", UID D.%u\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c", is addressable\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c", is global\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c", is volatile\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c", call clobbered\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c", call used\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c", NO_ALIAS (does not alias other NO_ALIAS symbols)\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c", NO_ALIAS_GLOBAL (does not alias other NO_ALIAS symbols and global vars)\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c", NO_ALIAS_ANYTHING (does not alias any other symbols)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c", default def: \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c", initial: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%-30s%-13s%12s\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"%-30s%13lu%11lu%c\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%-43s%11lu%c\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"\0ADFA Statistics for %s\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"---------------------------------------------------------\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"  Number of  \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"  instances  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"used \00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Referenced variables\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Variables annotated\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"USE operands\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"DEF operands\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"VUSE operands\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"VDEF operands\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"PHI nodes\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"PHI arguments\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Total memory used by DFA/SSA data\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"Average number of arguments per PHI node: %.1f (max: %ld)\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.40 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !63
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !62 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !63
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !62 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !73

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !67
  %11 = load i8, ptr %3, align 1, !tbaa !74
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !62 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !73

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !67
  %11 = load i8, ptr %3, align 1, !tbaa !74
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !62 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !73

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !67
  %11 = load i8, ptr %3, align 1, !tbaa !74
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !63
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !62 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !73

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i8 %12, ptr %4, align 1, !tbaa !74
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !62 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !73

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i8 %12, ptr %4, align 1, !tbaa !74
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !62 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !73

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !75
  store i8 %12, ptr %4, align 1, !tbaa !74
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !62 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !62 {
  %2 = load i32, ptr %0, align 8, !tbaa !77
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !62 {
  %2 = load i32, ptr %0, align 8, !tbaa !77
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !62 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !78
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !62 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !78
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !62 {
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
  br i1 %23, label %7, label %24, !llvm.loop !79

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !62 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @find_referenced_vars() #9 !prof !82 !PGOFuncName !83 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %111, label %21, !prof !91

12:                                               ; preds = %105, %102
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = load ptr, ptr @cfun, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %111, label %21, !prof !92, !llvm.loop !93

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %14, %12 ], [ %8, %0 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !94, !noalias !95
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33, !prof !98

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !74, !noalias !95
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !99

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !100, !noalias !95
  br label %33

33:                                               ; preds = %31, %27, %21
  %34 = phi ptr [ %32, %31 ], [ null, %27 ], [ null, %21 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !99

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !102, !noalias !95
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi ptr [ %37, %36 ], [ null, %33 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %102, label %41, !prof !104

41:                                               ; preds = %38, %98
  %42 = phi ptr [ %100, %98 ], [ %39, %38 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  %44 = load i32, ptr %43, align 8
  %45 = trunc i32 %44 to i8
  switch i8 %45, label %46 [
    i8 2, label %98
    i8 16, label %75
  ], !prof !107

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gimple_statement_base, ptr %43, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !74
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %98, label %50, !prof !108

50:                                               ; preds = %46, %68
  %51 = phi i64 [ %71, %68 ], [ 0, %46 ]
  %52 = load i32, ptr %43, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -10
  %55 = icmp ult i32 %54, -9
  br i1 %55, label %68, label %56, !prof !109

56:                                               ; preds = %50
  %57 = zext nneg i32 %53 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !78
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !110
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65, !prof !109

64:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds i8, ptr %43, i64 %62
  %67 = getelementptr inbounds ptr, ptr %66, i64 %51
  br label %68

68:                                               ; preds = %65, %50
  %69 = phi ptr [ %67, %65 ], [ null, %50 ]
  %70 = call ptr @walk_tree_1(ptr noundef %69, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %71 = add nuw nsw i64 %51, 1
  %72 = load i32, ptr %47, align 4, !tbaa !74
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %50, label %98, !prof !111, !llvm.loop !112

75:                                               ; preds = %41
  %76 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 3
  %77 = call ptr @walk_tree_1(ptr noundef nonnull %76, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %78 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !74
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 1
  br label %83

83:                                               ; preds = %89, %81
  %84 = phi i64 [ 0, %81 ], [ %94, %89 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %85 = trunc i64 %84 to i32
  %86 = load i32, ptr %82, align 8, !tbaa !74
  %87 = icmp ult i32 %86, %85
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %89

89:                                               ; preds = %88, %83
  %90 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 4, i64 %84, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !113
  %92 = load ptr, ptr %91, align 8, !tbaa !63
  store ptr %92, ptr %1, align 8, !tbaa !63
  %93 = call ptr @walk_tree_1(ptr noundef nonnull %1, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %94 = add nuw nsw i64 %84, 1
  %95 = load i32, ptr %78, align 4, !tbaa !74
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %83, label %98, !llvm.loop !115

98:                                               ; preds = %89, %68, %75, %46, %41
  %99 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %42, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !116
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %41, !prof !117, !llvm.loop !118

102:                                              ; preds = %98, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %22) #16
  %103 = load ptr, ptr %2, align 8, !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %12, label %105, !prof !120

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %109, %105 ], [ %103, %102 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !105
  call void @find_referenced_vars_in(ptr noundef %107)
  %108 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %106, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !116
  %110 = icmp eq ptr %109, null
  br i1 %110, label %12, label %105, !prof !120, !llvm.loop !121

111:                                              ; preds = %12, %0
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @create_var_ann(ptr noundef %0) local_unnamed_addr #10 !prof !122 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !123

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef nonnull @.str.2) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 32, label %8
    i16 34, label %8
    i16 36, label %8
  ], !prof !124

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %4, %4, %4, %7
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #16
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %16 [
    i16 32, label %12
    i16 34, label %14
  ], !prof !125

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %21

16:                                               ; preds = %8
  %17 = and i64 %10, 65535
  %18 = icmp eq i64 %17, 36
  %19 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %20 = select i1 %18, ptr %19, ptr null, !prof !120
  br label %21

21:                                               ; preds = %14, %16, %12
  %22 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %20, %16 ]
  store ptr %9, ptr %22, align 8, !tbaa !63
  ret ptr %9
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @renumber_gimple_stmt_uids() local_unnamed_addr #11 !prof !126 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 13
  store i32 0, ptr %2, align 8, !tbaa !127
  %3 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7, !prof !128

7:                                                ; preds = %0, %38
  %8 = phi ptr [ %40, %38 ], [ %5, %0 ]
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !94, !noalias !129
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19, !prof !132

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !74, !noalias !129
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !133

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !100, !noalias !129
  br label %19

19:                                               ; preds = %17, %13, %7
  %20 = phi ptr [ %18, %17 ], [ null, %13 ], [ null, %7 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !133

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !102, !noalias !129
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi ptr [ %23, %22 ], [ null, %19 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27, !prof !134

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %36, %27 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = load ptr, ptr @cfun, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !127
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !127
  %34 = getelementptr inbounds %struct.gimple_statement_base, ptr %29, i64 0, i32 1
  store i32 %32, ptr %34, align 4, !tbaa !74
  %35 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %28, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %27, !prof !135, !llvm.loop !136

38:                                               ; preds = %27, %24
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !63
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %7, !prof !137, !llvm.loop !138

42:                                               ; preds = %38, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @renumber_gimple_stmt_uids_in_blocks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !62 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 13
  store i32 0, ptr %5, align 8, !tbaa !127
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %2
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %56
  %10 = phi i64 [ 0, %7 ], [ %57, %56 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #16
  %13 = load ptr, ptr %3, align 8, !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %24, %15 ], [ %13, %9 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = load ptr, ptr @cfun, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !127
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !127
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 1
  store i32 %20, ptr %22, align 4, !tbaa !74
  %23 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !116
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !139

26:                                               ; preds = %15, %9
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !94, !noalias !140
  %29 = and i32 %28, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !74, !noalias !140
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !100, !noalias !140
  br label %37

37:                                               ; preds = %35, %31, %26
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], [ null, %26 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !102, !noalias !140
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %54, %45 ], [ %43, %42 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !105
  %48 = load ptr, ptr @cfun, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !127
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !127
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %47, i64 0, i32 1
  store i32 %50, ptr %52, align 4, !tbaa !74
  %53 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %45, !llvm.loop !143

56:                                               ; preds = %45, %42
  %57 = add nuw nsw i64 %10, 1
  %58 = icmp eq i64 %57, %8
  br i1 %58, label %59, label %9, !llvm.loop !144

59:                                               ; preds = %56, %2
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_rename_temp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !62 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -13
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 134217728
  store i64 %14, ptr %12, align 8
  br label %15

15:                                               ; preds = %2, %11
  %16 = load ptr, ptr @cfun, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !146
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call zeroext i8 @add_referenced_var(ptr noundef %3), !range !150
  tail call void @mark_sym_for_renaming(ptr noundef %3) #16
  br label %25

25:                                               ; preds = %15, %23, %20
  ret ptr %3
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @add_referenced_var(ptr noundef %0) local_unnamed_addr #10 !prof !151 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %9 [
    i16 32, label %5
    i16 34, label %7
  ], !prof !152

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %14

9:                                                ; preds = %1
  %10 = and i64 %3, 65535
  %11 = icmp eq i64 %10, 36
  %12 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %13 = select i1 %11, ptr %12, ptr null, !prof !120
  br label %14

14:                                               ; preds = %9, %7, %5
  %15 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %13, %9 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !153

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 144, ptr noundef nonnull @.str.2) #16
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr %15, align 8, !tbaa !63
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %40, !prof !154

21:                                               ; preds = %18
  %22 = load i64, ptr %0, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %24 [
    i16 32, label %25
    i16 34, label %25
    i16 36, label %25
  ], !prof !124

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @.str.2) #16
  br label %25

25:                                               ; preds = %24, %21, %21, %21
  %26 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #16
  %27 = load i64, ptr %0, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %33 [
    i16 32, label %29
    i16 34, label %31
  ], !prof !125

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %38

33:                                               ; preds = %25
  %34 = and i64 %27, 65535
  %35 = icmp eq i64 %34, 36
  %36 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %37 = select i1 %35, ptr %36, ptr null, !prof !120
  br label %38

38:                                               ; preds = %29, %31, %33
  %39 = phi ptr [ %30, %29 ], [ %32, %31 ], [ %37, %33 ]
  store ptr %26, ptr %39, align 8, !tbaa !63
  br label %40

40:                                               ; preds = %18, %38
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !78
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %47, label %46, !prof !155

46:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 602, ptr noundef nonnull @.str.2) #16
  br label %47

47:                                               ; preds = %40, %46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  %48 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !74
  %50 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %49, ptr %50, align 4, !tbaa !156
  %51 = load ptr, ptr @cfun, align 8, !tbaa !63
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !145
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !153

55:                                               ; preds = %47
  %56 = load ptr, ptr %53, align 8, !tbaa !146
  br label %57

57:                                               ; preds = %55, %47
  %58 = phi ptr [ %56, %55 ], [ null, %47 ]
  %59 = call ptr @htab_find_with_hash(ptr noundef %58, ptr noundef nonnull %2, i32 noundef %49) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61, !prof !160

61:                                               ; preds = %57
  %62 = icmp eq ptr %59, %0
  br i1 %62, label %74, label %63, !prof !161

63:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @.str.2) #16
  br label %74

64:                                               ; preds = %57
  %65 = load ptr, ptr @cfun, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !145
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69, !prof !162

69:                                               ; preds = %64
  %70 = load ptr, ptr %67, align 8, !tbaa !146
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ null, %64 ]
  %73 = call ptr @htab_find_slot_with_hash(ptr noundef %72, ptr noundef nonnull %2, i32 noundef %49, i32 noundef 1) #16
  store ptr %0, ptr %73, align 8, !tbaa !63
  br label %74

74:                                               ; preds = %61, %63, %71
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  br i1 %60, label %75, label %86, !prof !160

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !74
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79, !prof !163

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !74
  %82 = load ptr, ptr @current_function_decl, align 8, !tbaa !63
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %86, !prof !164

84:                                               ; preds = %79
  %85 = call ptr @walk_tree_1(ptr noundef nonnull %76, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %86

86:                                               ; preds = %74, %75, %79, %84
  %87 = phi i8 [ 1, %84 ], [ 1, %79 ], [ 1, %75 ], [ 0, %74 ]
  ret i8 %87
}

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_referenced_vars(ptr noundef %0) local_unnamed_addr #12 !prof !62 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !63
  %3 = tail call ptr @get_name(ptr noundef %2) #16
  %4 = load ptr, ptr @cfun, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !146
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  %12 = tail call i64 @htab_elements(ptr noundef %11) #16
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %13)
  %15 = load ptr, ptr @cfun, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %17, align 8, !tbaa !146
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi ptr [ %20, %19 ], [ null, %10 ]
  %23 = getelementptr inbounds %struct.htab, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !165
  %25 = tail call i64 @htab_size(ptr noundef %22) #16
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  br label %27

27:                                               ; preds = %31, %21
  %28 = phi ptr [ %24, %21 ], [ %32, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = icmp ult ptr %29, inttoptr (i64 2 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds ptr, ptr %28, i64 1
  %33 = icmp ult ptr %32, %26
  br i1 %33, label %27, label %34, !llvm.loop !167

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %28, %27 ], [ %32, %31 ]
  %36 = icmp ult ptr %35, %26
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !63
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  %41 = icmp ult ptr %35, %26
  br i1 %41, label %42, label %58

42:                                               ; preds = %39, %55
  %43 = phi ptr [ %56, %55 ], [ %40, %39 ]
  %44 = phi ptr [ %49, %55 ], [ %35, %39 ]
  %45 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 10, i64 1, ptr %0)
  tail call void @dump_variable(ptr noundef %0, ptr noundef %43)
  br label %46

46:                                               ; preds = %51, %42
  %47 = phi ptr [ %44, %42 ], [ %49, %51 ]
  %48 = phi ptr [ undef, %42 ], [ %54, %51 ]
  %49 = getelementptr inbounds ptr, ptr %47, i64 1
  %50 = icmp ult ptr %49, %26
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr %49, align 8, !tbaa !63
  %53 = icmp ult ptr %52, inttoptr (i64 2 to ptr)
  %54 = select i1 %53, ptr %48, ptr %52
  br i1 %53, label %46, label %55

55:                                               ; preds = %51, %46
  %56 = phi ptr [ null, %46 ], [ %54, %51 ]
  %57 = icmp ult ptr %49, %26
  br i1 %57, label %42, label %58, !llvm.loop !168

58:                                               ; preds = %55, %39
  %59 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_variable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !62 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %12 [
    i16 10, label %11
    i16 12, label %11
  ]

11:                                               ; preds = %6, %6
  tail call void @dump_points_to_info_for(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %1, %2 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 5, i64 1, ptr %0)
  br label %216

20:                                               ; preds = %15
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !78
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %21) #16
  %22 = load i64, ptr %16, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %28 [
    i16 32, label %24
    i16 34, label %26
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_var_decl, ptr %16, i64 0, i32 1
  br label %33

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_parm_decl, ptr %16, i64 0, i32 2
  br label %33

28:                                               ; preds = %20
  %29 = and i64 %22, 65535
  %30 = icmp eq i64 %29, 36
  %31 = getelementptr inbounds %struct.tree_result_decl, ptr %16, i64 0, i32 1
  %32 = select i1 %30, ptr %31, ptr null
  br label %33

33:                                               ; preds = %28, %26, %24
  %34 = phi ptr [ %25, %24 ], [ %27, %26 ], [ %32, %28 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !63
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi ptr [ %37, %36 ], [ null, %33 ]
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !74
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %41)
  %43 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0)
  %44 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = load i32, ptr @dump_flags, align 4, !tbaa !78
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %45, i32 noundef %46) #16
  %47 = load i64, ptr %16, align 8
  %48 = and i64 %47, 262144
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr %0)
  br label %52

52:                                               ; preds = %50, %38
  %53 = load i64, ptr %16, align 8
  %54 = and i64 %53, 67108864
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = lshr i64 %58, 25
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  br label %62

62:                                               ; preds = %52, %56
  %63 = phi i8 [ 1, %52 ], [ %61, %56 ]
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 11, i64 1, ptr %0)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i64, ptr %16, align 8
  %69 = and i64 %68, 524288
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 13, i64 1, ptr %0)
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i64, ptr %16, align 8
  %75 = and i64 %74, 67108864
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 33554432
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = and i64 %74, 65535
  %84 = icmp eq i64 %83, 33
  br i1 %84, label %109, label %85

85:                                               ; preds = %82
  %86 = and i64 %74, 135266304
  %87 = icmp eq i64 %86, 135266304
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load ptr, ptr %44, align 8, !tbaa !74
  %90 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 2048
  %93 = icmp eq i32 %92, 0
  %94 = and i64 %74, 134479872
  %95 = icmp eq i64 %94, 0
  %96 = or i1 %93, %95
  br i1 %96, label %109, label %100

97:                                               ; preds = %85
  %98 = and i64 %74, 134479872
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %88, %97
  %101 = load ptr, ptr @cfun, align 8, !tbaa !63
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !145
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 4
  %105 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %104, ptr noundef nonnull %16) #16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %77, %73, %100
  %108 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %0)
  br label %184

109:                                              ; preds = %82, %88, %97, %100
  %110 = load i64, ptr %16, align 8
  %111 = and i64 %110, 67108864
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %182

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 33554432
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %182

118:                                              ; preds = %113
  %119 = and i64 %110, 65535
  %120 = icmp eq i64 %119, 33
  br i1 %120, label %143, label %121

121:                                              ; preds = %118
  %122 = and i64 %110, 135266304
  %123 = icmp eq i64 %122, 135266304
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load ptr, ptr %44, align 8, !tbaa !74
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 2048
  %129 = icmp eq i32 %128, 0
  %130 = and i64 %110, 134479872
  %131 = icmp eq i64 %130, 0
  %132 = or i1 %129, %131
  br i1 %132, label %143, label %136

133:                                              ; preds = %121
  %134 = and i64 %110, 134479872
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %124, %133
  %137 = load ptr, ptr @cfun, align 8, !tbaa !63
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !145
  %140 = getelementptr inbounds %struct.gimple_df, ptr %139, i64 0, i32 4
  %141 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %140, ptr noundef nonnull %16) #16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %182

143:                                              ; preds = %133, %136, %118, %124
  %144 = load i64, ptr %16, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 33
  br i1 %146, label %184, label %147

147:                                              ; preds = %143
  %148 = and i64 %144, 201326592
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i64, ptr %114, align 8
  %152 = and i64 %151, 33554432
  %153 = icmp eq i64 %152, 0
  %154 = and i64 %144, 1048576
  %155 = icmp eq i64 %154, 0
  %156 = or i1 %155, %153
  br i1 %156, label %166, label %160

157:                                              ; preds = %147
  %158 = and i64 %144, 1048576
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %150, %157
  %161 = load ptr, ptr %44, align 8, !tbaa !74
  %162 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 2048
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %160, %157, %150
  %167 = and i64 %144, 134217728
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i64, ptr %114, align 8
  %171 = and i64 %170, 33554432
  %172 = and i64 %144, 262144
  %173 = or disjoint i64 %171, %172
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %169, %166
  %176 = load ptr, ptr @cfun, align 8, !tbaa !63
  %177 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !145
  %179 = getelementptr inbounds %struct.gimple_df, ptr %178, i64 0, i32 5
  %180 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %179, ptr noundef nonnull %16) #16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %136, %109, %113, %175
  %183 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 11, i64 1, ptr %0)
  br label %184

184:                                              ; preds = %143, %160, %169, %175, %182, %107
  %185 = icmp eq ptr %39, null
  br i1 %185, label %195, label %186

186:                                              ; preds = %184
  %187 = load i8, ptr %39, align 8
  %188 = and i8 %187, 96
  switch i8 %188, label %195 [
    i8 32, label %189
    i8 64, label %191
    i8 96, label %193
  ]

189:                                              ; preds = %186
  %190 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 50, i64 1, ptr %0)
  br label %195

191:                                              ; preds = %186
  %192 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 73, i64 1, ptr %0)
  br label %195

193:                                              ; preds = %186
  %194 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 54, i64 1, ptr %0)
  br label %195

195:                                              ; preds = %186, %184, %191, %193, %189
  %196 = load ptr, ptr @cfun, align 8, !tbaa !63
  %197 = icmp eq ptr %196, null
  br i1 %197, label %206, label %198

198:                                              ; preds = %195
  %199 = tail call ptr @gimple_default_def(ptr noundef nonnull %196, ptr noundef nonnull %16)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %198
  %202 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %0)
  %203 = load ptr, ptr @cfun, align 8, !tbaa !63
  %204 = tail call ptr @gimple_default_def(ptr noundef %203, ptr noundef nonnull %16)
  %205 = load i32, ptr @dump_flags, align 4, !tbaa !78
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %204, i32 noundef %205) #16
  br label %206

206:                                              ; preds = %201, %198, %195
  %207 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !74
  %209 = icmp eq ptr %208, null
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr %0)
  %212 = load ptr, ptr %207, align 8, !tbaa !74
  %213 = load i32, ptr @dump_flags, align 4, !tbaa !78
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %212, i32 noundef %213) #16
  br label %214

214:                                              ; preds = %210, %206
  %215 = tail call i32 @fputc(i32 10, ptr %0)
  br label %216

216:                                              ; preds = %214, %18
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_referenced_vars() local_unnamed_addr #12 !prof !62 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !63
  tail call void @dump_referenced_vars(ptr noundef %1)
  ret void
}

declare void @dump_points_to_info_for(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gimple_default_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !169 {
  %3 = alloca %struct.tree_decl_minimal, align 8
  %4 = alloca %struct.tree_ssa_name, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #16
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
    i16 141, label %7
  ], !prof !170

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
  ]

12:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 557, ptr noundef nonnull @.str.2) #16
  br label %13

13:                                               ; preds = %7, %7, %2, %2, %7, %2, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !171
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !156
  %18 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !145
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = call ptr @htab_find_with_hash(ptr noundef %21, ptr noundef nonnull %4, i32 noundef %16) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  ret ptr %22
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_variable(ptr noundef %0) local_unnamed_addr #12 !prof !62 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !63
  tail call void @dump_variable(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_dfa_stats(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !62 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !174
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !63
  %5 = tail call ptr %3(ptr noundef %4, i32 noundef 2) #16
  %6 = load ptr, ptr @cfun, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 8, !tbaa !146
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  %14 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = tail call i64 @htab_size(ptr noundef %13) #16
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %22, %12
  %19 = phi ptr [ %15, %12 ], [ %23, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp ult ptr %20, inttoptr (i64 2 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %19, i64 1
  %24 = icmp ult ptr %23, %17
  br i1 %24, label %18, label %25, !llvm.loop !167

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %19, %18 ], [ %23, %22 ]
  %27 = icmp ult ptr %26, %17
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  %32 = icmp ult ptr %26, %17
  br i1 %32, label %33, label %70

33:                                               ; preds = %30, %67
  %34 = phi ptr [ %68, %67 ], [ %31, %30 ]
  %35 = phi ptr [ %61, %67 ], [ %26, %30 ]
  %36 = phi i64 [ %57, %67 ], [ 0, %30 ]
  %37 = load i64, ptr %34, align 8
  %38 = trunc i64 %37 to i16
  switch i16 %38, label %43 [
    i16 32, label %39
    i16 34, label %41
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_var_decl, ptr %34, i64 0, i32 1
  br label %48

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.tree_parm_decl, ptr %34, i64 0, i32 2
  br label %48

43:                                               ; preds = %33
  %44 = and i64 %37, 65535
  %45 = icmp eq i64 %44, 36
  %46 = getelementptr inbounds %struct.tree_result_decl, ptr %34, i64 0, i32 1
  %47 = select i1 %45, ptr %46, ptr null
  br label %48

48:                                               ; preds = %43, %41, %39
  %49 = phi ptr [ %40, %39 ], [ %42, %41 ], [ %47, %43 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %49, align 8, !tbaa !63
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %52, %51 ], [ null, %48 ]
  %55 = icmp ne ptr %54, null
  %56 = zext i1 %55 to i64
  %57 = add nuw nsw i64 %36, %56
  br label %58

58:                                               ; preds = %63, %53
  %59 = phi ptr [ %35, %53 ], [ %61, %63 ]
  %60 = phi ptr [ undef, %53 ], [ %66, %63 ]
  %61 = getelementptr inbounds ptr, ptr %59, i64 1
  %62 = icmp ult ptr %61, %17
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load ptr, ptr %61, align 8, !tbaa !63
  %65 = icmp ult ptr %64, inttoptr (i64 2 to ptr)
  %66 = select i1 %65, ptr %60, ptr %64
  br i1 %65, label %58, label %67

67:                                               ; preds = %63, %58
  %68 = phi ptr [ null, %58 ], [ %66, %63 ]
  %69 = icmp ult ptr %61, %17
  br i1 %69, label %33, label %70, !llvm.loop !182

70:                                               ; preds = %67, %30
  %71 = phi i64 [ 0, %30 ], [ %57, %67 ]
  %72 = load ptr, ptr @cfun, align 8, !tbaa !63
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !84
  %75 = load ptr, ptr %74, align 8, !tbaa !86
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !90
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %255, label %94

81:                                               ; preds = %247, %139
  %82 = phi i64 [ %102, %139 ], [ %192, %247 ]
  %83 = phi i64 [ %101, %139 ], [ %232, %247 ]
  %84 = phi i64 [ %97, %139 ], [ %243, %247 ]
  %85 = phi i64 [ %96, %139 ], [ %251, %247 ]
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !88
  %88 = load ptr, ptr @cfun, align 8, !tbaa !63
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !84
  %91 = getelementptr inbounds %struct.control_flow_graph, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !90
  %93 = icmp eq ptr %87, %92
  br i1 %93, label %255, label %94, !llvm.loop !183

94:                                               ; preds = %70, %81
  %95 = phi ptr [ %87, %81 ], [ %77, %70 ]
  %96 = phi i64 [ %85, %81 ], [ 0, %70 ]
  %97 = phi i64 [ %84, %81 ], [ 0, %70 ]
  %98 = phi i64 [ %123, %81 ], [ 0, %70 ]
  %99 = phi i64 [ %122, %81 ], [ 0, %70 ]
  %100 = phi i64 [ %121, %81 ], [ 0, %70 ]
  %101 = phi i64 [ %83, %81 ], [ 0, %70 ]
  %102 = phi i64 [ %82, %81 ], [ 0, %70 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %95) #16
  %103 = load ptr, ptr %2, align 8, !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105

105:                                              ; preds = %94, %105
  %106 = phi ptr [ %118, %105 ], [ %103, %94 ]
  %107 = phi i64 [ %116, %105 ], [ %98, %94 ]
  %108 = phi i64 [ %115, %105 ], [ %99, %94 ]
  %109 = phi i64 [ %111, %105 ], [ %100, %94 ]
  %110 = load ptr, ptr %106, align 8, !tbaa !105
  %111 = add nsw i64 %109, 1
  %112 = getelementptr inbounds %struct.gimple_statement_phi, ptr %110, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !74
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %108, %114
  %116 = call i64 @llvm.umax.i64(i64 %107, i64 %114)
  %117 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %106, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !116
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %105, !llvm.loop !184

120:                                              ; preds = %105, %94
  %121 = phi i64 [ %100, %94 ], [ %111, %105 ]
  %122 = phi i64 [ %99, %94 ], [ %115, %105 ]
  %123 = phi i64 [ %98, %94 ], [ %116, %105 ]
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 13
  %125 = load i32, ptr %124, align 8, !tbaa !94, !noalias !185
  %126 = and i32 %125, 512
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !74, !noalias !185
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %130, align 8, !tbaa !100, !noalias !185
  br label %134

134:                                              ; preds = %132, %128, %120
  %135 = phi ptr [ %133, %132 ], [ null, %128 ], [ null, %120 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %135, align 8, !tbaa !102, !noalias !185
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi ptr [ %138, %137 ], [ null, %134 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %81, label %142

142:                                              ; preds = %139, %247
  %143 = phi ptr [ %253, %247 ], [ %140, %139 ]
  %144 = phi i64 [ %251, %247 ], [ %96, %139 ]
  %145 = phi i64 [ %243, %247 ], [ %97, %139 ]
  %146 = phi i64 [ %232, %247 ], [ %101, %139 ]
  %147 = phi i64 [ %192, %247 ], [ %102, %139 ]
  %148 = load ptr, ptr %143, align 8, !tbaa !105
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 255
  %151 = add nsw i32 %150, -10
  %152 = icmp ult i32 %151, -9
  br i1 %152, label %156, label %153

153:                                              ; preds = %142
  %154 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %148, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !74
  br label %156

156:                                              ; preds = %153, %142
  %157 = phi ptr [ %155, %153 ], [ null, %142 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %156
  %160 = and i32 %149, 254
  %161 = add nsw i32 %160, -10
  %162 = icmp ult i32 %161, -4
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %148, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !74
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %157, align 8, !tbaa !188
  br label %169

169:                                              ; preds = %167, %163, %159, %156
  %170 = phi ptr [ %157, %156 ], [ %157, %159 ], [ %157, %163 ], [ %168, %167 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %170, align 8, !tbaa !188
  br label %174

174:                                              ; preds = %172, %169
  %175 = phi ptr [ %173, %172 ], [ %170, %169 ]
  %176 = phi i8 [ 0, %172 ], [ 1, %169 ]
  br i1 %171, label %189, label %177

177:                                              ; preds = %174, %185
  %178 = phi i32 [ %181, %185 ], [ 0, %174 ]
  %179 = phi i8 [ %187, %185 ], [ %176, %174 ]
  %180 = phi ptr [ %186, %185 ], [ %175, %174 ]
  %181 = add nuw nsw i32 %178, 1
  %182 = icmp eq ptr %180, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr %180, align 8, !tbaa !188
  br label %185

185:                                              ; preds = %183, %177
  %186 = phi ptr [ %184, %183 ], [ %180, %177 ]
  %187 = phi i8 [ %179, %183 ], [ 1, %177 ]
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %177, label %189, !llvm.loop !190

189:                                              ; preds = %185, %174
  %190 = phi i32 [ 0, %174 ], [ %181, %185 ]
  %191 = zext nneg i32 %190 to i64
  %192 = add nsw i64 %147, %191
  br i1 %152, label %196, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %148, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !74
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi ptr [ %195, %193 ], [ null, %189 ]
  %198 = icmp eq ptr %197, null
  br i1 %198, label %209, label %199

199:                                              ; preds = %196
  %200 = and i32 %149, 254
  %201 = add nsw i32 %200, -10
  %202 = icmp ult i32 %201, -4
  br i1 %202, label %209, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %148, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !74
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %197, align 8, !tbaa !191
  br label %209

209:                                              ; preds = %207, %203, %199, %196
  %210 = phi ptr [ %197, %196 ], [ %197, %199 ], [ %197, %203 ], [ %208, %207 ]
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %210, align 8, !tbaa !191
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi ptr [ %213, %212 ], [ %210, %209 ]
  %216 = phi i8 [ 0, %212 ], [ 1, %209 ]
  br i1 %211, label %229, label %217

217:                                              ; preds = %214, %225
  %218 = phi i32 [ %221, %225 ], [ 0, %214 ]
  %219 = phi i8 [ %227, %225 ], [ %216, %214 ]
  %220 = phi ptr [ %226, %225 ], [ %215, %214 ]
  %221 = add nuw nsw i32 %218, 1
  %222 = icmp eq ptr %220, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %217
  %224 = load ptr, ptr %220, align 8, !tbaa !191
  br label %225

225:                                              ; preds = %217, %223
  %226 = phi ptr [ %224, %223 ], [ %220, %217 ]
  %227 = phi i8 [ %219, %223 ], [ 1, %217 ]
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %217, label %229, !llvm.loop !190

229:                                              ; preds = %225, %214
  %230 = phi i32 [ 0, %214 ], [ %221, %225 ]
  %231 = zext nneg i32 %230 to i64
  %232 = add nsw i64 %146, %231
  %233 = and i32 %149, 254
  %234 = add nsw i32 %233, -10
  %235 = icmp ult i32 %234, -4
  br i1 %235, label %239, label %236

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %148, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !74
  br label %239

239:                                              ; preds = %236, %229
  %240 = phi ptr [ %238, %236 ], [ null, %229 ]
  %241 = icmp ne ptr %240, null
  %242 = zext i1 %241 to i64
  %243 = add nsw i64 %145, %242
  br i1 %235, label %247, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %148, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !74
  br label %247

247:                                              ; preds = %244, %239
  %248 = phi ptr [ %246, %244 ], [ null, %239 ]
  %249 = icmp ne ptr %248, null
  %250 = zext i1 %249 to i64
  %251 = add nsw i64 %144, %250
  %252 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %143, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !116
  %254 = icmp eq ptr %253, null
  br i1 %254, label %81, label %142, !llvm.loop !193

255:                                              ; preds = %81, %70
  %256 = phi i64 [ 0, %70 ], [ %82, %81 ]
  %257 = phi i64 [ 0, %70 ], [ %83, %81 ]
  %258 = phi i64 [ 0, %70 ], [ %121, %81 ]
  %259 = phi i64 [ 0, %70 ], [ %122, %81 ]
  %260 = phi i64 [ 0, %70 ], [ %123, %81 ]
  %261 = phi i64 [ 0, %70 ], [ %84, %81 ]
  %262 = phi i64 [ 0, %70 ], [ %85, %81 ]
  %263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %5)
  %264 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %265 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
  %266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28)
  %267 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %268 = load ptr, ptr @cfun, align 8, !tbaa !63
  %269 = getelementptr inbounds %struct.function, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !145
  %271 = icmp eq ptr %270, null
  br i1 %271, label %274, label %272

272:                                              ; preds = %255
  %273 = load ptr, ptr %270, align 8, !tbaa !146
  br label %274

274:                                              ; preds = %255, %272
  %275 = phi ptr [ %273, %272 ], [ null, %255 ]
  %276 = call i64 @htab_elements(ptr noundef %275) #16
  %277 = shl i64 %276, 3
  %278 = load ptr, ptr @cfun, align 8, !tbaa !63
  %279 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !145
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %274
  %283 = load ptr, ptr %280, align 8, !tbaa !146
  br label %284

284:                                              ; preds = %274, %282
  %285 = phi ptr [ %283, %282 ], [ null, %274 ]
  %286 = call i64 @htab_elements(ptr noundef %285) #16
  %287 = icmp ult i64 %277, 10240
  %288 = icmp ult i64 %277, 10485760
  %289 = select i1 %288, i64 10, i64 20
  %290 = select i1 %287, i64 0, i64 %289
  %291 = lshr i64 %277, %290
  %292 = select i1 %288, i32 107, i32 77
  %293 = select i1 %287, i32 98, i32 %292
  %294 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.29, i64 noundef %286, i64 noundef %291, i32 noundef %293)
  %295 = shl i64 %71, 4
  %296 = icmp ult i64 %295, 10240
  %297 = icmp ult i64 %295, 10485760
  %298 = select i1 %297, i64 10, i64 20
  %299 = select i1 %296, i64 0, i64 %298
  %300 = lshr i64 %295, %299
  %301 = select i1 %297, i32 107, i32 77
  %302 = select i1 %296, i32 98, i32 %301
  %303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.30, i64 noundef %71, i64 noundef %300, i32 noundef %302)
  %304 = shl i64 %257, 3
  %305 = icmp ult i64 %304, 10240
  %306 = icmp ult i64 %304, 10485760
  %307 = select i1 %306, i64 10, i64 20
  %308 = select i1 %305, i64 0, i64 %307
  %309 = lshr i64 %304, %308
  %310 = select i1 %306, i32 107, i32 77
  %311 = select i1 %305, i32 98, i32 %310
  %312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.31, i64 noundef %257, i64 noundef %309, i32 noundef %311)
  %313 = shl i64 %256, 3
  %314 = icmp ult i64 %313, 10240
  %315 = icmp ult i64 %313, 10485760
  %316 = select i1 %315, i64 10, i64 20
  %317 = select i1 %314, i64 0, i64 %316
  %318 = lshr i64 %313, %317
  %319 = select i1 %315, i32 107, i32 77
  %320 = select i1 %314, i32 98, i32 %319
  %321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.32, i64 noundef %256, i64 noundef %318, i32 noundef %320)
  %322 = shl i64 %262, 3
  %323 = icmp ult i64 %322, 10240
  %324 = icmp ult i64 %322, 10485760
  %325 = select i1 %324, i64 10, i64 20
  %326 = select i1 %323, i64 0, i64 %325
  %327 = lshr i64 %322, %326
  %328 = select i1 %324, i32 107, i32 77
  %329 = select i1 %323, i32 98, i32 %328
  %330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.33, i64 noundef %262, i64 noundef %327, i32 noundef %329)
  %331 = shl i64 %261, 3
  %332 = icmp ult i64 %331, 10240
  %333 = icmp ult i64 %331, 10485760
  %334 = select i1 %333, i64 10, i64 20
  %335 = select i1 %332, i64 0, i64 %334
  %336 = lshr i64 %331, %335
  %337 = select i1 %333, i32 107, i32 77
  %338 = select i1 %332, i32 98, i32 %337
  %339 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.34, i64 noundef %261, i64 noundef %336, i32 noundef %338)
  %340 = mul i64 %258, 96
  %341 = icmp ult i64 %340, 10240
  %342 = icmp ult i64 %340, 10485760
  %343 = select i1 %342, i64 10, i64 20
  %344 = select i1 %341, i64 0, i64 %343
  %345 = lshr i64 %340, %344
  %346 = select i1 %342, i32 107, i32 77
  %347 = select i1 %341, i32 98, i32 %346
  %348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.35, i64 noundef %258, i64 noundef %345, i32 noundef %347)
  %349 = mul i64 %259, 48
  %350 = add i64 %313, %295
  %351 = add i64 %350, %304
  %352 = add i64 %351, %340
  %353 = add i64 %352, %349
  %354 = add i64 %353, %331
  %355 = add i64 %354, %322
  %356 = add i64 %355, %277
  %357 = icmp ult i64 %349, 10240
  %358 = icmp ult i64 %349, 10485760
  %359 = select i1 %358, i64 10, i64 20
  %360 = select i1 %357, i64 0, i64 %359
  %361 = lshr i64 %349, %360
  %362 = select i1 %358, i32 107, i32 77
  %363 = select i1 %357, i32 98, i32 %362
  %364 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.36, i64 noundef %259, i64 noundef %361, i32 noundef %363)
  %365 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %366 = icmp ult i64 %356, 10240
  %367 = icmp ult i64 %356, 10485760
  %368 = select i1 %367, i64 10, i64 20
  %369 = select i1 %366, i64 0, i64 %368
  %370 = lshr i64 %356, %369
  %371 = select i1 %367, i32 107, i32 77
  %372 = select i1 %366, i32 98, i32 %371
  %373 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.37, i64 noundef %370, i32 noundef %372)
  %374 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %375 = call i32 @fputc(i32 10, ptr %0)
  %376 = icmp eq i64 %258, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %284
  %378 = sitofp i64 %259 to float
  %379 = sitofp i64 %258 to float
  %380 = fdiv float %378, %379
  %381 = fpext float %380 to double
  %382 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, double noundef %381, i64 noundef %260)
  br label %383

383:                                              ; preds = %377, %284
  %384 = call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_dfa_stats() local_unnamed_addr #12 !prof !62 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !63
  tail call void @dump_dfa_stats(ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @find_referenced_vars_in(ptr noundef %0) local_unnamed_addr #10 !prof !62 {
  %2 = alloca ptr, align 8
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %35, label %6, !prof !194

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %58, label %10, !prof !108

10:                                               ; preds = %6, %28
  %11 = phi i64 [ %31, %28 ], [ 0, %6 ]
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 255
  %14 = add nsw i32 %13, -10
  %15 = icmp ult i32 %14, -9
  br i1 %15, label %28, label %16, !prof !109

16:                                               ; preds = %10
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !78
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !110
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25, !prof !109

24:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %25

25:                                               ; preds = %24, %16
  %26 = getelementptr inbounds i8, ptr %0, i64 %22
  %27 = getelementptr inbounds ptr, ptr %26, i64 %11
  br label %28

28:                                               ; preds = %10, %25
  %29 = phi ptr [ %27, %25 ], [ null, %10 ]
  %30 = tail call ptr @walk_tree_1(ptr noundef %29, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %31 = add nuw nsw i64 %11, 1
  %32 = load i32, ptr %7, align 4, !tbaa !74
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %10, label %58, !prof !111, !llvm.loop !112

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %37 = tail call ptr @walk_tree_1(ptr noundef nonnull %36, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %38 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !74
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  br label %43

43:                                               ; preds = %41, %49
  %44 = phi i64 [ 0, %41 ], [ %54, %49 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %45 = trunc i64 %44 to i32
  %46 = load i32, ptr %42, align 8, !tbaa !74
  %47 = icmp ult i32 %46, %45
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %49

49:                                               ; preds = %43, %48
  %50 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %44, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  store ptr %52, ptr %2, align 8, !tbaa !63
  %53 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %54 = add nuw nsw i64 %44, 1
  %55 = load i32, ptr %38, align 4, !tbaa !74
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %43, label %58, !llvm.loop !115

58:                                               ; preds = %28, %49, %6, %35
  ret void
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noalias noundef ptr @find_vars_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #10 !prof !195 !PGOFuncName !196 {
  %4 = alloca %struct.tree_decl_minimal, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !63
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %93 [
    i16 141, label %8
    i16 32, label %12
    i16 34, label %14
    i16 36, label %16
  ], !prof !197

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = tail call zeroext i8 @add_referenced_var(ptr noundef %10), !range !150
  br label %100

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_var_decl, ptr %5, i64 0, i32 1
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_parm_decl, ptr %5, i64 0, i32 2
  br label %21

16:                                               ; preds = %3
  %17 = and i64 %6, 65535
  %18 = icmp eq i64 %17, 36
  %19 = getelementptr inbounds %struct.tree_result_decl, ptr %5, i64 0, i32 1
  %20 = select i1 %18, ptr %19, ptr null, !prof !120
  br label %21

21:                                               ; preds = %16, %14, %12
  %22 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %20, %16 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !153

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 144, ptr noundef nonnull @.str.2) #16
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr %22, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %47, !prof !154

28:                                               ; preds = %25
  %29 = load i64, ptr %5, align 8
  %30 = trunc i64 %29 to i16
  switch i16 %30, label %31 [
    i16 32, label %32
    i16 34, label %32
    i16 36, label %32
  ], !prof !124

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @.str.2) #16
  br label %32

32:                                               ; preds = %31, %28, %28, %28
  %33 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #16
  %34 = load i64, ptr %5, align 8
  %35 = trunc i64 %34 to i16
  switch i16 %35, label %40 [
    i16 32, label %36
    i16 34, label %38
  ], !prof !125

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_var_decl, ptr %5, i64 0, i32 1
  br label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tree_parm_decl, ptr %5, i64 0, i32 2
  br label %45

40:                                               ; preds = %32
  %41 = and i64 %34, 65535
  %42 = icmp eq i64 %41, 36
  %43 = getelementptr inbounds %struct.tree_result_decl, ptr %5, i64 0, i32 1
  %44 = select i1 %42, ptr %43, ptr null, !prof !120
  br label %45

45:                                               ; preds = %40, %38, %36
  %46 = phi ptr [ %37, %36 ], [ %39, %38 ], [ %44, %40 ]
  store ptr %33, ptr %46, align 8, !tbaa !63
  br label %47

47:                                               ; preds = %45, %25
  %48 = load i64, ptr %5, align 8
  %49 = and i64 %48, 65535
  %50 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !78
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %54, label %53, !prof !155

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 602, ptr noundef nonnull @.str.2) #16
  br label %54

54:                                               ; preds = %53, %47
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  %55 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  store i32 %56, ptr %57, align 4, !tbaa !156
  %58 = load ptr, ptr @cfun, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !145
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !153

62:                                               ; preds = %54
  %63 = load ptr, ptr %60, align 8, !tbaa !146
  br label %64

64:                                               ; preds = %62, %54
  %65 = phi ptr [ %63, %62 ], [ null, %54 ]
  %66 = call ptr @htab_find_with_hash(ptr noundef %65, ptr noundef nonnull %4, i32 noundef %56) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68, !prof !160

68:                                               ; preds = %64
  %69 = icmp eq ptr %66, %5
  br i1 %69, label %81, label %70, !prof !161

70:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @.str.2) #16
  br label %81

71:                                               ; preds = %64
  %72 = load ptr, ptr @cfun, align 8, !tbaa !63
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !145
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !162

76:                                               ; preds = %71
  %77 = load ptr, ptr %74, align 8, !tbaa !146
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi ptr [ %77, %76 ], [ null, %71 ]
  %80 = call ptr @htab_find_slot_with_hash(ptr noundef %79, ptr noundef nonnull %4, i32 noundef %56, i32 noundef 1) #16
  store ptr %5, ptr %80, align 8, !tbaa !63
  br label %81

81:                                               ; preds = %78, %70, %68
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  br i1 %67, label %82, label %100, !prof !160

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !74
  %85 = icmp eq ptr %84, null
  br i1 %85, label %100, label %86, !prof !163

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !74
  %89 = load ptr, ptr @current_function_decl, align 8, !tbaa !63
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %91, label %100, !prof !164

91:                                               ; preds = %86
  %92 = call ptr @walk_tree_1(ptr noundef nonnull %83, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %100

93:                                               ; preds = %3
  %94 = and i64 %6, 65535
  %95 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !78
  %97 = add i32 %96, -1
  %98 = icmp ult i32 %97, 3
  br i1 %98, label %99, label %100, !prof !198

99:                                               ; preds = %93
  store i32 0, ptr %1, align 4, !tbaa !78
  br label %100

100:                                              ; preds = %91, %86, %82, %81, %93, %99, %8
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local ptr @referenced_var_lookup(i32 noundef %0) local_unnamed_addr #9 !prof !199 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %0, ptr %3, align 4, !tbaa !156
  %4 = load ptr, ptr @cfun, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !200

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !146
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  %12 = call ptr @htab_find_with_hash(ptr noundef %11, ptr noundef nonnull %2, i32 noundef %0) #16
  %13 = icmp ne ptr %12, null
  %14 = icmp eq i32 %0, 0
  %15 = or i1 %14, %13
  br i1 %15, label %17, label %16, !prof !201

16:                                               ; preds = %10
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 519, ptr noundef nonnull @.str.2) #16
  br label %17

17:                                               ; preds = %10, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  ret ptr %12
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @referenced_var_check_and_insert(ptr noundef %0) local_unnamed_addr #10 !prof !62 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !156
  %6 = load ptr, ptr @cfun, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !153

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 8, !tbaa !146
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  %14 = call ptr @htab_find_with_hash(ptr noundef %13, ptr noundef nonnull %2, i32 noundef %4) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !160

16:                                               ; preds = %12
  %17 = icmp eq ptr %14, %0
  br i1 %17, label %29, label %18, !prof !161

18:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @.str.2) #16
  br label %29

19:                                               ; preds = %12
  %20 = load ptr, ptr @cfun, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !162

24:                                               ; preds = %19
  %25 = load ptr, ptr %22, align 8, !tbaa !146
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %25, %24 ], [ null, %19 ]
  %28 = call ptr @htab_find_slot_with_hash(ptr noundef %27, ptr noundef nonnull %2, i32 noundef %4, i32 noundef 1) #16
  store ptr %0, ptr %28, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %18, %16, %26
  %30 = phi i8 [ 1, %26 ], [ 0, %16 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  ret i8 %30
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_default_def(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !202 {
  %3 = alloca %struct.tree_decl_minimal, align 8
  %4 = alloca %struct.tree_ssa_name, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #16
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
    i16 141, label %7
  ], !prof !203

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
  ]

12:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 572, ptr noundef nonnull @.str.2) #16
  br label %13

13:                                               ; preds = %7, %7, %2, %2, %7, %2, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !171
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !156
  %18 = icmp eq ptr %1, null
  br i1 %18, label %19, label %36, !prof !204

19:                                               ; preds = %13
  %20 = load ptr, ptr @cfun, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !173
  %25 = call ptr @htab_find_slot_with_hash(ptr noundef %24, ptr noundef nonnull %4, i32 noundef %16, i32 noundef 1) #16
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 579, ptr noundef nonnull @.str.2) #16
  br label %29

29:                                               ; preds = %19, %28
  %30 = load ptr, ptr @cfun, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !145
  %33 = getelementptr inbounds %struct.gimple_df, ptr %32, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !173
  %35 = load ptr, ptr %25, align 8, !tbaa !63
  call void @htab_remove_elt(ptr noundef %34, ptr noundef %35) #16
  br label %61

36:                                               ; preds = %13
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %40, label %44, !prof !205

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !74
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %45, label %44, !prof !205

44:                                               ; preds = %40, %36
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @.str.2) #16
  br label %45

45:                                               ; preds = %40, %44
  %46 = load ptr, ptr @cfun, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !145
  %49 = getelementptr inbounds %struct.gimple_df, ptr %48, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !173
  %51 = load i32, ptr %15, align 4, !tbaa !74
  %52 = call ptr @htab_find_slot_with_hash(ptr noundef %50, ptr noundef nonnull %4, i32 noundef %51, i32 noundef 1) #16
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55, !prof !205

55:                                               ; preds = %45
  %56 = load i64, ptr %53, align 8
  %57 = and i64 %56, -4294967297
  store i64 %57, ptr %53, align 8
  br label %58

58:                                               ; preds = %55, %45
  store ptr %1, ptr %52, align 8, !tbaa !63
  %59 = load i64, ptr %1, align 8
  %60 = or i64 %59, 4294967296
  store i64 %60, ptr %1, align 8
  br label %61

61:                                               ; preds = %58, %29
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  ret void
}

declare void @htab_remove_elt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @remove_referenced_var(ptr noundef %0) local_unnamed_addr #9 !prof !206 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 67108864
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %46, !prof !207

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %46, !prof !207

13:                                               ; preds = %8
  %14 = trunc i64 %5 to i16
  switch i16 %14, label %19 [
    i16 32, label %15
    i16 34, label %17
  ], !prof !208

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %24

19:                                               ; preds = %13
  %20 = and i64 %5, 65535
  %21 = icmp eq i64 %20, 36
  %22 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %23 = select i1 %21, ptr %22, ptr null
  br label %24

24:                                               ; preds = %19, %17, %15
  %25 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %23, %19 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !209

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %28, %27 ], [ null, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !209

32:                                               ; preds = %29
  tail call void @ggc_free(ptr noundef nonnull %30) #16
  %33 = load i64, ptr %0, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %39 [
    i16 32, label %35
    i16 34, label %37
  ], !prof !208

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %44

39:                                               ; preds = %32
  %40 = and i64 %33, 65535
  %41 = icmp eq i64 %40, 36
  %42 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %43 = select i1 %41, ptr %42, ptr null
  br label %44

44:                                               ; preds = %37, %39, %35
  %45 = phi ptr [ %36, %35 ], [ %38, %37 ], [ %43, %39 ]
  store ptr null, ptr %45, align 8, !tbaa !63
  br label %46

46:                                               ; preds = %1, %44, %29, %8
  %47 = load i64, ptr %0, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !78
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %53, label %52, !prof !207

52:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 639, ptr noundef nonnull @.str.2) #16
  br label %53

53:                                               ; preds = %46, %52
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %4, ptr %54, align 4, !tbaa !156
  %55 = load ptr, ptr @cfun, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !145
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !209

59:                                               ; preds = %53
  %60 = load ptr, ptr %57, align 8, !tbaa !146
  br label %61

61:                                               ; preds = %53, %59
  %62 = phi ptr [ %60, %59 ], [ null, %53 ]
  %63 = call ptr @htab_find_slot_with_hash(ptr noundef %62, ptr noundef nonnull %2, i32 noundef %4, i32 noundef 0) #16
  %64 = load ptr, ptr @cfun, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !145
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !209

68:                                               ; preds = %61
  %69 = load ptr, ptr %66, align 8, !tbaa !146
  br label %70

70:                                               ; preds = %61, %68
  %71 = phi ptr [ %69, %68 ], [ null, %61 ]
  call void @htab_clear_slot(ptr noundef %71, ptr noundef %63) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  ret void
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @get_virtual_var(ptr noundef %0) local_unnamed_addr #9 !prof !210 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %11, !prof !211

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %20, %6
  %9 = phi ptr [ %7, %6 ], [ %21, %20 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %2, %1 ], [ %10, %8 ]
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -43
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %20, label %18, !prof !212

18:                                               ; preds = %11
  %19 = trunc i64 %13 to i16
  switch i16 %19, label %27 [
    i16 42, label %20
    i16 41, label %20
    i16 45, label %20
    i16 46, label %20
    i16 118, label %20
    i16 43, label %20
    i16 44, label %20
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
    i16 141, label %22
  ], !prof !213

20:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %11
  %21 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  br label %8, !llvm.loop !214

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %27 [
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
  ]

27:                                               ; preds = %18, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 664, ptr noundef nonnull @.str.2) #16
  br label %28

28:                                               ; preds = %18, %18, %18, %22, %22, %22, %27
  %29 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %12) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31, !prof !211

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 665, ptr noundef nonnull @.str.2) #16
  br label %32

32:                                               ; preds = %28, %31
  ret ptr %12
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mark_symbols_for_renaming(ptr noundef %0) local_unnamed_addr #9 !prof !215 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %7, label %6, !prof !216

6:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  tail call void @update_stmt_operands(ptr noundef nonnull %0) #16
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %15, label %12, !prof !216

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ null, %7 ]
  br i1 %11, label %20, label %17, !prof !216

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %19, %17 ], [ null, %15 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !217

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.use_optype_d, ptr %21, i64 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = load ptr, ptr %21, align 8, !tbaa !191
  br label %35

28:                                               ; preds = %20
  %29 = icmp eq ptr %16, null
  br i1 %29, label %35, label %30, !prof !218

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.def_optype_d, ptr %16, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = load ptr, ptr %16, align 8, !tbaa !188
  br label %35

35:                                               ; preds = %28, %23, %30
  %36 = phi ptr [ %34, %30 ], [ %16, %23 ], [ %16, %28 ]
  %37 = phi ptr [ %21, %30 ], [ %27, %23 ], [ %21, %28 ]
  %38 = phi i1 [ true, %30 ], [ true, %23 ], [ false, %28 ]
  %39 = phi i8 [ 0, %30 ], [ 0, %23 ], [ 1, %28 ]
  %40 = phi ptr [ %33, %30 ], [ %26, %23 ], [ null, %28 ]
  br i1 %38, label %41, label %72, !prof !220

41:                                               ; preds = %35, %66
  %42 = phi ptr [ %70, %66 ], [ %40, %35 ]
  %43 = phi i8 [ %69, %66 ], [ %39, %35 ]
  %44 = phi ptr [ %68, %66 ], [ %37, %35 ]
  %45 = phi ptr [ %67, %66 ], [ %36, %35 ]
  %46 = load i64, ptr %42, align 8
  %47 = and i64 %46, 65535
  %48 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !78
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %52, !prof !221

51:                                               ; preds = %41
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %42) #16
  br label %52

52:                                               ; preds = %41, %51
  %53 = icmp eq ptr %44, null
  br i1 %53, label %59, label %54, !prof !222

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.use_optype_d, ptr %44, i64 0, i32 1, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = load ptr, ptr %44, align 8, !tbaa !191
  br label %66

59:                                               ; preds = %52
  %60 = icmp eq ptr %45, null
  br i1 %60, label %66, label %61, !prof !223

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.def_optype_d, ptr %45, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !219
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = load ptr, ptr %45, align 8, !tbaa !188
  br label %66

66:                                               ; preds = %59, %54, %61
  %67 = phi ptr [ %65, %61 ], [ %45, %54 ], [ %45, %59 ]
  %68 = phi ptr [ %44, %61 ], [ %58, %54 ], [ %44, %59 ]
  %69 = phi i8 [ %43, %61 ], [ %43, %54 ], [ 1, %59 ]
  %70 = phi ptr [ %64, %61 ], [ %57, %54 ], [ null, %59 ]
  %71 = icmp eq i8 %69, 0
  br i1 %71, label %41, label %72, !prof !224, !llvm.loop !225

72:                                               ; preds = %66, %35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @find_new_referenced_vars(ptr noundef %0) local_unnamed_addr #9 !prof !226 {
  %2 = tail call ptr @walk_gimple_op(ptr noundef %0, ptr noundef nonnull @find_new_referenced_vars_1, ptr noundef null) #16
  ret void
}

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @find_new_referenced_vars_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #9 !prof !227 !PGOFuncName !228 {
  %4 = load ptr, ptr %0, align 8, !tbaa !63
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 32
  br i1 %7, label %8, label %14, !prof !229

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_var_decl, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !230

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %4), !range !150
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %4) #16
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = load i64, ptr %4, align 8
  %16 = and i64 %15, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !78
  %19 = and i32 %18, -2
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %22, !prof !231

21:                                               ; preds = %14
  store i32 0, ptr %1, align 4, !tbaa !78
  br label %22

22:                                               ; preds = %14, %21
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @get_ref_base_and_extent(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 !prof !232 {
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %15 [
    i16 41, label %7
    i16 42, label %12
  ], !prof !233

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  br label %40

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  br label %40

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %22 [
    i16 19, label %40
    i16 14, label %20
  ], !prof !234

20:                                               ; preds = %15
  %21 = tail call i32 @vector_type_mode(ptr noundef nonnull %17) #16
  br label %27

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %22 ]
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34, !prof !235

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  br label %40

34:                                               ; preds = %27
  %35 = zext i32 %28 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !74
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 3
  br label %40

40:                                               ; preds = %30, %34, %15, %12, %7
  %41 = phi ptr [ %11, %7 ], [ %14, %12 ], [ null, %15 ], [ %33, %30 ], [ null, %34 ]
  %42 = phi i64 [ -1, %7 ], [ -1, %12 ], [ -1, %15 ], [ -1, %30 ], [ %39, %34 ]
  %43 = icmp eq ptr %41, null
  br i1 %43, label %50, label %44, !prof !236

44:                                               ; preds = %40
  %45 = tail call i32 @host_integerp(ptr noundef nonnull %41, i32 noundef 1) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !237

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.tree_int_cst, ptr %41, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !74
  br label %50

50:                                               ; preds = %44, %47, %40
  %51 = phi i64 [ %49, %47 ], [ %42, %40 ], [ -1, %44 ]
  br label %52

52:                                               ; preds = %190, %50
  %53 = phi i8 [ 0, %50 ], [ %191, %190 ]
  %54 = phi i64 [ 0, %50 ], [ %192, %190 ]
  %55 = phi i64 [ %51, %50 ], [ %193, %190 ]
  %56 = phi ptr [ %0, %50 ], [ %195, %190 ]
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %196 [
    i16 42, label %59
    i16 41, label %65
    i16 45, label %143
    i16 46, label %143
    i16 43, label %190
    i16 44, label %188
    i16 118, label %190
  ], !prof !238

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = getelementptr inbounds %struct.tree_int_cst, ptr %61, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !74
  %64 = add i64 %63, %54
  br label %190

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %67 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !74
  %69 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %56) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %127, label %71, !prof !239

71:                                               ; preds = %65
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 23
  br i1 %74, label %75, label %127, !prof !240

75:                                               ; preds = %71
  %76 = tail call i32 @host_integerp(ptr noundef nonnull %69, i32 noundef 0) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %127, label %78, !prof !239

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_int_cst, ptr %69, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !74
  %81 = shl nsw i64 %80, 3
  %82 = getelementptr inbounds %struct.tree_field_decl, ptr %68, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !74
  %84 = getelementptr inbounds %struct.tree_int_cst, ptr %83, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !74
  %86 = add i64 %85, %81
  %87 = add nsw i64 %86, %54
  %88 = icmp ne i8 %53, 0
  %89 = icmp ne i64 %55, -1
  %90 = select i1 %88, i1 %89, i1 false, !prof !241
  br i1 %90, label %91, label %190, !prof !241

91:                                               ; preds = %78
  %92 = load ptr, ptr %66, align 8, !tbaa !74
  %93 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !74
  br label %95

95:                                               ; preds = %100, %91
  %96 = phi ptr [ %68, %91 ], [ %98, %100 ]
  %97 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !74
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100, !prof !242

100:                                              ; preds = %95
  %101 = load i64, ptr %98, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 31
  br i1 %103, label %104, label %95, !llvm.loop !243

104:                                              ; preds = %100
  %105 = load i64, ptr %94, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 16
  br i1 %107, label %190, label %108

108:                                              ; preds = %95, %104
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %68, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !74
  %111 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !74
  %113 = tail call i32 @host_integerp(ptr noundef %110, i32 noundef 0) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %190, label %115, !prof !244

115:                                              ; preds = %108
  %116 = tail call i32 @host_integerp(ptr noundef %112, i32 noundef 0) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %190, label %118, !prof !244

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.tree_int_cst, ptr %112, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !74
  %121 = getelementptr inbounds %struct.tree_int_cst, ptr %110, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !74
  %123 = sub i64 %120, %122
  %124 = shl i64 %123, 3
  %125 = sub i64 %55, %86
  %126 = add i64 %125, %124
  br label %190

127:                                              ; preds = %75, %71, %65
  %128 = load ptr, ptr %66, align 8, !tbaa !74
  %129 = getelementptr inbounds %struct.tree_common, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !74
  %131 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !74
  %133 = icmp ne i64 %55, -1
  %134 = icmp ne ptr %132, null
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %190

136:                                              ; preds = %127
  %137 = tail call i32 @host_integerp(ptr noundef nonnull %132, i32 noundef 1) #16
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %190, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.tree_int_cst, ptr %132, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !74
  %142 = sub i64 %141, %54
  br label %190

143:                                              ; preds = %52, %52
  %144 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %145 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !74
  %147 = load i64, ptr %146, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 23
  br i1 %149, label %150, label %172, !prof !245

150:                                              ; preds = %143
  %151 = tail call i32 @host_integerp(ptr noundef nonnull %146, i32 noundef 0) #16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %172, label %153, !prof !246

153:                                              ; preds = %150
  %154 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %56) #16
  %155 = tail call i32 @host_integerp(ptr noundef %154, i32 noundef 0) #16
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %172, label %157, !prof !246

157:                                              ; preds = %153
  %158 = tail call ptr @array_ref_element_size(ptr noundef nonnull %56) #16
  %159 = tail call i32 @host_integerp(ptr noundef %158, i32 noundef 1) #16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %172, label %161, !prof !246

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tree_int_cst, ptr %146, i64 0, i32 1
  %163 = load i64, ptr %162, align 8, !tbaa !74
  %164 = getelementptr inbounds %struct.tree_int_cst, ptr %154, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !74
  %166 = sub i64 %163, %165
  %167 = getelementptr inbounds %struct.tree_int_cst, ptr %158, i64 0, i32 1
  %168 = load i64, ptr %167, align 8, !tbaa !74
  %169 = shl i64 %168, 3
  %170 = mul i64 %169, %166
  %171 = add nsw i64 %170, %54
  br label %190

172:                                              ; preds = %157, %153, %150, %143
  %173 = load ptr, ptr %144, align 8, !tbaa !74
  %174 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !74
  %176 = getelementptr inbounds %struct.tree_type, ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !74
  %178 = icmp ne i64 %55, -1
  %179 = icmp ne ptr %177, null
  %180 = select i1 %178, i1 %179, i1 false, !prof !247
  br i1 %180, label %181, label %190, !prof !247

181:                                              ; preds = %172
  %182 = tail call i32 @host_integerp(ptr noundef nonnull %177, i32 noundef 1) #16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %190, label %184, !prof !248

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.tree_int_cst, ptr %177, i64 0, i32 1
  %186 = load i64, ptr %185, align 8, !tbaa !74
  %187 = sub i64 %186, %54
  br label %190

188:                                              ; preds = %52
  %189 = add nsw i64 %54, %51
  br label %190

190:                                              ; preds = %172, %52, %161, %181, %184, %104, %108, %115, %118, %78, %127, %136, %139, %52, %188, %59
  %191 = phi i8 [ %53, %188 ], [ %53, %52 ], [ %53, %59 ], [ %53, %139 ], [ %53, %136 ], [ %53, %127 ], [ %53, %78 ], [ %53, %118 ], [ %53, %115 ], [ %53, %108 ], [ %53, %104 ], [ 0, %161 ], [ 1, %181 ], [ 1, %184 ], [ %53, %52 ], [ 1, %172 ]
  %192 = phi i64 [ %189, %188 ], [ %54, %52 ], [ %64, %59 ], [ %54, %139 ], [ %54, %136 ], [ %54, %127 ], [ %87, %78 ], [ %87, %118 ], [ %87, %115 ], [ %87, %108 ], [ %87, %104 ], [ %171, %161 ], [ %54, %181 ], [ %54, %184 ], [ %54, %52 ], [ %54, %172 ]
  %193 = phi i64 [ %55, %188 ], [ %55, %52 ], [ %55, %59 ], [ %142, %139 ], [ -1, %136 ], [ -1, %127 ], [ %55, %78 ], [ %126, %118 ], [ -1, %115 ], [ -1, %108 ], [ %55, %104 ], [ %55, %161 ], [ -1, %181 ], [ %187, %184 ], [ %55, %52 ], [ -1, %172 ]
  %194 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !74
  br label %52, !llvm.loop !249

196:                                              ; preds = %52
  %197 = and i64 %57, 65535
  %198 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !78
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %213, !prof !250

201:                                              ; preds = %196
  %202 = icmp eq i64 %55, -1
  br i1 %202, label %203, label %235, !prof !251

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.tree_decl_common, ptr %56, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !74
  %206 = tail call i32 @host_integerp(ptr noundef %205, i32 noundef 1) #16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %235, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr %204, align 8, !tbaa !74
  %210 = getelementptr inbounds %struct.tree_int_cst, ptr %209, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !74
  %212 = sub i64 %211, %54
  br label %235

213:                                              ; preds = %196
  %214 = icmp ne i8 %53, 0
  %215 = icmp ne i64 %55, -1
  %216 = select i1 %214, i1 %215, i1 false, !prof !252
  br i1 %216, label %217, label %235, !prof !252

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !74
  %220 = getelementptr inbounds %struct.tree_type, ptr %219, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !74
  %222 = tail call i32 @host_integerp(ptr noundef %221, i32 noundef 1) #16
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %234, label %224, !prof !248

224:                                              ; preds = %217
  %225 = add nsw i64 %55, %54
  %226 = load ptr, ptr %218, align 8, !tbaa !74
  %227 = getelementptr inbounds %struct.tree_type, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !74
  %229 = getelementptr inbounds %struct.tree_int_cst, ptr %228, i64 0, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !74
  %231 = shl i64 %230, 32
  %232 = ashr exact i64 %231, 32
  %233 = icmp eq i64 %225, %232
  br i1 %233, label %234, label %235, !prof !247

234:                                              ; preds = %224, %217
  br label %235

235:                                              ; preds = %213, %224, %234, %201, %203, %208
  %236 = phi i64 [ %212, %208 ], [ -1, %203 ], [ %55, %201 ], [ -1, %234 ], [ %55, %224 ], [ %55, %213 ]
  store i64 %54, ptr %1, align 8, !tbaa !110
  store i64 %51, ptr %2, align 8, !tbaa !110
  store i64 %236, ptr %3, align 8, !tbaa !110
  ret ptr %56
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @stmt_references_abnormal_ssa_name(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !253 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %9, label %6, !prof !254

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !254

12:                                               ; preds = %9
  %13 = and i32 %2, 254
  %14 = add nsw i32 %13, -10
  %15 = icmp ult i32 %14, -4
  br i1 %15, label %22, label %16, !prof !254

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !255

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !191
  br label %22

22:                                               ; preds = %20, %16, %12, %9
  %23 = phi ptr [ %10, %9 ], [ %10, %12 ], [ %10, %16 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !254

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.use_optype_d, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %23, align 8, !tbaa !191
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi ptr [ %27, %25 ], [ %23, %22 ]
  %30 = phi i8 [ 0, %25 ], [ 1, %22 ]
  %31 = phi ptr [ %26, %25 ], [ null, %22 ]
  br i1 %24, label %52, label %32, !prof !256

32:                                               ; preds = %28, %47
  %33 = phi ptr [ %50, %47 ], [ %31, %28 ]
  %34 = phi i8 [ %49, %47 ], [ %30, %28 ]
  %35 = phi ptr [ %48, %47 ], [ %29, %28 ]
  %36 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %33, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52, !prof !257

42:                                               ; preds = %32
  %43 = icmp eq ptr %35, null
  br i1 %43, label %47, label %44, !prof !258

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.use_optype_d, ptr %35, i64 0, i32 1
  %46 = load ptr, ptr %35, align 8, !tbaa !191
  br label %47

47:                                               ; preds = %42, %44
  %48 = phi ptr [ %46, %44 ], [ %35, %42 ]
  %49 = phi i8 [ %34, %44 ], [ 1, %42 ]
  %50 = phi ptr [ %45, %44 ], [ null, %42 ]
  %51 = icmp eq i8 %49, 0
  br i1 %51, label %32, label %52, !prof !259, !llvm.loop !260

52:                                               ; preds = %32, %47, %28
  %53 = phi i8 [ 0, %28 ], [ 1, %32 ], [ 0, %47 ]
  ret i8 %53
}

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @find_referenced_vars, ptr @walk_tree_1, i64 1299954}
!36 = !{ptr @find_referenced_vars, ptr @gsi_start_phis, i64 187326}
!37 = !{ptr @create_var_ann, ptr @ggc_alloc_cleared_stat, i64 400}
!38 = !{ptr @add_referenced_var, ptr @ggc_alloc_cleared_stat, i64 336}
!39 = !{ptr @add_referenced_var, ptr @htab_find_with_hash, i64 1867}
!40 = !{ptr @add_referenced_var, ptr @htab_find_slot_with_hash, i64 338}
!41 = !{ptr @gimple_default_def, ptr @htab_find_with_hash, i64 197626}
!42 = !{ptr @find_vars_r, ptr @ggc_alloc_cleared_stat, i64 112270}
!43 = !{ptr @find_vars_r, ptr @htab_find_with_hash, i64 623074}
!44 = !{ptr @find_vars_r, ptr @htab_find_slot_with_hash, i64 112758}
!45 = !{ptr @find_vars_r, ptr @walk_tree_1, i64 79}
!46 = !{ptr @referenced_var_lookup, ptr @htab_find_with_hash, i64 1961}
!47 = !{ptr @set_default_def, ptr @htab_find_slot_with_hash, i64 81}
!48 = !{ptr @remove_referenced_var, ptr @ggc_free, i64 9214}
!49 = !{ptr @remove_referenced_var, ptr @htab_find_slot_with_hash, i64 9214}
!50 = !{ptr @remove_referenced_var, ptr @htab_clear_slot, i64 9214}
!51 = !{ptr @get_virtual_var, ptr @tree_strip_nop_conversions, i64 2052}
!52 = !{ptr @get_virtual_var, ptr @is_gimple_reg, i64 2052}
!53 = !{ptr @mark_symbols_for_renaming, ptr @gimple_set_modified, i64 1109}
!54 = !{ptr @mark_symbols_for_renaming, ptr @update_stmt_operands, i64 1109}
!55 = !{ptr @mark_symbols_for_renaming, ptr @mark_sym_for_renaming, i64 460}
!56 = !{ptr @find_new_referenced_vars, ptr @walk_gimple_op, i64 334}
!57 = !{ptr @get_ref_base_and_extent, ptr @host_integerp, i64 264093}
!58 = !{ptr @get_ref_base_and_extent, ptr @component_ref_field_offset, i64 63155}
!59 = !{ptr @get_ref_base_and_extent, ptr @array_ref_low_bound, i64 65888}
!60 = !{ptr @get_ref_base_and_extent, ptr @array_ref_element_size, i64 65888}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!68, !64, i64 8}
!68 = !{!"_IO_FILE", !69, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !69, i64 112, !69, i64 116, !70, i64 120, !71, i64 128, !65, i64 130, !65, i64 131, !64, i64 136, !70, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !70, i64 184, !69, i64 192, !65, i64 196}
!69 = !{!"int", !65, i64 0}
!70 = !{!"long", !65, i64 0}
!71 = !{!"short", !65, i64 0}
!72 = !{!68, !64, i64 16}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{!65, !65, i64 0}
!75 = !{!68, !64, i64 40}
!76 = !{!68, !64, i64 48}
!77 = !{!68, !69, i64 0}
!78 = !{!69, !69, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"function_entry_count", i64 40}
!83 = !{!"tree-dfa.c;find_referenced_vars"}
!84 = !{!85, !64, i64 8}
!85 = !{!"function", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !69, i64 104, !69, i64 108, !69, i64 112, !69, i64 116, !69, i64 120, !69, i64 124, !64, i64 128, !69, i64 136, !69, i64 137, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139}
!86 = !{!87, !64, i64 0}
!87 = !{!"control_flow_graph", !64, i64 0, !64, i64 8, !64, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !64, i64 40, !69, i64 48, !65, i64 52, !65, i64 60, !69, i64 68, !69, i64 72}
!88 = !{!89, !64, i64 56}
!89 = !{!"basic_block_def", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !65, i64 32, !64, i64 48, !64, i64 56, !65, i64 64, !70, i64 72, !69, i64 80, !69, i64 84, !69, i64 88, !69, i64 92, !69, i64 96}
!90 = !{!87, !64, i64 8}
!91 = !{!"branch_weights", i32 1, i32 159}
!92 = !{!"branch_weights", i32 159, i32 749145}
!93 = distinct !{!93, !80, !81}
!94 = !{!89, !69, i64 96}
!95 = !{!96}
!96 = distinct !{!96, !97, !"gsi_start_bb: argument 0"}
!97 = distinct !{!97, !"gsi_start_bb"}
!98 = !{!"branch_weights", i32 187326, i32 0}
!99 = !{!"branch_weights", i32 0, i32 187326}
!100 = !{!101, !64, i64 0}
!101 = !{!"gimple_bb_info", !64, i64 0, !64, i64 8}
!102 = !{!103, !64, i64 0}
!103 = !{!"gimple_seq_d", !64, i64 0, !64, i64 8, !64, i64 16}
!104 = !{!"branch_weights", i32 1, i32 187325}
!105 = !{!106, !64, i64 0}
!106 = !{!"gimple_seq_node_d", !64, i64 0, !64, i64 8, !64, i64 16}
!107 = !{!"branch_weights", i32 -1747090244, i32 0, i32 0}
!108 = !{!"branch_weights", i32 1, i32 403811}
!109 = !{!"branch_weights", i32 0, i32 1299953}
!110 = !{!70, !70, i64 0}
!111 = !{!"branch_weights", i32 896142, i32 403811}
!112 = distinct !{!112, !80, !81}
!113 = !{!114, !64, i64 24}
!114 = !{!"ssa_use_operand_d", !64, i64 0, !64, i64 8, !65, i64 16, !64, i64 24}
!115 = distinct !{!115, !80, !81}
!116 = !{!106, !64, i64 16}
!117 = !{!"branch_weights", i32 187325, i32 216487}
!118 = distinct !{!118, !80, !81}
!119 = !{i64 0, i64 8, !63, i64 8, i64 8, !63, i64 16, i64 8, !63}
!120 = !{!"branch_weights", i32 1, i32 0}
!121 = distinct !{!121, !80, !81}
!122 = !{!"function_entry_count", i64 400}
!123 = !{!"branch_weights", i32 0, i32 113006}
!124 = !{!"branch_weights", i32 0, i32 112964, i32 41, i32 1}
!125 = !{!"branch_weights", i32 1, i32 112964, i32 41}
!126 = !{!"function_entry_count", i64 152}
!127 = !{!85, !69, i64 104}
!128 = !{!"branch_weights", i32 1, i32 151}
!129 = !{!130}
!130 = distinct !{!130, !131, !"gsi_start_bb: argument 0"}
!131 = distinct !{!131, !"gsi_start_bb"}
!132 = !{!"branch_weights", i32 815553, i32 0}
!133 = !{!"branch_weights", i32 304, i32 815249}
!134 = !{!"branch_weights", i32 1, i32 815552}
!135 = !{!"branch_weights", i32 815552, i32 594989}
!136 = distinct !{!136, !80, !81}
!137 = !{!"branch_weights", i32 151, i32 815402}
!138 = distinct !{!138, !80, !81}
!139 = distinct !{!139, !80, !81}
!140 = !{!141}
!141 = distinct !{!141, !142, !"gsi_start_bb: argument 0"}
!142 = distinct !{!142, !"gsi_start_bb"}
!143 = distinct !{!143, !80, !81}
!144 = distinct !{!144, !80, !81}
!145 = !{!85, !64, i64 24}
!146 = !{!147, !64, i64 0}
!147 = !{!"gimple_df", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !148, i64 32, !148, i64 48, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !69, i64 96, !149, i64 104}
!148 = !{!"pt_solution", !69, i64 0, !69, i64 0, !69, i64 0, !69, i64 0, !69, i64 0, !69, i64 0, !64, i64 8}
!149 = !{!"ssa_operands", !64, i64 0, !69, i64 8, !69, i64 12, !65, i64 16, !64, i64 24, !64, i64 32}
!150 = !{i8 0, i8 2}
!151 = !{!"function_entry_count", i64 1867}
!152 = !{!"branch_weights", i32 1, i32 569746, i32 55194}
!153 = !{!"branch_weights", i32 0, i32 624941}
!154 = !{!"branch_weights", i32 112606, i32 512335}
!155 = !{!"branch_weights", i32 624941, i32 0}
!156 = !{!157, !69, i64 28}
!157 = !{!"tree_decl_minimal", !158, i64 0, !69, i64 24, !69, i64 28, !64, i64 32, !64, i64 40}
!158 = !{!"tree_common", !159, i64 0, !64, i64 8, !64, i64 16}
!159 = !{!"tree_base", !69, i64 0, !69, i64 2, !69, i64 2, !69, i64 2, !69, i64 2, !69, i64 2, !69, i64 2, !69, i64 2, !69, i64 2, !69, i64 3, !69, i64 3, !69, i64 3, !69, i64 3, !69, i64 3, !69, i64 3, !69, i64 3, !69, i64 3, !69, i64 4, !69, i64 4, !69, i64 4, !69, i64 4, !69, i64 4, !69, i64 4, !69, i64 4, !69, i64 4, !69, i64 5, !69, i64 5, !69, i64 5, !69, i64 5, !69, i64 7}
!160 = !{!"branch_weights", i32 113096, i32 511845}
!161 = !{!"branch_weights", i32 511845, i32 0}
!162 = !{!"branch_weights", i32 0, i32 113096}
!163 = !{!"branch_weights", i32 113015, i32 81}
!164 = !{!"branch_weights", i32 79, i32 2}
!165 = !{!166, !64, i64 24}
!166 = !{!"htab", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !69, i64 56, !69, i64 60, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !69, i64 104}
!167 = distinct !{!167, !80, !81}
!168 = distinct !{!168, !80, !81}
!169 = !{!"function_entry_count", i64 197626}
!170 = !{!"branch_weights", i32 0, i32 197115, i32 511, i32 0, i32 0}
!171 = !{!172, !64, i64 24}
!172 = !{!"tree_ssa_name", !158, i64 0, !64, i64 24, !64, i64 32, !69, i64 40, !64, i64 48, !114, i64 56}
!173 = !{!147, !64, i64 80}
!174 = !{!175, !64, i64 176}
!175 = !{!"lang_hooks", !64, i64 0, !70, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !64, i64 184, !64, i64 192, !64, i64 200, !64, i64 208, !64, i64 216, !64, i64 224, !64, i64 232, !176, i64 240, !177, i64 248, !178, i64 256, !179, i64 272, !180, i64 432, !181, i64 560, !64, i64 584, !64, i64 592, !64, i64 600, !64, i64 608, !64, i64 616, !64, i64 624, !64, i64 632, !64, i64 640, !64, i64 648, !64, i64 656, !64, i64 664, !65, i64 672}
!176 = !{!"lang_hooks_for_tree_inlining", !64, i64 0}
!177 = !{!"lang_hooks_for_callgraph", !64, i64 0}
!178 = !{!"lang_hooks_for_tree_dump", !64, i64 0, !64, i64 8}
!179 = !{!"lang_hooks_for_decls", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152}
!180 = !{!"lang_hooks_for_types", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !65, i64 120}
!181 = !{!"lang_hooks_for_lto", !64, i64 0, !64, i64 8, !64, i64 16}
!182 = distinct !{!182, !80, !81}
!183 = distinct !{!183, !80, !81}
!184 = distinct !{!184, !80, !81}
!185 = !{!186}
!186 = distinct !{!186, !187, !"gsi_start_bb: argument 0"}
!187 = distinct !{!187, !"gsi_start_bb"}
!188 = !{!189, !64, i64 0}
!189 = !{!"def_optype_d", !64, i64 0, !64, i64 8}
!190 = distinct !{!190, !80, !81}
!191 = !{!192, !64, i64 0}
!192 = !{!"use_optype_d", !64, i64 0, !114, i64 8}
!193 = distinct !{!193, !80, !81}
!194 = !{!"branch_weights", i32 0, i32 403812}
!195 = !{!"function_entry_count", i64 1088842}
!196 = !{!"tree-dfa.c;find_vars_r"}
!197 = !{!"branch_weights", i32 465768, i32 0, i32 567881, i32 55193, i32 0}
!198 = !{!"branch_weights", i32 359389, i32 106379}
!199 = !{!"function_entry_count", i64 1961}
!200 = !{!"branch_weights", i32 0, i32 1961}
!201 = !{!"branch_weights", i32 1961, i32 0}
!202 = !{!"function_entry_count", i64 81}
!203 = !{!"branch_weights", i32 0, i32 40, i32 41, i32 0, i32 0}
!204 = !{!"branch_weights", i32 0, i32 81}
!205 = !{!"branch_weights", i32 81, i32 0}
!206 = !{!"function_entry_count", i64 9214}
!207 = !{!"branch_weights", i32 9214, i32 0}
!208 = !{!"branch_weights", i32 0, i32 9214, i32 0}
!209 = !{!"branch_weights", i32 0, i32 9214}
!210 = !{!"function_entry_count", i64 2052}
!211 = !{!"branch_weights", i32 2052, i32 0}
!212 = !{!"branch_weights", i32 0, i32 2052}
!213 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4210704, i32 0, i32 0, i32 0}
!214 = distinct !{!214, !80, !81}
!215 = !{!"function_entry_count", i64 1109}
!216 = !{!"branch_weights", i32 0, i32 1109}
!217 = !{!"branch_weights", i32 9, i32 1100}
!218 = !{!"branch_weights", i32 7, i32 2}
!219 = !{!189, !64, i64 8}
!220 = !{!"branch_weights", i32 1108, i32 1}
!221 = !{!"branch_weights", i32 460, i32 2031}
!222 = !{!"branch_weights", i32 2190, i32 301}
!223 = !{!"branch_weights", i32 1102, i32 1088}
!224 = !{!"branch_weights", i32 1383, i32 1108}
!225 = distinct !{!225, !80, !81}
!226 = !{!"function_entry_count", i64 334}
!227 = !{!"function_entry_count", i64 2414}
!228 = !{!"tree-dfa.c;find_new_referenced_vars_1"}
!229 = !{!"branch_weights", i32 51, i32 2363}
!230 = !{!"branch_weights", i32 0, i32 51}
!231 = !{!"branch_weights", i32 619, i32 1795}
!232 = !{!"function_entry_count", i64 247635}
!233 = !{!"branch_weights", i32 244505, i32 3130, i32 0}
!234 = !{!"branch_weights", i32 244505, i32 0, i32 0}
!235 = !{!"branch_weights", i32 0, i32 244505}
!236 = !{!"branch_weights", i32 244505, i32 3130}
!237 = !{!"branch_weights", i32 0, i32 3130}
!238 = !{!"branch_weights", i32 247635, i32 0, i32 63155, i32 65912, i32 0, i32 0, i32 0, i32 0}
!239 = !{!"branch_weights", i32 0, i32 63155}
!240 = !{!"branch_weights", i32 63155, i32 0}
!241 = !{!"branch_weights", i32 48, i32 63107}
!242 = !{!"branch_weights", i32 48, i32 0}
!243 = distinct !{!243, !80, !81}
!244 = !{!"branch_weights", i32 0, i32 48}
!245 = !{!"branch_weights", i32 65888, i32 24}
!246 = !{!"branch_weights", i32 0, i32 65888}
!247 = !{!"branch_weights", i32 24, i32 0}
!248 = !{!"branch_weights", i32 0, i32 24}
!249 = distinct !{!249, !81}
!250 = !{!"branch_weights", i32 244269, i32 3366}
!251 = !{!"branch_weights", i32 0, i32 244269}
!252 = !{!"branch_weights", i32 24, i32 3342}
!253 = !{!"function_entry_count", i64 43}
!254 = !{!"branch_weights", i32 0, i32 43}
!255 = !{!"branch_weights", i32 43, i32 0}
!256 = !{!"branch_weights", i32 1, i32 171}
!257 = !{!"branch_weights", i32 49, i32 0}
!258 = !{!"branch_weights", i32 43, i32 6}
!259 = !{!"branch_weights", i32 25, i32 171}
!260 = distinct !{!260, !80, !81}
