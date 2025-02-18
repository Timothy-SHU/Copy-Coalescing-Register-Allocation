; ModuleID = 'tree-stdarg.c'
source_filename = "tree-stdarg.c"
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
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.stdarg_info = type { ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"stdarg\00", align 1
@pass_stdarg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_optimize_stdarg, ptr @execute_optimize_stdarg, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"tree-stdarg.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"va_list escapes in \00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: va_list escapes %d, needs to save \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" GPR units and \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" FPR units.\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"bb%d will %sbe executed at most once for each va_start in bb%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_optimize_stdarg() #9 !prof !54 !PGOFuncName !55 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 22
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_optimize_stdarg() #10 !prof !34 {
  %1 = alloca %struct.stdarg_info, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -65536
  store i32 %7, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  store ptr %8, ptr %1, align 8, !tbaa !56
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %10 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !58
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !59
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %16 = tail call ptr %14(ptr noundef %15, i32 noundef 2) #15
  br label %17

17:                                               ; preds = %13, %0
  %18 = phi ptr [ %16, %13 ], [ null, %0 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !67
  %20 = load ptr, ptr @cfun, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = tail call ptr %19(ptr noundef %22) #15
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %34 [
    i16 10, label %26
    i16 12, label %26
  ]

26:                                               ; preds = %17, %17
  %27 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %33 = icmp eq ptr %28, %32
  br label %34

34:                                               ; preds = %26, %17, %31
  %35 = phi i1 [ %33, %31 ], [ false, %17 ], [ true, %26 ]
  %36 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef nonnull %23) #15
  %37 = zext i1 %35 to i8
  %38 = icmp eq i8 %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @.str.2) #15
  br label %40

40:                                               ; preds = %34, %39
  %41 = load ptr, ptr @cfun, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !81
  %44 = load ptr, ptr %43, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 4
  br label %46

46:                                               ; preds = %193, %40
  %47 = phi i8 [ 0, %40 ], [ %194, %193 ]
  %48 = phi ptr [ %44, %40 ], [ %50, %193 ]
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !84
  %51 = load ptr, ptr @cfun, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = icmp eq ptr %50, %55
  br i1 %56, label %196, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %59 = load i32, ptr %58, align 8, !tbaa !87, !noalias !88
  %60 = and i32 %59, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !46, !noalias !88
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !91, !noalias !88
  br label %68

68:                                               ; preds = %66, %62, %57
  %69 = phi ptr [ %67, %66 ], [ null, %62 ], [ null, %57 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %69, align 8, !tbaa !93, !noalias !88
  br label %73

73:                                               ; preds = %68, %71
  %74 = phi ptr [ %72, %71 ], [ null, %68 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %193, label %76

76:                                               ; preds = %73, %189
  %77 = phi i8 [ %188, %189 ], [ %47, %73 ]
  %78 = phi ptr [ %191, %189 ], [ %74, %73 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !95
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %186

83:                                               ; preds = %76
  %84 = zext nneg i32 %81 to i64
  %85 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !50
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !97
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %92

92:                                               ; preds = %91, %83
  %93 = getelementptr inbounds i8, ptr %79, i64 %89
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 121
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.tree_exp, ptr %95, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  br label %102

102:                                              ; preds = %92, %99
  %103 = phi ptr [ %101, %99 ], [ null, %92 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %186, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.tree_function_decl, ptr %103, i64 0, i32 5
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 6144
  %109 = icmp eq i32 %108, 6144
  br i1 %109, label %110, label %186

110:                                              ; preds = %105
  %111 = and i32 %107, 2047
  switch i32 %111, label %112 [
    i32 515, label %113
    i32 505, label %186
    i32 418, label %186
    i32 492, label %186
  ]

112:                                              ; preds = %110
  br label %186

113:                                              ; preds = %110
  %114 = load i32, ptr %45, align 4, !tbaa !98
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %45, align 4, !tbaa !98
  %116 = load i32, ptr %79, align 8
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -1
  %119 = icmp ult i32 %118, 9
  tail call void @llvm.assume(i1 %119)
  %120 = zext nneg i32 %117 to i64
  %121 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !50
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !97
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %128

128:                                              ; preds = %127, %113
  %129 = getelementptr inbounds i8, ptr %79, i64 %125
  %130 = getelementptr inbounds ptr, ptr %129, i64 3
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 121
  br i1 %134, label %135, label %186

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 45
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.tree_exp, ptr %137, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = tail call i32 @integer_zerop(ptr noundef %143) #15
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %186, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.tree_exp, ptr %137, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  br label %149

149:                                              ; preds = %146, %135
  %150 = phi ptr [ %148, %146 ], [ %137, %135 ]
  %151 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 16
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !67
  %156 = load ptr, ptr @cfun, align 8, !tbaa !35
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !79
  %159 = tail call ptr %155(ptr noundef %158) #15
  %160 = getelementptr inbounds %struct.tree_type, ptr %159, i64 0, i32 16
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  %162 = icmp eq ptr %154, %161
  br i1 %162, label %163, label %186

163:                                              ; preds = %149
  %164 = load i64, ptr %150, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 32
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = and i64 %164, 67108864
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.tree_decl_common, ptr %150, i64 0, i32 2
  %172 = load i64, ptr %171, align 8
  %173 = lshr i64 %172, 25
  %174 = trunc i64 %173 to i8
  %175 = and i8 %174, 1
  br label %176

176:                                              ; preds = %167, %170
  %177 = phi i8 [ 1, %167 ], [ %175, %170 ]
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 7
  %181 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 8
  %182 = load ptr, ptr %1, align 8, !tbaa !56
  %183 = getelementptr inbounds %struct.tree_decl_minimal, ptr %150, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !46
  %185 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %182, i32 noundef %184) #15
  store ptr %50, ptr %180, align 8, !tbaa !99
  store ptr %150, ptr %181, align 8, !tbaa !100
  br label %186

186:                                              ; preds = %110, %110, %176, %149, %163, %141, %128, %110, %102, %105, %76, %179, %112
  %187 = phi i1 [ false, %112 ], [ false, %179 ], [ false, %76 ], [ false, %105 ], [ false, %102 ], [ false, %110 ], [ true, %128 ], [ true, %141 ], [ true, %163 ], [ true, %149 ], [ true, %176 ], [ false, %110 ], [ false, %110 ]
  %188 = phi i8 [ %77, %112 ], [ %77, %179 ], [ %77, %76 ], [ %77, %105 ], [ %77, %102 ], [ 1, %110 ], [ 1, %128 ], [ 1, %141 ], [ 1, %163 ], [ 1, %149 ], [ 1, %176 ], [ 1, %110 ], [ 1, %110 ]
  br i1 %187, label %193, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %78, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !101
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %76, !llvm.loop !102

193:                                              ; preds = %189, %186, %73
  %194 = phi i8 [ %47, %73 ], [ %188, %186 ], [ %188, %189 ]
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %46, label %196

196:                                              ; preds = %193, %46
  %197 = phi i8 [ %47, %46 ], [ %194, %193 ]
  %198 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  %201 = icmp ne i8 %197, 0
  %202 = or i1 %201, %200
  br i1 %202, label %1061, label %203

203:                                              ; preds = %196
  %204 = icmp sgt i32 %199, 1
  %205 = and i1 %35, %204
  br i1 %205, label %1061, label %206

206:                                              ; preds = %203
  %207 = xor i1 %35, true
  %208 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 45), align 8
  %209 = icmp eq ptr %208, null
  %210 = select i1 %207, i1 %209, i1 false
  %211 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 46), align 16
  %212 = icmp eq ptr %211, null
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %1061, label %214

214:                                              ; preds = %206
  br i1 %35, label %215, label %220

215:                                              ; preds = %214
  %216 = load ptr, ptr @cfun, align 8, !tbaa !35
  %217 = getelementptr inbounds %struct.function, ptr %216, i64 0, i32 20
  %218 = load i32, ptr %217, align 8
  %219 = or i32 %218, 65280
  store i32 %219, ptr %217, align 8
  br label %220

220:                                              ; preds = %215, %214
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %221 = load ptr, ptr %1, align 8, !tbaa !56
  %222 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !103
  %223 = load ptr, ptr @cfun, align 8, !tbaa !35
  %224 = getelementptr inbounds %struct.function, ptr %223, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !81
  %226 = load ptr, ptr %225, align 8, !tbaa !82
  %227 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 3
  %228 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 2
  %229 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 5
  br label %230

230:                                              ; preds = %699, %220
  %231 = phi i8 [ 0, %220 ], [ %700, %699 ]
  %232 = phi ptr [ %226, %220 ], [ %234, %699 ]
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %232, i64 0, i32 6
  %234 = load ptr, ptr %233, align 8, !tbaa !84
  %235 = load ptr, ptr @cfun, align 8, !tbaa !35
  %236 = getelementptr inbounds %struct.function, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !81
  %238 = getelementptr inbounds %struct.control_flow_graph, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !86
  %240 = icmp eq ptr %234, %239
  br i1 %240, label %702, label %241

241:                                              ; preds = %230
  store i32 -1, ptr %227, align 8, !tbaa !106
  store ptr %234, ptr %228, align 8, !tbaa !107
  br i1 %35, label %242, label %323

242:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %234) #15
  %243 = load ptr, ptr %3, align 8, !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %244 = icmp eq ptr %243, null
  br i1 %244, label %323, label %245

245:                                              ; preds = %242, %318
  %246 = phi i8 [ %319, %318 ], [ %231, %242 ]
  %247 = phi ptr [ %321, %318 ], [ %243, %242 ]
  %248 = load ptr, ptr %247, align 8, !tbaa !95
  %249 = getelementptr inbounds %struct.gimple_statement_phi, ptr %248, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !35
  %251 = call zeroext i8 @is_gimple_reg(ptr noundef %250) #15
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %318, label %253

253:                                              ; preds = %245
  %254 = load ptr, ptr %249, align 8, !tbaa !46
  %255 = call zeroext i8 @is_gimple_reg(ptr noundef %254) #15
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.gimple_statement_phi, ptr %248, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !46
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.gimple_statement_phi, ptr %248, i64 0, i32 4, i64 0
  br label %263

263:                                              ; preds = %257, %253, %261
  %264 = phi i32 [ %259, %261 ], [ 0, %253 ], [ %259, %257 ]
  %265 = phi i32 [ 1, %261 ], [ 0, %253 ], [ 0, %257 ]
  %266 = phi ptr [ %248, %261 ], [ null, %253 ], [ %248, %257 ]
  %267 = phi i1 [ true, %261 ], [ false, %253 ], [ false, %257 ]
  %268 = phi i8 [ 0, %261 ], [ 1, %253 ], [ 1, %257 ]
  %269 = phi ptr [ %262, %261 ], [ null, %253 ], [ null, %257 ]
  br i1 %267, label %270, label %318

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.gimple_statement_phi, ptr %266, i64 0, i32 1
  br label %272

272:                                              ; preds = %270, %313
  %273 = phi i8 [ %246, %270 ], [ %303, %313 ]
  %274 = phi ptr [ %269, %270 ], [ %316, %313 ]
  %275 = phi i8 [ %268, %270 ], [ %315, %313 ]
  %276 = phi i32 [ %265, %270 ], [ %314, %313 ]
  %277 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %274, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !109
  %279 = load ptr, ptr %278, align 8, !tbaa !35
  %280 = call fastcc zeroext i8 @va_list_ptr_read(ptr noundef nonnull %1, ptr noundef %279, ptr noundef %250), !range !111
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %302

282:                                              ; preds = %272
  %283 = call fastcc zeroext i8 @va_list_ptr_write(ptr noundef nonnull %1, ptr noundef %250, ptr noundef %279), !range !111
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %302

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 5
  call fastcc void @check_va_list_escapes(ptr noundef nonnull %1, ptr noundef %250, ptr noundef %279)
  %287 = load i8, ptr %286, align 8, !tbaa !112
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %285
  %290 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %291 = icmp eq ptr %290, null
  br i1 %291, label %302, label %292

292:                                              ; preds = %289
  %293 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %294 = and i32 %293, 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %302, label %296

