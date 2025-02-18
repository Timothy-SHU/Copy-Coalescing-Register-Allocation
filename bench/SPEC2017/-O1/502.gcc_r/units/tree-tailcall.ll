; ModuleID = 'tree-tailcall.c'
source_filename = "tree-tailcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tailcall = type { %struct.gimple_stmt_iterator, i8, ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"tailr\00", align 1
@pass_tail_recursion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tail_calls, ptr @execute_tail_recursion, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"tailc\00", align 1
@pass_tail_calls = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_tail_calls, ptr @execute_tail_calls, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@m_acc = internal unnamed_addr global ptr null, align 8
@a_acc = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"add_acc\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"mult_acc\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_associative_math = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tree-tailcall.c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Found tail call \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" in bb %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Eliminated tail recursion in bb %d : \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"acc_tmp\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mul_tmp\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !50 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !51
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !50 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !51
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !50 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !51
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !50 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !50 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !50 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !50 {
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
  br i1 %23, label %7, label %24, !llvm.loop !67

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tail_calls() #9 !prof !70 !PGOFuncName !71 {
  %1 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !66
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !72

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 37) #18
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_tail_recursion() #9 !prof !73 !PGOFuncName !74 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 0), !range !75
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_tail_calls() #9 !prof !76 !PGOFuncName !77 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 1), !range !75
  ret i32 %1
}

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext %0) unnamed_addr #9 !prof !70 !PGOFuncName !78 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !51
  %7 = load ptr, ptr @cfun, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !72

14:                                               ; preds = %1
  %15 = load i32, ptr %12, align 8, !tbaa !85
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17, !prof !87

17:                                               ; preds = %14, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %18

18:                                               ; preds = %14, %17
  %19 = load ptr, ptr %11, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.VEC_edge_base, ptr %19, i64 0, i32 2, i64 0
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = load ptr, ptr @cfun, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 4194304
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %868, !prof !87

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !72

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !91
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ null, %29 ]
  %37 = getelementptr inbounds %struct.htab, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  %39 = tail call i64 @htab_size(ptr noundef %36) #18
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  br label %41

41:                                               ; preds = %45, %35
  %42 = phi ptr [ %38, %35 ], [ %46, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp ult ptr %43, inttoptr (i64 2 to ptr)
  br i1 %44, label %45, label %48, !prof !97

45:                                               ; preds = %41
  %46 = getelementptr inbounds ptr, ptr %42, i64 1
  %47 = icmp ult ptr %46, %40
  br i1 %47, label %41, label %48, !prof !98, !llvm.loop !99

48:                                               ; preds = %45, %41
  %49 = phi ptr [ %42, %41 ], [ %46, %45 ]
  %50 = icmp ult ptr %49, %40
  br i1 %50, label %51, label %53, !prof !87

51:                                               ; preds = %48
  %52 = load ptr, ptr %49, align 8, !tbaa !51
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %52, %51 ], [ null, %48 ]
  %55 = icmp ult ptr %49, %40
  br i1 %55, label %56, label %157, !prof !100

56:                                               ; preds = %53, %154
  %57 = phi ptr [ %155, %154 ], [ %54, %53 ]
  %58 = phi ptr [ %148, %154 ], [ %49, %53 ]
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 67108864
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68, !prof !101

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = lshr i64 %64, 25
  %66 = trunc i64 %65 to i8
  %67 = and i8 %66, 1
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i8 [ 1, %56 ], [ %67, %62 ]
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %144, !prof !102

71:                                               ; preds = %68
  br i1 %61, label %72, label %141, !prof !103

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 33554432
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %141, !prof !103

77:                                               ; preds = %72
  %78 = and i64 %59, 65535
  %79 = icmp eq i64 %78, 33
  br i1 %79, label %103, label %80, !prof !104

80:                                               ; preds = %77
  %81 = and i64 %59, 135266304
  %82 = icmp eq i64 %81, 135266304
  br i1 %82, label %83, label %93, !prof !104

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 2048
  %89 = icmp eq i32 %88, 0
  %90 = and i64 %59, 134479872
  %91 = icmp eq i64 %90, 0
  %92 = or i1 %89, %91
  br i1 %92, label %103, label %96, !prof !105

93:                                               ; preds = %80
  %94 = and i64 %59, 134479872
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %103, label %96, !prof !105

96:                                               ; preds = %83, %93
  %97 = load ptr, ptr @cfun, align 8, !tbaa !51
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !90
  %100 = getelementptr inbounds %struct.gimple_df, ptr %99, i64 0, i32 4
  %101 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %100, ptr noundef nonnull %57) #18
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %93, %96, %83, %77
  %104 = load i64, ptr %57, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 33
  br i1 %106, label %141, label %107, !prof !104

107:                                              ; preds = %103
  %108 = and i64 %104, 201326592
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114, !prof !103

110:                                              ; preds = %107
  %111 = load i64, ptr %73, align 8
  %112 = and i64 %111, 33554432
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %124, label %114, !prof !103

114:                                              ; preds = %110, %107
  %115 = and i64 %104, 1048576
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !62
  %120 = getelementptr inbounds %struct.tree_type, ptr %119, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 2048
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %117, %114, %110
  %125 = and i64 %104, 134217728
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %133, !prof !103

127:                                              ; preds = %124
  %128 = load i64, ptr %73, align 8
  %129 = and i64 %128, 33554432
  %130 = and i64 %104, 262144
  %131 = or disjoint i64 %129, %130
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %141, label %133, !prof !103

133:                                              ; preds = %127, %124
  %134 = load ptr, ptr @cfun, align 8, !tbaa !51
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !90
  %137 = getelementptr inbounds %struct.gimple_df, ptr %136, i64 0, i32 5
  %138 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %137, ptr noundef nonnull %57) #18
  %139 = icmp ne i8 %138, 0
  %140 = zext i1 %139 to i8
  br label %141

141:                                              ; preds = %127, %133, %117, %103, %96, %72, %71
  %142 = phi i8 [ 1, %96 ], [ %140, %133 ], [ 1, %71 ], [ 1, %72 ], [ 0, %103 ], [ 0, %117 ], [ 0, %127 ]
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %868, !prof !103

144:                                              ; preds = %141, %68
  br label %145

145:                                              ; preds = %144, %150
  %146 = phi ptr [ %148, %150 ], [ %58, %144 ]
  %147 = phi ptr [ %153, %150 ], [ undef, %144 ]
  %148 = getelementptr inbounds ptr, ptr %146, i64 1
  %149 = icmp ult ptr %148, %40
  br i1 %149, label %150, label %154, !prof !106

150:                                              ; preds = %145
  %151 = load ptr, ptr %148, align 8, !tbaa !51
  %152 = icmp ult ptr %151, inttoptr (i64 2 to ptr)
  %153 = select i1 %152, ptr %147, ptr %151, !prof !107
  br i1 %152, label %145, label %154, !prof !107

154:                                              ; preds = %150, %145
  %155 = phi ptr [ null, %145 ], [ %153, %150 ]
  %156 = icmp ult ptr %148, %40
  br i1 %156, label %56, label %157, !prof !108, !llvm.loop !109

157:                                              ; preds = %154, %53
  %158 = icmp eq i8 %0, 0
  br i1 %158, label %179, label %159, !prof !110

159:                                              ; preds = %157
  %160 = load ptr, ptr @cfun, align 8, !tbaa !51
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 20
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 786432
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %179, !prof !111

165:                                              ; preds = %159
  %166 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %167 = getelementptr inbounds %struct.tree_decl_non_common, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !62
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %174, !prof !112

170:                                              ; preds = %174
  %171 = getelementptr inbounds %struct.tree_common, ptr %175, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !62
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174, !prof !113, !llvm.loop !114

174:                                              ; preds = %165, %170
  %175 = phi ptr [ %172, %170 ], [ %168, %165 ]
  %176 = load i64, ptr %175, align 8
  %177 = and i64 %176, 262144
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %170, !prof !115

179:                                              ; preds = %170, %174, %165, %159, %157
  %180 = phi i1 [ true, %157 ], [ true, %159 ], [ false, %165 ], [ %178, %174 ], [ %178, %170 ]
  %181 = load ptr, ptr @cfun, align 8, !tbaa !51
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !79
  %184 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !116
  %186 = icmp eq ptr %185, null
  br label %187

187:                                              ; preds = %223, %179
  %188 = phi i32 [ 0, %179 ], [ %224, %223 ]
  br i1 %186, label %189, label %190, !prof !117

189:                                              ; preds = %187
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.5) #18
  br label %190

190:                                              ; preds = %189, %187
  %191 = load ptr, ptr %185, align 8, !tbaa !51
  %192 = icmp eq ptr %191, null
  br i1 %192, label %195, label %193, !prof !117

193:                                              ; preds = %190
  %194 = load i32, ptr %191, align 8, !tbaa !85
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi i32 [ %194, %193 ], [ 0, %190 ]
  %197 = icmp eq i32 %196, %188
  br i1 %197, label %202, label %198, !prof !118

198:                                              ; preds = %195
  %199 = zext i32 %188 to i64
  %200 = getelementptr inbounds %struct.VEC_edge_base, ptr %191, i64 0, i32 2, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !51
  br label %202

202:                                              ; preds = %195, %198
  %203 = phi ptr [ %201, %198 ], [ null, %195 ]
  br i1 %197, label %225, label %204, !prof !118

204:                                              ; preds = %202
  %205 = load ptr, ptr %203, align 8, !tbaa !119
  %206 = tail call ptr @last_stmt(ptr noundef %205) #18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %214, label %208, !prof !72

208:                                              ; preds = %204
  %209 = load i32, ptr %206, align 8
  %210 = and i32 %209, 255
  %211 = icmp eq i32 %210, 9
  br i1 %211, label %212, label %214, !prof !87

212:                                              ; preds = %208
  %213 = load ptr, ptr %203, align 8, !tbaa !119
  call fastcc void @find_tail_calls(ptr noundef %213, ptr noundef nonnull %6)
  br label %214

214:                                              ; preds = %212, %208, %204
  %215 = load ptr, ptr %185, align 8, !tbaa !51
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217, !prof !72

217:                                              ; preds = %214
  %218 = load i32, ptr %215, align 8, !tbaa !85
  br label %219

219:                                              ; preds = %217, %214
  %220 = phi i32 [ %218, %217 ], [ 0, %214 ]
  %221 = icmp ult i32 %188, %220
  br i1 %221, label %223, label %222, !prof !87

222:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %223

223:                                              ; preds = %219, %222
  %224 = add i32 %188, 1
  br label %187, !llvm.loop !120

225:                                              ; preds = %202
  store ptr null, ptr @m_acc, align 8, !tbaa !51
  store ptr null, ptr @a_acc, align 8, !tbaa !51
  %226 = load ptr, ptr %6, align 8, !tbaa !51
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %234, !prof !121

228:                                              ; preds = %357
  %229 = icmp eq i8 %359, 0
  br label %230

230:                                              ; preds = %228, %225
  %231 = phi i1 [ true, %225 ], [ %229, %228 ]
  %232 = load ptr, ptr %6, align 8, !tbaa !51
  %233 = icmp eq ptr %232, null
  br i1 %233, label %651, label %363, !prof !121

234:                                              ; preds = %225, %357
  %235 = phi ptr [ %361, %357 ], [ %226, %225 ]
  %236 = phi i8 [ %359, %357 ], [ 0, %225 ]
  %237 = phi ptr [ %358, %357 ], [ %23, %225 ]
  %238 = getelementptr inbounds %struct.tailcall, ptr %235, i64 0, i32 1
  %239 = load i8, ptr %238, align 8, !tbaa !122
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %357, label %241, !prof !125

241:                                              ; preds = %234
  %242 = icmp eq i8 %236, 0
  br i1 %242, label %243, label %336

243:                                              ; preds = %241
  %244 = load ptr, ptr %237, align 8, !tbaa !126
  %245 = icmp eq ptr %244, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %243
  %247 = load i32, ptr %244, align 8, !tbaa !85
  %248 = icmp eq i32 %247, 1
  %249 = zext i1 %248 to i8
  br label %250

250:                                              ; preds = %243, %246
  %251 = phi i8 [ %249, %246 ], [ 0, %243 ]
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %276, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %237, i64 0, i32 13
  %255 = load i32, ptr %254, align 8, !tbaa !127
  %256 = and i32 %255, 512
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 510, ptr noundef nonnull @.str.5) #18
  br label %259

259:                                              ; preds = %258, %253
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %237, i64 0, i32 7
  %261 = load ptr, ptr %260, align 8, !tbaa !62
  %262 = icmp eq ptr %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.gimple_bb_info, ptr %261, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !128
  br label %266

266:                                              ; preds = %259, %263
  %267 = phi ptr [ %265, %263 ], [ null, %259 ]
  %268 = icmp eq ptr %267, null
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %267, align 8, !tbaa !130
  %271 = icmp eq ptr %270, null
  %272 = zext i1 %271 to i8
  br label %273

273:                                              ; preds = %266, %269
  %274 = phi i8 [ 1, %266 ], [ %272, %269 ]
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %273, %250
  %277 = load ptr, ptr @cfun, align 8, !tbaa !51
  %278 = getelementptr inbounds %struct.function, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !79
  %280 = load ptr, ptr %279, align 8, !tbaa !81
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !83
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %276
  %285 = load i32, ptr %282, align 8, !tbaa !85
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %288, label %287

287:                                              ; preds = %276, %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %288

288:                                              ; preds = %284, %287
  %289 = load ptr, ptr %281, align 8, !tbaa !83
  %290 = getelementptr inbounds %struct.VEC_edge_base, ptr %289, i64 0, i32 2, i64 0
  %291 = load ptr, ptr %290, align 8, !tbaa !51
  %292 = tail call ptr @split_edge(ptr noundef %291) #18
  br label %293

