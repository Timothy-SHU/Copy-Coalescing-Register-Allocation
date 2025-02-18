; ModuleID = 'tree-ssa-math-opts.c'
source_filename = "tree-ssa-math-opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.symbolic_number = type { i64, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.occurrence = type { ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"recip\00", align 1
@pass_cse_reciprocals = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_cse_reciprocals, ptr @execute_cse_reciprocals, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2069 } }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"sincos\00", align 1
@pass_cse_sincos = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_cse_sincos, ptr @execute_cse_sincos, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2069 } }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"bswap\00", align 1
@pass_optimize_bswap = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_optimize_bswap, ptr @execute_optimize_bswap, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_reciprocal_math = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dominators for recip\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@occ_pool = internal unnamed_addr global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"tree-ssa-math-opts.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@occ_head = internal global ptr null, align 8
@flag_exceptions = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"reciptmp\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@linux_uclibc = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"sincostmp\00", align 1
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"bswapsrc\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"bswapdst\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"%d bit bswap implementation found at: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cse_reciprocals() #9 !prof !63 !PGOFuncName !64 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !59
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_reciprocal_math, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !65
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_cse_reciprocals() #10 !prof !43 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = sdiv i32 %8, 3
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 48, i64 noundef %11) #17
  store ptr %12, ptr @occ_pool, align 8, !tbaa !44
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  tail call void @calculate_dominance_info(i32 noundef 2) #17
  %13 = load ptr, ptr @cfun, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %0, %41
  %20 = phi ptr [ %43, %41 ], [ %17, %0 ]
  %21 = load ptr, ptr @cfun, align 8, !tbaa !44
  %22 = tail call ptr @gimple_default_def(ptr noundef %21, ptr noundef nonnull %20) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %41 [
    i16 9, label %35
    i16 13, label %29
    i16 14, label %29
  ]

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 9
  br i1 %34, label %35, label %41

35:                                               ; preds = %29, %24
  %36 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %20) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @cfun, align 8, !tbaa !44
  %40 = tail call ptr @gimple_default_def(ptr noundef %39, ptr noundef nonnull %20) #17
  tail call fastcc void @execute_cse_reciprocals_1(ptr noundef null, ptr noundef %40)
  br label %41

41:                                               ; preds = %35, %29, %24, %19, %38
  %42 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %19, !llvm.loop !71

45:                                               ; preds = %41, %0
  %46 = load ptr, ptr @cfun, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %548, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds i8, ptr %1, i64 8
  %57 = getelementptr inbounds i8, ptr %1, i64 16
  %58 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  br label %59