296:                                              ; preds = %292
  %297 = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr nonnull %290)
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %299 = load i32, ptr @dump_flags, align 4, !tbaa !50
  call void @print_gimple_stmt(ptr noundef %298, ptr noundef %248, i32 noundef 0, i32 noundef %299) #15
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %301 = call i32 @fputc(i32 noundef 10, ptr noundef %300)
  br label %302

302:                                              ; preds = %272, %282, %285, %296, %292, %289
  %303 = phi i8 [ %273, %272 ], [ %273, %282 ], [ %273, %285 ], [ 1, %296 ], [ 1, %292 ], [ 1, %289 ]
  %304 = icmp slt i32 %276, %264
  br i1 %304, label %305, label %313

305:                                              ; preds = %302
  %306 = add nsw i32 %276, 1
  %307 = load i32, ptr %271, align 8, !tbaa !46
  %308 = icmp ult i32 %307, %276
  br i1 %308, label %309, label %310

309:                                              ; preds = %305
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.2) #15
  br label %310

310:                                              ; preds = %309, %305
  %311 = zext i32 %276 to i64
  %312 = getelementptr inbounds %struct.gimple_statement_phi, ptr %266, i64 0, i32 4, i64 %311
  br label %313

313:                                              ; preds = %302, %310
  %314 = phi i32 [ %306, %310 ], [ %276, %302 ]
  %315 = phi i8 [ %275, %310 ], [ 1, %302 ]
  %316 = phi ptr [ %312, %310 ], [ null, %302 ]
  %317 = icmp eq i8 %315, 0
  br i1 %317, label %272, label %318, !llvm.loop !113

318:                                              ; preds = %313, %263, %245
  %319 = phi i8 [ %246, %245 ], [ %246, %263 ], [ %303, %313 ]
  %320 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %247, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !101
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %245, !llvm.loop !114

323:                                              ; preds = %318, %242, %241
  %324 = phi i8 [ %231, %241 ], [ %231, %242 ], [ %319, %318 ]
  %325 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 13
  %326 = load i32, ptr %325, align 8, !tbaa !87, !noalias !115
  %327 = and i32 %326, 512
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 7
  %331 = load ptr, ptr %330, align 8, !tbaa !46, !noalias !115
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr %331, align 8, !tbaa !91, !noalias !115
  br label %335

335:                                              ; preds = %333, %329, %323
  %336 = phi ptr [ %334, %333 ], [ null, %329 ], [ null, %323 ]
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  %339 = load ptr, ptr %336, align 8, !tbaa !93, !noalias !115
  br label %340

340:                                              ; preds = %335, %338
  %341 = phi ptr [ %339, %338 ], [ null, %335 ]
  %342 = icmp ne ptr %341, null
  %343 = icmp eq i8 %324, 0
  %344 = select i1 %342, i1 %343, i1 false
  br i1 %344, label %345, label %699

345:                                              ; preds = %340, %692
  %346 = phi i8 [ %693, %692 ], [ %324, %340 ]
  %347 = phi ptr [ %695, %692 ], [ %341, %340 ]
  %348 = load ptr, ptr %347, align 8, !tbaa !95
  %349 = load i32, ptr %348, align 8
  %350 = and i32 %349, 255
  %351 = icmp eq i32 %350, 8
  br i1 %351, label %352, label %379

352:                                              ; preds = %345
  %353 = zext nneg i32 %350 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !50
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !97
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %361

361:                                              ; preds = %360, %352
  %362 = getelementptr inbounds i8, ptr %348, i64 %358
  %363 = getelementptr inbounds ptr, ptr %362, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !35
  %365 = load i64, ptr %364, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 121
  br i1 %367, label %368, label %371

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.tree_exp, ptr %364, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !46
  br label %371

371:                                              ; preds = %361, %368
  %372 = phi ptr [ %370, %368 ], [ null, %361 ]
  %373 = icmp eq ptr %372, null
  br i1 %373, label %379, label %374

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.tree_function_decl, ptr %372, i64 0, i32 5
  %376 = load i32, ptr %375, align 8
  %377 = and i32 %376, 8190
  %378 = icmp eq i32 %377, 6658
  br i1 %378, label %692, label %379

379:                                              ; preds = %371, %374, %345
  %380 = load i32, ptr %348, align 8
  %381 = trunc i32 %380 to i8
  switch i8 %381, label %673 [
    i8 6, label %382
    i8 2, label %692
  ]

382:                                              ; preds = %379
  %383 = and i32 %380, 255
  %384 = zext nneg i32 %383 to i64
  %385 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !50
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %387
  %389 = load i64, ptr %388, align 8, !tbaa !97
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %382
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %392

392:                                              ; preds = %391, %382
  %393 = getelementptr inbounds i8, ptr %348, i64 %389
  %394 = load ptr, ptr %393, align 8, !tbaa !35
  %395 = load i32, ptr %348, align 8
  %396 = and i32 %395, 255
  %397 = add nsw i32 %396, -10
  %398 = icmp ult i32 %397, -9
  br i1 %398, label %412, label %399

399:                                              ; preds = %392
  %400 = zext nneg i32 %396 to i64
  %401 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !50
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %403
  %405 = load i64, ptr %404, align 8, !tbaa !97
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %399
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %408

408:                                              ; preds = %407, %399
  %409 = getelementptr inbounds i8, ptr %348, i64 %405
  %410 = getelementptr inbounds ptr, ptr %409, i64 1
  %411 = load ptr, ptr %410, align 8, !tbaa !35
  br label %412

412:                                              ; preds = %392, %408
  %413 = phi ptr [ %411, %408 ], [ null, %392 ]
  %414 = load i32, ptr %348, align 8
  %415 = trunc i32 %414 to i8
  br i1 %35, label %416, label %625

416:                                              ; preds = %412
  switch i8 %415, label %419 [
    i8 6, label %417
    i8 1, label %417
    i8 8, label %420
  ]

417:                                              ; preds = %416, %416
  %418 = lshr i32 %414, 16
  br label %420

419:                                              ; preds = %416
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %420

420:                                              ; preds = %419, %417, %416
  %421 = phi i32 [ %418, %417 ], [ 0, %419 ], [ 59, %416 ]
  %422 = zext nneg i32 %421 to i64
  %423 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !46
  %425 = icmp eq i8 %424, 3
  br i1 %425, label %426, label %446

426:                                              ; preds = %420
  %427 = load i32, ptr %348, align 8
  %428 = and i32 %427, 255
  %429 = add nsw i32 %428, -1
  %430 = icmp ult i32 %429, 9
  call void @llvm.assume(i1 %430)
  %431 = zext nneg i32 %428 to i64
  %432 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !50
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %434
  %436 = load i64, ptr %435, align 8, !tbaa !97
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %426
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %439

439:                                              ; preds = %438, %426
  %440 = getelementptr inbounds i8, ptr %348, i64 %436
  %441 = getelementptr inbounds ptr, ptr %440, i64 1
  %442 = load ptr, ptr %441, align 8, !tbaa !35
  %443 = load i64, ptr %442, align 8
  %444 = trunc i64 %443 to i32
  %445 = and i32 %444, 65535
  br label %446

446:                                              ; preds = %420, %439
  %447 = phi i32 [ %445, %439 ], [ %421, %420 ]
  %448 = zext nneg i32 %447 to i64
  %449 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !46
  %451 = icmp eq i8 %450, 3
  br i1 %451, label %452, label %458

452:                                              ; preds = %446
  %453 = call fastcc zeroext i8 @va_list_ptr_read(ptr noundef nonnull %1, ptr noundef %413, ptr noundef %394), !range !111
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %455, label %692

455:                                              ; preds = %452
  %456 = call fastcc zeroext i8 @va_list_ptr_write(ptr noundef nonnull %1, ptr noundef %394, ptr noundef %413), !range !111
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %458, label %692

458:                                              ; preds = %455, %446
  %459 = load i32, ptr %348, align 8
  %460 = trunc i32 %459 to i8
  switch i8 %460, label %463 [
    i8 6, label %461
    i8 1, label %461
    i8 8, label %464
  ]

461:                                              ; preds = %458, %458
  %462 = lshr i32 %459, 16
  br label %464

463:                                              ; preds = %458
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %464

464:                                              ; preds = %463, %461, %458
  %465 = phi i32 [ %462, %461 ], [ 0, %463 ], [ 59, %458 ]
  %466 = zext nneg i32 %465 to i64
  %467 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !46
  %469 = icmp eq i8 %468, 3
  br i1 %469, label %470, label %490

470:                                              ; preds = %464
  %471 = load i32, ptr %348, align 8
  %472 = and i32 %471, 255
  %473 = add nsw i32 %472, -1
  %474 = icmp ult i32 %473, 9
  call void @llvm.assume(i1 %474)
  %475 = zext nneg i32 %472 to i64
  %476 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %475
  %477 = load i32, ptr %476, align 4, !tbaa !50
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %478
  %480 = load i64, ptr %479, align 8, !tbaa !97
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %470
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %483

483:                                              ; preds = %482, %470
  %484 = getelementptr inbounds i8, ptr %348, i64 %480
  %485 = getelementptr inbounds ptr, ptr %484, i64 1
  %486 = load ptr, ptr %485, align 8, !tbaa !35
  %487 = load i64, ptr %486, align 8
  %488 = trunc i64 %487 to i32
  %489 = and i32 %488, 65535
  br label %490

490:                                              ; preds = %464, %483
  %491 = phi i32 [ %489, %483 ], [ %465, %464 ]
  %492 = icmp eq i32 %491, 66
  br i1 %492, label %493, label %516

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.gimple_statement_base, ptr %348, i64 0, i32 3
  %495 = load i32, ptr %494, align 4, !tbaa !46
  %496 = icmp ugt i32 %495, 2
  call void @llvm.assume(i1 %496)
  %497 = load i32, ptr %348, align 8
  %498 = and i32 %497, 255
  %499 = add nsw i32 %498, -1
  %500 = icmp ult i32 %499, 9
  call void @llvm.assume(i1 %500)
  %501 = zext nneg i32 %498 to i64
  %502 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !50
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %504
  %506 = load i64, ptr %505, align 8, !tbaa !97
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %493
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %509

509:                                              ; preds = %508, %493
  %510 = getelementptr inbounds i8, ptr %348, i64 %506
  %511 = getelementptr inbounds ptr, ptr %510, i64 2
  %512 = load ptr, ptr %511, align 8, !tbaa !35
  %513 = load i64, ptr %512, align 8
  %514 = and i64 %513, 65535
  %515 = icmp eq i64 %514, 23
  br i1 %515, label %624, label %516

516:                                              ; preds = %509, %490
  %517 = load i32, ptr %348, align 8
  %518 = trunc i32 %517 to i8
  switch i8 %518, label %521 [
    i8 6, label %519
    i8 1, label %519
    i8 8, label %522
  ]

519:                                              ; preds = %516, %516
  %520 = lshr i32 %517, 16
  br label %522

521:                                              ; preds = %516
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %522

522:                                              ; preds = %516, %521, %519
  %523 = phi i32 [ %520, %519 ], [ 0, %521 ], [ 59, %516 ]
  %524 = zext nneg i32 %523 to i64
  %525 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !46
  %527 = icmp eq i8 %526, 3
  br i1 %527, label %528, label %548

528:                                              ; preds = %522
  %529 = load i32, ptr %348, align 8
  %530 = and i32 %529, 255
  %531 = add nsw i32 %530, -1
  %532 = icmp ult i32 %531, 9
  call void @llvm.assume(i1 %532)
  %533 = zext nneg i32 %530 to i64
  %534 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !50
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %536
  %538 = load i64, ptr %537, align 8, !tbaa !97
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %528
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %541

541:                                              ; preds = %540, %528
  %542 = getelementptr inbounds i8, ptr %348, i64 %538
  %543 = getelementptr inbounds ptr, ptr %542, i64 1
  %544 = load ptr, ptr %543, align 8, !tbaa !35
  %545 = load i64, ptr %544, align 8
  %546 = trunc i64 %545 to i32
  %547 = and i32 %546, 65535
  br label %548

548:                                              ; preds = %522, %541
  %549 = phi i32 [ %547, %541 ], [ %523, %522 ]
  %550 = icmp eq i32 %549, 116
  br i1 %550, label %624, label %551

551:                                              ; preds = %548
  %552 = load i32, ptr %348, align 8
  %553 = trunc i32 %552 to i8
  switch i8 %553, label %556 [
    i8 6, label %554
    i8 1, label %554
    i8 8, label %557
  ]