293:                                              ; preds = %288, %273
  %294 = phi ptr [ %237, %273 ], [ %292, %288 ]
  %295 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %296 = getelementptr inbounds %struct.tree_decl_non_common, ptr %295, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !62
  %298 = icmp eq ptr %297, null
  br i1 %298, label %336, label %299

299:                                              ; preds = %293, %332
  %300 = phi ptr [ %334, %332 ], [ %297, %293 ]
  %301 = tail call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %300), !range !132
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %332, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr @cfun, align 8, !tbaa !51
  %305 = tail call ptr @gimple_default_def(ptr noundef %304, ptr noundef nonnull %300) #18
  %306 = getelementptr inbounds %struct.tree_ssa_name, ptr %305, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !62
  %308 = load ptr, ptr @cfun, align 8, !tbaa !51
  %309 = tail call ptr @make_ssa_name_fn(ptr noundef %308, ptr noundef nonnull %300, ptr noundef %307) #18
  tail call void @set_default_def(ptr noundef nonnull %300, ptr noundef %309) #18
  %310 = tail call ptr @create_phi_node(ptr noundef %305, ptr noundef %294) #18
  store ptr %310, ptr %306, align 8, !tbaa !62
  %311 = load ptr, ptr %294, align 8, !tbaa !126
  %312 = icmp eq ptr %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %303
  %314 = load i32, ptr %311, align 8, !tbaa !85
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %317, label %316

316:                                              ; preds = %303, %313
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.5) #18
  br label %317

317:                                              ; preds = %313, %316
  %318 = load ptr, ptr %294, align 8, !tbaa !126
  %319 = getelementptr inbounds %struct.VEC_edge_base, ptr %318, i64 0, i32 2, i64 0
  %320 = load ptr, ptr %319, align 8, !tbaa !51
  %321 = load i64, ptr %300, align 8
  %322 = and i64 %321, 65535
  %323 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !66
  %325 = add i32 %324, -4
  %326 = icmp ult i32 %325, 7
  br i1 %326, label %327, label %330

327:                                              ; preds = %317
  %328 = getelementptr inbounds %struct.tree_exp, ptr %300, i64 0, i32 1
  %329 = load i32, ptr %328, align 8, !tbaa !62
  br label %330

330:                                              ; preds = %317, %327
  %331 = phi i32 [ %329, %327 ], [ 0, %317 ]
  tail call void @add_phi_arg(ptr noundef %310, ptr noundef %309, ptr noundef %320, i32 noundef %331) #18
  br label %332

332:                                              ; preds = %299, %330
  %333 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !62
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %299, !llvm.loop !133

336:                                              ; preds = %332, %293, %241
  %337 = phi ptr [ %237, %241 ], [ %294, %293 ], [ %294, %332 ]
  %338 = getelementptr inbounds %struct.tailcall, ptr %235, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !134
  %340 = icmp eq ptr %339, null
  %341 = load ptr, ptr @a_acc, align 8
  %342 = icmp ne ptr %341, null
  %343 = select i1 %340, i1 true, i1 %342
  br i1 %343, label %347, label %344

344:                                              ; preds = %336
  %345 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !51
  %346 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.2, ptr noundef %337, ptr noundef %345)
  store ptr %346, ptr @a_acc, align 8, !tbaa !51
  br label %347

347:                                              ; preds = %344, %336
  %348 = getelementptr inbounds %struct.tailcall, ptr %235, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !135
  %350 = icmp eq ptr %349, null
  %351 = load ptr, ptr @m_acc, align 8
  %352 = icmp ne ptr %351, null
  %353 = select i1 %350, i1 true, i1 %352
  br i1 %353, label %357, label %354

354:                                              ; preds = %347
  %355 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !51
  %356 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.3, ptr noundef %337, ptr noundef %355)
  store ptr %356, ptr @m_acc, align 8, !tbaa !51
  br label %357

357:                                              ; preds = %347, %354, %234
  %358 = phi ptr [ %337, %347 ], [ %337, %354 ], [ %237, %234 ]
  %359 = phi i8 [ 1, %347 ], [ 1, %354 ], [ %236, %234 ]
  %360 = getelementptr inbounds %struct.tailcall, ptr %235, i64 0, i32 4
  %361 = load ptr, ptr %360, align 8, !tbaa !51
  %362 = icmp eq ptr %361, null
  br i1 %362, label %228, label %234, !prof !136, !llvm.loop !137

363:                                              ; preds = %230, %644
  %364 = phi ptr [ %367, %644 ], [ %232, %230 ]
  %365 = phi i8 [ %646, %644 ], [ 0, %230 ]
  %366 = getelementptr inbounds %struct.tailcall, ptr %364, i64 0, i32 4
  %367 = load ptr, ptr %366, align 8, !tbaa !138
  %368 = getelementptr inbounds %struct.tailcall, ptr %364, i64 0, i32 1
  %369 = load i8, ptr %368, align 8, !tbaa !122
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %622, label %371, !prof !125

371:                                              ; preds = %363
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %372 = load ptr, ptr %364, align 1
  %373 = load ptr, ptr %372, align 8, !tbaa !139
  %374 = getelementptr inbounds i8, ptr %364, i64 16
  %375 = load ptr, ptr %374, align 1
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !51
  %377 = icmp eq ptr %376, null
  br i1 %377, label %389, label %378

378:                                              ; preds = %371
  %379 = load i32, ptr @dump_flags, align 4, !tbaa !66
  %380 = and i32 %379, 8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %389, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.basic_block_def, ptr %375, i64 0, i32 9
  %384 = load i32, ptr %383, align 8, !tbaa !141
  %385 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %376, ptr noundef nonnull @.str.11, i32 noundef %384)
  %386 = load ptr, ptr @dump_file, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %386, ptr noundef %373, i32 noundef 0, i32 noundef 2) #18
  %387 = load ptr, ptr @dump_file, align 8, !tbaa !51
  %388 = call i32 @fputc(i32 10, ptr %387)
  br label %389

389:                                              ; preds = %382, %378, %371
  %390 = load i32, ptr %373, align 8
  %391 = and i32 %390, 255
  %392 = icmp eq i32 %391, 8
  br i1 %392, label %394, label %393

393:                                              ; preds = %389
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 774, ptr noundef nonnull @.str.5) #18
  br label %394

394:                                              ; preds = %393, %389
  %395 = load ptr, ptr @cfun, align 8, !tbaa !51
  %396 = getelementptr inbounds %struct.function, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !79
  %398 = load ptr, ptr %397, align 8, !tbaa !81
  %399 = getelementptr inbounds %struct.basic_block_def, ptr %398, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !83
  %401 = icmp eq ptr %400, null
  br i1 %401, label %405, label %402

402:                                              ; preds = %394
  %403 = load i32, ptr %400, align 8, !tbaa !85
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %406, label %405

405:                                              ; preds = %402, %394
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %406

406:                                              ; preds = %405, %402
  %407 = load ptr, ptr %399, align 8, !tbaa !83
  %408 = getelementptr inbounds %struct.VEC_edge_base, ptr %407, i64 0, i32 2, i64 0
  %409 = load ptr, ptr %408, align 8, !tbaa !51
  %410 = getelementptr inbounds %struct.edge_def, ptr %409, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %364, i64 24, i1 false), !tbaa.struct !142
  %412 = load ptr, ptr %4, align 8, !tbaa !143
  %413 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %412, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !144
  store ptr %414, ptr %4, align 8, !tbaa !143
  %415 = icmp eq ptr %414, null
  br i1 %415, label %425, label %416

416:                                              ; preds = %406, %422
  %417 = phi ptr [ %423, %422 ], [ %414, %406 ]
  %418 = load ptr, ptr %417, align 8, !tbaa !139
  %419 = load i32, ptr %418, align 8
  %420 = and i32 %419, 255
  %421 = icmp eq i32 %420, 9
  br i1 %421, label %425, label %422

422:                                              ; preds = %416
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #18
  call void @release_defs(ptr noundef nonnull %418) #18
  %423 = load ptr, ptr %4, align 8
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %416

425:                                              ; preds = %422, %416, %406
  %426 = load ptr, ptr %374, align 1
  %427 = getelementptr inbounds %struct.basic_block_def, ptr %426, i64 0, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !83
  %429 = icmp eq ptr %428, null
  br i1 %429, label %433, label %430

430:                                              ; preds = %425
  %431 = load i32, ptr %428, align 8, !tbaa !85
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %434, label %433

433:                                              ; preds = %430, %425
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %434

434:                                              ; preds = %433, %430
  %435 = load ptr, ptr %427, align 8, !tbaa !83
  %436 = getelementptr inbounds %struct.VEC_edge_base, ptr %435, i64 0, i32 2, i64 0
  %437 = load ptr, ptr %436, align 8, !tbaa !51
  %438 = load ptr, ptr @cfun, align 8, !tbaa !51
  %439 = getelementptr inbounds %struct.function, ptr %438, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !79
  %441 = getelementptr inbounds %struct.control_flow_graph, ptr %440, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !116
  %443 = getelementptr inbounds %struct.edge_def, ptr %437, i64 0, i32 9
  %444 = load i64, ptr %443, align 8, !tbaa !145
  %445 = load ptr, ptr %437, align 8, !tbaa !119
  %446 = getelementptr inbounds %struct.basic_block_def, ptr %445, i64 0, i32 11
  %447 = load i32, ptr %446, align 8, !tbaa !146
  %448 = getelementptr inbounds %struct.edge_def, ptr %437, i64 0, i32 8
  %449 = load i32, ptr %448, align 4, !tbaa !147
  %450 = mul nsw i32 %449, %447
  %451 = add nsw i32 %450, 5000
  %452 = sdiv i32 %451, 10000
  call fastcc void @decrease_profile(ptr noundef %442, i64 noundef %444, i32 noundef %452)
  %453 = load ptr, ptr @cfun, align 8, !tbaa !51
  %454 = getelementptr inbounds %struct.function, ptr %453, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !79
  %456 = load ptr, ptr %455, align 8, !tbaa !81
  %457 = load i64, ptr %443, align 8, !tbaa !145
  %458 = load ptr, ptr %437, align 8, !tbaa !119
  %459 = getelementptr inbounds %struct.basic_block_def, ptr %458, i64 0, i32 11
  %460 = load i32, ptr %459, align 8, !tbaa !146
  %461 = load i32, ptr %448, align 4, !tbaa !147
  %462 = mul nsw i32 %461, %460
  %463 = add nsw i32 %462, 5000
  %464 = sdiv i32 %463, 10000
  call fastcc void @decrease_profile(ptr noundef %456, i64 noundef %457, i32 noundef %464)
  %465 = getelementptr inbounds %struct.edge_def, ptr %437, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !88
  %467 = load ptr, ptr @cfun, align 8, !tbaa !51
  %468 = getelementptr inbounds %struct.function, ptr %467, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !79
  %470 = getelementptr inbounds %struct.control_flow_graph, ptr %469, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !116
  %472 = icmp eq ptr %466, %471
  br i1 %472, label %482, label %473

473:                                              ; preds = %434
  %474 = load i64, ptr %443, align 8, !tbaa !145
  %475 = load ptr, ptr %437, align 8, !tbaa !119
  %476 = getelementptr inbounds %struct.basic_block_def, ptr %475, i64 0, i32 11
  %477 = load i32, ptr %476, align 8, !tbaa !146
  %478 = load i32, ptr %448, align 4, !tbaa !147
  %479 = mul nsw i32 %478, %477
  %480 = add nsw i32 %479, 5000
  %481 = sdiv i32 %480, 10000
  call fastcc void @decrease_profile(ptr noundef %466, i64 noundef %474, i32 noundef %481)
  br label %482

482:                                              ; preds = %473, %434
  %483 = load ptr, ptr %374, align 1
  %484 = getelementptr inbounds %struct.basic_block_def, ptr %483, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !83
  %486 = icmp eq ptr %485, null
  br i1 %486, label %490, label %487

487:                                              ; preds = %482
  %488 = load i32, ptr %485, align 8, !tbaa !85
  %489 = icmp eq i32 %488, 1
  br i1 %489, label %491, label %490

490:                                              ; preds = %487, %482
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %491

491:                                              ; preds = %490, %487
  %492 = load ptr, ptr %484, align 8, !tbaa !83
  %493 = getelementptr inbounds %struct.VEC_edge_base, ptr %492, i64 0, i32 2, i64 0
  %494 = load ptr, ptr %493, align 8, !tbaa !51
  %495 = call ptr @redirect_edge_and_branch(ptr noundef %494, ptr noundef %411) #18
  %496 = icmp eq ptr %495, null
  br i1 %496, label %497, label %498

497:                                              ; preds = %491
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 805, ptr noundef nonnull @.str.5) #18
  br label %498

498:                                              ; preds = %497, %491
  %499 = getelementptr inbounds %struct.edge_def, ptr %495, i64 0, i32 2
  store ptr null, ptr %499, align 8, !tbaa !62
  %500 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %501 = getelementptr inbounds %struct.tree_decl_non_common, ptr %500, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %411) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %503 = icmp eq ptr %502, null
  br i1 %503, label %551, label %504

504:                                              ; preds = %498
  %505 = getelementptr inbounds %struct.gimple_statement_base, ptr %373, i64 0, i32 2
  br label %506

506:                                              ; preds = %504, %546
  %507 = phi ptr [ %502, %504 ], [ %548, %546 ]
  %508 = phi i64 [ 0, %504 ], [ %549, %546 ]
  %509 = call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %507), !range !132
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %546, label %511