59:                                               ; preds = %55, %539
  %60 = phi ptr [ %51, %55 ], [ %541, %539 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %60) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %61 = load ptr, ptr %1, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %59, %82
  %64 = phi ptr [ %85, %82 ], [ %61, %59 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !77
  %66 = getelementptr inbounds %struct.gimple_statement_phi, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !55
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i16
  switch i16 %71, label %82 [
    i16 9, label %78
    i16 13, label %72
    i16 14, label %72
  ]

72:                                               ; preds = %63, %63
  %73 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 9
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %63
  %79 = call zeroext i8 @is_gimple_reg(ptr noundef %67) #17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call fastcc void @execute_cse_reciprocals_1(ptr noundef null, ptr noundef %67)
  br label %82

82:                                               ; preds = %78, %72, %63, %81
  %83 = load ptr, ptr %1, align 8, !tbaa !79
  %84 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !81
  store ptr %85, ptr %1, align 8, !tbaa !79
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %63, !llvm.loop !82

87:                                               ; preds = %82, %59
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 13
  %89 = load i32, ptr %88, align 8, !tbaa !83, !noalias !84
  %90 = and i32 %89, 512
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !55, !noalias !84
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %94, align 8, !tbaa !89, !noalias !84
  br label %98

98:                                               ; preds = %96, %92, %87
  %99 = phi ptr [ %97, %96 ], [ null, %92 ], [ null, %87 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %99, align 8, !tbaa !91, !noalias !84
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi ptr [ %102, %101 ], [ null, %98 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %103, %112
  %107 = phi ptr [ %114, %112 ], [ %104, %103 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !77, !noalias !93
  %109 = load i32, ptr %108, align 8, !noalias !93
  %110 = and i32 %109, 255
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %107, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !81, !noalias !93
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %106, !llvm.loop !94

116:                                              ; preds = %106, %112, %103
  %117 = phi ptr [ %104, %103 ], [ %107, %106 ], [ %114, %112 ]
  store ptr %117, ptr %1, align 8, !tbaa.struct !76
  store ptr %99, ptr %56, align 8, !tbaa.struct !95
  store ptr %60, ptr %57, align 8, !tbaa.struct !96
  %118 = icmp eq ptr %117, null
  br i1 %118, label %198, label %119

119:                                              ; preds = %116, %193
  %120 = phi ptr [ %196, %193 ], [ %117, %116 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !77
  %122 = load i32, ptr %121, align 8
  %123 = trunc i32 %122 to i8
  switch i8 %123, label %139 [
    i8 6, label %140
    i8 8, label %124
  ]

124:                                              ; preds = %119
  %125 = and i32 %122, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !59
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !97
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %134

134:                                              ; preds = %133, %124
  %135 = getelementptr inbounds i8, ptr %121, i64 %131
  %136 = load ptr, ptr %135, align 8, !tbaa !44
  %137 = icmp ne ptr %136, null
  %138 = zext i1 %137 to i8
  br label %140

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %119, %139, %134
  %141 = phi i8 [ 1, %119 ], [ %138, %134 ], [ 0, %139 ]
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %193, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr %121, align 8
  %145 = and i32 %144, 255
  %146 = add nsw i32 %145, -10
  %147 = icmp ult i32 %146, -9
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %121, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !55
  br label %151

151:                                              ; preds = %148, %143
  %152 = phi ptr [ %150, %148 ], [ null, %143 ]
  %153 = icmp eq ptr %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = and i32 %144, 254
  %156 = add nsw i32 %155, -10
  %157 = icmp ult i32 %156, -4
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %121, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !55
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %152, align 8, !tbaa !98
  br label %164

164:                                              ; preds = %162, %158, %154, %151
  %165 = phi ptr [ %152, %151 ], [ %152, %154 ], [ %152, %158 ], [ %163, %162 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.def_optype_d, ptr %165, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !100
  %170 = load ptr, ptr %169, align 8, !tbaa !44
  %171 = load ptr, ptr %165, align 8, !tbaa !98
  %172 = icmp eq ptr %171, null
  %173 = select i1 %172, ptr %170, ptr null
  br label %174

174:                                              ; preds = %167, %164
  %175 = phi ptr [ %173, %167 ], [ null, %164 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %193, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.tree_common, ptr %175, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !55
  %180 = load i64, ptr %179, align 8
  %181 = trunc i64 %180 to i16
  switch i16 %181, label %193 [
    i16 9, label %188
    i16 13, label %182
    i16 14, label %182
  ]

182:                                              ; preds = %177, %177
  %183 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !55
  %185 = load i64, ptr %184, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 9
  br i1 %187, label %188, label %193

188:                                              ; preds = %182, %177
  %189 = load i64, ptr %175, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 141
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  call fastcc void @execute_cse_reciprocals_1(ptr noundef nonnull %1, ptr noundef nonnull %175)
  br label %193

193:                                              ; preds = %188, %182, %177, %192, %174, %140
  %194 = load ptr, ptr %1, align 8, !tbaa !79
  %195 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !81
  store ptr %196, ptr %1, align 8, !tbaa !79
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %119, !llvm.loop !101

198:                                              ; preds = %193, %116
  %199 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %60) #17
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %539

201:                                              ; preds = %198
  %202 = load i32, ptr %88, align 8, !tbaa !83, !noalias !102
  %203 = and i32 %202, 512
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !55, !noalias !102
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %207, align 8, !tbaa !89, !noalias !102
  br label %211

211:                                              ; preds = %209, %205, %201
  %212 = phi ptr [ %210, %209 ], [ null, %205 ], [ null, %201 ]
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %212, align 8, !tbaa !91, !noalias !102
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi ptr [ %215, %214 ], [ null, %211 ]
  %218 = icmp eq ptr %217, null
  br i1 %218, label %229, label %219

219:                                              ; preds = %216, %225
  %220 = phi ptr [ %227, %225 ], [ %217, %216 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !77, !noalias !107
  %222 = load i32, ptr %221, align 8, !noalias !107
  %223 = and i32 %222, 255
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %220, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !81, !noalias !107
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %219, !llvm.loop !94

229:                                              ; preds = %219, %225, %216
  %230 = phi ptr [ %217, %216 ], [ %220, %219 ], [ %227, %225 ]
  store ptr %230, ptr %1, align 8, !tbaa.struct !76
  store ptr %212, ptr %56, align 8, !tbaa.struct !95
  store ptr %60, ptr %57, align 8, !tbaa.struct !96
  %231 = icmp eq ptr %230, null
  br i1 %231, label %539, label %232

232:                                              ; preds = %229, %534
  %233 = phi ptr [ %537, %534 ], [ %230, %229 ]
  %234 = load ptr, ptr %233, align 8, !tbaa !77
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 255
  %237 = icmp eq i32 %236, 6
  br i1 %237, label %238, label %534

238:                                              ; preds = %232
  %239 = lshr i32 %235, 16
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !55
  %243 = icmp eq i8 %242, 3
  br i1 %243, label %244, label %260

244:                                              ; preds = %238
  %245 = zext nneg i32 %236 to i64
  %246 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !59
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !97
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %253

253:                                              ; preds = %252, %244
  %254 = getelementptr inbounds i8, ptr %234, i64 %250
  %255 = getelementptr inbounds ptr, ptr %254, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !44
  %257 = load i64, ptr %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = and i32 %258, 65535
  br label %260

260:                                              ; preds = %238, %253
  %261 = phi i32 [ %259, %253 ], [ %239, %238 ]
  %262 = icmp eq i32 %261, 75
  br i1 %262, label %263, label %534

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.gimple_statement_base, ptr %234, i64 0, i32 3
  %265 = load i32, ptr %264, align 4, !tbaa !55
  %266 = icmp ugt i32 %265, 2
  br i1 %266, label %267, label %285

267:                                              ; preds = %263
  %268 = load i32, ptr %234, align 8
  %269 = and i32 %268, 255
  %270 = add nsw i32 %269, -10
  %271 = icmp ult i32 %270, -9
  br i1 %271, label %285, label %272

272:                                              ; preds = %267
  %273 = zext nneg i32 %269 to i64
  %274 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !59
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !97
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %281

281:                                              ; preds = %280, %272
  %282 = getelementptr inbounds i8, ptr %234, i64 %278
  %283 = getelementptr inbounds ptr, ptr %282, i64 2
  %284 = load ptr, ptr %283, align 8, !tbaa !44
  br label %285

285:                                              ; preds = %263, %267, %281
  %286 = phi ptr [ null, %263 ], [ %284, %281 ], [ null, %267 ]
  %287 = load i64, ptr %286, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 141
  br i1 %289, label %290, label %534

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.tree_ssa_name, ptr %286, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !55
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 255
  %295 = icmp eq i32 %294, 8
  br i1 %295, label %296, label %534

296:                                              ; preds = %290
  %297 = zext nneg i32 %294 to i64
  %298 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !59
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !97
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %305

305:                                              ; preds = %304, %296
  %306 = getelementptr inbounds i8, ptr %292, i64 %302
  %307 = load ptr, ptr %306, align 8, !tbaa !44
  %308 = icmp eq ptr %307, null
  br i1 %308, label %534, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %292, align 8
  %311 = and i32 %310, 255
  %312 = add nsw i32 %311, -10
  %313 = icmp ult i32 %312, -9
  br i1 %313, label %327, label %314

314:                                              ; preds = %309
  %315 = zext nneg i32 %311 to i64
  %316 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !59
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !97
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %314
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %323

323:                                              ; preds = %322, %314
  %324 = getelementptr inbounds i8, ptr %292, i64 %320
  %325 = getelementptr inbounds ptr, ptr %324, i64 1
  %326 = load ptr, ptr %325, align 8, !tbaa !44
  br label %327

327:                                              ; preds = %323, %309
  %328 = phi ptr [ %326, %323 ], [ null, %309 ]
  %329 = load i64, ptr %328, align 8
  %330 = and i64 %329, 65535
  %331 = icmp eq i64 %330, 121
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.tree_exp, ptr %328, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !55
  br label %335

335:                                              ; preds = %327, %332
  %336 = phi ptr [ %334, %332 ], [ null, %327 ]
  %337 = icmp eq ptr %336, null
  br i1 %337, label %534, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.tree_function_decl, ptr %336, i64 0, i32 5
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 4096
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %534, label %343

343:                                              ; preds = %338
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  %344 = and i32 %340, 2047
  %345 = and i32 %340, 6144
  %346 = icmp eq i32 %345, 4096
  %347 = zext i1 %346 to i8
  %348 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 28), align 8, !tbaa !108
  %349 = call ptr %348(i32 noundef %344, i8 noundef zeroext %347, i8 noundef zeroext 0) #17
  %350 = icmp eq ptr %349, null
  br i1 %350, label %533, label %351

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.tree_ssa_name, ptr %286, i64 0, i32 5
  store ptr %352, ptr %58, align 8, !tbaa !120
  %353 = getelementptr inbounds %struct.tree_ssa_name, ptr %286, i64 0, i32 5, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !123
  store ptr %354, ptr %3, align 8, !tbaa !124
  %355 = icmp eq ptr %354, %352
  br i1 %355, label %452, label %356

356:                                              ; preds = %351, %444
  %357 = phi ptr [ %450, %444 ], [ %354, %351 ]
  %358 = phi i8 [ %442, %444 ], [ 0, %351 ]
  %359 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %357, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !55
  %361 = load i32, ptr %360, align 8
  %362 = and i32 %361, 255
  %363 = trunc i32 %361 to i8
  switch i8 %363, label %439 [
    i8 2, label %440
    i8 6, label %364
  ]

364:                                              ; preds = %356
  %365 = lshr i32 %361, 16
  %366 = zext nneg i32 %365 to i64
  %367 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !55
  %369 = icmp eq i8 %368, 3
  br i1 %369, label %370, label %388

370:                                              ; preds = %364
  %371 = add nsw i32 %362, -1
  %372 = icmp ult i32 %371, 9
  call void @llvm.assume(i1 %372)
  %373 = zext nneg i32 %362 to i64
  %374 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !59
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !97
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %381

381:                                              ; preds = %380, %370
  %382 = getelementptr inbounds i8, ptr %360, i64 %378
  %383 = getelementptr inbounds ptr, ptr %382, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !44
  %385 = load i64, ptr %384, align 8
  %386 = trunc i64 %385 to i32
  %387 = and i32 %386, 65535
  br label %388

388:                                              ; preds = %364, %381
  %389 = phi i32 [ %387, %381 ], [ %365, %364 ]
  %390 = icmp eq i32 %389, 75
  br i1 %390, label %391, label %440

391:                                              ; preds = %388
  %392 = load i32, ptr %360, align 8
  %393 = and i32 %392, 255
  %394 = add nsw i32 %393, -10
  %395 = icmp ult i32 %394, -9
  br i1 %395, label %409, label %396

396:                                              ; preds = %391
  %397 = zext nneg i32 %393 to i64
  %398 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !59
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !97
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %396
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %405

405:                                              ; preds = %404, %396
  %406 = getelementptr inbounds i8, ptr %360, i64 %402
  %407 = getelementptr inbounds ptr, ptr %406, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !44
  br label %409

409:                                              ; preds = %391, %405
  %410 = phi ptr [ %408, %405 ], [ null, %391 ]
  %411 = icmp eq ptr %410, %286
  br i1 %411, label %440, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.gimple_statement_base, ptr %360, i64 0, i32 3
  %414 = load i32, ptr %413, align 4, !tbaa !55
  %415 = icmp ugt i32 %414, 2
  br i1 %415, label %416, label %434

416:                                              ; preds = %412
  %417 = load i32, ptr %360, align 8
  %418 = and i32 %417, 255
  %419 = add nsw i32 %418, -10
  %420 = icmp ult i32 %419, -9
  br i1 %420, label %434, label %421

421:                                              ; preds = %416
  %422 = zext nneg i32 %418 to i64
  %423 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !59
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %425
  %427 = load i64, ptr %426, align 8, !tbaa !97
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %421
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %430

430:                                              ; preds = %429, %421
  %431 = getelementptr inbounds i8, ptr %360, i64 %427
  %432 = getelementptr inbounds ptr, ptr %431, i64 2
  %433 = load ptr, ptr %432, align 8, !tbaa !44
  br label %434

434:                                              ; preds = %412, %416, %430
  %435 = phi ptr [ null, %412 ], [ %433, %430 ], [ null, %416 ]
  %436 = icmp eq ptr %435, %286
  %437 = select i1 %436, i32 0, i32 17
  %438 = select i1 %436, i8 %358, i8 1
  br label %440

439:                                              ; preds = %356
  br label %440

440:                                              ; preds = %356, %439, %434, %388, %409
  %441 = phi i32 [ 19, %356 ], [ 17, %409 ], [ 17, %388 ], [ %437, %434 ], [ 17, %439 ]
  %442 = phi i8 [ %358, %356 ], [ 1, %409 ], [ 1, %388 ], [ %438, %434 ], [ 1, %439 ]
  %443 = icmp eq i32 %441, 17
  br i1 %443, label %452, label %444

444:                                              ; preds = %440
  %445 = load ptr, ptr %3, align 8, !tbaa !124
  %446 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %445, i64 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !123
  store ptr %447, ptr %3, align 8, !tbaa !124
  %448 = load ptr, ptr %58, align 8, !tbaa !120
  %449 = icmp eq ptr %447, %448
  %450 = select i1 %449, ptr null, ptr %447
  %451 = icmp eq ptr %447, %448
  br i1 %451, label %452, label %356, !llvm.loop !125

452:                                              ; preds = %444, %440, %351
  %453 = phi i8 [ 0, %351 ], [ %442, %440 ], [ %442, %444 ]
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %455, label %533

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  call void @gimple_replace_lhs(ptr noundef nonnull %292, ptr noundef nonnull %286) #17
  %457 = getelementptr inbounds %struct.gimple_statement_base, ptr %292, i64 0, i32 2
  %458 = load i32, ptr %457, align 8, !tbaa !55
  %459 = call ptr @build_fold_addr_expr_loc(i32 noundef %458, ptr noundef nonnull %349) #17
  %460 = load i32, ptr %292, align 8
  %461 = and i32 %460, 255
  %462 = add nsw i32 %461, -10
  %463 = icmp ult i32 %462, -9
  br i1 %463, label %468, label %464

464:                                              ; preds = %455
  %465 = getelementptr inbounds %struct.gimple_statement_base, ptr %292, i64 0, i32 3
  %466 = load i32, ptr %465, align 4, !tbaa !55
  %467 = icmp ugt i32 %466, 1
  br i1 %467, label %469, label %468

468:                                              ; preds = %464, %455
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.5) #17
  br label %469

469:                                              ; preds = %468, %464
  %470 = load i32, ptr %292, align 8
  %471 = and i32 %470, 255
  %472 = zext nneg i32 %471 to i64
  %473 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !59
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %475
  %477 = load i64, ptr %476, align 8, !tbaa !97
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %469
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %480

480:                                              ; preds = %469, %479
  %481 = getelementptr inbounds i8, ptr %292, i64 %477
  %482 = getelementptr inbounds ptr, ptr %481, i64 1
  store ptr %459, ptr %482, align 8, !tbaa !44
  %483 = load i32, ptr %292, align 8
  %484 = and i32 %483, 255
  %485 = add nsw i32 %484, -10
  %486 = icmp ult i32 %485, -9
  br i1 %486, label %488, label %487

487:                                              ; preds = %480
  call void @gimple_set_modified(ptr noundef nonnull %292, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %292) #17
  br label %488

488:                                              ; preds = %480, %487
  store ptr %352, ptr %58, align 8, !tbaa !120
  %489 = load ptr, ptr %353, align 8, !tbaa !123
  store ptr %489, ptr %3, align 8, !tbaa !124
  %490 = icmp eq ptr %489, %352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %456, i8 0, i64 40, i1 false)
  br i1 %490, label %495, label %491

491:                                              ; preds = %488
  call fastcc void @link_use_stmts_after(ptr noundef %489, ptr noundef nonnull %3)
  %492 = load ptr, ptr %3, align 8, !tbaa !124
  %493 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %492, i64 0, i32 2
  %494 = load ptr, ptr %493, align 8, !tbaa !55
  br label %495

495:                                              ; preds = %488, %491
  %496 = phi ptr [ %494, %491 ], [ null, %488 ]
  %497 = load ptr, ptr %3, align 8, !tbaa !124
  %498 = load ptr, ptr %58, align 8, !tbaa !120
  %499 = icmp eq ptr %497, %498
  br i1 %499, label %532, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  br label %502

502:                                              ; preds = %500, %527
  %503 = phi ptr [ %528, %527 ], [ %496, %500 ]
  %504 = load i32, ptr %503, align 8
  %505 = and i32 %504, 65535
  %506 = or disjoint i32 %505, 4259840
  store i32 %506, ptr %503, align 8
  %507 = call zeroext i8 @fold_stmt_inplace(ptr noundef nonnull %503) #17
  %508 = load i32, ptr %503, align 8
  %509 = and i32 %508, 255
  %510 = add nsw i32 %509, -10
  %511 = icmp ult i32 %510, -9
  br i1 %511, label %513, label %512

512:                                              ; preds = %502
  call void @gimple_set_modified(ptr noundef nonnull %503, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %503) #17
  br label %513

513:                                              ; preds = %502, %512
  %514 = load ptr, ptr %501, align 8, !tbaa !123
  store ptr %514, ptr %3, align 8, !tbaa !124
  %515 = load ptr, ptr %58, align 8, !tbaa !120
  %516 = icmp eq ptr %514, %515
  br i1 %516, label %517, label %523

517:                                              ; preds = %513
  %518 = load ptr, ptr %456, align 8, !tbaa !126
  %519 = icmp eq ptr %518, null
  br i1 %519, label %527, label %520

520:                                              ; preds = %517
  %521 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %518, i64 0, i32 1
  store ptr %514, ptr %521, align 8, !tbaa !123
  %522 = load ptr, ptr %501, align 8, !tbaa !123
  store ptr %518, ptr %522, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %456, i8 0, i64 16, i1 false)
  br label %527

523:                                              ; preds = %513
  call fastcc void @link_use_stmts_after(ptr noundef %514, ptr noundef nonnull %3)
  %524 = load ptr, ptr %3, align 8, !tbaa !124
  %525 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %524, i64 0, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !55
  br label %527

527:                                              ; preds = %517, %520, %523
  %528 = phi ptr [ %526, %523 ], [ null, %520 ], [ null, %517 ]
  %529 = load ptr, ptr %3, align 8, !tbaa !124
  %530 = load ptr, ptr %58, align 8, !tbaa !120
  %531 = icmp eq ptr %529, %530
  br i1 %531, label %532, label %502, !llvm.loop !127

532:                                              ; preds = %527, %495
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  br label %534

533:                                              ; preds = %452, %343
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  br label %534

534:                                              ; preds = %290, %305, %335, %338, %532, %533, %285, %232, %260
  %535 = load ptr, ptr %1, align 8, !tbaa !79
  %536 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %535, i64 0, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !81
  store ptr %537, ptr %1, align 8, !tbaa !79
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %232, !llvm.loop !128

539:                                              ; preds = %534, %229, %198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  %540 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 6
  %541 = load ptr, ptr %540, align 8, !tbaa !73
  %542 = load ptr, ptr @cfun, align 8, !tbaa !44
  %543 = getelementptr inbounds %struct.function, ptr %542, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !66
  %545 = getelementptr inbounds %struct.control_flow_graph, ptr %544, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !75
  %547 = icmp eq ptr %541, %546
  br i1 %547, label %548, label %59, !llvm.loop !129

548:                                              ; preds = %539, %45
  call void @free_dominance_info(i32 noundef 1) #17
  call void @free_dominance_info(i32 noundef 2) #17
  %549 = load ptr, ptr @occ_pool, align 8, !tbaa !44
  call void @free_alloc_pool(ptr noundef %549) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cse_sincos() #9 !prof !63 !PGOFuncName !130 {
  %1 = load i32, ptr @linux_uclibc, align 4, !tbaa !59
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @optimize, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false, !prof !65
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_cse_sincos() #11 !prof !63 !PGOFuncName !131 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  %7 = load ptr, ptr @cfun, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %428, label %25, !prof !132

16:                                               ; preds = %424, %55
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load ptr, ptr @cfun, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %428, label %25, !prof !133, !llvm.loop !134

25:                                               ; preds = %0, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %0 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !83, !noalias !135
  %29 = and i32 %28, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37, !prof !140

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !55, !noalias !135
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !141

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !89, !noalias !135
  br label %37

37:                                               ; preds = %35, %31, %25
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], [ null, %25 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !141

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !91, !noalias !135
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45, !prof !142

45:                                               ; preds = %42, %51
  %46 = phi ptr [ %53, %51 ], [ %43, %42 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !77, !noalias !143
  %48 = load i32, ptr %47, align 8, !noalias !143
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %55, !prof !144

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %46, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !81, !noalias !143
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %45, !prof !145, !llvm.loop !94

55:                                               ; preds = %45, %51, %42
  %56 = phi ptr [ %43, %42 ], [ %46, %45 ], [ %53, %51 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %16, label %58, !prof !146

58:                                               ; preds = %55, %424
  %59 = phi ptr [ %426, %424 ], [ %56, %55 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !77
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %424, !prof !147

64:                                               ; preds = %58
  %65 = zext nneg i32 %62 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !59
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !97
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73, !prof !148

72:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %73

73:                                               ; preds = %72, %64
  %74 = getelementptr inbounds i8, ptr %60, i64 %70
  %75 = load ptr, ptr %74, align 8, !tbaa !44
  %76 = icmp eq ptr %75, null
  br i1 %76, label %424, label %77, !prof !149

77:                                               ; preds = %73
  %78 = load i32, ptr %60, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -10
  %81 = icmp ult i32 %80, -9
  br i1 %81, label %95, label %82, !prof !150

82:                                               ; preds = %77
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !59
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !97
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91, !prof !150

90:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %91

91:                                               ; preds = %90, %82
  %92 = getelementptr inbounds i8, ptr %60, i64 %88
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !44
  br label %95

95:                                               ; preds = %91, %77
  %96 = phi ptr [ %94, %91 ], [ null, %77 ]
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 121
  br i1 %99, label %100, label %103, !prof !151

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_exp, ptr %96, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !55
  br label %103

103:                                              ; preds = %95, %100
  %104 = phi ptr [ %102, %100 ], [ null, %95 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %424, label %106, !prof !150

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.tree_function_decl, ptr %104, i64 0, i32 5
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 6144
  %110 = icmp eq i32 %109, 6144
  br i1 %110, label %111, label %424, !prof !150

111:                                              ; preds = %106
  %112 = and i32 %108, 2047
  switch i32 %112, label %424 [
    i32 30, label %113
    i32 31, label %113
    i32 35, label %113
    i32 219, label %113
    i32 223, label %113
    i32 227, label %113
    i32 285, label %113
    i32 286, label %113
    i32 287, label %113
  ]

113:                                              ; preds = %111, %111, %111, %111, %111, %111, %111, %111, %111
  %114 = load i32, ptr %60, align 8
  %115 = and i32 %114, 255
  %116 = add nsw i32 %115, -10
  %117 = icmp ult i32 %116, -9
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = zext nneg i32 %115 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !59
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !97
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %127

127:                                              ; preds = %126, %118
  %128 = getelementptr inbounds i8, ptr %60, i64 %124
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8, !tbaa !44
  br label %131

131:                                              ; preds = %113, %127
  %132 = phi ptr [ %130, %127 ], [ null, %113 ]
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 141
  br i1 %135, label %136, label %424

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 1
  %138 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !44
  %139 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !55
  %141 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 5
  store ptr %141, ptr %137, align 8, !tbaa !120
  %142 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 5, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !123
  store ptr %143, ptr %2, align 8, !tbaa !124
  %144 = icmp eq ptr %143, %141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %138, i8 0, i64 40, i1 false)
  br i1 %144, label %149, label %145

145:                                              ; preds = %136
  call fastcc void @link_use_stmts_after(ptr noundef %143, ptr noundef nonnull %2)
  %146 = load ptr, ptr %2, align 8, !tbaa !124
  %147 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !55
  br label %149

149:                                              ; preds = %145, %136
  %150 = phi ptr [ %148, %145 ], [ null, %136 ]
  %151 = load ptr, ptr %2, align 8, !tbaa !124
  %152 = load ptr, ptr %137, align 8, !tbaa !120
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %250, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2, i32 1
  br label %156

156:                                              ; preds = %154, %242
  %157 = phi i32 [ %228, %242 ], [ 0, %154 ]
  %158 = phi i32 [ %227, %242 ], [ 0, %154 ]
  %159 = phi i32 [ %226, %242 ], [ 0, %154 ]
  %160 = phi ptr [ %243, %242 ], [ %150, %154 ]
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 255
  %163 = icmp eq i32 %162, 8
  br i1 %163, label %164, label %225

164:                                              ; preds = %156
  %165 = zext nneg i32 %162 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !59
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !97
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %173

173:                                              ; preds = %172, %164
  %174 = getelementptr inbounds i8, ptr %160, i64 %170
  %175 = load ptr, ptr %174, align 8, !tbaa !44
  %176 = icmp eq ptr %175, null
  br i1 %176, label %225, label %177

177:                                              ; preds = %173
  %178 = load i32, ptr %160, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -10
  %181 = icmp ult i32 %180, -9
  br i1 %181, label %195, label %182

182:                                              ; preds = %177
  %183 = zext nneg i32 %179 to i64
  %184 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !59
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8, !tbaa !97
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %191

191:                                              ; preds = %190, %182
  %192 = getelementptr inbounds i8, ptr %160, i64 %188
  %193 = getelementptr inbounds ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !44
  br label %195

195:                                              ; preds = %191, %177
  %196 = phi ptr [ %194, %191 ], [ null, %177 ]
  %197 = load i64, ptr %196, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 121
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.tree_exp, ptr %196, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !55
  br label %203

203:                                              ; preds = %200, %195
  %204 = phi ptr [ %202, %200 ], [ null, %195 ]
  %205 = icmp eq ptr %204, null
  br i1 %205, label %225, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.tree_function_decl, ptr %204, i64 0, i32 5
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 6144
  %210 = icmp eq i32 %209, 6144
  br i1 %210, label %211, label %225

211:                                              ; preds = %206
  %212 = and i32 %208, 2047
  switch i32 %212, label %225 [
    i32 30, label %213
    i32 31, label %213
    i32 35, label %213
    i32 219, label %217
    i32 223, label %217
    i32 227, label %217
    i32 285, label %221
    i32 286, label %221
    i32 287, label %221
  ]

213:                                              ; preds = %211, %211, %211
  %214 = call fastcc zeroext i8 @maybe_record_sincos(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %160), !range !152
  %215 = zext nneg i8 %214 to i32
  %216 = or i32 %159, %215
  br label %225

217:                                              ; preds = %211, %211, %211
  %218 = call fastcc zeroext i8 @maybe_record_sincos(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %160), !range !152
  %219 = zext nneg i8 %218 to i32
  %220 = or i32 %158, %219
  br label %225

221:                                              ; preds = %211, %211, %211
  %222 = call fastcc zeroext i8 @maybe_record_sincos(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %160), !range !152
  %223 = zext nneg i8 %222 to i32
  %224 = or i32 %157, %223
  br label %225

225:                                              ; preds = %221, %217, %213, %211, %206, %203, %173, %156
  %226 = phi i32 [ %159, %156 ], [ %159, %206 ], [ %159, %211 ], [ %159, %221 ], [ %159, %217 ], [ %216, %213 ], [ %159, %203 ], [ %159, %173 ]
  %227 = phi i32 [ %158, %156 ], [ %158, %206 ], [ %158, %211 ], [ %158, %221 ], [ %220, %217 ], [ %158, %213 ], [ %158, %203 ], [ %158, %173 ]
  %228 = phi i32 [ %157, %156 ], [ %157, %206 ], [ %157, %211 ], [ %224, %221 ], [ %157, %217 ], [ %157, %213 ], [ %157, %203 ], [ %157, %173 ]
  %229 = load ptr, ptr %155, align 8, !tbaa !123
  store ptr %229, ptr %2, align 8, !tbaa !124
  %230 = load ptr, ptr %137, align 8, !tbaa !120
  %231 = icmp eq ptr %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load ptr, ptr %138, align 8, !tbaa !126
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %233, i64 0, i32 1
  store ptr %229, ptr %236, align 8, !tbaa !123
  %237 = load ptr, ptr %155, align 8, !tbaa !123
  store ptr %233, ptr %237, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  br label %242

238:                                              ; preds = %225
  call fastcc void @link_use_stmts_after(ptr noundef %229, ptr noundef nonnull %2)
  %239 = load ptr, ptr %2, align 8, !tbaa !124
  %240 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !55
  br label %242

242:                                              ; preds = %238, %235, %232
  %243 = phi ptr [ %241, %238 ], [ null, %235 ], [ null, %232 ]
  %244 = load ptr, ptr %2, align 8, !tbaa !124
  %245 = load ptr, ptr %137, align 8, !tbaa !120
  %246 = icmp eq ptr %244, %245
  br i1 %246, label %247, label %156, !llvm.loop !153

247:                                              ; preds = %242
  %248 = add nuw nsw i32 %227, %226
  %249 = add nuw nsw i32 %248, %228
  br label %250

250:                                              ; preds = %247, %149
  %251 = phi i32 [ 0, %149 ], [ %249, %247 ]
  %252 = icmp slt i32 %251, 2
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load ptr, ptr %3, align 8, !tbaa !44
  %255 = icmp eq ptr %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %253
  call void @free(ptr noundef %254)
  br label %257

257:                                              ; preds = %256, %253
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %423

258:                                              ; preds = %250
  %259 = call ptr @mathfn_built_in(ptr noundef %140, i32 noundef 285) #17
  %260 = icmp eq ptr %259, null
  br i1 %260, label %423, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.tree_common, ptr %259, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !55
  %264 = getelementptr inbounds %struct.tree_common, ptr %263, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !55
  %266 = call ptr @make_rename_temp(ptr noundef %265, ptr noundef nonnull @.str.9) #17
  %267 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef nonnull %259, i32 noundef 1, ptr noundef nonnull %132) #17
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 255
  %270 = add nsw i32 %269, -10
  %271 = icmp ult i32 %270, -9
  br i1 %271, label %276, label %272

272:                                              ; preds = %261
  %273 = getelementptr inbounds %struct.gimple_statement_base, ptr %267, i64 0, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !55
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272, %261
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.5) #17
  br label %277

277:                                              ; preds = %276, %272
  %278 = load i32, ptr %267, align 8
  %279 = and i32 %278, 255
  %280 = zext nneg i32 %279 to i64
  %281 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !59
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %283
  %285 = load i64, ptr %284, align 8, !tbaa !97
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %288

288:                                              ; preds = %287, %277
  %289 = getelementptr inbounds i8, ptr %267, i64 %285
  store ptr %266, ptr %289, align 8, !tbaa !44
  %290 = icmp eq ptr %266, null
  br i1 %290, label %297, label %291

291:                                              ; preds = %288
  %292 = load i64, ptr %266, align 8
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 141
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.tree_ssa_name, ptr %266, i64 0, i32 2
  store ptr %267, ptr %296, align 8, !tbaa !55
  br label %297

297:                                              ; preds = %295, %291, %288
  %298 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !55
  %300 = load i64, ptr %132, align 8
  %301 = and i64 %300, 4294967296
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %297
  %304 = load i32, ptr %299, align 8
  %305 = and i32 %304, 255
  %306 = icmp eq i32 %305, 16
  br i1 %306, label %313, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.gimple_statement_base, ptr %299, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !55
  %310 = load ptr, ptr %4, align 8, !tbaa !44
  %311 = icmp eq ptr %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %299) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef nonnull %267, i32 noundef 1) #17
  br label %347

313:                                              ; preds = %307, %303, %297
  %314 = load ptr, ptr %4, align 8, !tbaa !44
  %315 = getelementptr inbounds %struct.basic_block_def, ptr %314, i64 0, i32 13
  %316 = load i32, ptr %315, align 8, !tbaa !83, !noalias !154
  %317 = and i32 %316, 512
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %314, i64 0, i32 7
  %321 = load ptr, ptr %320, align 8, !tbaa !55, !noalias !154
  %322 = icmp eq ptr %321, null
  br i1 %322, label %325, label %323

323:                                              ; preds = %319
  %324 = load ptr, ptr %321, align 8, !tbaa !89, !noalias !154
  br label %325

325:                                              ; preds = %323, %319, %313
  %326 = phi ptr [ %324, %323 ], [ null, %319 ], [ null, %313 ]
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %325
  %329 = load ptr, ptr %326, align 8, !tbaa !91, !noalias !154
  br label %330

330:                                              ; preds = %328, %325
  %331 = phi ptr [ %329, %328 ], [ null, %325 ]
  %332 = icmp eq ptr %331, null
  br i1 %332, label %343, label %333

333:                                              ; preds = %330, %339
  %334 = phi ptr [ %341, %339 ], [ %331, %330 ]
  %335 = load ptr, ptr %334, align 8, !tbaa !77, !noalias !159
  %336 = load i32, ptr %335, align 8, !noalias !159
  %337 = and i32 %336, 255
  %338 = icmp eq i32 %337, 4
  br i1 %338, label %339, label %343

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %334, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !81, !noalias !159
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %333, !llvm.loop !94

343:                                              ; preds = %339, %333, %330
  %344 = phi ptr [ %331, %330 ], [ %341, %339 ], [ %334, %333 ]
  %345 = getelementptr inbounds i8, ptr %1, i64 8
  %346 = getelementptr inbounds i8, ptr %1, i64 16
  store ptr %344, ptr %1, align 8, !tbaa.struct !76
  store ptr %326, ptr %345, align 8, !tbaa.struct !95
  store ptr %314, ptr %346, align 8, !tbaa.struct !96
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef nonnull %267, i32 noundef 1) #17
  br label %347

347:                                              ; preds = %343, %312
  %348 = load i32, ptr %267, align 8
  %349 = and i32 %348, 255
  %350 = add nsw i32 %349, -10
  %351 = icmp ult i32 %350, -9
  br i1 %351, label %353, label %352

352:                                              ; preds = %347
  call void @gimple_set_modified(ptr noundef nonnull %267, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %267) #17
  br label %353

353:                                              ; preds = %352, %347
  %354 = load ptr, ptr %3, align 8
  %355 = icmp eq ptr %354, null
  br label %356

356:                                              ; preds = %416, %353
  %357 = phi i64 [ %419, %416 ], [ 0, %353 ]
  br i1 %355, label %365, label %358

358:                                              ; preds = %356
  %359 = load i32, ptr %354, align 8, !tbaa !160
  %360 = zext i32 %359 to i64
  %361 = icmp ult i64 %357, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.VEC_gimple_base, ptr %354, i64 0, i32 2, i64 %357
  %364 = load ptr, ptr %363, align 8, !tbaa !44
  br label %365

365:                                              ; preds = %362, %358, %356
  %366 = phi ptr [ %364, %362 ], [ null, %358 ], [ null, %356 ]
  %367 = phi i1 [ false, %362 ], [ true, %358 ], [ true, %356 ]
  br i1 %367, label %420, label %368

368:                                              ; preds = %365
  %369 = load i32, ptr %366, align 8
  %370 = and i32 %369, 255
  %371 = add nsw i32 %370, -1
  %372 = icmp ult i32 %371, 9
  call void @llvm.assume(i1 %372)
  %373 = zext nneg i32 %370 to i64
  %374 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !59
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !97
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %368
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %381

381:                                              ; preds = %380, %368
  %382 = getelementptr inbounds i8, ptr %366, i64 %378
  %383 = getelementptr inbounds ptr, ptr %382, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !44
  %385 = load i64, ptr %384, align 8
  %386 = and i64 %385, 65535
  %387 = icmp eq i64 %386, 121
  call void @llvm.assume(i1 %387)
  %388 = getelementptr inbounds %struct.tree_exp, ptr %384, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !55
  %390 = getelementptr inbounds %struct.tree_function_decl, ptr %389, i64 0, i32 5
  %391 = load i32, ptr %390, align 8
  %392 = and i32 %391, 2047
  switch i32 %392, label %397 [
    i32 30, label %393
    i32 31, label %393
    i32 35, label %393
    i32 219, label %395
    i32 223, label %395
    i32 227, label %395
    i32 285, label %398
    i32 286, label %398
    i32 287, label %398
  ]

393:                                              ; preds = %381, %381, %381
  %394 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %140, ptr noundef %266) #17
  br label %398