554:                                              ; preds = %551, %551
  %555 = lshr i32 %552, 16
  br label %557

556:                                              ; preds = %551
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %557

557:                                              ; preds = %556, %554, %551
  %558 = phi i32 [ %555, %554 ], [ 0, %556 ], [ 59, %551 ]
  %559 = zext nneg i32 %558 to i64
  %560 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !46
  %562 = icmp eq i8 %561, 3
  br i1 %562, label %563, label %583

563:                                              ; preds = %557
  %564 = load i32, ptr %348, align 8
  %565 = and i32 %564, 255
  %566 = add nsw i32 %565, -1
  %567 = icmp ult i32 %566, 9
  call void @llvm.assume(i1 %567)
  %568 = zext nneg i32 %565 to i64
  %569 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %568
  %570 = load i32, ptr %569, align 4, !tbaa !50
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %571
  %573 = load i64, ptr %572, align 8, !tbaa !97
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %563
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %576

576:                                              ; preds = %575, %563
  %577 = getelementptr inbounds i8, ptr %348, i64 %573
  %578 = getelementptr inbounds ptr, ptr %577, i64 1
  %579 = load ptr, ptr %578, align 8, !tbaa !35
  %580 = load i64, ptr %579, align 8
  %581 = trunc i64 %580 to i32
  %582 = and i32 %581, 65535
  br label %583

583:                                              ; preds = %557, %576
  %584 = phi i32 [ %582, %576 ], [ %558, %557 ]
  %585 = icmp eq i32 %584, 113
  br i1 %585, label %624, label %586

586:                                              ; preds = %583
  %587 = load i32, ptr %348, align 8
  %588 = trunc i32 %587 to i8
  switch i8 %588, label %591 [
    i8 6, label %589
    i8 1, label %589
    i8 8, label %592
  ]

589:                                              ; preds = %586, %586
  %590 = lshr i32 %587, 16
  br label %592

591:                                              ; preds = %586
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %592

592:                                              ; preds = %591, %589, %586
  %593 = phi i32 [ %590, %589 ], [ 0, %591 ], [ 59, %586 ]
  %594 = zext nneg i32 %593 to i64
  %595 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %594
  %596 = load i8, ptr %595, align 1, !tbaa !46
  %597 = icmp eq i8 %596, 3
  br i1 %597, label %598, label %618

598:                                              ; preds = %592
  %599 = load i32, ptr %348, align 8
  %600 = and i32 %599, 255
  %601 = add nsw i32 %600, -1
  %602 = icmp ult i32 %601, 9
  call void @llvm.assume(i1 %602)
  %603 = zext nneg i32 %600 to i64
  %604 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %603
  %605 = load i32, ptr %604, align 4, !tbaa !50
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %606
  %608 = load i64, ptr %607, align 8, !tbaa !97
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %610, label %611

610:                                              ; preds = %598
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %611

611:                                              ; preds = %610, %598
  %612 = getelementptr inbounds i8, ptr %348, i64 %608
  %613 = getelementptr inbounds ptr, ptr %612, i64 1
  %614 = load ptr, ptr %613, align 8, !tbaa !35
  %615 = load i64, ptr %614, align 8
  %616 = trunc i64 %615 to i32
  %617 = and i32 %616, 65535
  br label %618

618:                                              ; preds = %592, %611
  %619 = phi i32 [ %617, %611 ], [ %593, %592 ]
  %620 = zext nneg i32 %619 to i64
  %621 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %620
  %622 = load i8, ptr %621, align 1, !tbaa !46
  %623 = icmp eq i8 %622, 3
  br i1 %623, label %624, label %673

624:                                              ; preds = %618, %583, %548, %509
  call fastcc void @check_va_list_escapes(ptr noundef nonnull %1, ptr noundef %394, ptr noundef %413)
  br label %673

625:                                              ; preds = %412
  switch i8 %415, label %628 [
    i8 6, label %626
    i8 1, label %626
    i8 8, label %629
  ]

626:                                              ; preds = %625, %625
  %627 = lshr i32 %414, 16
  br label %629

628:                                              ; preds = %625
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %629

629:                                              ; preds = %628, %626, %625
  %630 = phi i32 [ %627, %626 ], [ 0, %628 ], [ 59, %625 ]
  %631 = zext nneg i32 %630 to i64
  %632 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !46
  %634 = icmp eq i8 %633, 3
  br i1 %634, label %635, label %655

635:                                              ; preds = %629
  %636 = load i32, ptr %348, align 8
  %637 = and i32 %636, 255
  %638 = add nsw i32 %637, -1
  %639 = icmp ult i32 %638, 9
  call void @llvm.assume(i1 %639)
  %640 = zext nneg i32 %637 to i64
  %641 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %640
  %642 = load i32, ptr %641, align 4, !tbaa !50
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %643
  %645 = load i64, ptr %644, align 8, !tbaa !97
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %647, label %648

647:                                              ; preds = %635
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %648

648:                                              ; preds = %647, %635
  %649 = getelementptr inbounds i8, ptr %348, i64 %645
  %650 = getelementptr inbounds ptr, ptr %649, i64 1
  %651 = load ptr, ptr %650, align 8, !tbaa !35
  %652 = load i64, ptr %651, align 8
  %653 = trunc i64 %652 to i32
  %654 = and i32 %653, 65535
  br label %655

655:                                              ; preds = %629, %648
  %656 = phi i32 [ %654, %648 ], [ %630, %629 ]
  %657 = zext nneg i32 %656 to i64
  %658 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %657
  %659 = load i8, ptr %658, align 1, !tbaa !46
  %660 = icmp eq i8 %659, 3
  br i1 %660, label %661, label %667

661:                                              ; preds = %655
  %662 = call fastcc zeroext i8 @va_list_counter_struct_op(ptr noundef nonnull %1, ptr noundef %394, ptr noundef %413, i8 noundef zeroext 1), !range !111
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %664, label %692

664:                                              ; preds = %661
  %665 = call fastcc zeroext i8 @va_list_counter_struct_op(ptr noundef nonnull %1, ptr noundef %413, ptr noundef %394, i8 noundef zeroext 0), !range !111
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %667, label %692

667:                                              ; preds = %664, %655
  %668 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 82), align 8, !tbaa !118
  %669 = icmp eq ptr %668, null
  br i1 %669, label %673, label %670

670:                                              ; preds = %667
  %671 = call zeroext i8 %668(ptr noundef nonnull %1, ptr noundef nonnull %348) #15
  %672 = icmp eq i8 %671, 0
  br i1 %672, label %673, label %692

673:                                              ; preds = %379, %670, %618, %624, %667
  %674 = load i8, ptr %229, align 8, !tbaa !112
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %679

676:                                              ; preds = %673
  %677 = call ptr @walk_gimple_op(ptr noundef %348, ptr noundef nonnull @find_va_list_reference, ptr noundef nonnull %2) #15
  %678 = icmp eq ptr %677, null
  br i1 %678, label %692, label %679

679:                                              ; preds = %676, %673
  %680 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %681 = icmp eq ptr %680, null
  br i1 %681, label %692, label %682

682:                                              ; preds = %679
  %683 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %684 = and i32 %683, 8
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %692, label %686

686:                                              ; preds = %682
  %687 = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr nonnull %680)
  %688 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %689 = load i32, ptr @dump_flags, align 4, !tbaa !50
  call void @print_gimple_stmt(ptr noundef %688, ptr noundef %348, i32 noundef 0, i32 noundef %689) #15
  %690 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %691 = call i32 @fputc(i32 noundef 10, ptr noundef %690)
  br label %692

692:                                              ; preds = %679, %676, %379, %374, %686, %682, %452, %455, %661, %664, %670
  %693 = phi i8 [ %346, %670 ], [ %346, %664 ], [ %346, %661 ], [ %346, %455 ], [ %346, %452 ], [ 1, %686 ], [ 1, %682 ], [ %346, %374 ], [ %346, %379 ], [ %346, %676 ], [ 1, %679 ]
  %694 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %347, i64 0, i32 2
  %695 = load ptr, ptr %694, align 8, !tbaa !101
  %696 = icmp ne ptr %695, null
  %697 = icmp eq i8 %693, 0
  %698 = select i1 %696, i1 %697, i1 false
  br i1 %698, label %345, label %699, !llvm.loop !119

699:                                              ; preds = %692, %340
  %700 = phi i8 [ %324, %340 ], [ %693, %692 ]
  %701 = phi i1 [ %343, %340 ], [ %697, %692 ]
  br i1 %701, label %230, label %702

702:                                              ; preds = %699, %230
  %703 = phi i8 [ %231, %230 ], [ %700, %699 ]
  %704 = icmp eq i8 %703, 0
  %705 = select i1 %704, i1 %35, i1 false
  br i1 %705, label %706, label %1061

706:                                              ; preds = %702
  %707 = load ptr, ptr %10, align 8, !tbaa !58
  %708 = load ptr, ptr %707, align 8, !tbaa !120
  %709 = icmp eq ptr %708, null
  br i1 %709, label %1061, label %710

710:                                              ; preds = %706
  %711 = load ptr, ptr @cfun, align 8, !tbaa !35
  %712 = getelementptr inbounds %struct.function, ptr %711, i64 0, i32 1
  %713 = load ptr, ptr %712, align 8, !tbaa !81
  %714 = load ptr, ptr %713, align 8, !tbaa !82
  %715 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 6
  br label %716

716:                                              ; preds = %1056, %710
  %717 = phi ptr [ %714, %710 ], [ %719, %1056 ]
  %718 = getelementptr inbounds %struct.basic_block_def, ptr %717, i64 0, i32 6
  %719 = load ptr, ptr %718, align 8, !tbaa !84
  %720 = load ptr, ptr @cfun, align 8, !tbaa !35
  %721 = getelementptr inbounds %struct.function, ptr %720, i64 0, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !81
  %723 = getelementptr inbounds %struct.control_flow_graph, ptr %722, i64 0, i32 1
  %724 = load ptr, ptr %723, align 8, !tbaa !86
  %725 = icmp ne ptr %719, %724
  br i1 %725, label %726, label %1059

726:                                              ; preds = %716
  %727 = getelementptr inbounds %struct.basic_block_def, ptr %719, i64 0, i32 13
  %728 = load i32, ptr %727, align 8, !tbaa !87, !noalias !122
  %729 = and i32 %728, 512
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %737

731:                                              ; preds = %726
  %732 = getelementptr inbounds %struct.basic_block_def, ptr %719, i64 0, i32 7
  %733 = load ptr, ptr %732, align 8, !tbaa !46, !noalias !122
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735

735:                                              ; preds = %731
  %736 = load ptr, ptr %733, align 8, !tbaa !91, !noalias !122
  br label %737

737:                                              ; preds = %735, %731, %726
  %738 = phi ptr [ %736, %735 ], [ null, %731 ], [ null, %726 ]
  %739 = icmp eq ptr %738, null
  br i1 %739, label %742, label %740

740:                                              ; preds = %737
  %741 = load ptr, ptr %738, align 8, !tbaa !93, !noalias !122
  br label %742

742:                                              ; preds = %740, %737
  %743 = phi ptr [ %741, %740 ], [ null, %737 ]
  %744 = icmp eq ptr %743, null
  br i1 %744, label %1056, label %745

745:                                              ; preds = %742, %1052
  %746 = phi ptr [ %1054, %1052 ], [ %743, %742 ]
  %747 = load ptr, ptr %746, align 8, !tbaa !95
  %748 = load i32, ptr %747, align 8
  %749 = and i32 %748, 255
  %750 = icmp eq i32 %749, 2
  br i1 %750, label %1050, label %751

751:                                              ; preds = %745
  %752 = add nsw i32 %749, -10
  %753 = icmp ult i32 %752, -9
  br i1 %753, label %757, label %754

754:                                              ; preds = %751
  %755 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %747, i64 0, i32 2
  %756 = load ptr, ptr %755, align 8, !tbaa !46
  br label %757

757:                                              ; preds = %754, %751
  %758 = phi ptr [ %756, %754 ], [ null, %751 ]
  %759 = icmp eq ptr %758, null
  br i1 %759, label %765, label %760