511:                                              ; preds = %506
  %512 = add i64 %508, 3
  %513 = load i32, ptr %373, align 8
  %514 = and i32 %513, 255
  %515 = add nsw i32 %514, -10
  %516 = icmp ult i32 %515, -9
  br i1 %516, label %531, label %517

517:                                              ; preds = %511
  %518 = zext nneg i32 %514 to i64
  %519 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !66
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %521
  %523 = load i64, ptr %522, align 8, !tbaa !148
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %517
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %526

526:                                              ; preds = %525, %517
  %527 = getelementptr inbounds i8, ptr %373, i64 %523
  %528 = and i64 %512, 4294967295
  %529 = getelementptr inbounds ptr, ptr %527, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !51
  br label %531

531:                                              ; preds = %526, %511
  %532 = phi ptr [ %530, %526 ], [ null, %511 ]
  %533 = load ptr, ptr %4, align 8
  %534 = load ptr, ptr %533, align 8, !tbaa !139
  %535 = getelementptr inbounds %struct.gimple_statement_phi, ptr %534, i64 0, i32 3
  %536 = load ptr, ptr %535, align 8, !tbaa !51
  %537 = getelementptr inbounds %struct.tree_ssa_name, ptr %536, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !62
  %539 = icmp eq ptr %507, %538
  br i1 %539, label %541, label %540

540:                                              ; preds = %531
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 820, ptr noundef nonnull @.str.5) #18
  br label %541

541:                                              ; preds = %540, %531
  %542 = load i32, ptr %505, align 8, !tbaa !62
  call void @add_phi_arg(ptr noundef %534, ptr noundef %532, ptr noundef %495, i32 noundef %542) #18
  %543 = load ptr, ptr %4, align 8, !tbaa !143
  %544 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %543, i64 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !144
  store ptr %545, ptr %4, align 8, !tbaa !143
  br label %546

546:                                              ; preds = %541, %506
  %547 = getelementptr inbounds %struct.tree_common, ptr %507, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !62
  %549 = add i64 %508, 1
  %550 = icmp eq ptr %548, null
  br i1 %550, label %551, label %506, !llvm.loop !149

551:                                              ; preds = %546, %498
  %552 = getelementptr inbounds %struct.tailcall, ptr %364, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !135
  %554 = getelementptr inbounds %struct.tailcall, ptr %364, i64 0, i32 3
  %555 = load ptr, ptr %554, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) %364, i64 24, i1 false)
  %556 = icmp eq ptr %553, null
  br i1 %556, label %559, label %557

557:                                              ; preds = %551
  %558 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef nonnull %553, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  br label %559

559:                                              ; preds = %557, %551
  %560 = phi ptr [ %558, %557 ], [ null, %551 ]
  %561 = icmp eq ptr %555, null
  br i1 %561, label %564, label %562

562:                                              ; preds = %559
  %563 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef nonnull %555, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  br label %564

564:                                              ; preds = %562, %559
  %565 = phi ptr [ %563, %562 ], [ null, %559 ]
  %566 = load ptr, ptr @a_acc, align 8, !tbaa !51
  %567 = load ptr, ptr @m_acc, align 8, !tbaa !51
  %568 = icmp eq ptr %565, null
  br i1 %568, label %581, label %569

569:                                              ; preds = %564
  %570 = icmp eq ptr %567, null
  br i1 %570, label %577, label %571

571:                                              ; preds = %569
  %572 = call i32 @integer_onep(ptr noundef nonnull %565) #18
  %573 = icmp eq i32 %572, 0
  %574 = load ptr, ptr @m_acc, align 8, !tbaa !51
  br i1 %573, label %575, label %577

575:                                              ; preds = %571
  %576 = call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.13, ptr noundef %574, ptr noundef nonnull %565, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3)
  br label %577

577:                                              ; preds = %571, %575, %569
  %578 = phi ptr [ %576, %575 ], [ %565, %569 ], [ %574, %571 ]
  %579 = load ptr, ptr @a_acc, align 8, !tbaa !51
  %580 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 63, ptr noundef %579, ptr noundef %578, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3)
  br label %581

581:                                              ; preds = %577, %564
  %582 = phi ptr [ %580, %577 ], [ %566, %564 ]
  %583 = icmp eq ptr %560, null
  br i1 %583, label %587, label %584

584:                                              ; preds = %581
  %585 = load ptr, ptr @m_acc, align 8, !tbaa !51
  %586 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 65, ptr noundef %585, ptr noundef nonnull %560, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3)
  br label %587

587:                                              ; preds = %584, %581
  %588 = phi ptr [ %586, %584 ], [ %567, %581 ]
  %589 = load ptr, ptr @a_acc, align 8, !tbaa !51
  %590 = icmp eq ptr %589, null
  br i1 %590, label %592, label %591

591:                                              ; preds = %587
  call fastcc void @add_successor_phi_arg(ptr noundef %495, ptr noundef nonnull %589, ptr noundef %582)
  br label %592

592:                                              ; preds = %591, %587
  %593 = load ptr, ptr @m_acc, align 8, !tbaa !51
  %594 = icmp eq ptr %593, null
  br i1 %594, label %596, label %595

595:                                              ; preds = %592
  call fastcc void @add_successor_phi_arg(ptr noundef %495, ptr noundef nonnull %593, ptr noundef %588)
  br label %596

596:                                              ; preds = %595, %592
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  %597 = load ptr, ptr %364, align 1
  %598 = load ptr, ptr %597, align 8, !tbaa !139
  %599 = load i32, ptr %598, align 8
  %600 = and i32 %599, 255
  %601 = add nsw i32 %600, -10
  %602 = icmp ult i32 %601, -9
  br i1 %602, label %615, label %603

603:                                              ; preds = %596
  %604 = zext nneg i32 %600 to i64
  %605 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %604
  %606 = load i32, ptr %605, align 4, !tbaa !66
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %607
  %609 = load i64, ptr %608, align 8, !tbaa !148
  %610 = icmp eq i64 %609, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %603
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %612

612:                                              ; preds = %611, %603
  %613 = getelementptr inbounds i8, ptr %598, i64 %609
  %614 = load ptr, ptr %613, align 8, !tbaa !51
  br label %615

615:                                              ; preds = %612, %596
  %616 = phi ptr [ %614, %612 ], [ null, %596 ]
  %617 = icmp eq ptr %616, null
  br i1 %617, label %621, label %618

618:                                              ; preds = %615
  %619 = call ptr @gimple_build_nop() #18
  %620 = getelementptr inbounds %struct.tree_ssa_name, ptr %616, i64 0, i32 2
  store ptr %619, ptr %620, align 8, !tbaa !62
  br label %621

621:                                              ; preds = %618, %615
  call void @gsi_remove(ptr noundef nonnull %364, i8 noundef zeroext 1) #18
  call void @release_defs(ptr noundef nonnull %598) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  br label %644

622:                                              ; preds = %363
  br i1 %180, label %644, label %623, !prof !150

623:                                              ; preds = %622
  %624 = load ptr, ptr %364, align 1
  %625 = load ptr, ptr %624, align 8, !tbaa !139
  %626 = load i32, ptr %625, align 8
  %627 = or i32 %626, 524288
  store i32 %627, ptr %625, align 8
  %628 = load ptr, ptr @dump_file, align 8, !tbaa !51
  %629 = icmp eq ptr %628, null
  br i1 %629, label %644, label %630, !prof !151

630:                                              ; preds = %623
  %631 = load i32, ptr @dump_flags, align 4, !tbaa !66
  %632 = and i32 %631, 8
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %644, label %634

634:                                              ; preds = %630
  %635 = call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr nonnull %628)
  %636 = load ptr, ptr @dump_file, align 8, !tbaa !51
  %637 = load i32, ptr @dump_flags, align 4, !tbaa !66
  call void @print_gimple_stmt(ptr noundef %636, ptr noundef nonnull %625, i32 noundef 0, i32 noundef %637) #18
  %638 = load ptr, ptr @dump_file, align 8, !tbaa !51
  %639 = getelementptr inbounds i8, ptr %364, i64 16
  %640 = load ptr, ptr %639, align 1
  %641 = getelementptr inbounds %struct.basic_block_def, ptr %640, i64 0, i32 9
  %642 = load i32, ptr %641, align 8, !tbaa !141
  %643 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %638, ptr noundef nonnull @.str.10, i32 noundef %642)
  br label %644

644:                                              ; preds = %621, %622, %623, %630, %634
  %645 = phi i8 [ 1, %621 ], [ 0, %623 ], [ 0, %630 ], [ 0, %634 ], [ 0, %622 ]
  %646 = or i8 %645, %365
  %647 = load ptr, ptr %6, align 8, !tbaa !51
  call void @free(ptr noundef %647)
  store ptr %367, ptr %6, align 8, !tbaa !51
  %648 = icmp eq ptr %367, null
  br i1 %648, label %649, label %363, !prof !136, !llvm.loop !152

649:                                              ; preds = %644
  %650 = icmp eq i8 %646, 0
  br label %651

651:                                              ; preds = %649, %230
  %652 = phi i1 [ true, %230 ], [ %650, %649 ]
  %653 = load ptr, ptr @a_acc, align 8, !tbaa !51
  %654 = icmp ne ptr %653, null
  %655 = load ptr, ptr @m_acc, align 8
  %656 = icmp ne ptr %655, null
  %657 = select i1 %654, i1 true, i1 %656, !prof !72
  br i1 %657, label %658, label %812, !prof !72

658:                                              ; preds = %651
  %659 = load ptr, ptr @cfun, align 8, !tbaa !51
  %660 = getelementptr inbounds %struct.function, ptr %659, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !79
  %662 = getelementptr inbounds %struct.control_flow_graph, ptr %661, i64 0, i32 1
  %663 = load ptr, ptr %662, align 8, !tbaa !116
  %664 = icmp eq ptr %663, null
  %665 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %2, i64 0, i32 1
  %666 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %2, i64 0, i32 2
  br label %667

667:                                              ; preds = %810, %658
  %668 = phi i32 [ 0, %658 ], [ %811, %810 ]
  br i1 %664, label %669, label %670

669:                                              ; preds = %667
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.5) #18
  br label %670

670:                                              ; preds = %669, %667
  %671 = load ptr, ptr %663, align 8, !tbaa !51
  %672 = icmp eq ptr %671, null
  br i1 %672, label %675, label %673

673:                                              ; preds = %670
  %674 = load i32, ptr %671, align 8, !tbaa !85
  br label %675

675:                                              ; preds = %673, %670
  %676 = phi i32 [ %674, %673 ], [ 0, %670 ]
  %677 = icmp eq i32 %676, %668
  br i1 %677, label %682, label %678

678:                                              ; preds = %675
  %679 = zext i32 %668 to i64
  %680 = getelementptr inbounds %struct.VEC_edge_base, ptr %671, i64 0, i32 2, i64 %679
  %681 = load ptr, ptr %680, align 8, !tbaa !51
  br label %682

682:                                              ; preds = %675, %678
  %683 = phi ptr [ %681, %678 ], [ null, %675 ]
  br i1 %677, label %812, label %684

684:                                              ; preds = %682
  %685 = load ptr, ptr %683, align 8, !tbaa !119
  %686 = call ptr @last_stmt(ptr noundef %685) #18
  %687 = icmp eq ptr %686, null
  br i1 %687, label %801, label %688

688:                                              ; preds = %684
  %689 = load i32, ptr %686, align 8
  %690 = and i32 %689, 255
  %691 = icmp eq i32 %690, 9
  br i1 %691, label %692, label %801

692:                                              ; preds = %688
  %693 = load ptr, ptr %683, align 8, !tbaa !119
  %694 = load ptr, ptr @m_acc, align 8, !tbaa !51
  %695 = load ptr, ptr @a_acc, align 8, !tbaa !51
  %696 = getelementptr inbounds %struct.basic_block_def, ptr %693, i64 0, i32 13
  %697 = load i32, ptr %696, align 8, !tbaa !127
  %698 = and i32 %697, 512
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %706

700:                                              ; preds = %692
  %701 = getelementptr inbounds %struct.basic_block_def, ptr %693, i64 0, i32 7
  %702 = load ptr, ptr %701, align 8, !tbaa !62
  %703 = icmp eq ptr %702, null
  br i1 %703, label %706, label %704

704:                                              ; preds = %700
  %705 = load ptr, ptr %702, align 8, !tbaa !153
  br label %706

706:                                              ; preds = %704, %700, %692
  %707 = phi ptr [ %705, %704 ], [ null, %700 ], [ null, %692 ]
  %708 = icmp eq ptr %707, null
  br i1 %708, label %712, label %709

709:                                              ; preds = %706
  %710 = getelementptr inbounds %struct.gimple_seq_d, ptr %707, i64 0, i32 1
  %711 = load ptr, ptr %710, align 8, !tbaa !154
  br label %712

712:                                              ; preds = %709, %706
  %713 = phi ptr [ %711, %709 ], [ null, %706 ]
  %714 = icmp eq ptr %713, null
  br i1 %714, label %717, label %715

715:                                              ; preds = %712
  %716 = load ptr, ptr %713, align 8, !tbaa !139
  br label %717