395:                                              ; preds = %381, %381, %381
  %396 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef %140, ptr noundef %266) #17
  br label %398

397:                                              ; preds = %381
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 733, ptr noundef nonnull @.str.5) #17
  br label %398

398:                                              ; preds = %381, %381, %397, %395, %393, %381
  %399 = phi ptr [ null, %397 ], [ %396, %395 ], [ %394, %393 ], [ %266, %381 ], [ %266, %381 ], [ %266, %381 ]
  %400 = load i32, ptr %366, align 8
  %401 = and i32 %400, 255
  %402 = add nsw i32 %401, -10
  %403 = icmp ult i32 %402, -9
  br i1 %403, label %416, label %404

404:                                              ; preds = %398
  %405 = zext nneg i32 %401 to i64
  %406 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !59
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %408
  %410 = load i64, ptr %409, align 8, !tbaa !97
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %404
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %413

413:                                              ; preds = %412, %404
  %414 = getelementptr inbounds i8, ptr %366, i64 %410
  %415 = load ptr, ptr %414, align 8, !tbaa !44
  br label %416

416:                                              ; preds = %413, %398
  %417 = phi ptr [ %415, %413 ], [ null, %398 ]
  %418 = call ptr @gimple_build_assign_stat(ptr noundef %417, ptr noundef %399) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %366) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %418, i32 noundef 1) #17
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %419 = add nuw i64 %357, 1
  br label %356, !llvm.loop !162