760:                                              ; preds = %757
  %761 = getelementptr inbounds %struct.use_optype_d, ptr %758, i64 0, i32 1, i32 3
  %762 = load ptr, ptr %761, align 8, !tbaa !109
  %763 = load ptr, ptr %762, align 8, !tbaa !35
  %764 = load ptr, ptr %758, align 8, !tbaa !125
  br label %765

765:                                              ; preds = %760, %757
  %766 = phi ptr [ %764, %760 ], [ %758, %757 ]
  %767 = phi i8 [ 0, %760 ], [ 1, %757 ]
  %768 = phi ptr [ %763, %760 ], [ null, %757 ]
  %769 = getelementptr ptr, ptr %747, i64 1
  %770 = getelementptr ptr, ptr %747, i64 1
  %771 = getelementptr ptr, ptr %747, i64 1
  %772 = getelementptr ptr, ptr %747, i64 2
  %773 = getelementptr ptr, ptr %747, i64 1
  br i1 %759, label %1050, label %774

774:                                              ; preds = %765
  %775 = getelementptr inbounds %struct.gimple_statement_base, ptr %747, i64 0, i32 3
  br label %776

776:                                              ; preds = %774, %1045
  %777 = phi ptr [ %768, %774 ], [ %1048, %1045 ]
  %778 = phi i8 [ %767, %774 ], [ %1047, %1045 ]
  %779 = phi ptr [ %766, %774 ], [ %1046, %1045 ]
  %780 = load ptr, ptr %10, align 8, !tbaa !58
  %781 = getelementptr inbounds %struct.tree_ssa_name, ptr %777, i64 0, i32 1
  %782 = load ptr, ptr %781, align 8, !tbaa !46
  %783 = getelementptr inbounds %struct.tree_decl_minimal, ptr %782, i64 0, i32 2
  %784 = load i32, ptr %783, align 4, !tbaa !46
  %785 = call i32 @bitmap_bit_p(ptr noundef %780, i32 noundef %784) #15
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %1038, label %787

787:                                              ; preds = %776
  %788 = load i32, ptr %747, align 8
  %789 = and i32 %788, 255
  %790 = icmp eq i32 %789, 6
  br i1 %790, label %791, label %1025

791:                                              ; preds = %787
  %792 = zext nneg i32 %789 to i64
  %793 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !50
  %795 = zext i32 %794 to i64
  %796 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %795
  %797 = load i64, ptr %796, align 8, !tbaa !97
  %798 = icmp eq i64 %797, 0
  br i1 %798, label %799, label %800

799:                                              ; preds = %791
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %800

800:                                              ; preds = %799, %791
  %801 = getelementptr i8, ptr %769, i64 %797
  %802 = load ptr, ptr %801, align 8, !tbaa !35
  %803 = load i32, ptr %747, align 8
  %804 = trunc i32 %803 to i8
  switch i8 %804, label %807 [
    i8 6, label %805
    i8 1, label %805
    i8 8, label %808
  ]

805:                                              ; preds = %800, %800
  %806 = lshr i32 %803, 16
  br label %808

807:                                              ; preds = %800
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %808

808:                                              ; preds = %807, %805, %800
  %809 = phi i32 [ %806, %805 ], [ 0, %807 ], [ 59, %800 ]
  %810 = zext nneg i32 %809 to i64
  %811 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %810
  %812 = load i8, ptr %811, align 1, !tbaa !46
  %813 = icmp eq i8 %812, 3
  br i1 %813, label %814, label %833

814:                                              ; preds = %808
  %815 = load i32, ptr %747, align 8
  %816 = and i32 %815, 255
  %817 = add nsw i32 %816, -1
  %818 = icmp ult i32 %817, 9
  call void @llvm.assume(i1 %818)
  %819 = zext nneg i32 %816 to i64
  %820 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %819
  %821 = load i32, ptr %820, align 4, !tbaa !50
  %822 = zext i32 %821 to i64
  %823 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %822
  %824 = load i64, ptr %823, align 8, !tbaa !97
  %825 = icmp eq i64 %824, 0
  br i1 %825, label %826, label %827

826:                                              ; preds = %814
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %827

827:                                              ; preds = %826, %814
  %828 = getelementptr i8, ptr %770, i64 %824
  %829 = load ptr, ptr %828, align 8, !tbaa !35
  %830 = load i64, ptr %829, align 8
  %831 = trunc i64 %830 to i32
  %832 = and i32 %831, 65535
  br label %833

833:                                              ; preds = %827, %808
  %834 = phi i32 [ %832, %827 ], [ %809, %808 ]
  %835 = load i32, ptr %747, align 8
  %836 = trunc i32 %835 to i8
  switch i8 %836, label %839 [
    i8 6, label %837
    i8 1, label %837
    i8 8, label %840
  ]

837:                                              ; preds = %833, %833
  %838 = lshr i32 %835, 16
  br label %840

839:                                              ; preds = %833
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %840

840:                                              ; preds = %839, %837, %833
  %841 = phi i32 [ %838, %837 ], [ 0, %839 ], [ 59, %833 ]
  %842 = zext nneg i32 %841 to i64
  %843 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %842
  %844 = load i8, ptr %843, align 1, !tbaa !46
  %845 = icmp eq i8 %844, 3
  br i1 %845, label %846, label %865

846:                                              ; preds = %840
  %847 = load i32, ptr %747, align 8
  %848 = and i32 %847, 255
  %849 = add nsw i32 %848, -1
  %850 = icmp ult i32 %849, 9
  call void @llvm.assume(i1 %850)
  %851 = zext nneg i32 %848 to i64
  %852 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %851
  %853 = load i32, ptr %852, align 4, !tbaa !50
  %854 = zext i32 %853 to i64
  %855 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %854
  %856 = load i64, ptr %855, align 8, !tbaa !97
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %858, label %859

858:                                              ; preds = %846
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %859

859:                                              ; preds = %858, %846
  %860 = getelementptr i8, ptr %771, i64 %856
  %861 = load ptr, ptr %860, align 8, !tbaa !35
  %862 = load i64, ptr %861, align 8
  %863 = trunc i64 %862 to i32
  %864 = and i32 %863, 65535
  br label %865

865:                                              ; preds = %859, %840
  %866 = phi i32 [ %864, %859 ], [ %841, %840 ]
  %867 = icmp eq i32 %866, 47
  br i1 %867, label %868, label %910

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct.tree_exp, ptr %802, i64 0, i32 3
  %870 = load ptr, ptr %869, align 8, !tbaa !46
  %871 = icmp eq ptr %870, %777
  br i1 %871, label %872, label %910

872:                                              ; preds = %868
  %873 = getelementptr inbounds %struct.tree_common, ptr %802, i64 0, i32 2
  %874 = load ptr, ptr %873, align 8, !tbaa !46
  %875 = getelementptr inbounds %struct.tree_type, ptr %874, i64 0, i32 3
  %876 = load ptr, ptr %875, align 8, !tbaa !46
  %877 = icmp eq ptr %876, null
  br i1 %877, label %910, label %878

878:                                              ; preds = %872
  %879 = call i32 @host_integerp(ptr noundef nonnull %876, i32 noundef 1) #15
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %910, label %881

881:                                              ; preds = %878
  %882 = load ptr, ptr %715, align 8, !tbaa !127
  %883 = getelementptr inbounds %struct.tree_ssa_name, ptr %777, i64 0, i32 3
  %884 = load i32, ptr %883, align 8, !tbaa !46
  %885 = zext i32 %884 to i64
  %886 = getelementptr inbounds i32, ptr %882, i64 %885
  %887 = load i32, ptr %886, align 4, !tbaa !50
  %888 = icmp eq i32 %887, -1
  br i1 %888, label %910, label %889

889:                                              ; preds = %881
  %890 = load ptr, ptr %873, align 8, !tbaa !46
  %891 = getelementptr inbounds %struct.tree_type, ptr %890, i64 0, i32 3
  %892 = load ptr, ptr %891, align 8, !tbaa !46
  %893 = sext i32 %887 to i64
  %894 = call i64 @tree_low_cst(ptr noundef %892, i32 noundef 1) #15
  %895 = add nsw i64 %894, %893
  %896 = icmp ugt i64 %895, 254
  %897 = load ptr, ptr @cfun, align 8, !tbaa !35
  %898 = getelementptr inbounds %struct.function, ptr %897, i64 0, i32 20
  %899 = load i32, ptr %898, align 8
  br i1 %896, label %900, label %902

900:                                              ; preds = %889
  %901 = or i32 %899, 255
  store i32 %901, ptr %898, align 8
  br label %1022

902:                                              ; preds = %889
  %903 = and i32 %899, 255
  %904 = zext nneg i32 %903 to i64
  %905 = icmp ugt i64 %895, %904
  br i1 %905, label %906, label %1022

906:                                              ; preds = %902
  %907 = trunc i64 %895 to i32
  %908 = and i32 %899, -256
  %909 = or disjoint i32 %908, %907
  store i32 %909, ptr %898, align 8
  br label %1022

910:                                              ; preds = %881, %878, %872, %868, %865
  %911 = icmp eq ptr %802, %777
  br i1 %911, label %912, label %1021

912:                                              ; preds = %910
  %913 = icmp eq i32 %834, 66
  br i1 %913, label %914, label %935

914:                                              ; preds = %912
  %915 = load i32, ptr %775, align 4, !tbaa !46
  %916 = icmp ugt i32 %915, 2
  call void @llvm.assume(i1 %916)
  %917 = load i32, ptr %747, align 8
  %918 = and i32 %917, 255
  %919 = add nsw i32 %918, -1
  %920 = icmp ult i32 %919, 9
  call void @llvm.assume(i1 %920)
  %921 = zext nneg i32 %918 to i64
  %922 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %921
  %923 = load i32, ptr %922, align 4, !tbaa !50
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %924
  %926 = load i64, ptr %925, align 8, !tbaa !97
  %927 = icmp eq i64 %926, 0
  br i1 %927, label %928, label %929

928:                                              ; preds = %914
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %929

929:                                              ; preds = %928, %914
  %930 = getelementptr i8, ptr %772, i64 %926
  %931 = load ptr, ptr %930, align 8, !tbaa !35
  %932 = load i64, ptr %931, align 8
  %933 = and i64 %932, 65535
  %934 = icmp eq i64 %933, 23
  br i1 %934, label %977, label %935

935:                                              ; preds = %929, %912
  %936 = load i32, ptr %747, align 8
  %937 = and i32 %936, 255
  %938 = icmp eq i32 %937, 6
  br i1 %938, label %939, label %969

939:                                              ; preds = %935
  %940 = lshr i32 %936, 16
  %941 = zext nneg i32 %940 to i64
  %942 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %941
  %943 = load i8, ptr %942, align 1, !tbaa !46
  %944 = icmp eq i8 %943, 3
  br i1 %944, label %945, label %960

945:                                              ; preds = %939
  %946 = zext nneg i32 %937 to i64
  %947 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !50
  %949 = zext i32 %948 to i64
  %950 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %949
  %951 = load i64, ptr %950, align 8, !tbaa !97
  %952 = icmp eq i64 %951, 0
  br i1 %952, label %953, label %954

953:                                              ; preds = %945
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %954

954:                                              ; preds = %953, %945
  %955 = getelementptr i8, ptr %773, i64 %951
  %956 = load ptr, ptr %955, align 8, !tbaa !35
  %957 = load i64, ptr %956, align 8
  %958 = trunc i64 %957 to i32
  %959 = and i32 %958, 65535
  br label %960

960:                                              ; preds = %954, %939
  %961 = phi i32 [ %959, %954 ], [ %940, %939 ]
  %962 = icmp eq i32 %961, 113
  %963 = and i32 %961, 65533
  %964 = icmp eq i32 %963, 116
  %965 = or i1 %962, %964
  %966 = icmp eq i32 %961, 77
  %967 = or i1 %966, %965
  %968 = zext i1 %967 to i8
  br label %969

969:                                              ; preds = %960, %935
  %970 = phi i8 [ %968, %960 ], [ 0, %935 ]
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %972, label %977

972:                                              ; preds = %969
  %973 = zext nneg i32 %834 to i64
  %974 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %973
  %975 = load i8, ptr %974, align 1, !tbaa !46
  %976 = icmp eq i8 %975, 3
  br i1 %976, label %977, label %1021