717:                                              ; preds = %715, %712
  %718 = phi ptr [ %716, %715 ], [ null, %712 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  br i1 %699, label %719, label %725

719:                                              ; preds = %717
  %720 = getelementptr inbounds %struct.basic_block_def, ptr %693, i64 0, i32 7
  %721 = load ptr, ptr %720, align 8, !tbaa !62, !noalias !155
  %722 = icmp eq ptr %721, null
  br i1 %722, label %725, label %723

723:                                              ; preds = %719
  %724 = load ptr, ptr %721, align 8, !tbaa !153, !noalias !155
  br label %725

725:                                              ; preds = %723, %719, %717
  %726 = phi ptr [ %724, %723 ], [ null, %719 ], [ null, %717 ]
  %727 = icmp eq ptr %726, null
  br i1 %727, label %731, label %728

728:                                              ; preds = %725
  %729 = getelementptr inbounds %struct.gimple_seq_d, ptr %726, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !154, !noalias !155
  br label %731

731:                                              ; preds = %728, %725
  %732 = phi ptr [ %730, %728 ], [ null, %725 ]
  store ptr %732, ptr %2, align 8, !tbaa !143, !alias.scope !155
  store ptr %726, ptr %665, align 8, !tbaa !158, !alias.scope !155
  store ptr %693, ptr %666, align 8, !tbaa !159, !alias.scope !155
  %733 = load i32, ptr %718, align 8
  %734 = and i32 %733, 255
  %735 = icmp eq i32 %734, 9
  br i1 %735, label %737, label %736

736:                                              ; preds = %731
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 689, ptr noundef nonnull @.str.5) #18
  br label %737

737:                                              ; preds = %736, %731
  %738 = load i32, ptr %718, align 8
  %739 = and i32 %738, 255
  %740 = add nsw i32 %739, -10
  %741 = icmp ult i32 %740, -9
  br i1 %741, label %754, label %742

742:                                              ; preds = %737
  %743 = zext nneg i32 %739 to i64
  %744 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !66
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %746
  %748 = load i64, ptr %747, align 8, !tbaa !148
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %750, label %751

750:                                              ; preds = %742
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %751

751:                                              ; preds = %750, %742
  %752 = getelementptr inbounds i8, ptr %718, i64 %748
  %753 = load ptr, ptr %752, align 8, !tbaa !51
  br label %754

754:                                              ; preds = %751, %737
  %755 = phi ptr [ %753, %751 ], [ null, %737 ]
  %756 = icmp eq ptr %755, null
  %757 = load ptr, ptr @global_trees, align 16
  %758 = icmp eq ptr %755, %757
  %759 = select i1 %756, i1 true, i1 %758
  br i1 %759, label %800, label %760

760:                                              ; preds = %754
  %761 = icmp eq ptr %694, null
  br i1 %761, label %765, label %762

762:                                              ; preds = %760
  %763 = load ptr, ptr @m_acc, align 8, !tbaa !51
  %764 = call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.14, ptr noundef %763, ptr noundef nonnull %755, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2)
  br label %765

765:                                              ; preds = %762, %760
  %766 = phi ptr [ %764, %762 ], [ %755, %760 ]
  %767 = icmp eq ptr %695, null
  br i1 %767, label %771, label %768

768:                                              ; preds = %765
  %769 = load ptr, ptr @a_acc, align 8, !tbaa !51
  %770 = call fastcc ptr @adjust_return_value_with_ops(i32 noundef 63, ptr noundef nonnull @.str.13, ptr noundef %769, ptr noundef %766, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2)
  br label %771

771:                                              ; preds = %768, %765
  %772 = phi ptr [ %770, %768 ], [ %766, %765 ]
  %773 = load i32, ptr %718, align 8
  %774 = and i32 %773, 255
  %775 = add nsw i32 %774, -10
  %776 = icmp ult i32 %775, -9
  br i1 %776, label %781, label %777

777:                                              ; preds = %771
  %778 = getelementptr inbounds %struct.gimple_statement_base, ptr %718, i64 0, i32 3
  %779 = load i32, ptr %778, align 4, !tbaa !62
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %782

781:                                              ; preds = %777, %771
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.5) #18
  br label %782

782:                                              ; preds = %781, %777
  %783 = load i32, ptr %718, align 8
  %784 = and i32 %783, 255
  %785 = zext nneg i32 %784 to i64
  %786 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %785
  %787 = load i32, ptr %786, align 4, !tbaa !66
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %788
  %790 = load i64, ptr %789, align 8, !tbaa !148
  %791 = icmp eq i64 %790, 0
  br i1 %791, label %792, label %793

792:                                              ; preds = %782
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %793

793:                                              ; preds = %792, %782
  %794 = getelementptr inbounds i8, ptr %718, i64 %790
  store ptr %772, ptr %794, align 8, !tbaa !51
  %795 = load i32, ptr %718, align 8
  %796 = and i32 %795, 255
  %797 = add nsw i32 %796, -10
  %798 = icmp ult i32 %797, -9
  br i1 %798, label %800, label %799

799:                                              ; preds = %793
  call void @gimple_set_modified(ptr noundef nonnull %718, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %718) #18
  br label %800

800:                                              ; preds = %754, %793, %799
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %801

801:                                              ; preds = %800, %688, %684
  %802 = load ptr, ptr %663, align 8, !tbaa !51
  %803 = icmp eq ptr %802, null
  br i1 %803, label %806, label %804

804:                                              ; preds = %801
  %805 = load i32, ptr %802, align 8, !tbaa !85
  br label %806

806:                                              ; preds = %804, %801
  %807 = phi i32 [ %805, %804 ], [ 0, %801 ]
  %808 = icmp ult i32 %668, %807
  br i1 %808, label %810, label %809

809:                                              ; preds = %806
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %810

810:                                              ; preds = %806, %809
  %811 = add i32 %668, 1
  br label %667, !llvm.loop !160

812:                                              ; preds = %682, %651
  br i1 %652, label %814, label %813, !prof !87

813:                                              ; preds = %812
  call void @free_dominance_info(i32 noundef 1) #18
  br label %814

814:                                              ; preds = %813, %812
  br i1 %231, label %866, label %815, !prof !87

815:                                              ; preds = %814
  %816 = load ptr, ptr @cfun, align 8, !tbaa !51
  %817 = getelementptr inbounds %struct.function, ptr %816, i64 0, i32 3
  %818 = load ptr, ptr %817, align 8, !tbaa !90
  %819 = icmp eq ptr %818, null
  br i1 %819, label %822, label %820

820:                                              ; preds = %815
  %821 = load ptr, ptr %818, align 8, !tbaa !91
  br label %822

822:                                              ; preds = %820, %815
  %823 = phi ptr [ %821, %820 ], [ null, %815 ]
  %824 = getelementptr inbounds %struct.htab, ptr %823, i64 0, i32 3
  %825 = load ptr, ptr %824, align 8, !tbaa !95
  %826 = call i64 @htab_size(ptr noundef %823) #18
  %827 = getelementptr inbounds ptr, ptr %825, i64 %826
  br label %828

828:                                              ; preds = %832, %822
  %829 = phi ptr [ %825, %822 ], [ %833, %832 ]
  %830 = load ptr, ptr %829, align 8, !tbaa !51
  %831 = icmp ult ptr %830, inttoptr (i64 2 to ptr)
  br i1 %831, label %832, label %835

832:                                              ; preds = %828
  %833 = getelementptr inbounds ptr, ptr %829, i64 1
  %834 = icmp ult ptr %833, %827
  br i1 %834, label %828, label %835, !llvm.loop !99

835:                                              ; preds = %832, %828
  %836 = phi ptr [ %829, %828 ], [ %833, %832 ]
  %837 = icmp ult ptr %836, %827
  br i1 %837, label %838, label %840

838:                                              ; preds = %835
  %839 = load ptr, ptr %836, align 8, !tbaa !51
  br label %840

840:                                              ; preds = %838, %835
  %841 = phi ptr [ %839, %838 ], [ null, %835 ]
  %842 = icmp ult ptr %836, %827
  br i1 %842, label %843, label %866

843:                                              ; preds = %840, %863
  %844 = phi ptr [ %864, %863 ], [ %841, %840 ]
  %845 = phi ptr [ %857, %863 ], [ %836, %840 ]
  %846 = call zeroext i8 @is_gimple_reg(ptr noundef %844) #18
  %847 = icmp eq i8 %846, 0
  br i1 %847, label %848, label %853

848:                                              ; preds = %843
  %849 = load ptr, ptr @cfun, align 8, !tbaa !51
  %850 = call ptr @gimple_default_def(ptr noundef %849, ptr noundef %844) #18
  %851 = icmp eq ptr %850, null
  br i1 %851, label %853, label %852

852:                                              ; preds = %848
  call void @mark_sym_for_renaming(ptr noundef %844) #18
  br label %853

853:                                              ; preds = %852, %848, %843
  br label %854

854:                                              ; preds = %853, %859
  %855 = phi ptr [ %857, %859 ], [ %845, %853 ]
  %856 = phi ptr [ %862, %859 ], [ undef, %853 ]
  %857 = getelementptr inbounds ptr, ptr %855, i64 1
  %858 = icmp ult ptr %857, %827
  br i1 %858, label %859, label %863

859:                                              ; preds = %854
  %860 = load ptr, ptr %857, align 8, !tbaa !51
  %861 = icmp ult ptr %860, inttoptr (i64 2 to ptr)
  %862 = select i1 %861, ptr %856, ptr %860
  br i1 %861, label %854, label %863

863:                                              ; preds = %859, %854
  %864 = phi ptr [ null, %854 ], [ %862, %859 ]
  %865 = icmp ult ptr %857, %827
  br i1 %865, label %843, label %866, !llvm.loop !161

866:                                              ; preds = %863, %840, %814
  %867 = select i1 %652, i32 0, i32 16416, !prof !87
  br label %868

868:                                              ; preds = %141, %18, %866
  %869 = phi i32 [ %867, %866 ], [ 0, %18 ], [ 0, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret i32 %869
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @find_tail_calls(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !162 !PGOFuncName !163 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !164

8:                                                ; preds = %2
  %9 = load i32, ptr %6, align 8, !tbaa !85
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i8 [ %11, %8 ], [ 0, %2 ]
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %644, label %15, !prof !165

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !127, !noalias !166
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26, !prof !169

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !62, !noalias !166
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !170

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !153, !noalias !166
  br label %26

26:                                               ; preds = %24, %20, %15
  %27 = phi ptr [ %25, %24 ], [ null, %20 ], [ null, %15 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29, !prof !170

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gimple_seq_d, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !154, !noalias !166
  br label %32

32:                                               ; preds = %26, %29
  %33 = phi ptr [ %31, %29 ], [ null, %26 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %74, label %35, !prof !171

35:                                               ; preds = %32, %70
  %36 = phi i1 [ %73, %70 ], [ %34, %32 ]
  %37 = phi ptr [ %72, %70 ], [ %33, %32 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !139
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %39 to i8
  switch i8 %40, label %54 [
    i8 4, label %70
    i8 2, label %70
    i8 8, label %41
  ], !prof !172

41:                                               ; preds = %35
  %42 = and i32 %39, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !66
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !148
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51, !prof !173

50:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %51

51:                                               ; preds = %50, %41
  %52 = getelementptr inbounds i8, ptr %38, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  br label %74

54:                                               ; preds = %35
  %55 = and i32 %39, 254
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -4
  br i1 %57, label %63, label %58, !prof !174

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %38, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i8
  br label %63

63:                                               ; preds = %54, %58
  %64 = phi i8 [ 0, %54 ], [ %62, %58 ]
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %644, !prof !175

66:                                               ; preds = %63
  %67 = and i32 %39, 16384
  %68 = icmp eq i32 %67, 0
  %69 = or i1 %68, %57
  br i1 %69, label %70, label %644, !prof !176

70:                                               ; preds = %35, %35, %66
  %71 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %37, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !177
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %35, !prof !178, !llvm.loop !179

74:                                               ; preds = %70, %32, %51
  %75 = phi ptr [ %37, %51 ], [ %33, %32 ], [ %72, %70 ]
  %76 = phi i1 [ %36, %51 ], [ %34, %32 ], [ %73, %70 ]
  %77 = phi ptr [ %53, %51 ], [ null, %32 ], [ null, %70 ]
  %78 = phi ptr [ %38, %51 ], [ null, %32 ], [ null, %70 ]
  br i1 %76, label %79, label %110, !prof !180

79:                                               ; preds = %74
  %80 = icmp eq ptr %0, null
  br label %81

81:                                               ; preds = %79, %108
  %82 = phi i32 [ %109, %108 ], [ 0, %79 ]
  br i1 %80, label %83, label %84, !prof !181

83:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.5) #18
  br label %84

84:                                               ; preds = %83, %81
  %85 = load ptr, ptr %0, align 8, !tbaa !51
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !181

87:                                               ; preds = %84
  %88 = load i32, ptr %85, align 8, !tbaa !85
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = icmp eq i32 %90, %82
  br i1 %91, label %96, label %92, !prof !182

92:                                               ; preds = %89
  %93 = zext i32 %82 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !51
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  br i1 %91, label %644, label %98, !prof !182

98:                                               ; preds = %96
  %99 = load ptr, ptr %97, align 8, !tbaa !119
  tail call fastcc void @find_tail_calls(ptr noundef %99, ptr noundef %1)
  %100 = load ptr, ptr %0, align 8, !tbaa !51
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !183

102:                                              ; preds = %98
  %103 = load i32, ptr %100, align 8, !tbaa !85
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i32 [ %103, %102 ], [ 0, %98 ]
  %106 = icmp ult i32 %82, %105
  br i1 %106, label %108, label %107, !prof !184

107:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %108

108:                                              ; preds = %104, %107
  %109 = add i32 %82, 1
  br label %81, !llvm.loop !185

110:                                              ; preds = %74
  %111 = icmp eq ptr %77, null
  br i1 %111, label %115, label %112, !prof !186

112:                                              ; preds = %110
  %113 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %77) #18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %644, label %115, !prof !187

115:                                              ; preds = %112, %110
  %116 = load i32, ptr %78, align 8
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -10
  %119 = icmp ult i32 %118, -9
  br i1 %119, label %133, label %120, !prof !173

120:                                              ; preds = %115
  %121 = zext nneg i32 %117 to i64
  %122 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !66
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !148
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129, !prof !173

128:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %129

129:                                              ; preds = %128, %120
  %130 = getelementptr inbounds i8, ptr %78, i64 %126
  %131 = getelementptr inbounds ptr, ptr %130, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !51
  br label %133

133:                                              ; preds = %129, %115
  %134 = phi ptr [ %132, %129 ], [ null, %115 ]
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 121
  br i1 %137, label %138, label %141, !prof !188

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_exp, ptr %134, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !62
  br label %141

141:                                              ; preds = %133, %138
  %142 = phi ptr [ %140, %138 ], [ null, %133 ]
  %143 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %213, !prof !173

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.tree_decl_non_common, ptr %142, i64 0, i32 2
  %147 = getelementptr inbounds %struct.gimple_statement_base, ptr %78, i64 0, i32 3
  %148 = load ptr, ptr %146, align 8, !tbaa !62
  %149 = icmp eq ptr %148, null
  br i1 %149, label %203, label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %147, align 4, !tbaa !62
  %152 = icmp eq i32 %151, 3
  br i1 %152, label %203, label %158

153:                                              ; preds = %198
  %154 = load i32, ptr %147, align 4, !tbaa !62
  %155 = add i32 %154, -3
  %156 = zext i32 %155 to i64
  %157 = icmp ult i64 %200, %156
  br i1 %157, label %158, label %203, !llvm.loop !189

158:                                              ; preds = %150, %153
  %159 = phi i64 [ %200, %153 ], [ 0, %150 ]
  %160 = phi ptr [ %201, %153 ], [ %148, %150 ]
  %161 = phi i1 [ %202, %153 ], [ %149, %150 ]
  %162 = add nuw nsw i64 %159, 3
  %163 = load i32, ptr %78, align 8
  %164 = and i32 %163, 255
  %165 = add nsw i32 %164, -10
  %166 = icmp ult i32 %165, -9
  br i1 %166, label %181, label %167

167:                                              ; preds = %158
  %168 = zext nneg i32 %164 to i64
  %169 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !66
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !148
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %176

176:                                              ; preds = %175, %167
  %177 = getelementptr inbounds i8, ptr %78, i64 %173
  %178 = and i64 %162, 4294967295
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !51
  br label %181

181:                                              ; preds = %158, %176
  %182 = phi ptr [ %180, %176 ], [ null, %158 ]
  %183 = icmp eq ptr %160, %182
  br i1 %183, label %198, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !62
  %187 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %186) #18
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %184
  %190 = load ptr, ptr %185, align 8, !tbaa !62
  %191 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !62
  %193 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %190, ptr noundef %192) #18
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %189
  %196 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %160) #18
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %181, %195
  %199 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 1
  %200 = add nuw nsw i64 %159, 1
  %201 = load ptr, ptr %199, align 8, !tbaa !62
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %153, !llvm.loop !189