420:                                              ; preds = %365
  br i1 %355, label %422, label %421

421:                                              ; preds = %420
  call void @free(ptr noundef %354)
  br label %422

422:                                              ; preds = %421, %420
  store ptr null, ptr %3, align 8, !tbaa !44
  br label %423

423:                                              ; preds = %257, %258, %422
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  br label %424

424:                                              ; preds = %111, %423, %131, %106, %103, %73, %58
  %425 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %59, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !81
  %427 = icmp eq ptr %426, null
  br i1 %427, label %16, label %58, !prof !163, !llvm.loop !164

428:                                              ; preds = %16, %0
  call void @free_dominance_info(i32 noundef 1) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_optimize_bswap() #9 !prof !63 !PGOFuncName !165 {
  %1 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !59
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @optimize, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !65
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_optimize_bswap() #11 !prof !63 !PGOFuncName !166 {
  %1 = alloca %struct.symbolic_number, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 419), align 8, !tbaa !44
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 16), align 16
  %6 = icmp ne i32 %5, 2956
  %7 = select i1 %4, i1 %6, i1 false, !prof !65
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 420), align 16, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !167

10:                                               ; preds = %0
  %11 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 17), align 4, !tbaa !168
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %13, label %17, !prof !65

13:                                               ; preds = %10
  %14 = load i32, ptr @word_mode, align 4
  %15 = icmp eq i32 %14, 16
  %16 = select i1 %7, i1 %15, i1 false, !prof !65
  br label %17

17:                                               ; preds = %10, %13, %0
  %18 = phi i1 [ false, %0 ], [ true, %10 ], [ %16, %13 ]
  %19 = select i1 %7, i1 true, i1 %18, !prof !65
  br i1 %19, label %20, label %285, !prof !65

20:                                               ; preds = %17
  br i1 %7, label %21, label %28, !prof !65

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.tree_list, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi ptr [ %27, %21 ], [ null, %20 ]
  br i1 %18, label %30, label %37, !prof !65

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.tree_list, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  br label %37

37:                                               ; preds = %30, %28
  %38 = phi ptr [ %36, %30 ], [ null, %28 ]
  %39 = load ptr, ptr @cfun, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %285, label %48, !prof !132

48:                                               ; preds = %37
  %49 = getelementptr inbounds i8, ptr %2, i64 8
  %50 = getelementptr inbounds i8, ptr %2, i64 16
  br label %51

51:                                               ; preds = %48, %271
  %52 = phi ptr [ %44, %48 ], [ %275, %271 ]
  %53 = phi i8 [ 0, %48 ], [ %273, %271 ]
  %54 = phi ptr [ undef, %48 ], [ %272, %271 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !83, !noalias !170
  %57 = and i32 %56, 512
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65, !prof !140

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !55, !noalias !170
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !141

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !89, !noalias !170
  br label %65

65:                                               ; preds = %63, %59, %51
  %66 = phi ptr [ %64, %63 ], [ null, %59 ], [ null, %51 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !141

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !91, !noalias !170
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %69, %68 ], [ null, %65 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73, !prof !142

73:                                               ; preds = %70, %79
  %74 = phi ptr [ %81, %79 ], [ %71, %70 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !77, !noalias !175
  %76 = load i32, ptr %75, align 8, !noalias !175
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %83, !prof !144

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %74, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !81, !noalias !175
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %73, !prof !145, !llvm.loop !94

83:                                               ; preds = %73, %79, %70
  %84 = phi ptr [ %71, %70 ], [ %74, %73 ], [ %81, %79 ]
  store ptr %84, ptr %2, align 8, !tbaa.struct !76
  store ptr %66, ptr %49, align 8, !tbaa.struct !95
  store ptr %52, ptr %50, align 8, !tbaa.struct !96
  %85 = icmp eq ptr %84, null
  br i1 %85, label %271, label %86, !prof !146

86:                                               ; preds = %83, %264
  %87 = phi ptr [ %269, %264 ], [ %84, %83 ]
  %88 = phi i8 [ %266, %264 ], [ %53, %83 ]
  %89 = phi ptr [ %265, %264 ], [ %54, %83 ]
  %90 = load ptr, ptr %87, align 8, !tbaa !77
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 255
  %93 = icmp eq i32 %92, 6
  br i1 %93, label %94, label %264, !prof !176

94:                                               ; preds = %86
  %95 = lshr i32 %91, 16
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !55
  %99 = icmp eq i8 %98, 3
  br i1 %99, label %100, label %116, !prof !177

100:                                              ; preds = %94
  %101 = zext nneg i32 %92 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !59
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !97
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109, !prof !178

108:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %109

109:                                              ; preds = %108, %100
  %110 = getelementptr inbounds i8, ptr %90, i64 %106
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !44
  %113 = load i64, ptr %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 65535
  br label %116

116:                                              ; preds = %94, %109
  %117 = phi i32 [ %115, %109 ], [ %95, %94 ]
  %118 = icmp eq i32 %117, 87
  br i1 %118, label %119, label %264, !prof !179

119:                                              ; preds = %116
  %120 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %90)
  %121 = getelementptr inbounds %struct.tree_type, ptr %120, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 1023
  switch i32 %123, label %264 [
    i32 32, label %124
    i32 64, label %128
  ], !prof !180

124:                                              ; preds = %119
  %125 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 419), align 8
  %126 = select i1 %7, ptr %29, ptr %89, !prof !181
  %127 = select i1 %7, ptr %125, ptr null, !prof !181
  br label %132

128:                                              ; preds = %119
  %129 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 420), align 16
  %130 = select i1 %18, ptr %38, ptr %89
  %131 = select i1 %18, ptr %129, ptr null
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi ptr [ %126, %124 ], [ %130, %128 ]
  %134 = phi ptr [ %127, %124 ], [ %131, %128 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %264, label %136, !prof !182

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  %137 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %90)
  %138 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !55
  %140 = getelementptr inbounds %struct.tree_int_cst, ptr %139, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !55
  %142 = trunc i64 %141 to i32
  %143 = add i32 %142, 1
  %144 = call fastcc ptr @find_bswap_1(ptr noundef nonnull %90, ptr noundef nonnull %1, i32 noundef %143)
  %145 = icmp eq ptr %144, null
  br i1 %145, label %166, label %146, !prof !181

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !183
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = shl nsw i32 %148, 3
  %152 = zext nneg i32 %151 to i64
  %153 = shl nsw i64 -1, %152
  %154 = xor i64 %153, -1
  %155 = load i64, ptr %1, align 8, !tbaa !185
  %156 = and i64 %155, %154
  store i64 %156, ptr %1, align 8, !tbaa !185
  %157 = sext i32 %148 to i64
  %158 = shl nsw i64 %157, 3
  %159 = sub nsw i64 64, %158
  %160 = lshr i64 72623859790382856, %159
  br label %161

161:                                              ; preds = %150, %146
  %162 = phi i64 [ %160, %150 ], [ 72623859790382856, %146 ]
  %163 = load i64, ptr %1, align 8, !tbaa !185
  %164 = icmp eq i64 %162, %163
  %165 = select i1 %164, ptr %144, ptr null
  br label %166

166:                                              ; preds = %136, %161
  %167 = phi ptr [ null, %136 ], [ %165, %161 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  %168 = icmp eq ptr %167, null
  br i1 %168, label %264, label %169, !prof !181

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !55
  %172 = call zeroext i8 @useless_type_conversion_p(ptr noundef %171, ptr noundef %133) #17
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = call ptr @create_tmp_var(ptr noundef %133, ptr noundef nonnull @.str.10) #17
  %176 = call zeroext i8 @add_referenced_var(ptr noundef %175) #17
  %177 = load ptr, ptr @cfun, align 8, !tbaa !44
  %178 = call ptr @make_ssa_name_fn(ptr noundef %177, ptr noundef %175, ptr noundef null) #17
  %179 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 113, ptr noundef %178, ptr noundef nonnull %167, ptr noundef null) #17
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %179, i32 noundef 1) #17
  br label %180

180:                                              ; preds = %174, %169
  %181 = phi ptr [ %167, %169 ], [ %178, %174 ]
  %182 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef nonnull %134, i32 noundef 1, ptr noundef %181) #17
  %183 = load i32, ptr %90, align 8
  %184 = and i32 %183, 255
  %185 = add nsw i32 %184, -1
  %186 = icmp ult i32 %185, 9
  call void @llvm.assume(i1 %186)
  %187 = zext nneg i32 %184 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !59
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !97
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %195

195:                                              ; preds = %194, %180
  %196 = getelementptr inbounds i8, ptr %90, i64 %192
  %197 = load ptr, ptr %196, align 8, !tbaa !44
  %198 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !55
  %200 = call zeroext i8 @useless_type_conversion_p(ptr noundef %199, ptr noundef %133) #17
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %195
  %203 = call ptr @create_tmp_var(ptr noundef %133, ptr noundef nonnull @.str.11) #17
  %204 = call zeroext i8 @add_referenced_var(ptr noundef %203) #17
  %205 = load ptr, ptr @cfun, align 8, !tbaa !44
  %206 = call ptr @make_ssa_name_fn(ptr noundef %205, ptr noundef %203, ptr noundef null) #17
  %207 = load i32, ptr %90, align 8
  %208 = and i32 %207, 255
  %209 = add nsw i32 %208, -10
  %210 = icmp ult i32 %209, -9
  br i1 %210, label %223, label %211

211:                                              ; preds = %202
  %212 = zext nneg i32 %208 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !59
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !97
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %220

220:                                              ; preds = %219, %211
  %221 = getelementptr inbounds i8, ptr %90, i64 %217
  %222 = load ptr, ptr %221, align 8, !tbaa !44
  br label %223