977:                                              ; preds = %972, %969, %929
  %978 = load i32, ptr %747, align 8
  %979 = and i32 %978, 255
  %980 = add nsw i32 %979, -10
  %981 = icmp ult i32 %980, -9
  br i1 %981, label %994, label %982

982:                                              ; preds = %977
  %983 = zext nneg i32 %979 to i64
  %984 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %983
  %985 = load i32, ptr %984, align 4, !tbaa !50
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %986
  %988 = load i64, ptr %987, align 8, !tbaa !97
  %989 = icmp eq i64 %988, 0
  br i1 %989, label %990, label %991

990:                                              ; preds = %982
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %991

991:                                              ; preds = %990, %982
  %992 = getelementptr inbounds i8, ptr %747, i64 %988
  %993 = load ptr, ptr %992, align 8, !tbaa !35
  br label %994

994:                                              ; preds = %991, %977
  %995 = phi ptr [ %993, %991 ], [ null, %977 ]
  %996 = load i64, ptr %995, align 8
  %997 = and i64 %996, 65535
  %998 = icmp eq i64 %997, 141
  br i1 %998, label %999, label %1007

999:                                              ; preds = %994
  %1000 = load ptr, ptr %10, align 8, !tbaa !58
  %1001 = getelementptr inbounds %struct.tree_ssa_name, ptr %995, i64 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !46
  %1003 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1002, i64 0, i32 2
  %1004 = load i32, ptr %1003, align 4, !tbaa !46
  %1005 = call i32 @bitmap_bit_p(ptr noundef %1000, i32 noundef %1004) #15
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1018

1007:                                             ; preds = %999, %994
  %1008 = load i64, ptr %995, align 8
  %1009 = and i64 %1008, 65535
  %1010 = icmp eq i64 %1009, 32
  br i1 %1010, label %1011, label %1017

1011:                                             ; preds = %1007
  %1012 = load ptr, ptr %1, align 8, !tbaa !56
  %1013 = getelementptr inbounds %struct.tree_decl_minimal, ptr %995, i64 0, i32 2
  %1014 = load i32, ptr %1013, align 4, !tbaa !46
  %1015 = call i32 @bitmap_bit_p(ptr noundef %1012, i32 noundef %1014) #15
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1011, %1007
  br label %1018

1018:                                             ; preds = %1017, %1011, %999
  %1019 = phi i1 [ true, %1017 ], [ false, %999 ], [ false, %1011 ]
  %1020 = phi i32 [ 0, %1017 ], [ 10, %999 ], [ 10, %1011 ]
  br i1 %1019, label %1021, label %1022

1021:                                             ; preds = %972, %1018, %910
  br label %1022

1022:                                             ; preds = %1021, %1018, %906, %902, %900
  %1023 = phi i32 [ 0, %1021 ], [ %1020, %1018 ], [ 10, %902 ], [ 10, %906 ], [ 10, %900 ]
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1038

1025:                                             ; preds = %1022, %787
  %1026 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1050, label %1028

1028:                                             ; preds = %1025
  %1029 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1030 = and i32 %1029, 8
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1050, label %1032

1032:                                             ; preds = %1028
  %1033 = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr nonnull %1026)
  %1034 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1035 = load i32, ptr @dump_flags, align 4, !tbaa !50
  call void @print_gimple_stmt(ptr noundef %1034, ptr noundef nonnull %747, i32 noundef 0, i32 noundef %1035) #15
  %1036 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1037 = call i32 @fputc(i32 noundef 10, ptr noundef %1036)
  br label %1050

1038:                                             ; preds = %1022, %776
  %1039 = icmp eq ptr %779, null
  br i1 %1039, label %1045, label %1040

1040:                                             ; preds = %1038
  %1041 = getelementptr inbounds %struct.use_optype_d, ptr %779, i64 0, i32 1, i32 3
  %1042 = load ptr, ptr %1041, align 8, !tbaa !109
  %1043 = load ptr, ptr %1042, align 8, !tbaa !35
  %1044 = load ptr, ptr %779, align 8, !tbaa !125
  br label %1045

1045:                                             ; preds = %1038, %1040
  %1046 = phi ptr [ %1044, %1040 ], [ %779, %1038 ]
  %1047 = phi i8 [ %778, %1040 ], [ 1, %1038 ]
  %1048 = phi ptr [ %1043, %1040 ], [ null, %1038 ]
  %1049 = icmp eq i8 %1047, 0
  br i1 %1049, label %776, label %1050, !llvm.loop !128

1050:                                             ; preds = %1045, %765, %1032, %1028, %1025, %745
  %1051 = phi i32 [ 7, %745 ], [ 1, %1032 ], [ 1, %1028 ], [ 1, %1025 ], [ 0, %765 ], [ 0, %1045 ]
  switch i32 %1051, label %1056 [
    i32 0, label %1052
    i32 7, label %1052
  ]

1052:                                             ; preds = %1050, %1050
  %1053 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %746, i64 0, i32 2
  %1054 = load ptr, ptr %1053, align 8, !tbaa !101
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1056, label %745, !llvm.loop !129

1056:                                             ; preds = %1052, %1050, %742
  %1057 = phi i32 [ 0, %742 ], [ 0, %1052 ], [ %1051, %1050 ]
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %716, label %1059, !llvm.loop !130

1059:                                             ; preds = %1056, %716
  %1060 = zext i1 %725 to i8
  br label %1061

1061:                                             ; preds = %1059, %206, %203, %702, %706, %196
  %1062 = phi i8 [ %197, %196 ], [ 0, %706 ], [ %703, %702 ], [ 1, %203 ], [ 1, %206 ], [ %1060, %1059 ]
  %1063 = icmp eq i8 %1062, 0
  br i1 %1063, label %1069, label %1064

1064:                                             ; preds = %1061
  %1065 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1066 = getelementptr inbounds %struct.function, ptr %1065, i64 0, i32 20
  %1067 = load i32, ptr %1066, align 8
  %1068 = or i32 %1067, 65535
  store i32 %1068, ptr %1066, align 8
  br label %1069

1069:                                             ; preds = %1064, %1061
  %1070 = load ptr, ptr %1, align 8, !tbaa !56
  call void @bitmap_obstack_free(ptr noundef %1070) #15
  store ptr null, ptr %1, align 8, !tbaa !56
  %1071 = load ptr, ptr %10, align 8, !tbaa !58
  call void @bitmap_obstack_free(ptr noundef %1071) #15
  store ptr null, ptr %10, align 8, !tbaa !58
  %1072 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 6
  %1073 = load ptr, ptr %1072, align 8, !tbaa !127
  call void @free(ptr noundef %1073)
  %1074 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1106, label %1076

1076:                                             ; preds = %1069
  %1077 = zext i8 %1062 to i32
  %1078 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1074, ptr noundef nonnull @.str.4, ptr noundef %18, i32 noundef %1077)
  %1079 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1080 = getelementptr inbounds %struct.function, ptr %1079, i64 0, i32 20
  %1081 = load i32, ptr %1080, align 8
  %1082 = and i32 %1081, 255
  %1083 = icmp eq i32 %1082, 255
  %1084 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %1083, label %1085, label %1087

1085:                                             ; preds = %1076
  %1086 = call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %1084)
  br label %1089

1087:                                             ; preds = %1076
  %1088 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1084, ptr noundef nonnull @.str.6, i32 noundef %1082)
  br label %1089

1089:                                             ; preds = %1087, %1085
  %1090 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1091 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %1090)
  %1092 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1093 = getelementptr inbounds %struct.function, ptr %1092, i64 0, i32 20
  %1094 = load i32, ptr %1093, align 8
  %1095 = lshr i32 %1094, 8
  %1096 = and i32 %1095, 255
  %1097 = icmp eq i32 %1096, 255
  %1098 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %1097, label %1099, label %1101

1099:                                             ; preds = %1089
  %1100 = call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %1098)
  br label %1103

1101:                                             ; preds = %1089
  %1102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1098, ptr noundef nonnull @.str.6, i32 noundef %1096)
  br label %1103

1103:                                             ; preds = %1101, %1099
  %1104 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1105 = call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %1104)
  br label %1106

1106:                                             ; preds = %1103, %1069
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @va_list_ptr_read(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %84

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %84, label %13

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %84

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8, !tbaa !46
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 67108864
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 33554432
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !106
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  store i32 0, ptr %36, align 8, !tbaa !106
  %40 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !98
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !99
  %48 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %45, ptr noundef %47), !range !111
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 1, ptr %36, align 8, !tbaa !106
  br label %51

51:                                               ; preds = %50, %43, %39
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !107
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !131
  %63 = load i32, ptr %36, align 8, !tbaa !106
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.13, ptr @.str.12
  %66 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !99
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !131
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %52, ptr noundef nonnull @.str.11, i32 noundef %62, ptr noundef nonnull %65, i32 noundef %69)
  br label %71

71:                                               ; preds = %51, %54, %58, %35
  %72 = load i32, ptr %36, align 8, !tbaa !106
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1)
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !58
  %80 = load ptr, ptr %19, align 8, !tbaa !46
  %81 = getelementptr inbounds %struct.tree_decl_minimal, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !46
  %83 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %79, i32 noundef %82) #15
  br label %84

84:                                               ; preds = %25, %74, %71, %13, %17, %30, %3, %7, %77
  %85 = phi i8 [ 1, %77 ], [ 0, %7 ], [ 0, %3 ], [ 0, %30 ], [ 0, %17 ], [ 0, %13 ], [ 0, %71 ], [ 0, %74 ], [ 0, %25 ]
  ret i8 %85
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @va_list_ptr_write(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %46

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !106
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1)
  %31 = add i64 %30, 1
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @cfun, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 20
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 255
  %38 = zext nneg i32 %37 to i64
  %39 = add i64 %30, %38
  %40 = icmp ult i64 %39, 255
  %41 = or i32 %36, 255
  %42 = trunc i64 %39 to i32
  %43 = and i32 %36, -256
  %44 = or disjoint i32 %43, %42
  %45 = select i1 %40, i32 %44, i32 %41
  store i32 %45, ptr %35, align 8
  br label %46

46:                                               ; preds = %29, %25, %13, %17, %3, %7, %33
  %47 = phi i8 [ 1, %33 ], [ 0, %7 ], [ 0, %3 ], [ 0, %17 ], [ 0, %13 ], [ 0, %25 ], [ 0, %29 ]
  ret i8 %47
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_va_list_escapes(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %92 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %92

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %14, i32 noundef %18) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %92, label %21

21:                                               ; preds = %12
  %22 = load i64, ptr %1, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 67108864
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 33554432
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25, %31, %21
  %37 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %37, align 8, !tbaa !112
  br label %92

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !106
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  store i32 0, ptr %39, align 8, !tbaa !106
  %43 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !98
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  %49 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  %51 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %48, ptr noundef %50), !range !111
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 1, ptr %39, align 8, !tbaa !106
  br label %54

54:                                               ; preds = %53, %46, %42
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !131
  %66 = load i32, ptr %39, align 8, !tbaa !106
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, ptr @.str.13, ptr @.str.12
  %69 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !99
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !131
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.11, i32 noundef %65, ptr noundef nonnull %68, i32 noundef %72)
  br label %74

74:                                               ; preds = %54, %57, %61, %38
  %75 = load i32, ptr %39, align 8, !tbaa !106
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %78, align 8, !tbaa !112
  br label %92

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !100
  %82 = tail call fastcc i64 @va_list_counter_bump(ptr noundef %0, ptr noundef %81, ptr noundef nonnull %1, i8 noundef zeroext 1)
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %85, align 8, !tbaa !112
  br label %92

86:                                               ; preds = %79
  %87 = load ptr, ptr %13, align 8, !tbaa !58
  %88 = load ptr, ptr %26, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.tree_decl_minimal, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !46
  %91 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %87, i32 noundef %90) #15
  br label %92

92:                                               ; preds = %8, %3, %12, %86, %84, %77, %36
  ret void
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @va_list_counter_struct_op(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !34 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 41
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 31
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %23) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = tail call ptr @get_base_address(ptr noundef nonnull %1) #15
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %34) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %9, align 8, !tbaa !46
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 45), align 8, !tbaa !35
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 46), align 16, !tbaa !35
  %43 = icmp eq ptr %38, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %37
  %45 = phi i8 [ 1, %37 ], [ 0, %41 ]
  tail call fastcc void @va_list_counter_op(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %45, i8 noundef zeroext %3)
  br label %46