203:                                              ; preds = %198, %195, %184, %189, %153, %150, %145
  %204 = phi i64 [ 0, %145 ], [ 0, %150 ], [ %200, %153 ], [ %159, %189 ], [ %159, %184 ], [ %159, %195 ], [ %200, %198 ]
  %205 = phi i1 [ %149, %145 ], [ %149, %150 ], [ %202, %153 ], [ %161, %189 ], [ %161, %184 ], [ %161, %195 ], [ %202, %198 ]
  %206 = getelementptr inbounds %struct.gimple_statement_base, ptr %78, i64 0, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !62
  %208 = add i32 %207, -3
  %209 = zext i32 %208 to i64
  %210 = icmp eq i64 %204, %209
  %211 = and i1 %205, %210
  %212 = zext i1 %211 to i8
  br label %213

213:                                              ; preds = %203, %141
  %214 = phi i8 [ %212, %203 ], [ 0, %141 ]
  br label %215

215:                                              ; preds = %606, %213
  %216 = phi ptr [ %75, %213 ], [ %301, %606 ]
  %217 = phi ptr [ %77, %213 ], [ %602, %606 ]
  %218 = phi ptr [ null, %213 ], [ %603, %606 ]
  %219 = phi ptr [ null, %213 ], [ %604, %606 ]
  %220 = phi ptr [ %0, %213 ], [ %303, %606 ]
  %221 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %216, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !144
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %300, !prof !190

224:                                              ; preds = %215, %297
  %225 = phi ptr [ %281, %297 ], [ %220, %215 ]
  %226 = phi ptr [ %269, %297 ], [ %217, %215 ]
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %225, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !83
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230, !prof !191

230:                                              ; preds = %224
  %231 = load i32, ptr %228, align 8, !tbaa !85
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %234, label %233, !prof !192

233:                                              ; preds = %224, %230
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %234

234:                                              ; preds = %230, %233
  %235 = load ptr, ptr %227, align 8, !tbaa !83
  %236 = getelementptr inbounds %struct.VEC_edge_base, ptr %235, i64 0, i32 2, i64 0
  %237 = load ptr, ptr %236, align 8, !tbaa !51
  %238 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %239) #18
  %240 = load ptr, ptr %4, align 8, !tbaa.struct !142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %241 = icmp eq ptr %240, null
  br i1 %241, label %268, label %242, !prof !193

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 6
  br label %244

244:                                              ; preds = %242, %264
  %245 = phi ptr [ undef, %242 ], [ %263, %264 ]
  %246 = phi ptr [ %240, %242 ], [ %266, %264 ]
  %247 = load ptr, ptr %246, align 8, !tbaa !139
  %248 = load i32, ptr %243, align 4, !tbaa !194
  %249 = getelementptr inbounds %struct.gimple_statement_phi, ptr %247, i64 0, i32 1
  %250 = load i32, ptr %249, align 8, !tbaa !62
  %251 = icmp ult i32 %250, %248
  br i1 %251, label %252, label %253, !prof !191

252:                                              ; preds = %244
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.5) #18
  br label %253

253:                                              ; preds = %252, %244
  %254 = zext i32 %248 to i64
  %255 = getelementptr inbounds %struct.gimple_statement_phi, ptr %247, i64 0, i32 4, i64 %254, i32 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !195
  %257 = load ptr, ptr %256, align 8, !tbaa !51
  %258 = icmp eq ptr %257, %226
  br i1 %258, label %259, label %262, !prof !197

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.gimple_statement_phi, ptr %247, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !51
  br label %262

262:                                              ; preds = %259, %253
  %263 = phi ptr [ %261, %259 ], [ %245, %253 ]
  br i1 %258, label %268, label %264, !prof !197

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %246, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !144
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %244, !prof !198, !llvm.loop !199

268:                                              ; preds = %262, %264, %234
  %269 = phi ptr [ %226, %234 ], [ %263, %262 ], [ %226, %264 ]
  %270 = load ptr, ptr %227, align 8, !tbaa !83
  %271 = icmp eq ptr %270, null
  br i1 %271, label %275, label %272, !prof !191

272:                                              ; preds = %268
  %273 = load i32, ptr %270, align 8, !tbaa !85
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %276, label %275, !prof !192

275:                                              ; preds = %272, %268
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %276

276:                                              ; preds = %272, %275
  %277 = load ptr, ptr %227, align 8, !tbaa !83
  %278 = getelementptr inbounds %struct.VEC_edge_base, ptr %277, i64 0, i32 2, i64 0
  %279 = load ptr, ptr %278, align 8, !tbaa !51
  %280 = getelementptr inbounds %struct.edge_def, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !88
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %281, i64 0, i32 13
  %283 = load i32, ptr %282, align 8, !tbaa !127, !noalias !200
  %284 = and i32 %283, 512
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %292, !prof !192

286:                                              ; preds = %276
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %281, i64 0, i32 7
  %288 = load ptr, ptr %287, align 8, !tbaa !62, !noalias !200
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290, !prof !191

290:                                              ; preds = %286
  %291 = load ptr, ptr %288, align 8, !tbaa !153, !noalias !200
  br label %292

292:                                              ; preds = %290, %286, %276
  %293 = phi ptr [ %291, %290 ], [ null, %286 ], [ null, %276 ]
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !191

295:                                              ; preds = %292
  %296 = load ptr, ptr %293, align 8, !tbaa !130, !noalias !200
  br label %297

297:                                              ; preds = %292, %295
  %298 = phi ptr [ %296, %295 ], [ null, %292 ]
  %299 = icmp eq ptr %298, null
  br i1 %299, label %224, label %300, !prof !191, !llvm.loop !203

300:                                              ; preds = %297, %215
  %301 = phi ptr [ %222, %215 ], [ %298, %297 ]
  %302 = phi ptr [ %217, %215 ], [ %269, %297 ]
  %303 = phi ptr [ %220, %215 ], [ %281, %297 ]
  %304 = load ptr, ptr %301, align 8, !tbaa !139
  %305 = load i32, ptr %304, align 8
  %306 = and i32 %305, 255
  %307 = trunc i32 %305 to i8
  switch i8 %307, label %308 [
    i8 4, label %601
    i8 9, label %599
  ], !prof !204

308:                                              ; preds = %300
  %309 = trunc i32 %305 to i8
  switch i8 %309, label %600 [
    i8 2, label %601
    i8 6, label %310
  ], !prof !205

310:                                              ; preds = %308
  %311 = getelementptr inbounds i8, ptr %3, i64 8
  %312 = getelementptr inbounds i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  store ptr %75, ptr %3, align 8
  store ptr %27, ptr %311, align 8
  store ptr %0, ptr %312, align 8
  %313 = add nsw i32 %306, -10
  %314 = icmp ult i32 %313, -9
  br i1 %314, label %327, label %315, !prof !206

315:                                              ; preds = %310
  %316 = zext nneg i32 %306 to i64
  %317 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !66
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %319
  %321 = load i64, ptr %320, align 8, !tbaa !148
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %324, !prof !206

323:                                              ; preds = %315
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %324

324:                                              ; preds = %323, %315
  %325 = getelementptr inbounds i8, ptr %304, i64 %321
  %326 = load ptr, ptr %325, align 8, !tbaa !51
  br label %327

327:                                              ; preds = %324, %310
  %328 = phi ptr [ %326, %324 ], [ null, %310 ]
  %329 = load i32, ptr %304, align 8
  %330 = trunc i32 %329 to i8
  switch i8 %330, label %333 [
    i8 6, label %331
    i8 1, label %331
    i8 8, label %334
  ], !prof !207

331:                                              ; preds = %327, %327
  %332 = lshr i32 %329, 16
  br label %334

333:                                              ; preds = %327
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1446, ptr noundef nonnull @.str.5) #18
  br label %334

334:                                              ; preds = %333, %331, %327
  %335 = phi i32 [ %332, %331 ], [ 0, %333 ], [ 59, %327 ]
  %336 = zext nneg i32 %335 to i64
  %337 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !62
  %339 = icmp eq i8 %338, 3
  br i1 %339, label %340, label %360, !prof !206

340:                                              ; preds = %334
  %341 = load i32, ptr %304, align 8
  %342 = and i32 %341, 255
  %343 = add nsw i32 %342, -1
  %344 = icmp ult i32 %343, 9
  call void @llvm.assume(i1 %344)
  %345 = zext nneg i32 %342 to i64
  %346 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !66
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %348
  %350 = load i64, ptr %349, align 8, !tbaa !148
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %340
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %353

353:                                              ; preds = %352, %340
  %354 = getelementptr inbounds i8, ptr %304, i64 %350
  %355 = getelementptr inbounds ptr, ptr %354, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !51
  %357 = load i64, ptr %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = and i32 %358, 65535
  br label %360

360:                                              ; preds = %353, %334
  %361 = phi i32 [ %359, %353 ], [ %335, %334 ]
  %362 = zext nneg i32 %361 to i64
  %363 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !62
  %365 = load i32, ptr %304, align 8
  %366 = and i32 %365, 255
  %367 = add nsw i32 %366, -10
  %368 = icmp ult i32 %367, -9
  br i1 %368, label %382, label %369, !prof !206

369:                                              ; preds = %360
  %370 = zext nneg i32 %366 to i64
  %371 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %370
  %372 = load i32, ptr %371, align 4, !tbaa !66
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %373
  %375 = load i64, ptr %374, align 8, !tbaa !148
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %378, !prof !206

377:                                              ; preds = %369
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %378

378:                                              ; preds = %377, %369
  %379 = getelementptr inbounds i8, ptr %304, i64 %375
  %380 = getelementptr inbounds ptr, ptr %379, i64 1
  %381 = load ptr, ptr %380, align 8, !tbaa !51
  br label %382

382:                                              ; preds = %378, %360
  %383 = phi ptr [ %381, %378 ], [ null, %360 ]
  %384 = icmp eq i8 %364, 3
  br i1 %384, label %423, label %385, !prof !206

385:                                              ; preds = %382
  %386 = load i32, ptr %304, align 8
  %387 = and i32 %386, 255
  %388 = icmp eq i32 %387, 6
  br i1 %388, label %389, label %420, !prof !208

389:                                              ; preds = %385
  %390 = lshr i32 %386, 16
  %391 = zext nneg i32 %390 to i64
  %392 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !62
  %394 = icmp eq i8 %393, 3
  br i1 %394, label %395, label %411, !prof !206

395:                                              ; preds = %389
  %396 = zext nneg i32 %387 to i64
  %397 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !66
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %399
  %401 = load i64, ptr %400, align 8, !tbaa !148
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %395
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %404