223:                                              ; preds = %202, %220
  %224 = phi ptr [ %222, %220 ], [ null, %202 ]
  %225 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 113, ptr noundef %224, ptr noundef %206, ptr noundef null) #17
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %225, i32 noundef 1) #17
  br label %226

226:                                              ; preds = %223, %195
  %227 = phi ptr [ %197, %195 ], [ %206, %223 ]
  %228 = load i32, ptr %182, align 8
  %229 = and i32 %228, 255
  %230 = add nsw i32 %229, -10
  %231 = icmp ult i32 %230, -9
  br i1 %231, label %236, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.gimple_statement_base, ptr %182, i64 0, i32 3
  %234 = load i32, ptr %233, align 4, !tbaa !55
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %226
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.5) #17
  br label %237

237:                                              ; preds = %236, %232
  %238 = load i32, ptr %182, align 8
  %239 = and i32 %238, 255
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !59
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !97
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %248

248:                                              ; preds = %247, %237
  %249 = getelementptr inbounds i8, ptr %182, i64 %245
  store ptr %227, ptr %249, align 8, !tbaa !44
  %250 = icmp eq ptr %227, null
  br i1 %250, label %257, label %251

251:                                              ; preds = %248
  %252 = load i64, ptr %227, align 8
  %253 = and i64 %252, 65535
  %254 = icmp eq i64 %253, 141
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.tree_ssa_name, ptr %227, i64 0, i32 2
  store ptr %182, ptr %256, align 8, !tbaa !55
  br label %257

257:                                              ; preds = %248, %251, %255
  %258 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %259 = icmp eq ptr %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %258, ptr noundef nonnull @.str.12, i32 noundef %123)
  %262 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call void @print_gimple_stmt(ptr noundef %262, ptr noundef nonnull %90, i32 noundef 0, i32 noundef 0) #17
  br label %263

263:                                              ; preds = %260, %257
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef nonnull %182, i32 noundef 1) #17
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  br label %264

264:                                              ; preds = %166, %132, %119, %86, %116, %263
  %265 = phi ptr [ %133, %263 ], [ %89, %116 ], [ %89, %86 ], [ %89, %119 ], [ %133, %132 ], [ %133, %166 ]
  %266 = phi i8 [ 1, %263 ], [ %88, %116 ], [ %88, %86 ], [ %88, %119 ], [ %88, %132 ], [ %88, %166 ]
  %267 = load ptr, ptr %2, align 8, !tbaa !79
  %268 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !81
  store ptr %269, ptr %2, align 8, !tbaa !79
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %86, !prof !163, !llvm.loop !186

271:                                              ; preds = %264, %83
  %272 = phi ptr [ %54, %83 ], [ %265, %264 ]
  %273 = phi i8 [ %53, %83 ], [ %266, %264 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !73
  %276 = load ptr, ptr @cfun, align 8, !tbaa !44
  %277 = getelementptr inbounds %struct.function, ptr %276, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !66
  %279 = getelementptr inbounds %struct.control_flow_graph, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !75
  %281 = icmp eq ptr %275, %280
  br i1 %281, label %282, label %51, !prof !133, !llvm.loop !187

282:                                              ; preds = %271
  %283 = icmp eq i8 %273, 0
  %284 = select i1 %283, i32 0, i32 2069, !prof !65
  br label %285

285:                                              ; preds = %37, %282, %17
  %286 = phi i32 [ 0, %17 ], [ 0, %37 ], [ %284, %282 ]
  ret i32 %286
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @execute_cse_reciprocals_1(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !43 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %17 [
    i16 9, label %14
    i16 13, label %8
    i16 14, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %8, %2
  %15 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %8, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 411, ptr noundef nonnull @.str.5) #17
  br label %18

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %20 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !120
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  store ptr %22, ptr %3, align 8, !tbaa !124
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %61, label %24

24:                                               ; preds = %18, %52
  %25 = phi ptr [ %59, %52 ], [ %22, %18 ]
  %26 = phi i32 [ %53, %52 ], [ 0, %18 ]
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = tail call fastcc zeroext i8 @is_division_by(ptr noundef %28, ptr noundef %1), !range !152
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !188
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load ptr, ptr @occ_pool, align 8, !tbaa !44
  %39 = tail call ptr @pool_alloc(ptr noundef %38) #17
  store ptr %39, ptr %34, align 8, !tbaa !188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %39, i8 0, i64 48, i1 false)
  store ptr %33, ptr %39, align 8, !tbaa !189
  %40 = getelementptr inbounds %struct.occurrence, ptr %39, i64 0, i32 3
  store ptr null, ptr %40, align 8, !tbaa !191
  %41 = load ptr, ptr @cfun, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  tail call fastcc void @insert_bb(ptr noundef nonnull %39, ptr noundef %44, ptr noundef nonnull @occ_head)
  br label %45

45:                                               ; preds = %31, %37
  %46 = phi ptr [ %35, %31 ], [ %39, %37 ]
  %47 = getelementptr inbounds %struct.occurrence, ptr %46, i64 0, i32 6
  store i8 1, ptr %47, align 4, !tbaa !192
  %48 = getelementptr inbounds %struct.occurrence, ptr %46, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !193
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !193
  %51 = add nsw i32 %26, 1
  br label %52

52:                                               ; preds = %45, %24
  %53 = phi i32 [ %51, %45 ], [ %26, %24 ]
  %54 = load ptr, ptr %3, align 8, !tbaa !124
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !123
  store ptr %56, ptr %3, align 8, !tbaa !124
  %57 = load ptr, ptr %20, align 8, !tbaa !120
  %58 = icmp eq ptr %56, %57
  %59 = select i1 %58, ptr null, ptr %56
  %60 = icmp eq ptr %56, %57
  br i1 %60, label %61, label %24, !llvm.loop !194

61:                                               ; preds = %52, %18
  %62 = phi i32 [ 0, %18 ], [ %53, %52 ]
  %63 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 54), align 8, !tbaa !195
  %64 = load ptr, ptr %4, align 8, !tbaa !55
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 14
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = tail call i32 @vector_type_mode(ptr noundef nonnull %64) #17
  br label %75

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  br label %75

75:                                               ; preds = %70, %68
  %76 = phi i32 [ %69, %68 ], [ %74, %70 ]
  %77 = tail call i32 %63(i32 noundef %76) #17
  %78 = icmp slt i32 %62, %77
  br i1 %78, label %192, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @occ_head, align 8, !tbaa !44
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79, %82
  %83 = phi ptr [ %85, %82 ], [ %80, %79 ]
  tail call fastcc void @compute_merit(ptr noundef nonnull %83)
  tail call fastcc void @insert_reciprocals(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %1, ptr noundef null, i32 noundef %77)
  %84 = getelementptr inbounds %struct.occurrence, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !44
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %82, !llvm.loop !196

87:                                               ; preds = %82, %79
  store ptr %19, ptr %20, align 8, !tbaa !120
  %88 = load ptr, ptr %21, align 8, !tbaa !123
  store ptr %88, ptr %3, align 8, !tbaa !124
  %89 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 3
  %90 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %91 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  %92 = icmp eq ptr %88, %19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %90, i8 0, i64 40, i1 false)
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  call fastcc void @link_use_stmts_after(ptr noundef %88, ptr noundef nonnull %3)
  %94 = load ptr, ptr %3, align 8, !tbaa !124
  %95 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %87, %93
  %98 = phi ptr [ %96, %93 ], [ null, %87 ]
  %99 = load ptr, ptr %3, align 8, !tbaa !124
  %100 = load ptr, ptr %20, align 8, !tbaa !120
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %192, label %102

102:                                              ; preds = %97, %187
  %103 = phi ptr [ %188, %187 ], [ %98, %97 ]
  %104 = call fastcc zeroext i8 @is_division_by(ptr noundef %103, ptr noundef %1), !range !152
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %173, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %3, align 8, !tbaa !124
  %108 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !123
  store ptr %109, ptr %89, align 8, !tbaa !197
  %110 = icmp eq ptr %107, %90
  br i1 %110, label %173, label %111

111:                                              ; preds = %106, %169
  %112 = phi ptr [ %170, %169 ], [ %107, %106 ]
  %113 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !55
  %115 = getelementptr inbounds %struct.gimple_statement_base, ptr %114, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !55
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !188
  %119 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %116) #17
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %163, label %121

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.occurrence, ptr %118, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !198
  %124 = icmp eq ptr %123, null
  br i1 %124, label %163, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.occurrence, ptr %118, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !199
  %128 = icmp eq ptr %114, %127
  br i1 %128, label %163, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %114, align 8
  %131 = and i32 %130, 65535
  %132 = or disjoint i32 %131, 4259840
  store i32 %132, ptr %114, align 8
  %133 = load ptr, ptr %122, align 8, !tbaa !198
  %134 = load ptr, ptr %112, align 8, !tbaa !126
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !123
  %139 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %134, i64 0, i32 1
  store ptr %138, ptr %139, align 8, !tbaa !123
  %140 = load ptr, ptr %137, align 8, !tbaa !123
  store ptr %134, ptr %140, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  br label %141

141:                                              ; preds = %136, %129
  %142 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !200
  store ptr %133, ptr %143, align 8, !tbaa !44
  %144 = icmp eq ptr %133, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, ptr %133, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 141
  br i1 %148, label %150, label %149

149:                                              ; preds = %145, %141
  store ptr null, ptr %112, align 8, !tbaa !126
  br label %156

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.tree_ssa_name, ptr %133, i64 0, i32 5
  store ptr %151, ptr %112, align 8, !tbaa !126
  %152 = getelementptr inbounds %struct.tree_ssa_name, ptr %133, i64 0, i32 5, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !123
  %154 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  store ptr %153, ptr %154, align 8, !tbaa !123
  %155 = load ptr, ptr %152, align 8, !tbaa !123
  store ptr %112, ptr %155, align 8, !tbaa !126
  store ptr %112, ptr %152, align 8, !tbaa !123
  br label %156

156:                                              ; preds = %150, %149
  %157 = call zeroext i8 @fold_stmt_inplace(ptr noundef nonnull %114) #17
  %158 = load i32, ptr %114, align 8
  %159 = and i32 %158, 255
  %160 = add nsw i32 %159, -10
  %161 = icmp ult i32 %160, -9
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  call void @gimple_set_modified(ptr noundef nonnull %114, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %114) #17
  br label %163

163:                                              ; preds = %111, %121, %125, %156, %162
  %164 = load ptr, ptr %89, align 8, !tbaa !197
  store ptr %164, ptr %3, align 8, !tbaa !124
  %165 = icmp eq ptr %164, %90
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %164, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !123
  store ptr %168, ptr %89, align 8, !tbaa !197
  br label %169

169:                                              ; preds = %163, %166
  %170 = phi ptr [ %164, %166 ], [ null, %163 ]
  %171 = load ptr, ptr %3, align 8, !tbaa !124
  %172 = icmp eq ptr %171, %90
  br i1 %172, label %173, label %111, !llvm.loop !201

173:                                              ; preds = %169, %106, %102
  %174 = load ptr, ptr %91, align 8, !tbaa !123
  store ptr %174, ptr %3, align 8, !tbaa !124
  %175 = load ptr, ptr %20, align 8, !tbaa !120
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load ptr, ptr %90, align 8, !tbaa !126
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %178, i64 0, i32 1
  store ptr %174, ptr %181, align 8, !tbaa !123
  %182 = load ptr, ptr %91, align 8, !tbaa !123
  store ptr %178, ptr %182, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, i8 0, i64 16, i1 false)
  br label %187

183:                                              ; preds = %173
  call fastcc void @link_use_stmts_after(ptr noundef %174, ptr noundef nonnull %3)
  %184 = load ptr, ptr %3, align 8, !tbaa !124
  %185 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !55
  br label %187

187:                                              ; preds = %177, %180, %183
  %188 = phi ptr [ %186, %183 ], [ null, %180 ], [ null, %177 ]
  %189 = load ptr, ptr %3, align 8, !tbaa !124
  %190 = load ptr, ptr %20, align 8, !tbaa !120
  %191 = icmp eq ptr %189, %190
  br i1 %191, label %192, label %102, !llvm.loop !202

192:                                              ; preds = %187, %97, %75
  %193 = load ptr, ptr @occ_head, align 8, !tbaa !44
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %192, %195
  %196 = phi ptr [ %197, %195 ], [ %193, %192 ]
  %197 = call fastcc ptr @free_bb(ptr noundef nonnull %196)
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %195, !llvm.loop !203

199:                                              ; preds = %195, %192
  store ptr null, ptr @occ_head, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