46:                                               ; preds = %44, %41, %26, %31, %14, %18, %4, %8
  %47 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %18 ], [ 0, %14 ], [ 0, %31 ], [ 0, %26 ], [ 1, %41 ], [ 1, %44 ]
  ret i8 %47
}

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @find_va_list_reference(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #10 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %6, %3 ]
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 32
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %20) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi ptr [ null, %23 ], [ %14, %18 ]
  ret ptr %25
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @reachable_at_most_once(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %164, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %164, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !132
  %13 = tail call ptr @sbitmap_alloc(i32 noundef %12) #15
  tail call void @sbitmap_zero(ptr noundef %13) #15
  %14 = icmp eq ptr %0, null
  br label %15

15:                                               ; preds = %56, %7
  %16 = phi ptr [ null, %7 ], [ %43, %56 ]
  %17 = phi i32 [ 0, %7 ], [ %57, %56 ]
  br i1 %14, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr %0, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8, !tbaa !133
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %23, %22 ], [ 0, %19 ]
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = zext i32 %17 to i64
  %29 = getelementptr inbounds %struct.VEC_edge_base, ptr %20, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %24, %27
  %32 = phi ptr [ %30, %27 ], [ null, %24 ]
  br i1 %26, label %58, label %33

33:                                               ; preds = %31
  %34 = icmp eq ptr %16, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.VEC_edge_base, ptr %16, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !135
  %38 = load i32, ptr %16, align 8, !tbaa !133
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %35
  %41 = tail call ptr @vec_heap_p_reserve(ptr noundef %16, i32 noundef 1) #15
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %41, %40 ], [ %16, %35 ]
  %44 = load i32, ptr %43, align 8, !tbaa !133
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8, !tbaa !133
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds %struct.VEC_edge_base, ptr %43, i64 0, i32 2, i64 %46
  store ptr %32, ptr %47, align 8, !tbaa !35
  %48 = load ptr, ptr %0, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i32, ptr %48, align 8, !tbaa !133
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi i32 [ %51, %50 ], [ 0, %42 ]
  %54 = icmp ult i32 %17, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %56

56:                                               ; preds = %52, %55
  %57 = add i32 %17, 1
  br label %15, !llvm.loop !136

58:                                               ; preds = %31, %153
  %59 = phi ptr [ %154, %153 ], [ %16, %31 ]
  %60 = phi i8 [ %156, %153 ], [ 1, %31 ]
  %61 = icmp eq ptr %59, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %59, align 8, !tbaa !133
  br label %64

64:                                               ; preds = %58, %62
  %65 = phi i32 [ %63, %62 ], [ 0, %58 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %157, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %59, align 8, !tbaa !133
  %69 = add i32 %68, -1
  store i32 %69, ptr %59, align 8, !tbaa !133
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = load ptr, ptr %72, align 8, !tbaa !137
  %74 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !139
  %76 = and i32 %75, 14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %153

78:                                               ; preds = %67
  %79 = icmp eq ptr %73, %1
  br i1 %79, label %153, label %80, !llvm.loop !140

80:                                               ; preds = %78
  %81 = icmp eq ptr %73, %0
  br i1 %81, label %153, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr @cfun, align 8, !tbaa !35
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !81
  %86 = load ptr, ptr %85, align 8, !tbaa !82
  %87 = icmp eq ptr %73, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @.str.2) #15
  br label %89

89:                                               ; preds = %82, %88
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !131
  %92 = lshr i32 %91, 6
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds %struct.simple_bitmap_def, ptr %13, i64 0, i32 3, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !97
  %96 = and i32 %91, 63
  %97 = zext nneg i32 %96 to i64
  %98 = shl nuw i64 1, %97
  %99 = and i64 %98, %95
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %89
  %102 = load ptr, ptr %13, align 8, !tbaa !141
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, ptr %102, i64 %93
  %106 = load i8, ptr %105, align 1, !tbaa !46
  %107 = add i8 %106, 1
  store i8 %107, ptr %105, align 1, !tbaa !46
  br label %108

108:                                              ; preds = %101, %104
  %109 = load i64, ptr %94, align 8, !tbaa !97
  %110 = or i64 %109, %98
  store i64 %110, ptr %94, align 8, !tbaa !97
  %111 = icmp eq ptr %73, null
  br label %112

112:                                              ; preds = %151, %108
  %113 = phi ptr [ %59, %108 ], [ %138, %151 ]
  %114 = phi i32 [ 0, %108 ], [ %152, %151 ]
  br i1 %111, label %115, label %116

115:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %116

116:                                              ; preds = %115, %112
  %117 = load ptr, ptr %73, align 8, !tbaa !35
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !133
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ %120, %119 ], [ 0, %116 ]
  %123 = icmp eq i32 %122, %114
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = zext i32 %114 to i64
  %126 = getelementptr inbounds %struct.VEC_edge_base, ptr %117, i64 0, i32 2, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  br label %128

128:                                              ; preds = %121, %124
  %129 = phi ptr [ %127, %124 ], [ null, %121 ]
  br i1 %123, label %153, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.VEC_edge_base, ptr %113, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !135
  %133 = load i32, ptr %113, align 8, !tbaa !133
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = tail call ptr @vec_heap_p_reserve(ptr noundef nonnull %113, i32 noundef 1) #15
  br label %137

137:                                              ; preds = %130, %135
  %138 = phi ptr [ %136, %135 ], [ %113, %130 ]
  %139 = load i32, ptr %138, align 8, !tbaa !133
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 8, !tbaa !133
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds %struct.VEC_edge_base, ptr %138, i64 0, i32 2, i64 %141
  store ptr %129, ptr %142, align 8, !tbaa !35
  %143 = load ptr, ptr %73, align 8, !tbaa !35
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  %146 = load i32, ptr %143, align 8, !tbaa !133
  br label %147

147:                                              ; preds = %145, %137
  %148 = phi i32 [ %146, %145 ], [ 0, %137 ]
  %149 = icmp ult i32 %114, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %151

151:                                              ; preds = %147, %150
  %152 = add i32 %114, 1
  br label %112, !llvm.loop !143

153:                                              ; preds = %128, %89, %80, %78, %67
  %154 = phi ptr [ %59, %78 ], [ %59, %80 ], [ %59, %89 ], [ %59, %67 ], [ %113, %128 ]
  %155 = phi i1 [ false, %78 ], [ true, %80 ], [ false, %89 ], [ true, %67 ], [ false, %128 ]
  %156 = phi i8 [ %60, %78 ], [ 0, %80 ], [ %60, %89 ], [ 0, %67 ], [ %60, %128 ]
  br i1 %155, label %157, label %58