404:                                              ; preds = %403, %395
  %405 = getelementptr inbounds i8, ptr %304, i64 %401
  %406 = getelementptr inbounds ptr, ptr %405, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !51
  %408 = load i64, ptr %407, align 8
  %409 = trunc i64 %408 to i32
  %410 = and i32 %409, 65535
  br label %411

411:                                              ; preds = %404, %389
  %412 = phi i32 [ %410, %404 ], [ %390, %389 ]
  %413 = icmp eq i32 %412, 113
  %414 = and i32 %412, 65533
  %415 = icmp eq i32 %414, 116
  %416 = or i1 %413, %415
  %417 = icmp eq i32 %412, 77
  %418 = or i1 %417, %416
  %419 = zext i1 %418 to i8
  br label %420

420:                                              ; preds = %411, %385
  %421 = phi i8 [ %419, %411 ], [ 0, %385 ]
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %494, label %423, !prof !209

423:                                              ; preds = %420, %382
  %424 = load i64, ptr %383, align 8
  %425 = and i64 %424, 65535
  %426 = icmp eq i64 %425, 141
  br i1 %426, label %427, label %494, !prof !210

427:                                              ; preds = %423
  %428 = load i32, ptr %304, align 8
  %429 = and i32 %428, 255
  %430 = icmp eq i32 %429, 6
  br i1 %430, label %431, label %491, !prof !210

431:                                              ; preds = %427
  %432 = lshr i32 %428, 16
  %433 = zext nneg i32 %432 to i64
  %434 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !62
  %436 = icmp eq i8 %435, 3
  br i1 %436, label %437, label %453, !prof !211

437:                                              ; preds = %431
  %438 = zext nneg i32 %429 to i64
  %439 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !66
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %441
  %443 = load i64, ptr %442, align 8, !tbaa !148
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %437
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %446

446:                                              ; preds = %445, %437
  %447 = getelementptr inbounds i8, ptr %304, i64 %443
  %448 = getelementptr inbounds ptr, ptr %447, i64 1
  %449 = load ptr, ptr %448, align 8, !tbaa !51
  %450 = load i64, ptr %449, align 8
  %451 = trunc i64 %450 to i32
  %452 = and i32 %451, 65535
  br label %453

453:                                              ; preds = %446, %431
  %454 = phi i32 [ %452, %446 ], [ %432, %431 ]
  %455 = freeze i32 %454
  %456 = and i32 %455, 65533
  %457 = icmp eq i32 %456, 116
  br i1 %457, label %459, label %458

458:                                              ; preds = %453
  switch i32 %455, label %491 [
    i32 113, label %459
    i32 77, label %459
  ]

459:                                              ; preds = %458, %458, %453
  %460 = getelementptr inbounds %struct.tree_common, ptr %328, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !62
  %462 = load i64, ptr %461, align 8
  %463 = and i64 %462, 65535
  %464 = icmp eq i64 %463, 14
  br i1 %464, label %465, label %467, !prof !211

465:                                              ; preds = %459
  %466 = call i32 @vector_type_mode(ptr noundef nonnull %461) #18
  br label %472

467:                                              ; preds = %459
  %468 = getelementptr inbounds %struct.tree_type, ptr %461, i64 0, i32 6
  %469 = load i32, ptr %468, align 4
  %470 = lshr i32 %469, 16
  %471 = and i32 %470, 255
  br label %472

472:                                              ; preds = %467, %465
  %473 = phi i32 [ %466, %465 ], [ %471, %467 ]
  %474 = getelementptr inbounds %struct.tree_common, ptr %383, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !62
  %476 = load i64, ptr %475, align 8
  %477 = and i64 %476, 65535
  %478 = icmp eq i64 %477, 14
  br i1 %478, label %479, label %481, !prof !211

479:                                              ; preds = %472
  %480 = call i32 @vector_type_mode(ptr noundef nonnull %475) #18
  br label %486

481:                                              ; preds = %472
  %482 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 6
  %483 = load i32, ptr %482, align 4
  %484 = lshr i32 %483, 16
  %485 = and i32 %484, 255
  br label %486

486:                                              ; preds = %481, %479
  %487 = phi i32 [ %480, %479 ], [ %485, %481 ]
  %488 = icmp eq i32 %473, %487
  %489 = icmp eq ptr %383, %302
  %490 = select i1 %488, i1 %489, i1 false, !prof !211
  br i1 %490, label %493, label %570, !prof !211

491:                                              ; preds = %458, %427
  %492 = icmp eq ptr %383, %302
  br i1 %492, label %493, label %570

493:                                              ; preds = %486, %491
  br label %570

494:                                              ; preds = %420, %423
  %495 = icmp eq i8 %364, 1
  br i1 %495, label %496, label %570, !prof !212

496:                                              ; preds = %494
  %497 = load i32, ptr @flag_associative_math, align 4, !tbaa !66
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %513, !prof !212

499:                                              ; preds = %496
  %500 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %501 = getelementptr inbounds %struct.tree_decl_non_common, ptr %500, i64 0, i32 3
  %502 = load ptr, ptr %501, align 8, !tbaa !62
  %503 = getelementptr inbounds %struct.tree_common, ptr %502, i64 0, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !62
  %505 = load i64, ptr %504, align 8
  %506 = trunc i64 %505 to i16
  switch i16 %506, label %513 [
    i16 9, label %570
    i16 13, label %507
    i16 14, label %507
  ], !prof !213

507:                                              ; preds = %499, %499
  %508 = getelementptr inbounds %struct.tree_common, ptr %504, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !62
  %510 = load i64, ptr %509, align 8
  %511 = and i64 %510, 65535
  %512 = icmp eq i64 %511, 9
  br i1 %512, label %570, label %513

513:                                              ; preds = %507, %499, %496
  %514 = load i32, ptr %304, align 8
  %515 = and i32 %514, 255
  %516 = add nsw i32 %515, -10
  %517 = icmp ult i32 %516, -9
  br i1 %517, label %531, label %518, !prof !214

518:                                              ; preds = %513
  %519 = zext nneg i32 %515 to i64
  %520 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !66
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %522
  %524 = load i64, ptr %523, align 8, !tbaa !148
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %527, !prof !214

526:                                              ; preds = %518
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %527

527:                                              ; preds = %526, %518
  %528 = getelementptr inbounds i8, ptr %304, i64 %524
  %529 = getelementptr inbounds ptr, ptr %528, i64 1
  %530 = load ptr, ptr %529, align 8, !tbaa !51
  br label %531

531:                                              ; preds = %527, %513
  %532 = phi ptr [ %530, %527 ], [ null, %513 ]
  %533 = getelementptr inbounds %struct.gimple_statement_base, ptr %304, i64 0, i32 3
  %534 = load i32, ptr %533, align 4, !tbaa !62
  %535 = icmp ugt i32 %534, 2
  br i1 %535, label %536, label %554, !prof !212

536:                                              ; preds = %531
  %537 = load i32, ptr %304, align 8
  %538 = and i32 %537, 255
  %539 = add nsw i32 %538, -10
  %540 = icmp ult i32 %539, -9
  br i1 %540, label %554, label %541, !prof !214

541:                                              ; preds = %536
  %542 = zext nneg i32 %538 to i64
  %543 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !66
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %545
  %547 = load i64, ptr %546, align 8, !tbaa !148
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %549, label %550, !prof !214

549:                                              ; preds = %541
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %550

550:                                              ; preds = %549, %541
  %551 = getelementptr inbounds i8, ptr %304, i64 %547
  %552 = getelementptr inbounds ptr, ptr %551, i64 2
  %553 = load ptr, ptr %552, align 8, !tbaa !51
  br label %554

554:                                              ; preds = %550, %536, %531
  %555 = phi ptr [ null, %531 ], [ %553, %550 ], [ null, %536 ]
  %556 = icmp eq ptr %532, %302
  br i1 %556, label %557, label %560, !prof !215

557:                                              ; preds = %554
  %558 = call fastcc ptr @independent_of_stmt_p(ptr noundef %555, ptr noundef nonnull %304, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3)
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %565, !prof !216

560:                                              ; preds = %557, %554
  %561 = icmp eq ptr %555, %302
  br i1 %561, label %562, label %570, !prof !217

562:                                              ; preds = %560
  %563 = call fastcc ptr @independent_of_stmt_p(ptr noundef %532, ptr noundef nonnull %304, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3)
  %564 = icmp eq ptr %563, null
  br i1 %564, label %570, label %565, !prof !218

565:                                              ; preds = %562, %557
  %566 = phi ptr [ %558, %557 ], [ %563, %562 ]
  %567 = trunc i32 %361 to i16
  switch i16 %567, label %570 [
    i16 63, label %568
    i16 65, label %569
  ], !prof !219

568:                                              ; preds = %565
  br label %570

569:                                              ; preds = %565
  br label %570

570:                                              ; preds = %565, %562, %507, %499, %486, %491, %493, %494, %560, %568, %569
  %571 = phi ptr [ null, %493 ], [ null, %491 ], [ null, %569 ], [ %566, %568 ], [ null, %560 ], [ null, %494 ], [ null, %486 ], [ null, %499 ], [ null, %507 ], [ null, %562 ], [ null, %565 ]
  %572 = phi ptr [ null, %493 ], [ null, %491 ], [ %566, %569 ], [ null, %568 ], [ null, %560 ], [ null, %494 ], [ null, %486 ], [ null, %499 ], [ null, %507 ], [ null, %562 ], [ null, %565 ]
  %573 = phi ptr [ %328, %493 ], [ %302, %491 ], [ %328, %569 ], [ %328, %568 ], [ %302, %560 ], [ %302, %494 ], [ %302, %486 ], [ %302, %499 ], [ %302, %507 ], [ %302, %562 ], [ %302, %565 ]
  %574 = phi i1 [ false, %493 ], [ true, %491 ], [ false, %569 ], [ false, %568 ], [ true, %560 ], [ true, %494 ], [ true, %486 ], [ true, %499 ], [ true, %507 ], [ true, %562 ], [ true, %565 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br i1 %574, label %601, label %575, !prof !220

575:                                              ; preds = %570
  %576 = icmp eq ptr %571, null
  br i1 %576, label %583, label %577, !prof !221

577:                                              ; preds = %575
  %578 = icmp eq ptr %219, null
  br i1 %578, label %583, label %579, !prof !222

579:                                              ; preds = %577
  %580 = getelementptr inbounds %struct.tree_common, ptr %571, i64 0, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !62
  %582 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %581, ptr noundef nonnull %219, ptr noundef nonnull %571) #18
  br label %583

583:                                              ; preds = %577, %579, %575
  %584 = phi ptr [ %582, %579 ], [ %219, %575 ], [ %571, %577 ]
  %585 = icmp eq ptr %572, null
  br i1 %585, label %601, label %586, !prof !223

586:                                              ; preds = %583
  %587 = icmp eq ptr %218, null
  br i1 %587, label %592, label %588

588:                                              ; preds = %586
  %589 = getelementptr inbounds %struct.tree_common, ptr %572, i64 0, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !62
  %591 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %590, ptr noundef nonnull %218, ptr noundef nonnull %572) #18
  br label %592

592:                                              ; preds = %586, %588
  %593 = phi ptr [ %591, %588 ], [ %572, %586 ]
  %594 = icmp eq ptr %584, null
  br i1 %594, label %601, label %595

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.tree_common, ptr %572, i64 0, i32 2
  %597 = load ptr, ptr %596, align 8, !tbaa !62
  %598 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %597, ptr noundef nonnull %584, ptr noundef nonnull %572) #18
  br label %601

599:                                              ; preds = %300
  br label %601

600:                                              ; preds = %308
  br label %601

601:                                              ; preds = %308, %600, %300, %599, %583, %595, %592, %570
  %602 = phi ptr [ %302, %300 ], [ %573, %570 ], [ %573, %583 ], [ %573, %592 ], [ %573, %595 ], [ %302, %308 ], [ %302, %599 ], [ %302, %600 ]
  %603 = phi ptr [ %218, %300 ], [ %218, %570 ], [ %218, %583 ], [ %593, %592 ], [ %593, %595 ], [ %218, %308 ], [ %218, %599 ], [ %218, %600 ]
  %604 = phi ptr [ %219, %300 ], [ %219, %570 ], [ %584, %583 ], [ null, %592 ], [ %598, %595 ], [ %219, %308 ], [ %219, %599 ], [ %219, %600 ]
  %605 = phi i32 [ 11, %300 ], [ 1, %570 ], [ 0, %583 ], [ 0, %592 ], [ 0, %595 ], [ 11, %308 ], [ 12, %599 ], [ 1, %600 ]
  switch i32 %605, label %644 [
    i32 0, label %606
    i32 11, label %606
    i32 12, label %607
  ], !prof !224

606:                                              ; preds = %601, %601
  br label %215, !llvm.loop !225

607:                                              ; preds = %601
  %608 = load i32, ptr %304, align 8
  %609 = and i32 %608, 255
  %610 = add nsw i32 %609, -10
  %611 = icmp ult i32 %610, -9
  br i1 %611, label %624, label %612, !prof !191

612:                                              ; preds = %607
  %613 = zext nneg i32 %609 to i64
  %614 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %613
  %615 = load i32, ptr %614, align 4, !tbaa !66
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %616
  %618 = load i64, ptr %617, align 8, !tbaa !148
  %619 = icmp eq i64 %618, 0
  br i1 %619, label %620, label %621, !prof !191

620:                                              ; preds = %612
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %621

621:                                              ; preds = %620, %612
  %622 = getelementptr inbounds i8, ptr %304, i64 %618
  %623 = load ptr, ptr %622, align 8, !tbaa !51
  br label %624