declare void @gimple_replace_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_division_by(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 !prof !43 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %78

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !55
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !97
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %0, i64 %18
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %6, %21
  %29 = phi i32 [ %27, %21 ], [ %7, %6 ]
  %30 = icmp eq i32 %29, 75
  br i1 %30, label %31, label %78

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !55
  %34 = icmp ugt i32 %33, 2
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -10
  %39 = icmp ult i32 %38, -9
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = zext nneg i32 %37 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !59
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !97
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr inbounds i8, ptr %0, i64 %46
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  br label %53

53:                                               ; preds = %31, %35, %49
  %54 = phi ptr [ null, %31 ], [ %52, %49 ], [ null, %35 ]
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, -10
  %60 = icmp ult i32 %59, -9
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = zext nneg i32 %58 to i64
  %63 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !59
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !97
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds i8, ptr %0, i64 %67
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !44
  br label %74

74:                                               ; preds = %56, %70
  %75 = phi ptr [ %73, %70 ], [ null, %56 ]
  %76 = icmp ne ptr %75, %1
  %77 = zext i1 %76 to i8
  br label %78

78:                                               ; preds = %74, %53, %28, %2
  %79 = phi i8 [ 0, %53 ], [ 0, %28 ], [ 0, %2 ], [ %77, %74 ]
  ret i8 %79
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @compute_merit(ptr nocapture noundef %0) unnamed_addr #10 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = getelementptr inbounds %struct.occurrence, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @compute_merit(ptr noundef nonnull %9)
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, ptr @flag_exceptions, align 4, !tbaa !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @single_noncomplex_succ(ptr noundef %2) #17
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %2, %14 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !189
  %22 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %20, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.occurrence, ptr %9, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !193
  %27 = load i32, ptr %7, align 8, !tbaa !193
  %28 = add nsw i32 %27, %26
  store i32 %28, ptr %7, align 8, !tbaa !193
  br label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.occurrence, ptr %9, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !204

33:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_reciprocals(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 !prof !43 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %117

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 6
  %10 = load i8, ptr %9, align 4, !tbaa !192
  %11 = icmp eq i8 %10, 0
  %12 = load i32, ptr @flag_trapping_math, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %117, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !193
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %117, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = tail call ptr @make_rename_temp(ptr noundef %21, ptr noundef nonnull @.str.6) #17
  %23 = tail call ptr @build_one_cst(ptr noundef %21) #17
  %24 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 75, ptr noundef %22, ptr noundef %23, ptr noundef %2) #17
  %25 = load i8, ptr %9, align 4, !tbaa !192
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %73, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %1, align 8, !tbaa !189
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !83, !noalias !205
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !55, !noalias !205
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !89, !noalias !205
  br label %39

39:                                               ; preds = %37, %33, %27
  %40 = phi ptr [ %38, %37 ], [ null, %33 ], [ null, %27 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !91, !noalias !205
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ null, %39 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %44, %53
  %48 = phi ptr [ %55, %53 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !77, !noalias !210
  %50 = load i32, ptr %49, align 8, !noalias !210
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !81, !noalias !210
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %47, !llvm.loop !94

57:                                               ; preds = %47, %53, %44
  %58 = phi ptr [ %45, %44 ], [ %48, %47 ], [ %55, %53 ]
  store ptr %58, ptr %6, align 8, !tbaa.struct !76
  %59 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %40, ptr %59, align 8, !tbaa.struct !95
  %60 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %28, ptr %60, align 8, !tbaa.struct !96
  %61 = icmp eq ptr %58, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %57, %67
  %63 = phi ptr [ %70, %67 ], [ %58, %57 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !77
  %65 = tail call fastcc zeroext i8 @is_division_by(ptr noundef %64, ptr noundef %2), !range !152
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load ptr, ptr %6, align 8, !tbaa !79
  %69 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !81
  store ptr %70, ptr %6, align 8, !tbaa !79
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %62, !llvm.loop !211

72:                                               ; preds = %62, %67, %57
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 1) #17
  br label %115

73:                                               ; preds = %19
  %74 = icmp eq ptr %0, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %1, align 8, !tbaa !189
  %77 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !212
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  tail call void @gsi_insert_after(ptr noundef nonnull %0, ptr noundef %24, i32 noundef 0) #17
  br label %115

81:                                               ; preds = %75, %73
  %82 = load ptr, ptr %1, align 8, !tbaa !189
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 13
  %84 = load i32, ptr %83, align 8, !tbaa !83, !noalias !213
  %85 = and i32 %84, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !55, !noalias !213
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %89, align 8, !tbaa !89, !noalias !213
  br label %93

93:                                               ; preds = %91, %87, %81
  %94 = phi ptr [ %92, %91 ], [ null, %87 ], [ null, %81 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %94, align 8, !tbaa !91, !noalias !213
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi ptr [ %97, %96 ], [ null, %93 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %98, %107
  %102 = phi ptr [ %109, %107 ], [ %99, %98 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !77, !noalias !218
  %104 = load i32, ptr %103, align 8, !noalias !218
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %102, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !81, !noalias !218
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %101, !llvm.loop !94

111:                                              ; preds = %101, %107, %98
  %112 = phi ptr [ %99, %98 ], [ %102, %101 ], [ %109, %107 ]
  store ptr %112, ptr %6, align 8, !tbaa.struct !76
  %113 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %94, ptr %113, align 8, !tbaa.struct !95
  %114 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %82, ptr %114, align 8, !tbaa.struct !96
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 1) #17
  br label %115

115:                                              ; preds = %80, %111, %72
  %116 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 2
  store ptr %24, ptr %116, align 8, !tbaa !199
  br label %117

117:                                              ; preds = %8, %115, %15, %5
  %118 = phi ptr [ %3, %5 ], [ null, %8 ], [ %22, %115 ], [ null, %15 ]
  %119 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 1
  store ptr %118, ptr %119, align 8, !tbaa !198
  %120 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %117, %123
  %124 = phi ptr [ %126, %123 ], [ %121, %117 ]
  call fastcc void @insert_reciprocals(ptr noundef %0, ptr noundef nonnull %124, ptr noundef %2, ptr noundef %118, i32 noundef %4)
  %125 = getelementptr inbounds %struct.occurrence, ptr %124, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !44
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %123, !llvm.loop !219

128:                                              ; preds = %123, %117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @free_bb(ptr noundef %0) unnamed_addr #10 !prof !43 {
  %2 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  %4 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = load ptr, ptr %0, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !188
  %8 = load ptr, ptr @occ_pool, align 8, !tbaa !44
  tail call void @pool_free(ptr noundef %8, ptr noundef nonnull %0) #17
  %9 = icmp eq ptr %5, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %3, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %14, %12 ], [ %3, %10 ]
  %14 = tail call fastcc ptr @free_bb(ptr noundef nonnull %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !221

16:                                               ; preds = %12, %10, %1
  %17 = phi ptr [ %3, %1 ], [ %5, %10 ], [ %5, %12 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_bb(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !43 {
  br label %4

4:                                                ; preds = %39, %3
  %5 = phi ptr [ %2, %3 ], [ %40, %39 ]
  %6 = phi ptr [ %0, %3 ], [ %41, %39 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %6, align 8, !tbaa !189
  %11 = load ptr, ptr %7, align 8, !tbaa !189
  %12 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %11, ptr noundef %10) #17
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.occurrence, ptr %7, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !220
  store ptr %16, ptr %5, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.occurrence, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !191
  store ptr %18, ptr %15, align 8, !tbaa !220
  store ptr %7, ptr %17, align 8, !tbaa !191
  br label %39

19:                                               ; preds = %9
  %20 = icmp eq ptr %12, %11
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.occurrence, ptr %7, i64 0, i32 3
  tail call fastcc void @insert_bb(ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %22)
  br label %39

23:                                               ; preds = %19
  %24 = icmp eq ptr %12, %1
  br i1 %24, label %37, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 204, ptr noundef nonnull @.str.5) #17
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.occurrence, ptr %7, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !220
  store ptr %32, ptr %5, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.occurrence, ptr %6, i64 0, i32 4
  store ptr %7, ptr %33, align 8, !tbaa !220
  store ptr null, ptr %31, align 8, !tbaa !220
  %34 = load ptr, ptr @occ_pool, align 8, !tbaa !44
  %35 = tail call ptr @pool_alloc(ptr noundef %34) #17
  store ptr %35, ptr %26, align 8, !tbaa !188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %35, i8 0, i64 48, i1 false)
  store ptr %12, ptr %35, align 8, !tbaa !189
  %36 = getelementptr inbounds %struct.occurrence, ptr %35, i64 0, i32 3
  store ptr %6, ptr %36, align 8, !tbaa !191
  br label %39

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.occurrence, ptr %7, i64 0, i32 4
  br label %39

39:                                               ; preds = %14, %30, %37, %21
  %40 = phi ptr [ %5, %21 ], [ %5, %14 ], [ %5, %30 ], [ %38, %37 ]
  %41 = phi ptr [ %6, %21 ], [ %6, %14 ], [ %35, %30 ], [ %6, %37 ]
  %42 = phi i1 [ false, %21 ], [ true, %14 ], [ true, %30 ], [ true, %37 ]
  br i1 %42, label %4, label %46, !llvm.loop !222

43:                                               ; preds = %4
  %44 = load ptr, ptr %2, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.occurrence, ptr %6, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !220
  store ptr %6, ptr %2, align 8, !tbaa !44
  br label %46

46:                                               ; preds = %39, %43
  ret void
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_noncomplex_succ(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_one_cst(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #17
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #17
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !55
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
  %40 = load ptr, ptr %39, align 8, !tbaa !200
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !123
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !126
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !123
  %56 = load ptr, ptr %53, align 8, !tbaa !123
  store ptr %50, ptr %56, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !126
  %58 = load ptr, ptr %46, align 8, !tbaa !123
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !123
  %60 = load ptr, ptr %46, align 8, !tbaa !123
  store ptr %35, ptr %60, align 8, !tbaa !126
  store ptr %35, ptr %46, align 8, !tbaa !123
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !55
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.5) #17
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
  br i1 %76, label %34, label %188, !llvm.loop !223

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
  %85 = load ptr, ptr %84, align 8, !tbaa !55
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
  %95 = load ptr, ptr %94, align 8, !tbaa !55
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !224
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !224
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
  %115 = load ptr, ptr %114, align 8, !tbaa !200
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !123
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !126
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !123
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !123
  %131 = load ptr, ptr %128, align 8, !tbaa !123
  store ptr %125, ptr %131, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !126
  %133 = load ptr, ptr %121, align 8, !tbaa !123
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !123
  %135 = load ptr, ptr %121, align 8, !tbaa !123
  store ptr %110, ptr %135, align 8, !tbaa !126
  store ptr %110, ptr %121, align 8, !tbaa !123
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !224
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !226

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !55
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !227
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
  %167 = load ptr, ptr %166, align 8, !tbaa !200
  %168 = load ptr, ptr %167, align 8, !tbaa !44
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !123
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !126
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !123
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !123
  %183 = load ptr, ptr %180, align 8, !tbaa !123
  store ptr %177, ptr %183, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !126
  %185 = load ptr, ptr %173, align 8, !tbaa !123
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !123
  %187 = load ptr, ptr %173, align 8, !tbaa !123
  store ptr %163, ptr %187, align 8, !tbaa !126
  store ptr %163, ptr %173, align 8, !tbaa !123
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !126
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !123
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !123
  %197 = load ptr, ptr %194, align 8, !tbaa !123
  store ptr %191, ptr %197, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !126
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !123
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !123
  %202 = load ptr, ptr %199, align 8, !tbaa !123
  store ptr %190, ptr %202, align 8, !tbaa !126
  store ptr %190, ptr %199, align 8, !tbaa !123
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @maybe_record_sincos(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 !prof !43 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load ptr, ptr %1, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %5
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %5, ptr noundef nonnull %6) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %10, %8
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.VEC_gimple_base, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !228
  %19 = load i32, ptr %14, align 8, !tbaa !160
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %16
  %22 = tail call ptr @vec_heap_p_reserve(ptr noundef %14, i32 noundef 1) #17
  store ptr %22, ptr %0, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %16, %21
  %24 = load ptr, ptr %0, align 8, !tbaa !44
  %25 = load i32, ptr %24, align 8, !tbaa !160
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !160
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_gimple_base, ptr %24, i64 0, i32 2, i64 %27
  store ptr %2, ptr %28, align 8, !tbaa !44
  br label %51

29:                                               ; preds = %10, %3
  %30 = load ptr, ptr %1, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %30, ptr noundef %5) #17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32, %29
  %36 = load ptr, ptr %0, align 8, !tbaa !44
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.VEC_gimple_base, ptr %36, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !228
  %41 = load i32, ptr %36, align 8, !tbaa !160
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %38
  %44 = tail call ptr @vec_heap_p_reserve(ptr noundef %36, i32 noundef 1) #17
  store ptr %44, ptr %0, align 8, !tbaa !44
  br label %45

45:                                               ; preds = %38, %43
  %46 = load ptr, ptr %0, align 8, !tbaa !44
  %47 = load i32, ptr %46, align 8, !tbaa !160
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 8, !tbaa !160
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds %struct.VEC_gimple_base, ptr %46, i64 0, i32 2, i64 %49
  store ptr %2, ptr %50, align 8, !tbaa !44
  store ptr %5, ptr %1, align 8, !tbaa !44
  br label %51

51:                                               ; preds = %23, %45, %32
  %52 = phi i8 [ 0, %32 ], [ 1, %45 ], [ 1, %23 ]
  ret i8 %52
}

declare ptr @mathfn_built_in(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #15 !prof !229 !PGOFuncName !230 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ], !prof !231

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !97
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !55
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51, !prof !232

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !97
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72, !prof !232

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !59
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !97
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #17
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  ret ptr %78
}

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_bswap_1(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #10 !prof !233 !PGOFuncName !234 {
  %4 = alloca %struct.symbolic_number, align 8
  %5 = alloca %struct.symbolic_number, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %290, label %7, !prof !235

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %290, !prof !236

11:                                               ; preds = %7
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !97
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !235

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %290, !prof !237

27:                                               ; preds = %20
  %28 = load i32, ptr %0, align 8
  %29 = trunc i32 %28 to i8
  switch i8 %29, label %32 [
    i8 6, label %30
    i8 1, label %30
    i8 8, label %33
  ], !prof !238

30:                                               ; preds = %27, %27
  %31 = lshr i32 %28, 16
  br label %33

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.5) #17
  br label %33

33:                                               ; preds = %32, %30, %27
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ], [ 59, %27 ]
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !55
  %38 = icmp eq i8 %37, 3
  br i1 %38, label %39, label %59, !prof !239

39:                                               ; preds = %33
  %40 = load i32, ptr %0, align 8
  %41 = and i32 %40, 255
  %42 = add nsw i32 %41, -1
  %43 = icmp ult i32 %42, 9
  tail call void @llvm.assume(i1 %43)
  %44 = zext nneg i32 %41 to i64
  %45 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !97
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %52

52:                                               ; preds = %51, %39
  %53 = getelementptr inbounds i8, ptr %0, i64 %49
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  br label %59

59:                                               ; preds = %33, %52
  %60 = phi i32 [ %58, %52 ], [ %34, %33 ]
  %61 = load i32, ptr %0, align 8
  %62 = trunc i32 %61 to i8
  switch i8 %62, label %65 [
    i8 6, label %63
    i8 1, label %63
    i8 8, label %66
  ], !prof !238

63:                                               ; preds = %59, %59
  %64 = lshr i32 %61, 16
  br label %66

65:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.5) #17
  br label %66

66:                                               ; preds = %65, %63, %59
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ], [ 59, %59 ]
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !55
  %71 = icmp eq i8 %70, 3
  br i1 %71, label %72, label %92, !prof !239

72:                                               ; preds = %66
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -1
  %76 = icmp ult i32 %75, 9
  tail call void @llvm.assume(i1 %76)
  %77 = zext nneg i32 %74 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !97
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %85

85:                                               ; preds = %84, %72
  %86 = getelementptr inbounds i8, ptr %0, i64 %82
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 65535
  br label %92

92:                                               ; preds = %66, %85
  %93 = phi i32 [ %91, %85 ], [ %67, %66 ]
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !55
  %97 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !55
  %99 = icmp eq i8 %96, 1
  br i1 %99, label %100, label %122, !prof !240

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %102 = load i32, ptr %101, align 4, !tbaa !55
  %103 = icmp ugt i32 %102, 2
  br i1 %103, label %104, label %122, !prof !181

104:                                              ; preds = %100
  %105 = load i32, ptr %0, align 8
  %106 = and i32 %105, 255
  %107 = add nsw i32 %106, -10
  %108 = icmp ult i32 %107, -9
  br i1 %108, label %122, label %109, !prof !182

109:                                              ; preds = %104
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !59
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !97
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118, !prof !182

117:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %118

118:                                              ; preds = %117, %109
  %119 = getelementptr inbounds i8, ptr %0, i64 %115
  %120 = getelementptr inbounds ptr, ptr %119, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  br label %122

122:                                              ; preds = %118, %104, %100, %92
  %123 = phi ptr [ null, %92 ], [ null, %100 ], [ %121, %118 ], [ null, %104 ]
  %124 = icmp eq i8 %96, 2
  br i1 %124, label %130, label %125, !prof !241

125:                                              ; preds = %122
  br i1 %99, label %126, label %290, !prof !181

126:                                              ; preds = %125
  %127 = load i64, ptr %123, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 23
  br i1 %129, label %130, label %252, !prof !182

130:                                              ; preds = %126, %122
  switch i32 %60, label %290 [
    i32 116, label %131
    i32 113, label %131
    i32 89, label %131
    i32 86, label %131
    i32 85, label %131
    i32 84, label %131
    i32 83, label %131
  ], !prof !242

131:                                              ; preds = %130, %130, %130, %130, %130, %130, %130
  %132 = add nsw i32 %2, -1
  %133 = tail call fastcc ptr @find_bswap_1(ptr noundef %98, ptr noundef %1, i32 noundef %132)
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %152, !prof !243

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !55
  %138 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 1023
  %141 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  store i32 %140, ptr %141, align 8, !tbaa !183
  %142 = and i32 %139, 7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %290, !prof !243

144:                                              ; preds = %135
  %145 = lshr exact i32 %140, 3
  store i32 %145, ptr %141, align 8, !tbaa !183
  %146 = icmp ult i32 %140, 64
  %147 = zext nneg i32 %140 to i64
  %148 = shl nsw i64 -1, %147
  %149 = and i64 %148, 1976943448883713
  %150 = xor i64 %149, 1976943448883713
  %151 = select i1 %146, i64 %150, i64 578437695752307201, !prof !243
  store i64 %151, ptr %1, align 8, !tbaa !185
  br label %152

152:                                              ; preds = %144, %131
  %153 = phi ptr [ %133, %131 ], [ %23, %144 ]
  %154 = trunc i32 %60 to i16
  switch i16 %154, label %290 [
    i16 89, label %155
    i16 83, label %176
    i16 84, label %176
    i16 85, label %176
    i16 86, label %176
    i16 116, label %220
    i16 113, label %220
  ], !prof !244

155:                                              ; preds = %152
  %156 = tail call i64 @widest_int_cst_value(ptr noundef %123) #17
  %157 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !183
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %155, %165
  %161 = phi i1 [ %168, %165 ], [ %159, %155 ]
  %162 = phi i64 [ %167, %165 ], [ %156, %155 ]
  %163 = phi i32 [ %166, %165 ], [ 0, %155 ]
  %164 = trunc i64 %162 to i8
  switch i8 %164, label %174 [
    i8 0, label %165
    i8 -1, label %165
  ]

165:                                              ; preds = %160, %160
  %166 = add nuw nsw i32 %163, 1
  %167 = lshr i64 %162, 8
  %168 = icmp slt i32 %166, %158
  %169 = icmp eq i32 %166, %158
  br i1 %169, label %170, label %160, !llvm.loop !245

170:                                              ; preds = %165, %155
  %171 = phi i1 [ %159, %155 ], [ %168, %165 ]
  %172 = load i64, ptr %1, align 8, !tbaa !185
  %173 = and i64 %172, %156
  store i64 %173, ptr %1, align 8, !tbaa !185
  br label %174

174:                                              ; preds = %160, %170
  %175 = phi i1 [ %171, %170 ], [ %161, %160 ]
  br i1 %175, label %290, label %238

176:                                              ; preds = %152, %152, %152, %152
  %177 = getelementptr inbounds %struct.tree_int_cst, ptr %123, i64 0, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !55
  %179 = trunc i64 %178 to i32
  %180 = and i32 %179, 7
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %290

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !183
  %185 = icmp slt i32 %184, 8
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = shl nsw i32 %184, 3
  %188 = zext nneg i32 %187 to i64
  %189 = shl nsw i64 -1, %188
  %190 = xor i64 %189, -1
  %191 = load i64, ptr %1, align 8, !tbaa !185
  %192 = and i64 %191, %190
  store i64 %192, ptr %1, align 8, !tbaa !185
  br label %193

193:                                              ; preds = %186, %182
  switch i32 %60, label %290 [
    i32 83, label %194
    i32 84, label %198
    i32 85, label %202
    i32 86, label %211
  ]

194:                                              ; preds = %193
  %195 = load i64, ptr %1, align 8, !tbaa !185
  %196 = and i64 %178, 4294967295
  %197 = shl i64 %195, %196
  store i64 %197, ptr %1, align 8, !tbaa !185
  br label %238

198:                                              ; preds = %193
  %199 = load i64, ptr %1, align 8, !tbaa !185
  %200 = and i64 %178, 4294967295
  %201 = lshr i64 %199, %200
  store i64 %201, ptr %1, align 8, !tbaa !185
  br label %238

202:                                              ; preds = %193
  %203 = load i64, ptr %1, align 8, !tbaa !185
  %204 = and i64 %178, 4294967295
  %205 = shl i64 %203, %204
  %206 = shl nsw i32 %184, 3
  %207 = sub nsw i32 %206, %179
  %208 = zext nneg i32 %207 to i64
  %209 = lshr i64 %203, %208
  %210 = or i64 %205, %209
  store i64 %210, ptr %1, align 8, !tbaa !185
  br label %238

211:                                              ; preds = %193
  %212 = load i64, ptr %1, align 8, !tbaa !185
  %213 = and i64 %178, 4294967295
  %214 = lshr i64 %212, %213
  %215 = shl nsw i32 %184, 3
  %216 = sub nsw i32 %215, %179
  %217 = zext nneg i32 %216 to i64
  %218 = shl i64 %212, %217
  %219 = or i64 %214, %218
  store i64 %219, ptr %1, align 8, !tbaa !185
  br label %238

220:                                              ; preds = %152, %152
  %221 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %222 = getelementptr inbounds %struct.tree_type, ptr %221, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 1023
  %225 = and i32 %223, 7
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %290, !prof !243

227:                                              ; preds = %220
  %228 = lshr exact i32 %224, 3
  %229 = icmp ult i32 %224, 64
  br i1 %229, label %230, label %236, !prof !243

230:                                              ; preds = %227
  %231 = zext nneg i32 %224 to i64
  %232 = shl nsw i64 -1, %231
  %233 = xor i64 %232, -1
  %234 = load i64, ptr %1, align 8, !tbaa !185
  %235 = and i64 %234, %233
  store i64 %235, ptr %1, align 8, !tbaa !185
  br label %236

236:                                              ; preds = %230, %227
  %237 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  store i32 %228, ptr %237, align 8, !tbaa !183
  br label %238

238:                                              ; preds = %211, %202, %198, %194, %174, %236
  %239 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %240 = load i64, ptr %239, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 8
  br i1 %242, label %243, label %290, !prof !243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 1023
  %247 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !183
  %249 = shl nsw i32 %248, 3
  %250 = icmp eq i32 %246, %249
  %251 = select i1 %250, ptr %153, ptr null, !prof !243
  br label %290

252:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %253 = icmp eq i32 %60, 87
  %254 = icmp eq i64 %128, 141
  %255 = and i1 %253, %254
  br i1 %255, label %256, label %288, !prof !246

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.tree_ssa_name, ptr %123, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !55
  %259 = add nsw i32 %2, -1
  %260 = call fastcc ptr @find_bswap_1(ptr noundef %98, ptr noundef nonnull %4, i32 noundef %259)
  %261 = icmp eq ptr %260, null
  br i1 %261, label %288, label %262, !prof !182

262:                                              ; preds = %256
  %263 = call fastcc ptr @find_bswap_1(ptr noundef %258, ptr noundef nonnull %5, i32 noundef %259)
  %264 = icmp eq ptr %260, %263
  br i1 %264, label %265, label %288, !prof !182

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.symbolic_number, ptr %4, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !183
  %268 = getelementptr inbounds %struct.symbolic_number, ptr %5, i64 0, i32 1
  %269 = load i32, ptr %268, align 8, !tbaa !183
  %270 = icmp eq i32 %267, %269
  br i1 %270, label %271, label %288

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  store i32 %267, ptr %272, align 8, !tbaa !183
  %273 = load i64, ptr %4, align 8, !tbaa !185
  %274 = load i64, ptr %5, align 8, !tbaa !185
  %275 = or i64 %274, %273
  store i64 %275, ptr %1, align 8, !tbaa !185
  %276 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %277 = load i64, ptr %276, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 8
  br i1 %279, label %280, label %288

280:                                              ; preds = %271
  %281 = getelementptr inbounds %struct.tree_type, ptr %276, i64 0, i32 6
  %282 = load i32, ptr %281, align 4
  %283 = and i32 %282, 1023
  %284 = load i32, ptr %272, align 8, !tbaa !183
  %285 = shl nsw i32 %284, 3
  %286 = icmp eq i32 %283, %285
  %287 = select i1 %286, ptr %260, ptr null
  br label %288

288:                                              ; preds = %280, %271, %262, %265, %256, %252
  %289 = phi ptr [ null, %252 ], [ null, %256 ], [ null, %265 ], [ null, %262 ], [ null, %271 ], [ %287, %280 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %290

290:                                              ; preds = %176, %193, %243, %238, %220, %152, %130, %125, %135, %20, %3, %7, %174, %288
  %291 = phi ptr [ null, %174 ], [ %289, %288 ], [ null, %7 ], [ null, %3 ], [ null, %20 ], [ null, %135 ], [ null, %125 ], [ null, %130 ], [ null, %152 ], [ null, %220 ], [ null, %238 ], [ %251, %243 ], [ null, %193 ], [ null, %176 ]
  ret ptr %291
}

declare i64 @widest_int_cst_value(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

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
!35 = !{ptr @execute_cse_sincos, ptr @calculate_dominance_info, i64 38}
!36 = !{ptr @execute_cse_sincos, ptr @free_dominance_info, i64 38}
!37 = !{ptr @execute_optimize_bswap, ptr @gimple_expr_type, i64 9563}
!38 = !{ptr @execute_optimize_bswap, ptr @find_bswap_1, i64 3}
!39 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 9575}
!40 = !{ptr @find_bswap_1, ptr @find_bswap_1, i64 12}
!41 = !{ptr @find_bswap_1, ptr @gimple_expr_type, i64 12}
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
!63 = !{!"function_entry_count", i64 38}
!64 = !{!"tree-ssa-math-opts.c;gate_cse_reciprocals"}
!65 = !{!"branch_weights", i32 38, i32 0}
!66 = !{!67, !45, i64 8}
!67 = !{!"function", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !45, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!68 = !{!69, !50, i64 24}
!69 = !{!"control_flow_graph", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !45, i64 40, !50, i64 48, !46, i64 52, !46, i64 60, !50, i64 68, !50, i64 72}
!70 = !{!67, !45, i64 48}
!71 = distinct !{!71, !61, !62}
!72 = !{!69, !45, i64 0}
!73 = !{!74, !45, i64 56}
!74 = !{!"basic_block_def", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !46, i64 32, !45, i64 48, !45, i64 56, !46, i64 64, !51, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96}
!75 = !{!69, !45, i64 8}
!76 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!77 = !{!78, !45, i64 0}
!78 = !{!"gimple_seq_node_d", !45, i64 0, !45, i64 8, !45, i64 16}
!79 = !{!80, !45, i64 0}
!80 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16}
!81 = !{!78, !45, i64 16}
!82 = distinct !{!82, !61, !62}
!83 = !{!74, !50, i64 96}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"gsi_start_bb: argument 0"}
!86 = distinct !{!86, !"gsi_start_bb"}
!87 = distinct !{!87, !88, !"gsi_after_labels: argument 0"}
!88 = distinct !{!88, !"gsi_after_labels"}
!89 = !{!90, !45, i64 0}
!90 = !{!"gimple_bb_info", !45, i64 0, !45, i64 8}
!91 = !{!92, !45, i64 0}
!92 = !{!"gimple_seq_d", !45, i64 0, !45, i64 8, !45, i64 16}
!93 = !{!87}
!94 = distinct !{!94, !61, !62}
!95 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!96 = !{i64 0, i64 8, !44}
!97 = !{!51, !51, i64 0}
!98 = !{!99, !45, i64 0}
!99 = !{!"def_optype_d", !45, i64 0, !45, i64 8}
!100 = !{!99, !45, i64 8}
!101 = distinct !{!101, !61, !62}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"gsi_start_bb: argument 0"}
!104 = distinct !{!104, !"gsi_start_bb"}
!105 = distinct !{!105, !106, !"gsi_after_labels: argument 0"}
!106 = distinct !{!106, !"gsi_after_labels"}
!107 = !{!105}
!108 = !{!109, !45, i64 944}
!109 = !{!"gcc_target", !110, i64 0, !112, i64 368, !113, i64 664, !50, i64 744, !45, i64 752, !45, i64 760, !45, i64 768, !45, i64 776, !45, i64 784, !45, i64 792, !45, i64 800, !45, i64 808, !45, i64 816, !45, i64 824, !45, i64 832, !45, i64 840, !45, i64 848, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !45, i64 888, !45, i64 896, !45, i64 904, !45, i64 912, !45, i64 920, !45, i64 928, !45, i64 936, !45, i64 944, !45, i64 952, !45, i64 960, !45, i64 968, !45, i64 976, !45, i64 984, !45, i64 992, !45, i64 1000, !45, i64 1008, !45, i64 1016, !45, i64 1024, !45, i64 1032, !45, i64 1040, !45, i64 1048, !45, i64 1056, !51, i64 1064, !51, i64 1072, !45, i64 1080, !45, i64 1088, !45, i64 1096, !45, i64 1104, !45, i64 1112, !45, i64 1120, !45, i64 1128, !45, i64 1136, !45, i64 1144, !45, i64 1152, !45, i64 1160, !45, i64 1168, !114, i64 1176, !45, i64 1232, !45, i64 1240, !45, i64 1248, !45, i64 1256, !45, i64 1264, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !45, i64 1304, !45, i64 1312, !45, i64 1320, !45, i64 1328, !45, i64 1336, !45, i64 1344, !45, i64 1352, !45, i64 1360, !45, i64 1368, !45, i64 1376, !45, i64 1384, !45, i64 1392, !45, i64 1400, !45, i64 1408, !45, i64 1416, !45, i64 1424, !45, i64 1432, !45, i64 1440, !45, i64 1448, !45, i64 1456, !51, i64 1464, !115, i64 1472, !45, i64 1664, !45, i64 1672, !45, i64 1680, !45, i64 1688, !45, i64 1696, !45, i64 1704, !45, i64 1712, !45, i64 1720, !45, i64 1728, !45, i64 1736, !45, i64 1744, !45, i64 1752, !45, i64 1760, !45, i64 1768, !45, i64 1776, !116, i64 1784, !117, i64 1792, !118, i64 1896, !119, i64 1968, !45, i64 2016, !46, i64 2024, !46, i64 2025, !46, i64 2026, !46, i64 2027, !46, i64 2028, !46, i64 2029, !46, i64 2030, !46, i64 2031, !46, i64 2032, !46, i64 2033, !46, i64 2034, !46, i64 2035}
!110 = !{!"asm_out", !45, i64 0, !45, i64 8, !45, i64 16, !111, i64 24, !111, i64 56, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !45, i64 304, !45, i64 312, !45, i64 320, !45, i64 328, !45, i64 336, !45, i64 344, !45, i64 352, !45, i64 360}
!111 = !{!"asm_int_op", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!112 = !{!"sched", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288}
!113 = !{!"vectorize", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72}
!114 = !{!"addr_space", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48}
!115 = !{!"calls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184}
!116 = !{!"c", !45, i64 0}
!117 = !{!"cxx", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96}
!118 = !{!"emutls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !46, i64 64, !46, i64 65}
!119 = !{!"target_option_hooks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40}
!120 = !{!121, !45, i64 8}
!121 = !{!"immediate_use_iterator_d", !45, i64 0, !45, i64 8, !122, i64 16, !45, i64 48}
!122 = !{!"ssa_use_operand_d", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24}
!123 = !{!122, !45, i64 8}
!124 = !{!121, !45, i64 0}
!125 = distinct !{!125, !61, !62}
!126 = !{!122, !45, i64 0}
!127 = distinct !{!127, !61, !62}
!128 = distinct !{!128, !61, !62}
!129 = distinct !{!129, !61, !62}
!130 = !{!"tree-ssa-math-opts.c;gate_cse_sincos"}
!131 = !{!"tree-ssa-math-opts.c;execute_cse_sincos"}
!132 = !{!"branch_weights", i32 1, i32 151}
!133 = !{!"branch_weights", i32 151, i32 628313}
!134 = distinct !{!134, !61, !62}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"gsi_start_bb: argument 0"}
!137 = distinct !{!137, !"gsi_start_bb"}
!138 = distinct !{!138, !139, !"gsi_after_labels: argument 0"}
!139 = distinct !{!139, !"gsi_after_labels"}
!140 = !{!"branch_weights", i32 157116, i32 0}
!141 = !{!"branch_weights", i32 0, i32 157116}
!142 = !{!"branch_weights", i32 1, i32 12856}
!143 = !{!138}
!144 = !{!"branch_weights", i32 2943, i32 144259}
!145 = !{!"branch_weights", i32 12856, i32 134346}
!146 = !{!"branch_weights", i32 1, i32 157115}
!147 = !{!"branch_weights", i32 69129, i32 268464}
!148 = !{!"branch_weights", i32 0, i32 69129}
!149 = !{!"branch_weights", i32 2274, i32 66855}
!150 = !{!"branch_weights", i32 0, i32 66855}
!151 = !{!"branch_weights", i32 66855, i32 0}
!152 = !{i8 0, i8 2}
!153 = distinct !{!153, !61, !62}
!154 = !{!155, !157}
!155 = distinct !{!155, !156, !"gsi_start_bb: argument 0"}
!156 = distinct !{!156, !"gsi_start_bb"}
!157 = distinct !{!157, !158, !"gsi_after_labels: argument 0"}
!158 = distinct !{!158, !"gsi_after_labels"}
!159 = !{!157}
!160 = !{!161, !50, i64 0}
!161 = !{!"VEC_gimple_base", !50, i64 0, !50, i64 4, !46, i64 8}
!162 = distinct !{!162, !61, !62}
!163 = !{!"branch_weights", i32 157115, i32 180478}
!164 = distinct !{!164, !61, !62}
!165 = !{!"tree-ssa-math-opts.c;gate_optimize_bswap"}
!166 = !{!"tree-ssa-math-opts.c;execute_optimize_bswap"}
!167 = !{!"branch_weights", i32 0, i32 38}
!168 = !{!169, !50, i64 0}
!169 = !{!"optab_handlers", !50, i64 0}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"gsi_start_bb: argument 0"}
!172 = distinct !{!172, !"gsi_start_bb"}
!173 = distinct !{!173, !174, !"gsi_after_labels: argument 0"}
!174 = distinct !{!174, !"gsi_after_labels"}
!175 = !{!173}
!176 = !{!"branch_weights", i32 127372, i32 210221}
!177 = !{!"branch_weights", i32 79562, i32 47810}
!178 = !{!"branch_weights", i32 0, i32 79562}
!179 = !{!"branch_weights", i32 9560, i32 117812}
!180 = !{!"branch_weights", i32 9557, i32 3, i32 0}
!181 = !{!"branch_weights", i32 3, i32 0}
!182 = !{!"branch_weights", i32 0, i32 3}
!183 = !{!184, !50, i64 8}
!184 = !{!"symbolic_number", !51, i64 0, !50, i64 8}
!185 = !{!184, !51, i64 0}
!186 = distinct !{!186, !61, !62}
!187 = distinct !{!187, !61, !62}
!188 = !{!74, !45, i64 16}
!189 = !{!190, !45, i64 0}
!190 = !{!"occurrence", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !50, i64 40, !46, i64 44}
!191 = !{!190, !45, i64 24}
!192 = !{!190, !46, i64 44}
!193 = !{!190, !50, i64 40}
!194 = distinct !{!194, !61, !62}
!195 = !{!109, !45, i64 1152}
!196 = distinct !{!196, !61, !62}
!197 = !{!121, !45, i64 48}
!198 = !{!190, !45, i64 8}
!199 = !{!190, !45, i64 16}
!200 = !{!122, !45, i64 24}
!201 = distinct !{!201, !61, !62}
!202 = distinct !{!202, !61, !62}
!203 = distinct !{!203, !61, !62}
!204 = distinct !{!204, !61, !62}
!205 = !{!206, !208}
!206 = distinct !{!206, !207, !"gsi_start_bb: argument 0"}
!207 = distinct !{!207, !"gsi_start_bb"}
!208 = distinct !{!208, !209, !"gsi_after_labels: argument 0"}
!209 = distinct !{!209, !"gsi_after_labels"}
!210 = !{!208}
!211 = distinct !{!211, !61, !62}
!212 = !{!80, !45, i64 16}
!213 = !{!214, !216}
!214 = distinct !{!214, !215, !"gsi_start_bb: argument 0"}
!215 = distinct !{!215, !"gsi_start_bb"}
!216 = distinct !{!216, !217, !"gsi_after_labels: argument 0"}
!217 = distinct !{!217, !"gsi_after_labels"}
!218 = !{!216}
!219 = distinct !{!219, !61, !62}
!220 = !{!190, !45, i64 32}
!221 = distinct !{!221, !61, !62}
!222 = distinct !{!222, !61, !62}
!223 = distinct !{!223, !61, !62}
!224 = !{!225, !45, i64 0}
!225 = !{!"use_optype_d", !45, i64 0, !122, i64 8}
!226 = distinct !{!226, !61, !62}
!227 = !{!225, !45, i64 32}
!228 = !{!161, !50, i64 4}
!229 = !{!"function_entry_count", i64 9575}
!230 = !{!"tree-ssa-math-opts.c;gimple_expr_type"}
!231 = !{!"branch_weights", i32 0, i32 0, i32 9575, i32 0}
!232 = !{!"branch_weights", i32 0, i32 9575}
!233 = !{!"function_entry_count", i64 15}
!234 = !{!"tree-ssa-math-opts.c;find_bswap_1"}
!235 = !{!"branch_weights", i32 0, i32 15}
!236 = !{!"branch_weights", i32 15, i32 0}
!237 = !{!"branch_weights", i32 9, i32 6}
!238 = !{!"branch_weights", i32 0, i32 9, i32 0, i32 0}
!239 = !{!"branch_weights", i32 0, i32 9}
!240 = !{!"branch_weights", i32 3, i32 6}
!241 = !{!"branch_weights", i32 6, i32 3}
!242 = !{!"branch_weights", i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!243 = !{!"branch_weights", i32 6, i32 0}
!244 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0}
!245 = distinct !{!245, !61, !62}
!246 = !{!"branch_weights", i32 9, i32 0}