157:                                              ; preds = %153, %64
  %158 = phi ptr [ %59, %64 ], [ %154, %153 ]
  %159 = phi i8 [ %60, %64 ], [ %156, %153 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  tail call void @free(ptr noundef %158)
  br label %162

162:                                              ; preds = %157, %161
  %163 = load ptr, ptr %13, align 8, !tbaa !141
  tail call void @free(ptr noundef %163)
  tail call void @free(ptr noundef %13)
  br label %164

164:                                              ; preds = %4, %2, %162
  %165 = phi i8 [ %159, %162 ], [ 1, %2 ], [ 0, %4 ]
  ret i8 %165
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @va_list_counter_bump(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !34 {
  %5 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %13, align 8, !tbaa !149
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  br label %19

19:                                               ; preds = %8, %15
  %20 = phi i64 [ %18, %15 ], [ 0, %8 ]
  %21 = tail call ptr @xmalloc(i64 noundef %20) #15
  store ptr %21, ptr %5, align 8, !tbaa !127
  %22 = load ptr, ptr @cfun, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !144
  %25 = getelementptr inbounds %struct.gimple_df, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !145
  %27 = icmp eq ptr %26, null
  br label %28

28:                                               ; preds = %36, %19
  %29 = phi i64 [ %38, %36 ], [ 0, %19 ]
  br i1 %27, label %32, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %26, align 8, !tbaa !149
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %28 ]
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds i32, ptr %21, i64 %29
  store i32 -1, ptr %37, align 4, !tbaa !50
  %38 = add nuw nsw i64 %29, 1
  br label %28, !llvm.loop !151

39:                                               ; preds = %32, %4
  %40 = icmp eq i8 %3, 0
  %41 = load ptr, ptr @cfun, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 20
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 8
  %45 = select i1 %40, i32 %44, i32 %43
  %46 = and i32 %45, 255
  %47 = zext nneg i32 %46 to i64
  %48 = icmp eq ptr %2, null
  br i1 %48, label %338, label %49

49:                                               ; preds = %39
  %50 = icmp eq i32 %46, 255
  br label %51

51:                                               ; preds = %49, %336
  %52 = phi ptr [ %2, %49 ], [ %334, %336 ]
  %53 = phi i64 [ 0, %49 ], [ %333, %336 ]
  %54 = load ptr, ptr %5, align 8, !tbaa !127
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !46
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %54, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %51
  br i1 %50, label %332, label %62

62:                                               ; preds = %61
  %63 = sext i32 %59 to i64
  %64 = sub i64 %53, %47
  %65 = add i64 %64, %63
  br label %332

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 6
  br i1 %71, label %72, label %332

72:                                               ; preds = %66
  %73 = zext nneg i32 %70 to i64
  %74 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !97
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %81

81:                                               ; preds = %80, %72
  %82 = getelementptr inbounds i8, ptr %68, i64 %78
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  %84 = icmp eq ptr %83, %52
  br i1 %84, label %85, label %332

85:                                               ; preds = %81
  %86 = load i32, ptr %68, align 8
  %87 = trunc i32 %86 to i8
  switch i8 %87, label %90 [
    i8 6, label %88
    i8 1, label %88
    i8 8, label %91
  ]

88:                                               ; preds = %85, %85
  %89 = lshr i32 %86, 16
  br label %91

90:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %91

91:                                               ; preds = %90, %88, %85
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ], [ 59, %85 ]
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !46
  %96 = icmp eq i8 %95, 3
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load i32, ptr %68, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i32 %100, 9
  tail call void @llvm.assume(i1 %101)
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !50
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !97
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %110

110:                                              ; preds = %109, %97
  %111 = getelementptr inbounds i8, ptr %68, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = load i64, ptr %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = and i32 %115, 65535
  br label %117

117:                                              ; preds = %91, %110
  %118 = phi i32 [ %116, %110 ], [ %92, %91 ]
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !46
  %122 = icmp eq i8 %121, 3
  br i1 %122, label %161, label %123

123:                                              ; preds = %117
  %124 = load i32, ptr %68, align 8
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 6
  br i1 %126, label %127, label %158

127:                                              ; preds = %123
  %128 = lshr i32 %124, 16
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !46
  %132 = icmp eq i8 %131, 3
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = zext nneg i32 %125 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !97
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %142

142:                                              ; preds = %141, %133
  %143 = getelementptr inbounds i8, ptr %68, i64 %139
  %144 = getelementptr inbounds ptr, ptr %143, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65535
  br label %149

149:                                              ; preds = %142, %127
  %150 = phi i32 [ %148, %142 ], [ %128, %127 ]
  %151 = icmp eq i32 %150, 113
  %152 = and i32 %150, 65533
  %153 = icmp eq i32 %152, 116
  %154 = or i1 %151, %153
  %155 = icmp eq i32 %150, 77
  %156 = or i1 %155, %154
  %157 = zext i1 %156 to i8
  br label %158

158:                                              ; preds = %123, %149
  %159 = phi i8 [ %157, %149 ], [ 0, %123 ]
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %199, label %161

161:                                              ; preds = %158, %117
  %162 = load i32, ptr %68, align 8
  %163 = and i32 %162, 255
  %164 = add nsw i32 %163, -1
  %165 = icmp ult i32 %164, 9
  tail call void @llvm.assume(i1 %165)
  %166 = zext nneg i32 %163 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !50
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !97
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %174

174:                                              ; preds = %173, %161
  %175 = getelementptr inbounds i8, ptr %68, i64 %171
  %176 = getelementptr inbounds ptr, ptr %175, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !35
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 141
  br i1 %180, label %181, label %199

181:                                              ; preds = %174
  %182 = load i32, ptr %68, align 8
  %183 = and i32 %182, 255
  %184 = add nsw i32 %183, -10
  %185 = icmp ult i32 %184, -9
  br i1 %185, label %332, label %186, !llvm.loop !152

186:                                              ; preds = %181
  %187 = zext nneg i32 %183 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !97
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %195

195:                                              ; preds = %194, %186
  %196 = getelementptr inbounds i8, ptr %68, i64 %192
  %197 = getelementptr inbounds ptr, ptr %196, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !35
  br label %332, !llvm.loop !152

199:                                              ; preds = %158, %174
  switch i32 %118, label %288 [
    i32 66, label %200
    i32 63, label %200
  ]

200:                                              ; preds = %199, %199
  %201 = load i32, ptr %68, align 8
  %202 = and i32 %201, 255
  %203 = add nsw i32 %202, -1
  %204 = icmp ult i32 %203, 9
  tail call void @llvm.assume(i1 %204)
  %205 = zext nneg i32 %202 to i64
  %206 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !50
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !97
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %213

213:                                              ; preds = %212, %200
  %214 = getelementptr inbounds i8, ptr %68, i64 %210
  %215 = getelementptr inbounds ptr, ptr %214, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !35
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 141
  br i1 %219, label %220, label %288

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.gimple_statement_base, ptr %68, i64 0, i32 3
  %222 = load i32, ptr %221, align 4, !tbaa !46
  %223 = icmp ugt i32 %222, 2
  br i1 %223, label %224, label %242

224:                                              ; preds = %220
  %225 = load i32, ptr %68, align 8
  %226 = and i32 %225, 255
  %227 = add nsw i32 %226, -10
  %228 = icmp ult i32 %227, -9
  br i1 %228, label %242, label %229

229:                                              ; preds = %224
  %230 = zext nneg i32 %226 to i64
  %231 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !50
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !97
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %238

238:                                              ; preds = %237, %229
  %239 = getelementptr inbounds i8, ptr %68, i64 %235
  %240 = getelementptr inbounds ptr, ptr %239, i64 2
  %241 = load ptr, ptr %240, align 8, !tbaa !35
  br label %242

242:                                              ; preds = %220, %224, %238
  %243 = phi ptr [ null, %220 ], [ %241, %238 ], [ null, %224 ]
  %244 = tail call i32 @host_integerp(ptr noundef %243, i32 noundef 1) #15
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %288, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %221, align 4, !tbaa !46
  %248 = icmp ugt i32 %247, 2
  br i1 %248, label %249, label %267

249:                                              ; preds = %246
  %250 = load i32, ptr %68, align 8
  %251 = and i32 %250, 255
  %252 = add nsw i32 %251, -10
  %253 = icmp ult i32 %252, -9
  br i1 %253, label %267, label %254

254:                                              ; preds = %249
  %255 = zext nneg i32 %251 to i64
  %256 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !50
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !97
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %263

263:                                              ; preds = %262, %254
  %264 = getelementptr inbounds i8, ptr %68, i64 %260
  %265 = getelementptr inbounds ptr, ptr %264, i64 2
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  br label %267

267:                                              ; preds = %246, %249, %263
  %268 = phi ptr [ null, %246 ], [ %266, %263 ], [ null, %249 ]
  %269 = tail call i64 @tree_low_cst(ptr noundef %268, i32 noundef 1) #15
  %270 = add i64 %269, %53
  %271 = load i32, ptr %68, align 8
  %272 = and i32 %271, 255
  %273 = add nsw i32 %272, -10
  %274 = icmp ult i32 %273, -9
  br i1 %274, label %332, label %275, !llvm.loop !152

275:                                              ; preds = %267
  %276 = zext nneg i32 %272 to i64
  %277 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !50
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %279
  %281 = load i64, ptr %280, align 8, !tbaa !97
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %284

284:                                              ; preds = %283, %275
  %285 = getelementptr inbounds i8, ptr %68, i64 %281
  %286 = getelementptr inbounds ptr, ptr %285, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !35
  br label %332, !llvm.loop !152

288:                                              ; preds = %213, %199, %242
  br i1 %122, label %289, label %332

289:                                              ; preds = %288
  %290 = load i32, ptr %68, align 8
  %291 = and i32 %290, 255
  %292 = add nsw i32 %291, -1
  %293 = icmp ult i32 %292, 9
  tail call void @llvm.assume(i1 %293)
  %294 = zext nneg i32 %291 to i64
  %295 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !50
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !97
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %302

302:                                              ; preds = %301, %289
  %303 = getelementptr inbounds i8, ptr %68, i64 %299
  %304 = getelementptr inbounds ptr, ptr %303, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !35
  %306 = load i64, ptr %1, align 8
  %307 = trunc i64 %306 to i32
  %308 = and i32 %307, 65535
  %309 = load i64, ptr %305, align 8
  %310 = trunc i64 %309 to i32
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %308, %311
  br i1 %312, label %313, label %332

313:                                              ; preds = %302
  %314 = icmp eq i32 %308, 41
  br i1 %314, label %315, label %329

315:                                              ; preds = %313
  %316 = tail call ptr @get_base_address(ptr noundef nonnull %1) #15
  %317 = tail call ptr @get_base_address(ptr noundef nonnull %305) #15
  %318 = icmp eq ptr %316, %317
  br i1 %318, label %319, label %332

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.tree_exp, ptr %305, i64 1
  %321 = load ptr, ptr %320, align 8, !tbaa !46
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 31
  br i1 %324, label %325, label %332

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !46
  %328 = icmp eq ptr %327, %321
  br i1 %328, label %331, label %332

329:                                              ; preds = %313
  %330 = icmp eq ptr %305, %1
  br i1 %330, label %331, label %332

331:                                              ; preds = %325, %329
  br label %332

332:                                              ; preds = %284, %267, %195, %181, %329, %315, %319, %325, %302, %288, %66, %81, %61, %331, %62
  %333 = phi i64 [ %65, %62 ], [ %53, %331 ], [ 255, %61 ], [ %53, %81 ], [ %53, %66 ], [ %53, %288 ], [ %53, %302 ], [ %53, %325 ], [ %53, %319 ], [ %53, %315 ], [ %53, %329 ], [ %53, %181 ], [ %53, %195 ], [ %270, %267 ], [ %270, %284 ]
  %334 = phi ptr [ %52, %62 ], [ null, %331 ], [ %52, %61 ], [ %52, %81 ], [ %52, %66 ], [ %52, %288 ], [ %52, %302 ], [ %52, %325 ], [ %52, %319 ], [ %52, %315 ], [ %52, %329 ], [ null, %181 ], [ %198, %195 ], [ null, %267 ], [ %287, %284 ]
  %335 = phi i32 [ 6, %62 ], [ 0, %331 ], [ 6, %61 ], [ 1, %81 ], [ 1, %66 ], [ 1, %288 ], [ 1, %302 ], [ 1, %325 ], [ 1, %319 ], [ 1, %315 ], [ 1, %329 ], [ 5, %181 ], [ 5, %195 ], [ 5, %267 ], [ 5, %284 ]
  switch i32 %335, label %565 [
    i32 0, label %336
    i32 6, label %338
    i32 5, label %336
  ]

336:                                              ; preds = %332, %332
  %337 = icmp eq ptr %334, null
  br i1 %337, label %338, label %51, !llvm.loop !152

338:                                              ; preds = %336, %332, %39
  %339 = phi i64 [ 0, %39 ], [ %333, %332 ], [ %333, %336 ]
  %340 = add i64 %339, %47
  br label %341

341:                                              ; preds = %562, %338
  %342 = phi i64 [ %340, %338 ], [ %563, %562 ]
  %343 = phi ptr [ %2, %338 ], [ %564, %562 ]
  %344 = icmp eq ptr %343, null
  br i1 %344, label %565, label %345

345:                                              ; preds = %341
  %346 = load ptr, ptr %5, align 8, !tbaa !127
  %347 = getelementptr inbounds %struct.tree_ssa_name, ptr %343, i64 0, i32 3
  %348 = load i32, ptr %347, align 8, !tbaa !46
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i32, ptr %346, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !50
  %352 = icmp eq i32 %351, -1
  br i1 %352, label %353, label %562

353:                                              ; preds = %345
  %354 = icmp ugt i64 %342, 254
  %355 = trunc i64 %342 to i32
  %356 = select i1 %354, i32 255, i32 %355
  store i32 %356, ptr %350, align 4, !tbaa !50
  %357 = getelementptr inbounds %struct.tree_ssa_name, ptr %343, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !46
  %359 = load i32, ptr %358, align 8
  %360 = trunc i32 %359 to i8
  switch i8 %360, label %363 [
    i8 6, label %361
    i8 1, label %361
    i8 8, label %364
  ]

361:                                              ; preds = %353, %353
  %362 = lshr i32 %359, 16
  br label %364

363:                                              ; preds = %353
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #15
  br label %364

364:                                              ; preds = %363, %361, %353
  %365 = phi i32 [ %362, %361 ], [ 0, %363 ], [ 59, %353 ]
  %366 = zext nneg i32 %365 to i64
  %367 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !46
  %369 = icmp eq i8 %368, 3
  br i1 %369, label %370, label %390

370:                                              ; preds = %364
  %371 = load i32, ptr %358, align 8
  %372 = and i32 %371, 255
  %373 = add nsw i32 %372, -1
  %374 = icmp ult i32 %373, 9
  tail call void @llvm.assume(i1 %374)
  %375 = zext nneg i32 %372 to i64
  %376 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !50
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %378
  %380 = load i64, ptr %379, align 8, !tbaa !97
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %370
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %383

383:                                              ; preds = %382, %370
  %384 = getelementptr inbounds i8, ptr %358, i64 %380
  %385 = getelementptr inbounds ptr, ptr %384, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !35
  %387 = load i64, ptr %386, align 8
  %388 = trunc i64 %387 to i32
  %389 = and i32 %388, 65535
  br label %390

390:                                              ; preds = %364, %383
  %391 = phi i32 [ %389, %383 ], [ %365, %364 ]
  %392 = zext nneg i32 %391 to i64
  %393 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !46
  %395 = icmp eq i8 %394, 3
  br i1 %395, label %434, label %396

396:                                              ; preds = %390
  %397 = load i32, ptr %358, align 8
  %398 = and i32 %397, 255
  %399 = icmp eq i32 %398, 6
  br i1 %399, label %400, label %431

400:                                              ; preds = %396
  %401 = lshr i32 %397, 16
  %402 = zext nneg i32 %401 to i64
  %403 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !46
  %405 = icmp eq i8 %404, 3
  br i1 %405, label %406, label %422

406:                                              ; preds = %400
  %407 = zext nneg i32 %398 to i64
  %408 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %407
  %409 = load i32, ptr %408, align 4, !tbaa !50
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %410
  %412 = load i64, ptr %411, align 8, !tbaa !97
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %415

415:                                              ; preds = %414, %406
  %416 = getelementptr inbounds i8, ptr %358, i64 %412
  %417 = getelementptr inbounds ptr, ptr %416, i64 1
  %418 = load ptr, ptr %417, align 8, !tbaa !35
  %419 = load i64, ptr %418, align 8
  %420 = trunc i64 %419 to i32
  %421 = and i32 %420, 65535
  br label %422

422:                                              ; preds = %415, %400
  %423 = phi i32 [ %421, %415 ], [ %401, %400 ]
  %424 = icmp eq i32 %423, 113
  %425 = and i32 %423, 65533
  %426 = icmp eq i32 %425, 116
  %427 = or i1 %424, %426
  %428 = icmp eq i32 %423, 77
  %429 = or i1 %428, %427
  %430 = zext i1 %429 to i8
  br label %431

431:                                              ; preds = %396, %422
  %432 = phi i8 [ %430, %422 ], [ 0, %396 ]
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %468, label %434

434:                                              ; preds = %431, %390
  %435 = load i32, ptr %358, align 8
  %436 = and i32 %435, 255
  %437 = add nsw i32 %436, -1
  %438 = icmp ult i32 %437, 9
  tail call void @llvm.assume(i1 %438)
  %439 = zext nneg i32 %436 to i64
  %440 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !50
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %442
  %444 = load i64, ptr %443, align 8, !tbaa !97
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %434
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %447

447:                                              ; preds = %446, %434
  %448 = getelementptr inbounds i8, ptr %358, i64 %444
  %449 = getelementptr inbounds ptr, ptr %448, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !35
  %451 = load i64, ptr %450, align 8
  %452 = and i64 %451, 65535
  %453 = icmp eq i64 %452, 141
  br i1 %453, label %454, label %468

454:                                              ; preds = %447
  %455 = load i32, ptr %358, align 8
  %456 = and i32 %455, 255
  %457 = add nsw i32 %456, -10
  %458 = icmp ult i32 %457, -9
  br i1 %458, label %562, label %459, !llvm.loop !153

459:                                              ; preds = %454
  %460 = zext nneg i32 %456 to i64
  %461 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !50
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %463
  %465 = load i64, ptr %464, align 8, !tbaa !97
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %556, !llvm.loop !153

467:                                              ; preds = %459
  br label %553, !llvm.loop !153

468:                                              ; preds = %431, %447
  switch i32 %391, label %562 [
    i32 66, label %469
    i32 63, label %469
  ]

469:                                              ; preds = %468, %468
  %470 = load i32, ptr %358, align 8
  %471 = and i32 %470, 255
  %472 = add nsw i32 %471, -1
  %473 = icmp ult i32 %472, 9
  tail call void @llvm.assume(i1 %473)
  %474 = zext nneg i32 %471 to i64
  %475 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !50
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %477
  %479 = load i64, ptr %478, align 8, !tbaa !97
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %469
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %482

482:                                              ; preds = %481, %469
  %483 = getelementptr inbounds i8, ptr %358, i64 %479
  %484 = getelementptr inbounds ptr, ptr %483, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !35
  %486 = load i64, ptr %485, align 8
  %487 = and i64 %486, 65535
  %488 = icmp eq i64 %487, 141
  br i1 %488, label %489, label %562

489:                                              ; preds = %482
  %490 = getelementptr inbounds %struct.gimple_statement_base, ptr %358, i64 0, i32 3
  %491 = load i32, ptr %490, align 4, !tbaa !46
  %492 = icmp ugt i32 %491, 2
  br i1 %492, label %493, label %511

493:                                              ; preds = %489
  %494 = load i32, ptr %358, align 8
  %495 = and i32 %494, 255
  %496 = add nsw i32 %495, -10
  %497 = icmp ult i32 %496, -9
  br i1 %497, label %511, label %498

498:                                              ; preds = %493
  %499 = zext nneg i32 %495 to i64
  %500 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !50
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %502
  %504 = load i64, ptr %503, align 8, !tbaa !97
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %498
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %507

507:                                              ; preds = %506, %498
  %508 = getelementptr inbounds i8, ptr %358, i64 %504
  %509 = getelementptr inbounds ptr, ptr %508, i64 2
  %510 = load ptr, ptr %509, align 8, !tbaa !35
  br label %511

511:                                              ; preds = %489, %493, %507
  %512 = phi ptr [ null, %489 ], [ %510, %507 ], [ null, %493 ]
  %513 = tail call i32 @host_integerp(ptr noundef %512, i32 noundef 1) #15
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %562, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %490, align 4, !tbaa !46
  %517 = icmp ugt i32 %516, 2
  br i1 %517, label %518, label %536

518:                                              ; preds = %515
  %519 = load i32, ptr %358, align 8
  %520 = and i32 %519, 255
  %521 = add nsw i32 %520, -10
  %522 = icmp ult i32 %521, -9
  br i1 %522, label %536, label %523

523:                                              ; preds = %518
  %524 = zext nneg i32 %520 to i64
  %525 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !50
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %527
  %529 = load i64, ptr %528, align 8, !tbaa !97
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %523
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %532

532:                                              ; preds = %531, %523
  %533 = getelementptr inbounds i8, ptr %358, i64 %529
  %534 = getelementptr inbounds ptr, ptr %533, i64 2
  %535 = load ptr, ptr %534, align 8, !tbaa !35
  br label %536

536:                                              ; preds = %515, %518, %532
  %537 = phi ptr [ null, %515 ], [ %535, %532 ], [ null, %518 ]
  %538 = tail call i64 @tree_low_cst(ptr noundef %537, i32 noundef 1) #15
  %539 = sub i64 %342, %538
  %540 = load i32, ptr %358, align 8
  %541 = and i32 %540, 255
  %542 = add nsw i32 %541, -10
  %543 = icmp ult i32 %542, -9
  br i1 %543, label %562, label %544, !llvm.loop !153

544:                                              ; preds = %536
  %545 = zext nneg i32 %541 to i64
  %546 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %545
  %547 = load i32, ptr %546, align 4, !tbaa !50
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %548
  %550 = load i64, ptr %549, align 8, !tbaa !97
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %552, label %556, !llvm.loop !153

552:                                              ; preds = %544
  br label %553, !llvm.loop !153

553:                                              ; preds = %467, %552
  %554 = phi i64 [ %550, %552 ], [ %465, %467 ]
  %555 = phi i64 [ %539, %552 ], [ %342, %467 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %556

556:                                              ; preds = %553, %544, %459
  %557 = phi i64 [ %465, %459 ], [ %550, %544 ], [ %554, %553 ]
  %558 = phi i64 [ %342, %459 ], [ %539, %544 ], [ %555, %553 ]
  %559 = getelementptr inbounds i8, ptr %358, i64 %557
  %560 = getelementptr inbounds ptr, ptr %559, i64 1
  %561 = load ptr, ptr %560, align 8, !tbaa !35
  br label %562

562:                                              ; preds = %556, %482, %536, %454, %511, %468, %345
  %563 = phi i64 [ %342, %345 ], [ %342, %468 ], [ %342, %511 ], [ %342, %454 ], [ %539, %536 ], [ %342, %482 ], [ %558, %556 ]
  %564 = phi ptr [ %343, %345 ], [ null, %468 ], [ null, %511 ], [ null, %454 ], [ null, %536 ], [ null, %482 ], [ %561, %556 ]
  br i1 %352, label %341, label %565

565:                                              ; preds = %332, %562, %341
  %566 = phi i64 [ %339, %341 ], [ %339, %562 ], [ -1, %332 ]
  ret i64 %566
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @va_list_counter_op(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #10 !prof !34 {
  %6 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  store i32 0, ptr %6, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !98
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %15, ptr noundef %17), !range !111
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 1, ptr %6, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %20, %13, %9
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !107
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !131
  %33 = load i32, ptr %6, align 8, !tbaa !106
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.13, ptr @.str.12
  %36 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !99
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !131
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.11, i32 noundef %32, ptr noundef nonnull %35, i32 noundef %39)
  br label %41

41:                                               ; preds = %21, %24, %28, %5
  %42 = icmp eq i8 %4, 0
  %43 = load i32, ptr %6, align 8, !tbaa !106
  %44 = icmp eq i32 %43, 0
  br i1 %42, label %75, label %45

45:                                               ; preds = %41
  br i1 %44, label %76, label %46

46:                                               ; preds = %45
  %47 = tail call fastcc i64 @va_list_counter_bump(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3)
  %48 = add i64 %47, -1
  %49 = icmp ult i64 %48, -2
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = icmp eq i8 %3, 0
  %52 = load ptr, ptr @cfun, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 20
  %54 = load i32, ptr %53, align 8
  br i1 %51, label %64, label %55

55:                                               ; preds = %50
  %56 = and i32 %54, 255
  %57 = zext nneg i32 %56 to i64
  %58 = add i64 %47, %57
  %59 = icmp ult i64 %58, 255
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = trunc i64 %58 to i32
  %62 = and i32 %54, -256
  %63 = or disjoint i32 %62, %61
  store i32 %63, ptr %53, align 8
  br label %85

64:                                               ; preds = %50
  %65 = lshr i32 %54, 8
  %66 = and i32 %65, 255
  %67 = zext nneg i32 %66 to i64
  %68 = add i64 %47, %67
  %69 = icmp ult i64 %68, 255
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = trunc i64 %68 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = and i32 %54, -65281
  %74 = or disjoint i32 %72, %73
  store i32 %74, ptr %53, align 8
  br label %85

75:                                               ; preds = %41
  br i1 %44, label %76, label %85

76:                                               ; preds = %45, %46, %64, %55, %75
  %77 = icmp eq i8 %3, 0
  %78 = load ptr, ptr @cfun, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 20
  %80 = load i32, ptr %79, align 8
  br i1 %77, label %83, label %81

81:                                               ; preds = %76
  %82 = or i32 %80, 255
  store i32 %82, ptr %79, align 8
  br label %85

83:                                               ; preds = %76
  %84 = or i32 %80, 65280
  store i32 %84, ptr %79, align 8
  br label %85

85:                                               ; preds = %75, %83, %81, %70, %60
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!54 = !{!"function_entry_count", i64 38}
!55 = !{!"tree-stdarg.c;gate_optimize_stdarg"}
!56 = !{!57, !36, i64 0}
!57 = !{!"stdarg_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!58 = !{!57, !36, i64 8}
!59 = !{!60, !36, i64 176}
!60 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !61, i64 240, !62, i64 248, !63, i64 256, !64, i64 272, !65, i64 432, !66, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!61 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!62 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!63 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!64 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!65 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!66 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!67 = !{!68, !36, i64 1328}
!68 = !{!"gcc_target", !69, i64 0, !71, i64 368, !72, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !73, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !74, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !75, i64 1784, !76, i64 1792, !77, i64 1896, !78, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!69 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !70, i64 24, !70, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!70 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!71 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!72 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!73 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!74 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!75 = !{!"c", !36, i64 0}
!76 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!77 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!78 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!79 = !{!80, !36, i64 48}
!80 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!81 = !{!80, !36, i64 8}
!82 = !{!83, !36, i64 0}
!83 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!84 = !{!85, !36, i64 56}
!85 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!86 = !{!83, !36, i64 8}
!87 = !{!85, !41, i64 96}
!88 = !{!89}
!89 = distinct !{!89, !90, !"gsi_start_bb: argument 0"}
!90 = distinct !{!90, !"gsi_start_bb"}
!91 = !{!92, !36, i64 0}
!92 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!93 = !{!94, !36, i64 0}
!94 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!95 = !{!96, !36, i64 0}
!96 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!97 = !{!42, !42, i64 0}
!98 = !{!57, !41, i64 28}
!99 = !{!57, !36, i64 48}
!100 = !{!57, !36, i64 56}
!101 = !{!96, !36, i64 16}
!102 = distinct !{!102, !52, !53}
!103 = !{!104, !36, i64 24}
!104 = !{!"walk_stmt_info", !105, i64 0, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !36, i64 48}
!105 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!106 = !{!57, !41, i64 24}
!107 = !{!57, !36, i64 16}
!108 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!109 = !{!110, !36, i64 24}
!110 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!111 = !{i8 0, i8 2}
!112 = !{!57, !37, i64 32}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = !{!116}
!116 = distinct !{!116, !117, !"gsi_start_bb: argument 0"}
!117 = distinct !{!117, !"gsi_start_bb"}
!118 = !{!68, !36, i64 1424}
!119 = distinct !{!119, !52, !53}
!120 = !{!121, !36, i64 0}
!121 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!122 = !{!123}
!123 = distinct !{!123, !124, !"gsi_start_bb: argument 0"}
!124 = distinct !{!124, !"gsi_start_bb"}
!125 = !{!126, !36, i64 0}
!126 = !{!"use_optype_d", !36, i64 0, !110, i64 8}
!127 = !{!57, !36, i64 40}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = !{!85, !41, i64 80}
!132 = !{!83, !41, i64 32}
!133 = !{!134, !41, i64 0}
!134 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!135 = !{!134, !41, i64 4}
!136 = distinct !{!136, !52, !53}
!137 = !{!138, !36, i64 0}
!138 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!139 = !{!138, !41, i64 48}
!140 = distinct !{!140, !52, !53}
!141 = !{!142, !36, i64 0}
!142 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!143 = distinct !{!143, !52, !53}
!144 = !{!80, !36, i64 24}
!145 = !{!146, !36, i64 16}
!146 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !147, i64 32, !147, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !148, i64 104}
!147 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!148 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!149 = !{!150, !41, i64 0}
!150 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