624:                                              ; preds = %607, %621
  %625 = phi ptr [ %623, %621 ], [ null, %607 ]
  %626 = icmp eq ptr %625, null
  %627 = icmp eq ptr %625, %602
  %628 = select i1 %626, i1 true, i1 %627, !prof !191
  br i1 %628, label %629, label %644, !prof !197

629:                                              ; preds = %624
  %630 = icmp eq i8 %214, 0
  br i1 %630, label %631, label %635, !prof !226

631:                                              ; preds = %629
  %632 = icmp ne ptr %603, null
  %633 = icmp ne ptr %604, null
  %634 = select i1 %632, i1 true, i1 %633, !prof !227
  br i1 %634, label %644, label %635, !prof !228

635:                                              ; preds = %631, %629
  %636 = call ptr @xmalloc(i64 noundef 56) #18
  store ptr %75, ptr %636, align 8, !tbaa.struct !142
  %637 = getelementptr inbounds i8, ptr %636, i64 8
  store ptr %27, ptr %637, align 8, !tbaa.struct !229
  %638 = getelementptr inbounds i8, ptr %636, i64 16
  store ptr %0, ptr %638, align 8, !tbaa.struct !230
  %639 = getelementptr inbounds %struct.tailcall, ptr %636, i64 0, i32 1
  store i8 %214, ptr %639, align 8, !tbaa !122
  %640 = getelementptr inbounds %struct.tailcall, ptr %636, i64 0, i32 2
  store ptr %603, ptr %640, align 8, !tbaa !135
  %641 = getelementptr inbounds %struct.tailcall, ptr %636, i64 0, i32 3
  store ptr %604, ptr %641, align 8, !tbaa !134
  %642 = load ptr, ptr %1, align 8, !tbaa !51
  %643 = getelementptr inbounds %struct.tailcall, ptr %636, i64 0, i32 4
  store ptr %642, ptr %643, align 8, !tbaa !138
  store ptr %636, ptr %1, align 8, !tbaa !51
  br label %644

644:                                              ; preds = %63, %66, %601, %96, %631, %624, %112, %12, %635
  ret void
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @arg_needs_copy_p(ptr noundef %0) unnamed_addr #12 !prof !50 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %11 [
    i16 32, label %7
    i16 34, label %9
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %16

11:                                               ; preds = %4
  %12 = and i64 %5, 65535
  %13 = icmp eq i64 %12, 36
  %14 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %15 = select i1 %13, ptr %14, ptr null
  br label %16

16:                                               ; preds = %11, %9, %7
  %17 = phi ptr [ %8, %7 ], [ %10, %9 ], [ %15, %11 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !51
  %24 = tail call ptr @gimple_default_def(ptr noundef %23, ptr noundef nonnull %0) #18
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %16, %22, %1, %19
  %28 = phi i8 [ 0, %19 ], [ 0, %1 ], [ %26, %22 ], [ 0, %16 ]
  ret i8 %28
}

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @create_tailcall_accumulator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 !prof !50 {
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef %0) #18
  %10 = load i64, ptr %8, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -13
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 134217728
  store i64 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %3, %15
  %20 = tail call zeroext i8 @add_referenced_var(ptr noundef %9) #18
  %21 = tail call ptr @create_phi_node(ptr noundef %9, ptr noundef %1) #18
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %8, ptr noundef %2) #18
  %23 = load ptr, ptr %1, align 8, !tbaa !126
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %23, align 8, !tbaa !85
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %29, label %28

28:                                               ; preds = %19, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.5) #18
  br label %29

29:                                               ; preds = %25, %28
  %30 = load ptr, ptr %1, align 8, !tbaa !126
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 0
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  tail call void @add_phi_arg(ptr noundef %21, ptr noundef %22, ptr noundef %32, i32 noundef 0) #18
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %21, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  ret ptr %34
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @independent_of_stmt_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #9 !prof !231 !PGOFuncName !232 {
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %140, !prof !233

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %140, !prof !217

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %35, label %18, !prof !234

18:                                               ; preds = %10, %28
  %19 = phi ptr [ %33, %28 ], [ %16, %10 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 2
  store ptr %20, ptr %20, align 8, !tbaa !235
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %22, align 8, !tbaa !85
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %28

28:                                               ; preds = %24, %27
  %29 = load ptr, ptr %21, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %29, i64 0, i32 2, i64 0
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, %12
  br i1 %34, label %35, label %18, !prof !234, !llvm.loop !236

35:                                               ; preds = %28, %10
  %36 = phi ptr [ %16, %10 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 2
  store ptr %37, ptr %37, align 8, !tbaa !235
  br label %38

38:                                               ; preds = %106, %35
  %39 = phi ptr [ %0, %35 ], [ %110, %106 ]
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct.gimple_statement_base, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  br i1 %44, label %117, label %45, !prof !218

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !235
  %48 = icmp eq ptr %47, null
  br i1 %48, label %117, label %49, !prof !218

49:                                               ; preds = %45
  %50 = icmp eq ptr %43, %16
  br i1 %50, label %51, label %62, !prof !217

51:                                               ; preds = %49
  %52 = load ptr, ptr %2, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %114, label %54, !prof !237

54:                                               ; preds = %51, %58
  %55 = phi ptr [ %60, %58 ], [ %52, %51 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  %57 = icmp eq ptr %56, %41
  br i1 %57, label %114, label %58, !prof !238

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %55, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !144
  %61 = icmp eq ptr %60, null
  br i1 %61, label %114, label %54, !prof !239, !llvm.loop !240

62:                                               ; preds = %49
  %63 = load i32, ptr %41, align 8
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %117

66:                                               ; preds = %62, %94
  %67 = phi i32 [ %95, %94 ], [ 0, %62 ]
  %68 = load ptr, ptr %43, align 8, !tbaa !51
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 8, !tbaa !85
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %71, %70 ], [ 0, %66 ]
  %74 = icmp eq i32 %73, %67
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = zext i32 %67 to i64
  %77 = getelementptr inbounds %struct.VEC_edge_base, ptr %68, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  br label %79

79:                                               ; preds = %72, %75
  %80 = phi ptr [ %78, %75 ], [ null, %72 ]
  br i1 %74, label %96, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %80, align 8, !tbaa !119
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !235
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = icmp eq ptr %68, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %68, align 8, !tbaa !85
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %89, %88 ], [ 0, %86 ]
  %92 = icmp ult i32 %67, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.5) #18
  br label %94

94:                                               ; preds = %90, %93
  %95 = add i32 %67, 1
  br label %66, !llvm.loop !241

96:                                               ; preds = %81, %79
  %97 = icmp eq ptr %80, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 242, ptr noundef nonnull @.str.5) #18
  br label %99

99:                                               ; preds = %96, %98
  %100 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 6
  %101 = load i32, ptr %100, align 4, !tbaa !194
  %102 = getelementptr inbounds %struct.gimple_statement_phi, ptr %41, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !62
  %104 = icmp ult i32 %103, %101
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.5) #18
  br label %106

106:                                              ; preds = %99, %105
  %107 = zext i32 %101 to i64
  %108 = getelementptr inbounds %struct.gimple_statement_phi, ptr %41, i64 0, i32 4, i64 %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !195
  %110 = load ptr, ptr %109, align 8, !tbaa !51
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 141
  br i1 %113, label %38, label %117, !llvm.loop !242

114:                                              ; preds = %58, %54, %51
  %115 = phi ptr [ %52, %51 ], [ %60, %58 ], [ %55, %54 ]
  %116 = phi ptr [ %39, %51 ], [ %39, %58 ], [ null, %54 ]
  store ptr %115, ptr %2, align 8
  br label %117

117:                                              ; preds = %106, %62, %38, %45, %114
  %118 = phi ptr [ %116, %114 ], [ %39, %45 ], [ %39, %38 ], [ null, %62 ], [ %110, %106 ]
  %119 = icmp eq ptr %16, %12
  br i1 %119, label %137, label %120, !prof !234

120:                                              ; preds = %117, %130
  %121 = phi ptr [ %135, %130 ], [ %16, %117 ]
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 2
  store ptr null, ptr %122, align 8, !tbaa !235
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !83
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %124, align 8, !tbaa !85
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %130, label %129

129:                                              ; preds = %126, %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %130

130:                                              ; preds = %126, %129
  %131 = load ptr, ptr %123, align 8, !tbaa !83
  %132 = getelementptr inbounds %struct.VEC_edge_base, ptr %131, i64 0, i32 2, i64 0
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !88
  %136 = icmp eq ptr %135, %12
  br i1 %136, label %137, label %120, !prof !234, !llvm.loop !243

137:                                              ; preds = %130, %117
  %138 = phi ptr [ %16, %117 ], [ %135, %130 ]
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 2
  store ptr null, ptr %139, align 8, !tbaa !235
  br label %140

140:                                              ; preds = %6, %3, %137
  %141 = phi ptr [ %118, %137 ], [ %0, %3 ], [ null, %6 ]
  ret ptr %141
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decrease_profile(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #12 !prof !50 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !244
  %6 = sub nsw i64 %5, %1
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 0)
  store i64 %7, ptr %4, align 8, !tbaa !244
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !146
  %10 = sub nsw i32 %9, %2
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  store i32 %11, ptr %8, align 8, !tbaa !146
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %13, align 8, !tbaa !85
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  br i1 %14, label %36, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %13, align 8, !tbaa !85
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 719, ptr noundef nonnull @.str.5) #18
  br label %36

23:                                               ; preds = %15
  br i1 %14, label %27, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %13, align 8, !tbaa !85
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #18
  br label %28

28:                                               ; preds = %24, %27
  %29 = load ptr, ptr %12, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %29, i64 0, i32 2, i64 0
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 9
  %33 = load i64, ptr %32, align 8, !tbaa !145
  %34 = sub nsw i64 %33, %1
  %35 = tail call i64 @llvm.smax.i64(i64 %34, i64 0)
  store i64 %35, ptr %32, align 8, !tbaa !145
  br label %36

36:                                               ; preds = %3, %18, %22, %19, %28
  ret void
}

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @adjust_return_value_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %4) unnamed_addr #12 !prof !50 {
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef %1) #18
  %12 = load i64, ptr %10, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -13
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 134217728
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %5, %17
  %22 = tail call zeroext i8 @add_referenced_var(ptr noundef %11) #18
  %23 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %26) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %11, ptr noundef %2, ptr noundef %3) #18
  br label %39

31:                                               ; preds = %21
  %32 = load ptr, ptr %23, align 8, !tbaa !62
  %33 = load ptr, ptr %25, align 8, !tbaa !62
  %34 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %33, ptr noundef %2) #18
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %33, ptr noundef %34, ptr noundef %3) #18
  %36 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %32, ptr noundef %35) #18
  %37 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %36, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 2) #18
  %38 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %37) #18
  br label %39

39:                                               ; preds = %31, %29
  %40 = phi ptr [ %30, %29 ], [ %38, %31 ]
  %41 = load ptr, ptr @cfun, align 8, !tbaa !51
  %42 = call ptr @make_ssa_name_fn(ptr noundef %41, ptr noundef %11, ptr noundef %40) #18
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 255
  %45 = add nsw i32 %44, -10
  %46 = icmp ult i32 %45, -9
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.gimple_statement_base, ptr %40, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !62
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %39
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.5) #18
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, ptr %40, align 8
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !66
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !148
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %63

63:                                               ; preds = %62, %52
  %64 = getelementptr inbounds i8, ptr %40, i64 %60
  store ptr %42, ptr %64, align 8, !tbaa !51
  %65 = icmp eq ptr %42, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %42, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 2
  store ptr %40, ptr %71, align 8, !tbaa !62
  br label %72

72:                                               ; preds = %63, %66, %70
  %73 = load i32, ptr %40, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -10
  %76 = icmp ult i32 %75, -9
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  call void @gimple_set_modified(ptr noundef nonnull %40, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %40) #18
  br label %78

78:                                               ; preds = %72, %77
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef nonnull %40, i32 noundef 0) #18
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @update_accumulator_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #12 !prof !50 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call zeroext i8 @types_compatible_p(ptr noundef %6, ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %13, ptr noundef %1, ptr noundef %2) #18
  br label %23

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !tbaa !62
  %17 = load ptr, ptr %7, align 8, !tbaa !62
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef %1) #18
  %19 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef %2) #18
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %16, ptr noundef %19) #18
  %21 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %20, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #18
  %22 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %21) #18
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %14, %11 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = load ptr, ptr @cfun, align 8, !tbaa !51
  %28 = call ptr @make_ssa_name_fn(ptr noundef %27, ptr noundef %26, ptr noundef %24) #18
  %29 = load i32, ptr %24, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.gimple_statement_base, ptr %24, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %23
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.5) #18
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, ptr %24, align 8
  %40 = and i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !66
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !148
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #18
  br label %49

49:                                               ; preds = %48, %38
  %50 = getelementptr inbounds i8, ptr %24, i64 %46
  store ptr %28, ptr %50, align 8, !tbaa !51
  %51 = icmp eq ptr %28, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %28, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 2
  store ptr %24, ptr %57, align 8, !tbaa !62
  br label %58

58:                                               ; preds = %49, %52, %56
  %59 = load i32, ptr %24, align 8
  %60 = and i32 %59, 255
  %61 = add nsw i32 %60, -10
  %62 = icmp ult i32 %61, -9
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void @gimple_set_modified(ptr noundef nonnull %24, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %24) #18
  br label %64

64:                                               ; preds = %58, %63
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %24, i32 noundef 0) #18
  ret ptr %28
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_successor_phi_arg(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #12 !prof !50 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #18
  %7 = load ptr, ptr %4, align 8, !tbaa.struct !142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %15
  %10 = phi ptr [ %17, %15 ], [ %7, %3 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !144
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !245

19:                                               ; preds = %15, %3
  %20 = phi ptr [ %7, %3 ], [ %17, %15 ]
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 562, ptr noundef nonnull @.str.5) #18
  br label %21

21:                                               ; preds = %9, %19
  %22 = phi ptr [ %20, %19 ], [ %10, %9 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  call void @add_phi_arg(ptr noundef %23, ptr noundef %2, ptr noundef %0, i32 noundef 0) #18
  ret void
}

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @gate_tail_calls, ptr @dbg_cnt, i64 116}
!36 = !{ptr @execute_tail_recursion, ptr @tree_optimize_tail_calls_1, i64 78}
!37 = !{ptr @execute_tail_calls, ptr @tree_optimize_tail_calls_1, i64 38}
!38 = !{ptr @tree_optimize_tail_calls_1, ptr @htab_size, i64 116}
!39 = !{ptr @tree_optimize_tail_calls_1, ptr @last_stmt, i64 116}
!40 = !{ptr @tree_optimize_tail_calls_1, ptr @find_tail_calls, i64 116}
!41 = !{ptr @tree_optimize_tail_calls_1, ptr @free, i64 377}
!42 = !{ptr @find_tail_calls, ptr @find_tail_calls, i64 201330}
!43 = !{ptr @find_tail_calls, ptr @is_gimple_reg, i64 1282}
!44 = !{ptr @find_tail_calls, ptr @gsi_start_phis, i64 1037}
!45 = !{ptr @find_tail_calls, ptr @independent_of_stmt_p, i64 917}
!46 = !{ptr @find_tail_calls, ptr @fold_build2_stat_loc, i64 44}
!47 = !{ptr @find_tail_calls, ptr @xmalloc, i64 373}
!48 = !{ptr @independent_of_stmt_p, ptr @is_gimple_min_invariant, i64 927}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !52, i64 8}
!56 = !{!"_IO_FILE", !57, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !57, i64 112, !57, i64 116, !58, i64 120, !59, i64 128, !53, i64 130, !53, i64 131, !52, i64 136, !58, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !58, i64 184, !57, i64 192, !53, i64 196}
!57 = !{!"int", !53, i64 0}
!58 = !{!"long", !53, i64 0}
!59 = !{!"short", !53, i64 0}
!60 = !{!56, !52, i64 16}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!53, !53, i64 0}
!63 = !{!56, !52, i64 40}
!64 = !{!56, !52, i64 48}
!65 = !{!56, !57, i64 0}
!66 = !{!57, !57, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"function_entry_count", i64 116}
!71 = !{!"tree-tailcall.c;gate_tail_calls"}
!72 = !{!"branch_weights", i32 0, i32 116}
!73 = !{!"function_entry_count", i64 78}
!74 = !{!"tree-tailcall.c;execute_tail_recursion"}
!75 = !{i32 0, i32 16417}
!76 = !{!"function_entry_count", i64 38}
!77 = !{!"tree-tailcall.c;execute_tail_calls"}
!78 = !{!"tree-tailcall.c;tree_optimize_tail_calls_1"}
!79 = !{!80, !52, i64 8}
!80 = !{!"function", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !57, i64 104, !57, i64 108, !57, i64 112, !57, i64 116, !57, i64 120, !57, i64 124, !52, i64 128, !57, i64 136, !57, i64 137, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139}
!81 = !{!82, !52, i64 0}
!82 = !{!"control_flow_graph", !52, i64 0, !52, i64 8, !52, i64 16, !57, i64 24, !57, i64 28, !57, i64 32, !52, i64 40, !57, i64 48, !53, i64 52, !53, i64 60, !57, i64 68, !57, i64 72}
!83 = !{!84, !52, i64 8}
!84 = !{!"basic_block_def", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !53, i64 32, !52, i64 48, !52, i64 56, !53, i64 64, !58, i64 72, !57, i64 80, !57, i64 84, !57, i64 88, !57, i64 92, !57, i64 96}
!85 = !{!86, !57, i64 0}
!86 = !{!"VEC_edge_base", !57, i64 0, !57, i64 4, !53, i64 8}
!87 = !{!"branch_weights", i32 116, i32 0}
!88 = !{!89, !52, i64 8}
!89 = !{!"edge_def", !52, i64 0, !52, i64 8, !53, i64 16, !52, i64 24, !52, i64 32, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !58, i64 56}
!90 = !{!80, !52, i64 24}
!91 = !{!92, !52, i64 0}
!92 = !{!"gimple_df", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !93, i64 32, !93, i64 48, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !57, i64 96, !94, i64 104}
!93 = !{!"pt_solution", !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !52, i64 8}
!94 = !{!"ssa_operands", !52, i64 0, !57, i64 8, !57, i64 12, !53, i64 16, !52, i64 24, !52, i64 32}
!95 = !{!96, !52, i64 24}
!96 = !{!"htab", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !57, i64 56, !57, i64 60, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !57, i64 104}
!97 = !{!"branch_weights", i32 171, i32 116}
!98 = !{!"branch_weights", i32 171, i32 0}
!99 = distinct !{!99, !68, !69}
!100 = !{!"branch_weights", i32 231, i32 1}
!101 = !{!"branch_weights", i32 319535, i32 232}
!102 = !{!"branch_weights", i32 319160, i32 607}
!103 = !{!"branch_weights", i32 319160, i32 0}
!104 = !{!"branch_weights", i32 0, i32 319160}
!105 = !{!"branch_weights", i32 -1111745246, i32 0}
!106 = !{!"branch_weights", i32 710875, i32 116}
!107 = !{!"branch_weights", i32 391224, i32 319651}
!108 = !{!"branch_weights", i32 639303, i32 231}
!109 = distinct !{!109, !68, !69}
!110 = !{!"branch_weights", i32 78, i32 38}
!111 = !{!"branch_weights", i32 38, i32 0}
!112 = !{!"branch_weights", i32 1, i32 151}
!113 = !{!"branch_weights", i32 151, i32 1}
!114 = distinct !{!114, !68, !69}
!115 = !{!"branch_weights", i32 0, i32 38}
!116 = !{!82, !52, i64 8}
!117 = !{!"branch_weights", i32 0, i32 232}
!118 = !{!"branch_weights", i32 116, i32 116}
!119 = !{!89, !52, i64 0}
!120 = distinct !{!120, !68, !69}
!121 = !{!"branch_weights", i32 1, i32 231}
!122 = !{!123, !53, i64 24}
!123 = !{!"tailcall", !124, i64 0, !53, i64 24, !52, i64 32, !52, i64 40, !52, i64 48}
!124 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16}
!125 = !{!"branch_weights", i32 377, i32 0}
!126 = !{!84, !52, i64 0}
!127 = !{!84, !57, i64 96}
!128 = !{!129, !52, i64 8}
!129 = !{!"gimple_bb_info", !52, i64 0, !52, i64 8}
!130 = !{!131, !52, i64 0}
!131 = !{!"gimple_seq_d", !52, i64 0, !52, i64 8, !52, i64 16}
!132 = !{i8 0, i8 2}
!133 = distinct !{!133, !68, !69}
!134 = !{!123, !52, i64 40}
!135 = !{!123, !52, i64 32}
!136 = !{!"branch_weights", i32 231, i32 523}
!137 = distinct !{!137, !68, !69}
!138 = !{!123, !52, i64 48}
!139 = !{!140, !52, i64 0}
!140 = !{!"gimple_seq_node_d", !52, i64 0, !52, i64 8, !52, i64 16}
!141 = !{!84, !57, i64 80}
!142 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51}
!143 = !{!124, !52, i64 0}
!144 = !{!140, !52, i64 16}
!145 = !{!89, !58, i64 56}
!146 = !{!84, !57, i64 88}
!147 = !{!89, !57, i64 52}
!148 = !{!58, !58, i64 0}
!149 = distinct !{!149, !68, !69}
!150 = !{!"branch_weights", i32 252, i32 125}
!151 = !{!"branch_weights", i32 125, i32 0}
!152 = distinct !{!152, !68, !69}
!153 = !{!129, !52, i64 0}
!154 = !{!131, !52, i64 8}
!155 = !{!156}
!156 = distinct !{!156, !157, !"gsi_last_bb: argument 0"}
!157 = distinct !{!157, !"gsi_last_bb"}
!158 = !{!124, !52, i64 8}
!159 = !{!124, !52, i64 16}
!160 = distinct !{!160, !68, !69}
!161 = distinct !{!161, !68, !69}
!162 = !{!"function_entry_count", i64 203658}
!163 = !{!"tree-tailcall.c;find_tail_calls"}
!164 = !{!"branch_weights", i32 0, i32 203658}
!165 = !{!"branch_weights", i32 193341, i32 10317}
!166 = !{!167}
!167 = distinct !{!167, !168, !"gsi_last_bb: argument 0"}
!168 = distinct !{!168, !"gsi_last_bb"}
!169 = !{!"branch_weights", i32 10317, i32 0}
!170 = !{!"branch_weights", i32 0, i32 10317}
!171 = !{!"branch_weights", i32 2558, i32 5821}
!172 = !{!"branch_weights", i32 -913686617, i32 449544615, i32 0, i32 1300153546}
!173 = !{!"branch_weights", i32 0, i32 1475}
!174 = !{!"branch_weights", i32 0, i32 3836}
!175 = !{!"branch_weights", i32 3373, i32 463}
!176 = !{!"branch_weights", i32 3373, i32 0}
!177 = !{!140, !52, i64 8}
!178 = !{!"branch_weights", i32 5821, i32 0}
!179 = distinct !{!179, !68, !69}
!180 = !{!"branch_weights", i32 8379, i32 1475}
!181 = !{!"branch_weights", i32 0, i32 211921}
!182 = !{!"branch_weights", i32 8379, i32 203542}
!183 = !{!"branch_weights", i32 0, i32 203542}
!184 = !{!"branch_weights", i32 203542, i32 0}
!185 = distinct !{!185, !68, !69}
!186 = !{!"branch_weights", i32 179, i32 1296}
!187 = !{!"branch_weights", i32 0, i32 1296}
!188 = !{!"branch_weights", i32 1475, i32 0}
!189 = distinct !{!189, !68, !69}
!190 = !{!"branch_weights", i32 1048, i32 1894}
!191 = !{!"branch_weights", i32 0, i32 1048}
!192 = !{!"branch_weights", i32 1048, i32 0}
!193 = !{!"branch_weights", i32 1, i32 178}
!194 = !{!89, !57, i64 44}
!195 = !{!196, !52, i64 24}
!196 = !{!"ssa_use_operand_d", !52, i64 0, !52, i64 8, !53, i64 16, !52, i64 24}
!197 = !{!"branch_weights", i32 869, i32 179}
!198 = !{!"branch_weights", i32 178, i32 870}
!199 = distinct !{!199, !68, !69}
!200 = !{!201}
!201 = distinct !{!201, !202, !"gsi_start_bb: argument 0"}
!202 = distinct !{!202, !"gsi_start_bb"}
!203 = distinct !{!203, !68, !69}
!204 = !{!"branch_weights", i32 963, i32 931, i32 1048}
!205 = !{!"branch_weights", i32 0, i32 0, i32 927369}
!206 = !{!"branch_weights", i32 0, i32 963}
!207 = !{!"branch_weights", i32 0, i32 963, i32 0, i32 0}
!208 = !{!"branch_weights", i32 963, i32 0}
!209 = !{!"branch_weights", i32 927, i32 36}
!210 = !{!"branch_weights", i32 36, i32 0}
!211 = !{!"branch_weights", i32 0, i32 36}
!212 = !{!"branch_weights", i32 927, i32 0}
!213 = !{!"branch_weights", i32 927, i32 0, i32 0, i32 0}
!214 = !{!"branch_weights", i32 0, i32 927}
!215 = !{!"branch_weights", i32 465, i32 462}
!216 = !{!"branch_weights", i32 0, i32 465}
!217 = !{!"branch_weights", i32 462, i32 0}
!218 = !{!"branch_weights", i32 0, i32 462}
!219 = !{!"branch_weights", i32 391, i32 536, i32 0}
!220 = !{!"branch_weights", i32 427, i32 536}
!221 = !{!"branch_weights", i32 0, i32 536}
!222 = !{!"branch_weights", i32 492, i32 44}
!223 = !{!"branch_weights", i32 536, i32 0}
!224 = !{!"branch_weights", i32 427, i32 536, i32 931, i32 1048}
!225 = distinct !{!225, !69}
!226 = !{!"branch_weights", i32 869, i32 0}
!227 = !{!"branch_weights", i32 0, i32 869}
!228 = !{!"branch_weights", i32 492, i32 377}
!229 = !{i64 0, i64 8, !51, i64 8, i64 8, !51}
!230 = !{i64 0, i64 8, !51}
!231 = !{!"function_entry_count", i64 927}
!232 = !{!"tree-tailcall.c;independent_of_stmt_p"}
!233 = !{!"branch_weights", i32 462, i32 465}
!234 = !{!"branch_weights", i32 1, i32 0}
!235 = !{!84, !52, i64 16}
!236 = distinct !{!236, !68, !69}
!237 = !{!"branch_weights", i32 1, i32 461}
!238 = !{!"branch_weights", i32 0, i32 968}
!239 = !{!"branch_weights", i32 461, i32 507}
!240 = distinct !{!240, !68, !69}
!241 = distinct !{!241, !68, !69}
!242 = distinct !{!242, !69}
!243 = distinct !{!243, !68, !69}
!244 = !{!84, !58, i64 72}
!245 = distinct !{!245, !68, !69}
