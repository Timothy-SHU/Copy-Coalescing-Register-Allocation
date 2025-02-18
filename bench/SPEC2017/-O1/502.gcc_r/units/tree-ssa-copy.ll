; ModuleID = 'tree-ssa-copy.c'
source_filename = "tree-ssa-copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.prop_value_d = type { i32, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-copy.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"copyprop\00", align 1
@pass_copy_prop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_copy_prop, ptr @execute_copy_prop, ptr null, ptr null, i32 0, i32 53, i32 40, i32 0, i32 0, i32 0, i32 2087 } }, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_tree_copy_prop = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@copy_of = internal unnamed_addr global ptr null, align 8
@cached_last_copy_of = internal unnamed_addr global ptr null, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"No interesting values produced.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Trying to determine truth value of \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"predicate \00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\0AConditional will always take edge %d->%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\09Argument #%d: \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"\0APHI node \00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\0ATelling the propagator to \00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"add SSA edges out of this PHI and continue.\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"add SSA edges out of this PHI and never visit again.\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"do nothing with SSA edges and keep iterating.\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c" copy-of chain: \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"[UNDEFINED]\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"[COPY]\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"[NOT A COPY]\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !63 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !64
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !63 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !64
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !63 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !74

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !68
  %11 = load i8, ptr %3, align 1, !tbaa !75
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !63 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !74

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !68
  %11 = load i8, ptr %3, align 1, !tbaa !75
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !63 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !74

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !68
  %11 = load i8, ptr %3, align 1, !tbaa !75
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !63 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !64
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !63 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !74

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !76
  store i8 %12, ptr %4, align 1, !tbaa !75
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !63 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !74

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !76
  store i8 %12, ptr %4, align 1, !tbaa !75
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !63 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !74

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !76
  store i8 %12, ptr %4, align 1, !tbaa !75
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !63 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !63 {
  %2 = load i32, ptr %0, align 8, !tbaa !78
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !63 {
  %2 = load i32, ptr %0, align 8, !tbaa !78
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !63 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !79
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !63 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !79
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !63 {
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
  br i1 %23, label %7, label %24, !llvm.loop !80

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @may_propagate_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !83 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 4259839
  %9 = icmp eq i64 %8, 4194445
  br i1 %9, label %32, label %10, !prof !84

10:                                               ; preds = %2
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 4259839
  %13 = icmp eq i64 %12, 4194445
  br i1 %13, label %32, label %14, !prof !84

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %4, ptr noundef %6) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17, !prof !84

17:                                               ; preds = %14
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %32, !prof !85

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %0) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32, !prof !86

24:                                               ; preds = %21
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %31, !prof !87

28:                                               ; preds = %24
  %29 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31, !prof !87

31:                                               ; preds = %28, %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #18
  br label %32

32:                                               ; preds = %17, %21, %31, %28, %14, %10, %2
  %33 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 0, %14 ], [ 1, %28 ], [ 1, %31 ], [ 1, %21 ], [ 1, %17 ]
  ret i8 %33
}

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @may_propagate_copy_into_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !88 {
  %3 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #18
  %4 = icmp eq i8 %3, 0
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 255
  br i1 %4, label %54, label %7, !prof !89

7:                                                ; preds = %2
  %8 = add nsw i32 %6, -10
  %9 = icmp ult i32 %8, -9
  br i1 %9, label %23, label %10, !prof !90

10:                                               ; preds = %7
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !79
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !91
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19, !prof !90

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds i8, ptr %0, i64 %16
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  br label %23

23:                                               ; preds = %7, %19
  %24 = phi ptr [ %22, %19 ], [ null, %7 ]
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = load i64, ptr %1, align 8
  %30 = and i64 %29, 4259839
  %31 = icmp eq i64 %30, 4194445
  br i1 %31, label %124, label %32, !prof !84

32:                                               ; preds = %23
  %33 = load i64, ptr %24, align 8
  %34 = and i64 %33, 4259839
  %35 = icmp eq i64 %34, 4194445
  br i1 %35, label %124, label %36, !prof !84

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %26, ptr noundef %28) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %124, label %39, !prof !84

39:                                               ; preds = %36
  %40 = load i64, ptr %24, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 141
  br i1 %42, label %43, label %124, !prof !85

43:                                               ; preds = %39
  %44 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %24) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %124, !prof !86

46:                                               ; preds = %43
  %47 = load i64, ptr %1, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %53, !prof !87

50:                                               ; preds = %46
  %51 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %124, label %53, !prof !87

53:                                               ; preds = %50, %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #18
  br label %124

54:                                               ; preds = %2
  %55 = icmp eq i32 %6, 5
  br i1 %55, label %56, label %69, !prof !92

56:                                               ; preds = %54
  %57 = zext nneg i32 %6 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !79
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !91
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds i8, ptr %0, i64 %62
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = tail call zeroext i8 @may_propagate_copy(ptr noundef %67, ptr noundef %1), !range !93
  br label %124

69:                                               ; preds = %54
  %70 = load i64, ptr %1, align 8
  %71 = and i64 %70, 4259839
  %72 = icmp eq i64 %71, 4194445
  br i1 %72, label %124, label %73, !prof !92

73:                                               ; preds = %69
  %74 = trunc i32 %5 to i8
  switch i8 %74, label %108 [
    i8 6, label %75
    i8 1, label %116
    i8 8, label %83
  ], !prof !94

75:                                               ; preds = %73
  %76 = zext nneg i32 %6 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !79
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !91
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %109, label %111, !prof !92

83:                                               ; preds = %73
  %84 = zext nneg i32 %6 to i64
  %85 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !79
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !91
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %92

92:                                               ; preds = %91, %83
  %93 = getelementptr inbounds i8, ptr %0, i64 %89
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %0, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -1
  %100 = icmp ult i32 %99, 9
  tail call void @llvm.assume(i1 %100)
  %101 = zext nneg i32 %98 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !79
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !91
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %109, label %111

108:                                              ; preds = %92, %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.1) #18
  unreachable

109:                                              ; preds = %96, %75
  %110 = phi i64 [ %81, %75 ], [ %106, %96 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %111

111:                                              ; preds = %109, %96, %75
  %112 = phi i64 [ %81, %75 ], [ %106, %96 ], [ %110, %109 ]
  %113 = getelementptr inbounds i8, ptr %0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !64
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  br label %116

116:                                              ; preds = %111, %73
  %117 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %73 ], [ %115, %111 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !75
  %119 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !75
  %121 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %118, ptr noundef %120) #18
  %122 = icmp ne i8 %121, 0
  %123 = zext i1 %122 to i8
  br label %124

124:                                              ; preds = %53, %50, %43, %39, %36, %32, %23, %116, %69, %65
  %125 = phi i8 [ %68, %65 ], [ 0, %69 ], [ %123, %116 ], [ 0, %23 ], [ 0, %32 ], [ 0, %36 ], [ 1, %50 ], [ 1, %53 ], [ 1, %43 ], [ 1, %39 ]
  ret i8 %125
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @may_propagate_copy_into_asm(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !63 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 32
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %11, %5, %1
  %18 = phi i8 [ 1, %5 ], [ 1, %1 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @propagate_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !95 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %27, !prof !96

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !99

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !100
  %13 = load ptr, ptr %10, align 8, !tbaa !100
  store ptr %7, ptr %13, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  store ptr %1, ptr %16, align 8, !tbaa !64
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %21, label %20, !prof !102

20:                                               ; preds = %14
  store ptr null, ptr %0, align 8, !tbaa !97
  br label %51

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  store ptr %22, ptr %0, align 8, !tbaa !97
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !100
  %26 = load ptr, ptr %23, align 8, !tbaa !100
  store ptr %0, ptr %26, align 8, !tbaa !97
  store ptr %0, ptr %23, align 8, !tbaa !100
  br label %51

27:                                               ; preds = %2
  %28 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  %29 = load ptr, ptr %0, align 8, !tbaa !97
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !103

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %29, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !100
  %35 = load ptr, ptr %32, align 8, !tbaa !100
  store ptr %29, ptr %35, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  store ptr %28, ptr %38, align 8, !tbaa !64
  %39 = icmp eq ptr %28, null
  br i1 %39, label %44, label %40, !prof !103

40:                                               ; preds = %36
  %41 = load i64, ptr %28, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %45, label %44, !prof !103

44:                                               ; preds = %40, %36
  store ptr null, ptr %0, align 8, !tbaa !97
  br label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 5
  store ptr %46, ptr %0, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 5, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !100
  %50 = load ptr, ptr %47, align 8, !tbaa !100
  store ptr %0, ptr %50, align 8, !tbaa !97
  store ptr %0, ptr %47, align 8, !tbaa !100
  br label %51

51:                                               ; preds = %20, %21, %44, %45
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @replace_exp_1(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !104 !PGOFuncName !105 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %27, !prof !96

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !99

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !100
  %13 = load ptr, ptr %10, align 8, !tbaa !100
  store ptr %7, ptr %13, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  store ptr %1, ptr %16, align 8, !tbaa !64
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %21, label %20, !prof !102

20:                                               ; preds = %14
  store ptr null, ptr %0, align 8, !tbaa !97
  br label %51

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  store ptr %22, ptr %0, align 8, !tbaa !97
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !100
  %26 = load ptr, ptr %23, align 8, !tbaa !100
  store ptr %0, ptr %26, align 8, !tbaa !97
  store ptr %0, ptr %23, align 8, !tbaa !100
  br label %51

27:                                               ; preds = %2
  %28 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  %29 = load ptr, ptr %0, align 8, !tbaa !97
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !103

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %29, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !100
  %35 = load ptr, ptr %32, align 8, !tbaa !100
  store ptr %29, ptr %35, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  store ptr %28, ptr %38, align 8, !tbaa !64
  %39 = icmp eq ptr %28, null
  br i1 %39, label %44, label %40, !prof !103

40:                                               ; preds = %36
  %41 = load i64, ptr %28, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %45, label %44, !prof !103

44:                                               ; preds = %40, %36
  store ptr null, ptr %0, align 8, !tbaa !97
  br label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 5
  store ptr %46, ptr %0, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 5, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !100
  %50 = load ptr, ptr %47, align 8, !tbaa !100
  store ptr %0, ptr %50, align 8, !tbaa !97
  store ptr %0, ptr %47, align 8, !tbaa !100
  br label %51

51:                                               ; preds = %45, %44, %21, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @replace_exp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !104 {
  tail call fastcc void @replace_exp_1(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @propagate_tree_value(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !63 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %2 ]
  store ptr %9, ptr %0, align 8, !tbaa !64
  ret void
}

declare ptr @unsave_expr_now(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @propagate_tree_value_into_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !106 {
  %3 = load ptr, ptr %0, align 1
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %132 [
    i8 6, label %7
    i8 1, label %32
    i8 8, label %91
  ], !prof !109

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %4) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10, !prof !110

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 8
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -10
  %14 = icmp ult i32 %13, -9
  br i1 %14, label %24, label %15, !prof !111

15:                                               ; preds = %10
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !91
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24, !prof !111

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %24

24:                                               ; preds = %15, %23, %10, %7
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %30, label %28, !prof !112

28:                                               ; preds = %24
  %29 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  br label %30

30:                                               ; preds = %24, %28
  %31 = phi ptr [ %29, %28 ], [ %1, %24 ]
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %0, ptr noundef %31) #18
  br label %155

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !64
  %36 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %34, ptr noundef %35) #18
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %42, label %40, !prof !113

40:                                               ; preds = %32
  %41 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  br label %42

42:                                               ; preds = %32, %40
  %43 = phi ptr [ %41, %40 ], [ %1, %32 ]
  %44 = load i32, ptr %4, align 8
  %45 = and i32 %44, 65535
  %46 = or disjoint i32 %45, 6684672
  store i32 %46, ptr %4, align 8
  %47 = and i32 %44, 255
  %48 = add nsw i32 %47, -10
  %49 = icmp ult i32 %48, -9
  br i1 %49, label %54, label %50, !prof !113

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !75
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55, !prof !113

54:                                               ; preds = %50, %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, ptr %4, align 8
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !79
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !91
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66, !prof !113

65:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %55, %65
  %67 = getelementptr inbounds i8, ptr %4, i64 %63
  store ptr %43, ptr %67, align 8, !tbaa !64
  %68 = load i32, ptr %4, align 8
  %69 = and i32 %68, 255
  %70 = add nsw i32 %69, -10
  %71 = icmp ult i32 %70, -9
  br i1 %71, label %76, label %72, !prof !113

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !75
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %77, label %76, !prof !114

76:                                               ; preds = %72, %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, ptr %4, align 8
  %79 = and i32 %78, 255
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !79
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !91
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88, !prof !113

87:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %88

88:                                               ; preds = %77, %87
  %89 = getelementptr inbounds i8, ptr %4, i64 %85
  %90 = getelementptr inbounds ptr, ptr %89, i64 1
  store ptr %36, ptr %90, align 8, !tbaa !64
  br label %155

91:                                               ; preds = %2
  %92 = and i32 %5, 255
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !79
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !91
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %101

101:                                              ; preds = %100, %91
  %102 = getelementptr inbounds i8, ptr %4, i64 %98
  %103 = load ptr, ptr %102, align 8, !tbaa !64
  %104 = icmp eq ptr %103, null
  br i1 %104, label %132, label %105

105:                                              ; preds = %101
  %106 = load i64, ptr %1, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  br label %111

111:                                              ; preds = %105, %109
  %112 = phi ptr [ %110, %109 ], [ %1, %105 ]
  %113 = load i32, ptr %4, align 8
  %114 = and i32 %113, 255
  %115 = add nsw i32 %114, -10
  %116 = icmp ult i32 %115, -9
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = zext nneg i32 %114 to i64
  %119 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !79
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !91
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %126

126:                                              ; preds = %125, %117
  %127 = getelementptr inbounds i8, ptr %4, i64 %123
  %128 = load ptr, ptr %127, align 8, !tbaa !64
  br label %129

129:                                              ; preds = %111, %126
  %130 = phi ptr [ %128, %126 ], [ null, %111 ]
  %131 = tail call ptr @gimple_build_assign_stat(ptr noundef %130, ptr noundef %112) #18
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef %131, ptr noundef nonnull %4) #18
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef %131, i8 noundef zeroext 0) #18
  br label %155

132:                                              ; preds = %2, %101
  %133 = load i32, ptr %4, align 8
  %134 = and i32 %133, 255
  %135 = icmp eq i32 %134, 5
  br i1 %135, label %136, label %154

136:                                              ; preds = %132
  %137 = zext nneg i32 %134 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !79
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %140
  %142 = load i64, ptr %141, align 8, !tbaa !91
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %145

145:                                              ; preds = %144, %136
  %146 = getelementptr inbounds i8, ptr %4, i64 %142
  %147 = load i64, ptr %1, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 141
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #18
  br label %152

152:                                              ; preds = %145, %150
  %153 = phi ptr [ %151, %150 ], [ %1, %145 ]
  store ptr %153, ptr %146, align 8, !tbaa !64
  br label %155

154:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @.str.1) #18
  br label %155

155:                                              ; preds = %88, %152, %154, %129, %30
  ret void
}

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @move_ssa_defining_stmt_for_defs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_copy_prop() #13 !prof !115 !PGOFuncName !116 {
  %1 = load i32, ptr @flag_tree_copy_prop, align 4, !tbaa !79
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_copy_prop() #10 !prof !115 !PGOFuncName !117 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !124

8:                                                ; preds = %0
  %9 = load i32, ptr %6, align 8, !tbaa !125
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i64 [ %10, %8 ], [ 0, %0 ]
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 16) #18
  store ptr %13, ptr @copy_of, align 8, !tbaa !64
  %14 = load ptr, ptr @cfun, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = getelementptr inbounds %struct.gimple_df, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !124

20:                                               ; preds = %11
  %21 = load i32, ptr %18, align 8, !tbaa !125
  %22 = zext i32 %21 to i64
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi i64 [ %22, %20 ], [ 0, %11 ]
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 8) #18
  store ptr %25, ptr @cached_last_copy_of, align 8, !tbaa !64
  %26 = load ptr, ptr @cfun, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !127
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !132
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %345, label %44, !prof !133

35:                                               ; preds = %341, %290
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = load ptr, ptr @cfun, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !127
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = icmp eq ptr %37, %42
  br i1 %43, label %345, label %44, !prof !134, !llvm.loop !135

44:                                               ; preds = %23, %35
  %45 = phi ptr [ %37, %35 ], [ %31, %23 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 10
  %47 = load i32, ptr %46, align 4, !tbaa !136
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !137, !noalias !138
  %50 = and i32 %49, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58, !prof !141

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !75, !noalias !138
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !142

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !143, !noalias !138
  br label %58

58:                                               ; preds = %56, %52, %44
  %59 = phi ptr [ %57, %56 ], [ null, %52 ], [ null, %44 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !142

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !145, !noalias !138
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi ptr [ %62, %61 ], [ null, %58 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %244, label %66, !prof !147

66:                                               ; preds = %63, %240
  %67 = phi ptr [ %242, %240 ], [ %64, %63 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !107
  %69 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %68) #18
  %70 = icmp eq i8 %69, 0
  %71 = load i32, ptr %68, align 8
  br i1 %70, label %74, label %72, !prof !148

72:                                               ; preds = %66
  %73 = or i32 %71, 512
  br label %173

74:                                               ; preds = %66
  %75 = trunc i32 %71 to i8
  switch i8 %75, label %170 [
    i8 16, label %76
    i8 6, label %78
  ], !prof !149

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.gimple_statement_phi, ptr %68, i64 0, i32 3
  br label %139

78:                                               ; preds = %74
  %79 = and i32 %71, 254
  %80 = add nsw i32 %79, -10
  %81 = icmp ult i32 %80, -4
  %82 = and i32 %71, 16384
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %83, %81
  br i1 %84, label %85, label %170, !prof !150

85:                                               ; preds = %78
  br i1 %81, label %90, label %86, !prof !151

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %68, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %170, !prof !152

90:                                               ; preds = %86, %85
  switch i8 %75, label %93 [
    i8 6, label %91
    i8 1, label %91
    i8 8, label %94
  ], !prof !153

91:                                               ; preds = %90, %90
  %92 = lshr i32 %71, 16
  br label %94

93:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %94

94:                                               ; preds = %93, %91, %90
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ], [ 59, %90 ]
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !75
  %99 = icmp eq i8 %98, 3
  br i1 %99, label %100, label %120, !prof !154

100:                                              ; preds = %94
  %101 = load i32, ptr %68, align 8
  %102 = and i32 %101, 255
  %103 = add nsw i32 %102, -1
  %104 = icmp ult i32 %103, 9
  call void @llvm.assume(i1 %104)
  %105 = zext nneg i32 %102 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !79
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !91
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113, !prof !155

112:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %113

113:                                              ; preds = %112, %100
  %114 = getelementptr inbounds i8, ptr %68, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !64
  %117 = load i64, ptr %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, 65535
  br label %120

120:                                              ; preds = %113, %94
  %121 = phi i32 [ %119, %113 ], [ %95, %94 ]
  %122 = icmp eq i32 %121, 141
  br i1 %122, label %123, label %170, !prof !156

123:                                              ; preds = %120
  %124 = load i32, ptr %68, align 8
  %125 = and i32 %124, 255
  %126 = add nsw i32 %125, -1
  %127 = icmp ult i32 %126, 9
  call void @llvm.assume(i1 %127)
  %128 = zext nneg i32 %125 to i64
  %129 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !79
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !91
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136, !prof !157

135:                                              ; preds = %123
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %136

136:                                              ; preds = %135, %123
  %137 = getelementptr inbounds i8, ptr %68, i64 %133
  %138 = getelementptr inbounds ptr, ptr %137, i64 1
  br label %139

139:                                              ; preds = %76, %136
  %140 = phi ptr [ %77, %76 ], [ %138, %136 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = load i64, ptr %141, align 8
  %143 = and i64 %142, 4194304
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %170, !prof !158

145:                                              ; preds = %139
  %146 = load i32, ptr %68, align 8
  %147 = and i32 %146, 255
  %148 = add nsw i32 %147, -10
  %149 = icmp ult i32 %148, -9
  br i1 %149, label %163, label %150, !prof !157

150:                                              ; preds = %145
  %151 = zext nneg i32 %147 to i64
  %152 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !79
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !91
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159, !prof !157

158:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %159

159:                                              ; preds = %158, %150
  %160 = getelementptr inbounds i8, ptr %68, i64 %156
  %161 = getelementptr inbounds ptr, ptr %160, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !64
  br label %163

163:                                              ; preds = %159, %145
  %164 = phi ptr [ %162, %159 ], [ null, %145 ]
  %165 = call i32 @loop_depth_of_name(ptr noundef %164) #18
  %166 = icmp sgt i32 %165, %47
  br i1 %166, label %170, label %167, !prof !157

167:                                              ; preds = %163
  %168 = load i32, ptr %68, align 8
  %169 = or i32 %168, 512
  br label %173

170:                                              ; preds = %78, %86, %120, %74, %163, %139
  %171 = load i32, ptr %68, align 8
  %172 = and i32 %171, -513
  br label %173

173:                                              ; preds = %170, %167, %72
  %174 = phi i32 [ %172, %170 ], [ %169, %167 ], [ %73, %72 ]
  store i32 %174, ptr %68, align 8
  %175 = and i32 %174, 255
  %176 = add nsw i32 %175, -10
  %177 = icmp ult i32 %176, -9
  br i1 %177, label %181, label %178, !prof !159

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %68, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !75
  br label %181

181:                                              ; preds = %178, %173
  %182 = phi ptr [ %180, %178 ], [ null, %173 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184, !prof !160

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.def_optype_d, ptr %182, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !161
  %187 = load ptr, ptr %186, align 8, !tbaa !64
  %188 = load ptr, ptr %182, align 8, !tbaa !163
  br label %189

189:                                              ; preds = %184, %181
  %190 = phi ptr [ %188, %184 ], [ %182, %181 ]
  %191 = phi i8 [ 0, %184 ], [ 1, %181 ]
  %192 = phi ptr [ %187, %184 ], [ null, %181 ]
  br i1 %183, label %240, label %193, !prof !164

193:                                              ; preds = %189
  %194 = load ptr, ptr @cached_last_copy_of, align 8
  %195 = load ptr, ptr @copy_of, align 8
  br label %196

196:                                              ; preds = %193, %235
  %197 = phi ptr [ %192, %193 ], [ %238, %235 ]
  %198 = phi i8 [ %191, %193 ], [ %237, %235 ]
  %199 = phi ptr [ %190, %193 ], [ %236, %235 ]
  %200 = load i32, ptr %68, align 8
  %201 = and i32 %200, 512
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.tree_ssa_name, ptr %197, i64 0, i32 3
  %204 = load i32, ptr %203, align 8, !tbaa !75
  %205 = zext i32 %204 to i64
  br i1 %202, label %206, label %225, !prof !165

206:                                              ; preds = %196
  %207 = getelementptr inbounds %struct.prop_value_d, ptr %195, i64 %205, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !166
  store ptr %197, ptr %207, align 8, !tbaa !166
  %209 = icmp eq ptr %208, %197
  br i1 %209, label %213, label %228, !prof !168

210:                                              ; preds = %213
  %211 = add nuw nsw i32 %215, 1
  %212 = icmp eq i32 %211, 5
  br i1 %212, label %225, label %213, !llvm.loop !169

213:                                              ; preds = %206, %210
  %214 = phi ptr [ %224, %210 ], [ %197, %206 ]
  %215 = phi i32 [ %211, %210 ], [ 0, %206 ]
  %216 = getelementptr inbounds %struct.tree_ssa_name, ptr %214, i64 0, i32 3
  %217 = load i32, ptr %216, align 8, !tbaa !75
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.prop_value_d, ptr %195, i64 %218, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !166
  %221 = icmp eq ptr %220, null
  %222 = icmp eq ptr %220, %214
  %223 = or i1 %221, %222
  %224 = select i1 %221, ptr %214, ptr %220
  br i1 %223, label %225, label %210

225:                                              ; preds = %210, %213, %196
  %226 = phi ptr [ %197, %196 ], [ %197, %210 ], [ %224, %213 ]
  %227 = getelementptr inbounds ptr, ptr %194, i64 %205
  store ptr %226, ptr %227, align 8, !tbaa !64
  br label %228

228:                                              ; preds = %225, %206
  %229 = icmp eq ptr %199, null
  br i1 %229, label %235, label %230, !prof !170

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.def_optype_d, ptr %199, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !161
  %233 = load ptr, ptr %232, align 8, !tbaa !64
  %234 = load ptr, ptr %199, align 8, !tbaa !163
  br label %235

235:                                              ; preds = %230, %228
  %236 = phi ptr [ %234, %230 ], [ %199, %228 ]
  %237 = phi i8 [ %198, %230 ], [ 1, %228 ]
  %238 = phi ptr [ %233, %230 ], [ null, %228 ]
  %239 = icmp eq i8 %237, 0
  br i1 %239, label %196, label %240, !prof !171, !llvm.loop !172

240:                                              ; preds = %235, %189
  %241 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %67, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !173
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %66, !prof !174, !llvm.loop !175

244:                                              ; preds = %240, %63
  %245 = load ptr, ptr @cfun, align 8, !tbaa !64
  %246 = getelementptr inbounds %struct.function, ptr %245, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !176
  %248 = icmp eq ptr %247, null
  br i1 %248, label %290, label %249, !prof !177

249:                                              ; preds = %244
  %250 = load i32, ptr %247, align 8, !tbaa !178
  %251 = and i32 %250, 32
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %290, label %253, !prof !180

253:                                              ; preds = %249
  %254 = icmp eq ptr %45, null
  br label %255

255:                                              ; preds = %253, %288
  %256 = phi i32 [ %289, %288 ], [ 0, %253 ]
  %257 = phi i8 [ %279, %288 ], [ 0, %253 ]
  br i1 %254, label %258, label %259, !prof !181

258:                                              ; preds = %255
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %259

259:                                              ; preds = %258, %255
  %260 = load ptr, ptr %45, align 8, !tbaa !64
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262, !prof !181

262:                                              ; preds = %259
  %263 = load i32, ptr %260, align 8, !tbaa !182
  br label %264

264:                                              ; preds = %262, %259
  %265 = phi i32 [ %263, %262 ], [ 0, %259 ]
  %266 = icmp eq i32 %265, %256
  br i1 %266, label %271, label %267, !prof !184

267:                                              ; preds = %264
  %268 = zext i32 %256 to i64
  %269 = getelementptr inbounds %struct.VEC_edge_base, ptr %260, i64 0, i32 2, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !64
  br label %271

271:                                              ; preds = %267, %264
  %272 = phi ptr [ %270, %267 ], [ null, %264 ]
  br i1 %266, label %290, label %273, !prof !184

273:                                              ; preds = %271
  %274 = load ptr, ptr %272, align 8, !tbaa !185
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !187
  %277 = call zeroext i8 @loop_exit_edge_p(ptr noundef %276, ptr noundef nonnull %272) #18
  %278 = icmp eq i8 %277, 0
  %279 = select i1 %278, i8 %257, i8 1, !prof !188
  %280 = load ptr, ptr %45, align 8, !tbaa !64
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282, !prof !189

282:                                              ; preds = %273
  %283 = load i32, ptr %280, align 8, !tbaa !182
  br label %284

284:                                              ; preds = %282, %273
  %285 = phi i32 [ %283, %282 ], [ 0, %273 ]
  %286 = icmp ult i32 %256, %285
  br i1 %286, label %288, label %287, !prof !188

287:                                              ; preds = %284
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %288

288:                                              ; preds = %287, %284
  %289 = add i32 %256, 1
  br label %255, !llvm.loop !190

290:                                              ; preds = %271, %249, %244
  %291 = phi i8 [ 0, %249 ], [ 0, %244 ], [ %257, %271 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %45) #18
  %292 = load ptr, ptr %1, align 8, !tbaa.struct !191
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %293 = icmp eq ptr %292, null
  br i1 %293, label %35, label %294, !prof !192

294:                                              ; preds = %290
  %295 = icmp ne i8 %291, 0
  br label %296

296:                                              ; preds = %294, %341
  %297 = phi ptr [ %292, %294 ], [ %343, %341 ]
  %298 = load ptr, ptr %297, align 8, !tbaa !107
  %299 = getelementptr inbounds %struct.gimple_statement_phi, ptr %298, i64 0, i32 3
  %300 = load ptr, ptr %299, align 8, !tbaa !75
  %301 = call zeroext i8 @is_gimple_reg(ptr noundef %300) #18
  %302 = icmp eq i8 %301, 0
  %303 = select i1 %302, i1 true, i1 %295, !prof !193
  %304 = load i32, ptr %298, align 8
  %305 = and i32 %304, -513
  %306 = select i1 %303, i32 0, i32 512, !prof !193
  %307 = or disjoint i32 %305, %306
  store i32 %307, ptr %298, align 8
  br i1 %303, label %308, label %335, !prof !193

308:                                              ; preds = %296
  %309 = getelementptr inbounds %struct.tree_ssa_name, ptr %300, i64 0, i32 3
  %310 = load i32, ptr %309, align 8, !tbaa !75
  %311 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds %struct.prop_value_d, ptr %311, i64 %312, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !166
  store ptr %300, ptr %313, align 8, !tbaa !166
  %315 = icmp eq ptr %314, %300
  br i1 %315, label %319, label %341, !prof !194

316:                                              ; preds = %319
  %317 = add nuw nsw i32 %321, 1
  %318 = icmp eq i32 %317, 5
  br i1 %318, label %331, label %319, !llvm.loop !169

319:                                              ; preds = %308, %316
  %320 = phi ptr [ %330, %316 ], [ %300, %308 ]
  %321 = phi i32 [ %317, %316 ], [ 0, %308 ]
  %322 = getelementptr inbounds %struct.tree_ssa_name, ptr %320, i64 0, i32 3
  %323 = load i32, ptr %322, align 8, !tbaa !75
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.prop_value_d, ptr %311, i64 %324, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !166
  %327 = icmp eq ptr %326, null
  %328 = icmp eq ptr %326, %320
  %329 = or i1 %327, %328
  %330 = select i1 %327, ptr %320, ptr %326
  br i1 %329, label %331, label %316

331:                                              ; preds = %319, %316
  %332 = phi ptr [ %330, %319 ], [ %300, %316 ]
  %333 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !64
  %334 = getelementptr inbounds ptr, ptr %333, i64 %312
  store ptr %332, ptr %334, align 8, !tbaa !64
  br label %341

335:                                              ; preds = %296
  %336 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !64
  %337 = getelementptr inbounds %struct.tree_ssa_name, ptr %300, i64 0, i32 3
  %338 = load i32, ptr %337, align 8, !tbaa !75
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds ptr, ptr %336, i64 %339
  store ptr %300, ptr %340, align 8, !tbaa !64
  br label %341

341:                                              ; preds = %335, %331, %308
  %342 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %297, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !173
  %344 = icmp eq ptr %343, null
  br i1 %344, label %35, label %296, !prof !195, !llvm.loop !196

345:                                              ; preds = %35, %23
  call void @ssa_propagate(ptr noundef nonnull @copy_prop_visit_stmt, ptr noundef nonnull @copy_prop_visit_phi_node) #18
  %346 = load ptr, ptr @cfun, align 8, !tbaa !64
  %347 = getelementptr inbounds %struct.function, ptr %346, i64 0, i32 3
  %348 = load ptr, ptr %347, align 8, !tbaa !118
  %349 = getelementptr inbounds %struct.gimple_df, ptr %348, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !120
  %351 = icmp eq ptr %350, null
  br i1 %351, label %355, label %352, !prof !124

352:                                              ; preds = %345
  %353 = load i32, ptr %350, align 8, !tbaa !125
  %354 = zext i32 %353 to i64
  br label %355

355:                                              ; preds = %352, %345
  %356 = phi i64 [ %354, %352 ], [ 0, %345 ]
  %357 = call ptr @xcalloc(i64 noundef %356, i64 noundef 16) #18
  br label %358

358:                                              ; preds = %416, %355
  %359 = phi i64 [ 1, %355 ], [ %417, %416 ]
  %360 = load ptr, ptr @cfun, align 8, !tbaa !64
  %361 = getelementptr inbounds %struct.function, ptr %360, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !118
  %363 = getelementptr inbounds %struct.gimple_df, ptr %362, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !120
  %365 = icmp eq ptr %364, null
  br i1 %365, label %368, label %366, !prof !197

366:                                              ; preds = %358
  %367 = load i32, ptr %364, align 8, !tbaa !125
  br label %368

368:                                              ; preds = %366, %358
  %369 = phi i32 [ %367, %366 ], [ 0, %358 ]
  %370 = zext i32 %369 to i64
  %371 = icmp ult i64 %359, %370
  br i1 %371, label %372, label %418, !prof !198

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.VEC_tree_base, ptr %364, i64 0, i32 2, i64 %359
  %374 = load ptr, ptr %373, align 8, !tbaa !64
  %375 = icmp eq ptr %374, null
  br i1 %375, label %416, label %376, !prof !199

376:                                              ; preds = %372
  %377 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %378 = getelementptr inbounds %struct.prop_value_d, ptr %377, i64 %359, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !166
  %380 = icmp eq ptr %379, null
  %381 = icmp eq ptr %379, %374
  %382 = or i1 %380, %381
  br i1 %382, label %416, label %386, !prof !200

383:                                              ; preds = %386
  %384 = add nuw nsw i32 %388, 1
  %385 = icmp eq i32 %384, 5
  br i1 %385, label %398, label %386, !prof !201, !llvm.loop !169

386:                                              ; preds = %376, %383
  %387 = phi ptr [ %397, %383 ], [ %374, %376 ]
  %388 = phi i32 [ %384, %383 ], [ 0, %376 ]
  %389 = getelementptr inbounds %struct.tree_ssa_name, ptr %387, i64 0, i32 3
  %390 = load i32, ptr %389, align 8, !tbaa !75
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.prop_value_d, ptr %377, i64 %391, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !166
  %394 = icmp eq ptr %393, null
  %395 = icmp eq ptr %393, %387
  %396 = or i1 %394, %395
  %397 = select i1 %394, ptr %387, ptr %393, !prof !201
  br i1 %396, label %398, label %383, !prof !202

398:                                              ; preds = %386, %383
  %399 = phi ptr [ %397, %386 ], [ %374, %383 ]
  %400 = getelementptr inbounds %struct.prop_value_d, ptr %357, i64 %359, i32 1
  store ptr %399, ptr %400, align 8, !tbaa !166
  %401 = icmp eq ptr %399, %374
  br i1 %401, label %416, label %402, !prof !157

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.tree_common, ptr %374, i64 0, i32 2
  %404 = load ptr, ptr %403, align 8, !tbaa !75
  %405 = load i64, ptr %404, align 8
  %406 = trunc i64 %405 to i16
  switch i16 %406, label %416 [
    i16 10, label %407
    i16 12, label %407
  ], !prof !203

407:                                              ; preds = %402, %402
  %408 = getelementptr inbounds %struct.tree_ssa_name, ptr %374, i64 0, i32 4
  %409 = load ptr, ptr %408, align 8, !tbaa !75
  %410 = icmp eq ptr %409, null
  br i1 %410, label %416, label %411, !prof !204

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.tree_ssa_name, ptr %399, i64 0, i32 4
  %413 = load ptr, ptr %412, align 8, !tbaa !75
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %416, !prof !204

415:                                              ; preds = %411
  call void @duplicate_ssa_name_ptr_info(ptr noundef %399, ptr noundef nonnull %409) #18
  br label %416

416:                                              ; preds = %407, %398, %415, %411, %402, %376, %372
  %417 = add nuw nsw i64 %359, 1
  br label %358, !llvm.loop !205

418:                                              ; preds = %368
  %419 = call zeroext i8 @substitute_and_fold(ptr noundef %357, ptr noundef null) #18
  %420 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !64
  call void @free(ptr noundef %420)
  %421 = load ptr, ptr @copy_of, align 8, !tbaa !64
  call void @free(ptr noundef %421)
  call void @free(ptr noundef %357)
  ret i32 0
}

declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @copy_prop_visit_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #9 !prof !206 !PGOFuncName !207 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !208

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !79
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %13) #18
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %15 = tail call i32 @fputc(i32 10, ptr %14)
  br label %16

16:                                               ; preds = %10, %6, %3
  %17 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %210, label %19, !prof !209

19:                                               ; preds = %16
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -1
  %23 = icmp ult i32 %22, 9
  tail call void @llvm.assume(i1 %23)
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !79
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !91
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32, !prof !210

31:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %32

32:                                               ; preds = %31, %19
  %33 = getelementptr inbounds i8, ptr %0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %210, !prof !211

38:                                               ; preds = %32
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -1
  %42 = icmp ult i32 %41, 9
  tail call void @llvm.assume(i1 %42)
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !79
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !91
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51, !prof !210

50:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %51

51:                                               ; preds = %50, %38
  %52 = getelementptr inbounds i8, ptr %0, i64 %48
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %58, label %210, !prof !211

58:                                               ; preds = %51
  %59 = load i32, ptr %0, align 8
  %60 = and i32 %59, 255
  %61 = add nsw i32 %60, -10
  %62 = icmp ult i32 %61, -9
  br i1 %62, label %75, label %63, !prof !210

63:                                               ; preds = %58
  %64 = zext nneg i32 %60 to i64
  %65 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !79
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !91
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72, !prof !210

71:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %72

72:                                               ; preds = %71, %63
  %73 = getelementptr inbounds i8, ptr %0, i64 %69
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  br label %75

75:                                               ; preds = %72, %58
  %76 = phi ptr [ %74, %72 ], [ null, %58 ]
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %94, label %81, !prof !210

81:                                               ; preds = %75
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !79
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !91
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90, !prof !210

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !64
  br label %94

94:                                               ; preds = %90, %75
  %95 = phi ptr [ %93, %90 ], [ null, %75 ]
  %96 = load i32, ptr %0, align 8
  %97 = trunc i32 %96 to i8
  switch i8 %97, label %100 [
    i8 6, label %98
    i8 1, label %98
    i8 8, label %101
  ], !prof !212

98:                                               ; preds = %94, %94
  %99 = lshr i32 %96, 16
  br label %101

100:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %101

101:                                              ; preds = %100, %98, %94
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ], [ 59, %94 ]
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !75
  %106 = icmp eq i8 %105, 3
  br i1 %106, label %107, label %127, !prof !211

107:                                              ; preds = %101
  %108 = load i32, ptr %0, align 8
  %109 = and i32 %108, 255
  %110 = add nsw i32 %109, -1
  %111 = icmp ult i32 %110, 9
  tail call void @llvm.assume(i1 %111)
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !79
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !91
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120, !prof !210

119:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %120

120:                                              ; preds = %119, %107
  %121 = getelementptr inbounds i8, ptr %0, i64 %117
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !64
  %124 = load i64, ptr %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = and i32 %125, 65535
  br label %127

127:                                              ; preds = %120, %101
  %128 = phi i32 [ %126, %120 ], [ %102, %101 ]
  %129 = icmp eq i32 %128, 141
  br i1 %129, label %131, label %130, !prof !211

130:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 483, ptr noundef nonnull @.str.1) #18
  br label %131

131:                                              ; preds = %130, %127
  %132 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !75
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.prop_value_d, ptr %132, i64 %135, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !166
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %145, !prof !210

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = tail call fastcc zeroext i8 @stmt_may_generate_copy(ptr noundef %141), !range !93
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store ptr %95, ptr %136, align 8, !tbaa !166
  br label %145

145:                                              ; preds = %144, %139, %131
  %146 = load i64, ptr %76, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 141
  br i1 %148, label %149, label %336, !prof !211

149:                                              ; preds = %145
  %150 = load i64, ptr %95, align 8
  %151 = and i64 %150, 4259839
  %152 = icmp eq i64 %151, 4194445
  %153 = and i64 %146, 4194445
  %154 = icmp eq i64 %153, 4194445
  %155 = or i1 %154, %152
  br i1 %155, label %336, label %156, !prof !213

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !75
  %159 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !75
  %161 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %160, ptr noundef %158) #18
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %336, label %163, !prof !84

163:                                              ; preds = %156
  %164 = load i64, ptr %76, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 141
  br i1 %166, label %167, label %178, !prof !85

167:                                              ; preds = %163
  %168 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %76) #18
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %178, !prof !86

170:                                              ; preds = %167
  %171 = load i64, ptr %95, align 8
  %172 = and i64 %171, 65535
  %173 = icmp eq i64 %172, 141
  br i1 %173, label %174, label %177, !prof !87

174:                                              ; preds = %170
  %175 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %95) #18
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %178, label %177, !prof !87

177:                                              ; preds = %174, %170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #18
  br label %178

178:                                              ; preds = %177, %174, %167, %163
  store ptr %76, ptr %2, align 8, !tbaa !64
  %179 = load ptr, ptr %136, align 8, !tbaa !166
  %180 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 3
  %181 = load i32, ptr %180, align 8, !tbaa !75
  %182 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds %struct.prop_value_d, ptr %182, i64 %183, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !166
  store ptr %179, ptr %184, align 8, !tbaa !166
  %186 = icmp eq ptr %185, %179
  br i1 %186, label %187, label %336, !prof !214

187:                                              ; preds = %178
  %188 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !64
  %189 = getelementptr inbounds ptr, ptr %188, i64 %183
  %190 = load ptr, ptr %189, align 8, !tbaa !64
  br label %194

191:                                              ; preds = %194
  %192 = add nuw nsw i32 %196, 1
  %193 = icmp eq i32 %192, 5
  br i1 %193, label %206, label %194, !prof !215, !llvm.loop !169

194:                                              ; preds = %187, %191
  %195 = phi ptr [ %76, %187 ], [ %205, %191 ]
  %196 = phi i32 [ 0, %187 ], [ %192, %191 ]
  %197 = getelementptr inbounds %struct.tree_ssa_name, ptr %195, i64 0, i32 3
  %198 = load i32, ptr %197, align 8, !tbaa !75
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.prop_value_d, ptr %182, i64 %199, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !166
  %202 = icmp eq ptr %201, null
  %203 = icmp eq ptr %201, %195
  %204 = or i1 %202, %203
  %205 = select i1 %202, ptr %195, ptr %201, !prof !215
  br i1 %204, label %206, label %191, !prof !216

206:                                              ; preds = %194, %191
  %207 = phi ptr [ %205, %194 ], [ %76, %191 ]
  store ptr %207, ptr %189, align 8, !tbaa !64
  %208 = icmp ne ptr %190, %207
  %209 = zext i1 %208 to i32
  br label %336

210:                                              ; preds = %51, %32, %16
  %211 = load i32, ptr %0, align 8
  %212 = and i32 %211, 255
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %336, !prof !217

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !75
  %217 = zext nneg i32 %212 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !79
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !91
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225, !prof !218

224:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %225

225:                                              ; preds = %224, %214
  %226 = getelementptr inbounds i8, ptr %0, i64 %222
  %227 = load ptr, ptr %226, align 8, !tbaa !64
  %228 = load i32, ptr %0, align 8
  %229 = and i32 %228, 255
  %230 = add nsw i32 %229, -10
  %231 = icmp ult i32 %230, -9
  br i1 %231, label %245, label %232, !prof !218

232:                                              ; preds = %225
  %233 = zext nneg i32 %229 to i64
  %234 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !79
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !91
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241, !prof !218

240:                                              ; preds = %232
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %241

241:                                              ; preds = %240, %232
  %242 = getelementptr inbounds i8, ptr %0, i64 %238
  %243 = getelementptr inbounds ptr, ptr %242, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !64
  br label %245

245:                                              ; preds = %241, %225
  %246 = phi ptr [ %244, %241 ], [ null, %225 ]
  %247 = load i64, ptr %227, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 141
  br i1 %249, label %250, label %316, !prof !219

250:                                              ; preds = %245
  %251 = load i64, ptr %246, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 141
  br i1 %253, label %254, label %316, !prof !218

254:                                              ; preds = %250
  %255 = load ptr, ptr @copy_of, align 8, !tbaa !64
  br label %259

256:                                              ; preds = %259
  %257 = add nuw nsw i32 %261, 1
  %258 = icmp eq i32 %257, 5
  br i1 %258, label %271, label %259, !llvm.loop !169

259:                                              ; preds = %254, %256
  %260 = phi ptr [ %227, %254 ], [ %270, %256 ]
  %261 = phi i32 [ 0, %254 ], [ %257, %256 ]
  %262 = getelementptr inbounds %struct.tree_ssa_name, ptr %260, i64 0, i32 3
  %263 = load i32, ptr %262, align 8, !tbaa !75
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.prop_value_d, ptr %255, i64 %264, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !166
  %267 = icmp eq ptr %266, null
  %268 = icmp eq ptr %266, %260
  %269 = or i1 %267, %268
  %270 = select i1 %267, ptr %260, ptr %266
  br i1 %269, label %271, label %256

271:                                              ; preds = %259, %256
  %272 = phi ptr [ %270, %259 ], [ %227, %256 ]
  %273 = load ptr, ptr @copy_of, align 8, !tbaa !64
  br label %277

274:                                              ; preds = %277
  %275 = add nuw nsw i32 %279, 1
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %289, label %277, !llvm.loop !169

277:                                              ; preds = %271, %274
  %278 = phi ptr [ %246, %271 ], [ %288, %274 ]
  %279 = phi i32 [ 0, %271 ], [ %275, %274 ]
  %280 = getelementptr inbounds %struct.tree_ssa_name, ptr %278, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !75
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.prop_value_d, ptr %273, i64 %282, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !166
  %285 = icmp eq ptr %284, null
  %286 = icmp eq ptr %284, %278
  %287 = or i1 %285, %286
  %288 = select i1 %285, ptr %278, ptr %284
  br i1 %287, label %289, label %274

289:                                              ; preds = %277, %274
  %290 = phi ptr [ %288, %277 ], [ %246, %274 ]
  %291 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %292 = icmp eq ptr %291, null
  br i1 %292, label %302, label %293

293:                                              ; preds = %289
  %294 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %295 = and i32 %294, 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %293
  %298 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr nonnull %291)
  %299 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %300 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 10, i64 1, ptr %299)
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !64
  tail call void @print_gimple_stmt(ptr noundef %301, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #18
  br label %302

302:                                              ; preds = %297, %293, %289
  %303 = icmp eq ptr %272, %290
  br i1 %303, label %304, label %316

304:                                              ; preds = %302
  %305 = load i32, ptr %0, align 8
  %306 = lshr i32 %305, 16
  %307 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !64
  %308 = tail call ptr @fold_binary_loc(i32 noundef %216, i32 noundef %306, ptr noundef %307, ptr noundef %272, ptr noundef %290) #18
  %309 = icmp eq ptr %308, null
  br i1 %309, label %316, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %312 = load ptr, ptr %311, align 8, !tbaa !75
  %313 = tail call ptr @find_taken_edge(ptr noundef %312, ptr noundef nonnull %308) #18
  store ptr %313, ptr %1, align 8, !tbaa !64
  %314 = icmp eq ptr %313, null
  %315 = select i1 %314, i32 2, i32 1
  br label %316

316:                                              ; preds = %310, %304, %302, %250, %245
  %317 = phi i32 [ 2, %302 ], [ 2, %250 ], [ 2, %245 ], [ %315, %310 ], [ 2, %304 ]
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %319 = icmp eq ptr %318, null
  br i1 %319, label %336, label %320, !prof !219

320:                                              ; preds = %316
  %321 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %322 = and i32 %321, 8
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %336, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr %1, align 8, !tbaa !64
  %326 = icmp eq ptr %325, null
  br i1 %326, label %336, label %327

327:                                              ; preds = %324
  %328 = load ptr, ptr %325, align 8, !tbaa !185
  %329 = getelementptr inbounds %struct.basic_block_def, ptr %328, i64 0, i32 9
  %330 = load i32, ptr %329, align 8, !tbaa !220
  %331 = getelementptr inbounds %struct.edge_def, ptr %325, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !221
  %333 = getelementptr inbounds %struct.basic_block_def, ptr %332, i64 0, i32 9
  %334 = load i32, ptr %333, align 8, !tbaa !220
  %335 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %318, ptr noundef nonnull @.str.11, i32 noundef %330, i32 noundef %334)
  br label %336

336:                                              ; preds = %149, %156, %327, %324, %320, %316, %145, %206, %178, %210
  %337 = phi i32 [ 2, %210 ], [ 2, %145 ], [ %209, %206 ], [ 1, %178 ], [ %317, %316 ], [ %317, %320 ], [ %317, %324 ], [ %317, %327 ], [ 2, %156 ], [ 2, %149 ]
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %411, !prof !209

339:                                              ; preds = %336
  %340 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %341 = icmp eq ptr %340, null
  br i1 %341, label %348, label %342, !prof !222

342:                                              ; preds = %339
  %343 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %344 = and i32 %343, 8
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %342
  %347 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 32, i64 1, ptr nonnull %340)
  br label %348

348:                                              ; preds = %346, %342, %339
  %349 = load i32, ptr %0, align 8
  %350 = and i32 %349, 255
  %351 = add nsw i32 %350, -10
  %352 = icmp ult i32 %351, -9
  br i1 %352, label %356, label %353, !prof !223

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !75
  br label %356

356:                                              ; preds = %348, %353
  %357 = phi ptr [ %355, %353 ], [ null, %348 ]
  %358 = icmp eq ptr %357, null
  br i1 %358, label %364, label %359, !prof !222

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.def_optype_d, ptr %357, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !161
  %362 = load ptr, ptr %361, align 8, !tbaa !64
  %363 = load ptr, ptr %357, align 8, !tbaa !163
  br label %364

364:                                              ; preds = %356, %359
  %365 = phi ptr [ %363, %359 ], [ %357, %356 ]
  %366 = phi i8 [ 0, %359 ], [ 1, %356 ]
  %367 = phi ptr [ %362, %359 ], [ null, %356 ]
  br i1 %358, label %411, label %368, !prof !224

368:                                              ; preds = %364
  %369 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %370 = load ptr, ptr @cached_last_copy_of, align 8
  br label %371

371:                                              ; preds = %368, %406
  %372 = phi ptr [ %367, %368 ], [ %409, %406 ]
  %373 = phi i8 [ %366, %368 ], [ %408, %406 ]
  %374 = phi ptr [ %365, %368 ], [ %407, %406 ]
  %375 = getelementptr inbounds %struct.tree_ssa_name, ptr %372, i64 0, i32 3
  %376 = load i32, ptr %375, align 8, !tbaa !75
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.prop_value_d, ptr %369, i64 %377, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !166
  store ptr %372, ptr %378, align 8, !tbaa !166
  %380 = icmp eq ptr %379, %372
  br i1 %380, label %384, label %399

381:                                              ; preds = %384
  %382 = add nuw nsw i32 %386, 1
  %383 = icmp eq i32 %382, 5
  br i1 %383, label %396, label %384, !llvm.loop !169

384:                                              ; preds = %371, %381
  %385 = phi ptr [ %395, %381 ], [ %372, %371 ]
  %386 = phi i32 [ %382, %381 ], [ 0, %371 ]
  %387 = getelementptr inbounds %struct.tree_ssa_name, ptr %385, i64 0, i32 3
  %388 = load i32, ptr %387, align 8, !tbaa !75
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.prop_value_d, ptr %369, i64 %389, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !166
  %392 = icmp eq ptr %391, null
  %393 = icmp eq ptr %391, %385
  %394 = or i1 %392, %393
  %395 = select i1 %392, ptr %385, ptr %391
  br i1 %394, label %396, label %381

396:                                              ; preds = %384, %381
  %397 = phi ptr [ %395, %384 ], [ %372, %381 ]
  %398 = getelementptr inbounds ptr, ptr %370, i64 %377
  store ptr %397, ptr %398, align 8, !tbaa !64
  br label %399

399:                                              ; preds = %396, %371
  %400 = icmp eq ptr %374, null
  br i1 %400, label %406, label %401

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.def_optype_d, ptr %374, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !161
  %404 = load ptr, ptr %403, align 8, !tbaa !64
  %405 = load ptr, ptr %374, align 8, !tbaa !163
  br label %406

406:                                              ; preds = %399, %401
  %407 = phi ptr [ %405, %401 ], [ %374, %399 ]
  %408 = phi i8 [ %373, %401 ], [ 1, %399 ]
  %409 = phi ptr [ %404, %401 ], [ null, %399 ]
  %410 = icmp eq i8 %408, 0
  br i1 %410, label %371, label %411, !prof !225, !llvm.loop !226

411:                                              ; preds = %406, %364, %336
  ret i32 %337
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_prop_visit_phi_node(ptr noundef %0) #10 !prof !227 !PGOFuncName !228 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !229

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 20, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !79
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %13) #18
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %15 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %14)
  br label %16

16:                                               ; preds = %10, %6, %1
  %17 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %157, label %20, !prof !230

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  br label %28

23:                                               ; preds = %153
  %24 = add nuw nsw i64 %29, 1
  %25 = load i32, ptr %17, align 4, !tbaa !75
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %157, !prof !231, !llvm.loop !232

28:                                               ; preds = %20, %23
  %29 = phi i64 [ 0, %20 ], [ %24, %23 ]
  %30 = phi ptr [ null, %20 ], [ %154, %23 ]
  %31 = load i32, ptr %21, align 8, !tbaa !75
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %35, !prof !233

34:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %35

35:                                               ; preds = %28, %34
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %29, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = load ptr, ptr %22, align 8, !tbaa !75
  %40 = load ptr, ptr %39, align 8, !tbaa !234, !nonnull !235, !noundef !235
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 %29
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !236
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %153, label %47, !prof !237

47:                                               ; preds = %35
  %48 = load i64, ptr %38, align 8
  %49 = and i64 %48, 4259839
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %153, !prof !238

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #18
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54, !prof !239

54:                                               ; preds = %51
  %55 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %38) #18
  %56 = tail call i32 @loop_depth_of_name(ptr noundef %3) #18
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %153, label %58, !prof !239

58:                                               ; preds = %54, %51
  %59 = icmp eq ptr %38, %3
  br i1 %59, label %153, label %60, !prof !239

60:                                               ; preds = %58
  %61 = load ptr, ptr @copy_of, align 8, !tbaa !64
  br label %65

62:                                               ; preds = %65
  %63 = add nuw nsw i32 %67, 1
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %77, label %65, !prof !240, !llvm.loop !169

65:                                               ; preds = %60, %62
  %66 = phi ptr [ %38, %60 ], [ %76, %62 ]
  %67 = phi i32 [ 0, %60 ], [ %63, %62 ]
  %68 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !75
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.prop_value_d, ptr %61, i64 %70, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !166
  %73 = icmp eq ptr %72, null
  %74 = icmp eq ptr %72, %66
  %75 = or i1 %73, %74
  %76 = select i1 %73, ptr %66, ptr %72, !prof !240
  br i1 %75, label %77, label %62, !prof !241

77:                                               ; preds = %62, %65
  %78 = phi ptr [ %76, %65 ], [ %38, %62 ]
  %79 = icmp eq ptr %78, %3
  br i1 %79, label %153, label %80, !prof !239

80:                                               ; preds = %77
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83, !prof !242

83:                                               ; preds = %80
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = trunc i64 %29 to i32
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %81, ptr noundef nonnull @.str.14, i32 noundef %88)
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !64
  tail call fastcc void @dump_copy_of(ptr noundef %90, ptr noundef nonnull %38)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %92 = tail call i32 @fputc(i32 10, ptr %91)
  br label %93

93:                                               ; preds = %87, %83, %80
  %94 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %95 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !75
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.prop_value_d, ptr %94, i64 %97, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !166
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %107, !prof !239

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  %104 = tail call fastcc zeroext i8 @stmt_may_generate_copy(ptr noundef %103), !range !93
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store ptr %38, ptr %98, align 8, !tbaa !166
  br label %107

107:                                              ; preds = %93, %101, %106
  %108 = icmp eq ptr %30, null
  br i1 %108, label %111, label %109, !prof !243

109:                                              ; preds = %107
  %110 = load ptr, ptr @copy_of, align 8, !tbaa !64
  br label %118

111:                                              ; preds = %107
  %112 = load ptr, ptr %98, align 8, !tbaa !166
  %113 = icmp eq ptr %112, null
  %114 = select i1 %113, ptr %38, ptr %112, !prof !244
  br label %153

115:                                              ; preds = %118
  %116 = add nuw nsw i32 %120, 1
  %117 = icmp eq i32 %116, 5
  br i1 %117, label %130, label %118, !prof !245, !llvm.loop !169

118:                                              ; preds = %109, %115
  %119 = phi ptr [ %30, %109 ], [ %129, %115 ]
  %120 = phi i32 [ 0, %109 ], [ %116, %115 ]
  %121 = getelementptr inbounds %struct.tree_ssa_name, ptr %119, i64 0, i32 3
  %122 = load i32, ptr %121, align 8, !tbaa !75
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.prop_value_d, ptr %110, i64 %123, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !166
  %126 = icmp eq ptr %125, null
  %127 = icmp eq ptr %125, %119
  %128 = or i1 %126, %127
  %129 = select i1 %126, ptr %119, ptr %125, !prof !245
  br i1 %128, label %130, label %115, !prof !246

130:                                              ; preds = %115, %118
  %131 = phi ptr [ %129, %118 ], [ %30, %115 ]
  %132 = load ptr, ptr @copy_of, align 8, !tbaa !64
  br label %136

133:                                              ; preds = %136
  %134 = add nuw nsw i32 %138, 1
  %135 = icmp eq i32 %134, 5
  br i1 %135, label %148, label %136, !prof !247, !llvm.loop !169

136:                                              ; preds = %130, %133
  %137 = phi ptr [ %38, %130 ], [ %147, %133 ]
  %138 = phi i32 [ 0, %130 ], [ %134, %133 ]
  %139 = getelementptr inbounds %struct.tree_ssa_name, ptr %137, i64 0, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !75
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.prop_value_d, ptr %132, i64 %141, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !166
  %144 = icmp eq ptr %143, null
  %145 = icmp eq ptr %143, %137
  %146 = or i1 %144, %145
  %147 = select i1 %144, ptr %137, ptr %143, !prof !247
  br i1 %146, label %148, label %133, !prof !248

148:                                              ; preds = %133, %136
  %149 = phi ptr [ %147, %136 ], [ %38, %133 ]
  %150 = icmp eq ptr %131, %149
  %151 = select i1 %150, ptr %30, ptr %3, !prof !249
  %152 = select i1 %150, i32 0, i32 2, !prof !249
  br label %153

153:                                              ; preds = %77, %58, %148, %54, %47, %35, %111
  %154 = phi ptr [ %114, %111 ], [ %30, %35 ], [ %3, %47 ], [ %3, %54 ], [ %151, %148 ], [ %30, %58 ], [ %30, %77 ]
  %155 = phi i32 [ 4, %111 ], [ 4, %35 ], [ 2, %47 ], [ 2, %54 ], [ %152, %148 ], [ 4, %58 ], [ 4, %77 ]
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %23, !prof !250

157:                                              ; preds = %23, %153, %16
  %158 = phi ptr [ null, %16 ], [ %154, %153 ], [ %154, %23 ]
  %159 = icmp eq ptr %158, null
  br i1 %159, label %223, label %160, !prof !251

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !75
  %163 = getelementptr inbounds %struct.tree_common, ptr %158, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !75
  %165 = load i64, ptr %158, align 8
  %166 = and i64 %165, 4259839
  %167 = icmp eq i64 %166, 4194445
  br i1 %167, label %223, label %168, !prof !84

168:                                              ; preds = %160
  %169 = load i64, ptr %3, align 8
  %170 = and i64 %169, 4259839
  %171 = icmp eq i64 %170, 4194445
  br i1 %171, label %223, label %172, !prof !84

172:                                              ; preds = %168
  %173 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %162, ptr noundef %164) #18
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %223, label %175, !prof !84

175:                                              ; preds = %172
  %176 = load i64, ptr %3, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 141
  br i1 %178, label %179, label %190, !prof !85

179:                                              ; preds = %175
  %180 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #18
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %190, !prof !86

182:                                              ; preds = %179
  %183 = load i64, ptr %158, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 141
  br i1 %185, label %186, label %189, !prof !87

186:                                              ; preds = %182
  %187 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %158) #18
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189, !prof !87

189:                                              ; preds = %186, %182
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #18
  br label %190

190:                                              ; preds = %189, %186, %179, %175
  %191 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !75
  %193 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %194 = zext i32 %192 to i64
  %195 = getelementptr inbounds %struct.prop_value_d, ptr %193, i64 %194, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !166
  store ptr %158, ptr %195, align 8, !tbaa !166
  %197 = icmp eq ptr %196, %158
  br i1 %197, label %198, label %220, !prof !252

198:                                              ; preds = %190
  %199 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !64
  %200 = getelementptr inbounds ptr, ptr %199, i64 %194
  %201 = load ptr, ptr %200, align 8, !tbaa !64
  br label %205

202:                                              ; preds = %205
  %203 = add nuw nsw i32 %207, 1
  %204 = icmp eq i32 %203, 5
  br i1 %204, label %217, label %205, !prof !253, !llvm.loop !169

205:                                              ; preds = %198, %202
  %206 = phi ptr [ %3, %198 ], [ %216, %202 ]
  %207 = phi i32 [ 0, %198 ], [ %203, %202 ]
  %208 = getelementptr inbounds %struct.tree_ssa_name, ptr %206, i64 0, i32 3
  %209 = load i32, ptr %208, align 8, !tbaa !75
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.prop_value_d, ptr %193, i64 %210, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !166
  %213 = icmp eq ptr %212, null
  %214 = icmp eq ptr %212, %206
  %215 = or i1 %213, %214
  %216 = select i1 %213, ptr %206, ptr %212, !prof !253
  br i1 %215, label %217, label %202, !prof !254

217:                                              ; preds = %205, %202
  %218 = phi ptr [ %216, %205 ], [ %3, %202 ]
  store ptr %218, ptr %200, align 8, !tbaa !64
  %219 = icmp eq ptr %201, %218
  br i1 %219, label %223, label %220, !prof !255

220:                                              ; preds = %190, %217
  %221 = icmp eq ptr %158, %3
  %222 = select i1 %221, i32 2, i32 1, !prof !256
  br label %223

223:                                              ; preds = %160, %168, %172, %157, %217, %220
  %224 = phi i32 [ %222, %220 ], [ 0, %217 ], [ 0, %157 ], [ 0, %172 ], [ 0, %168 ], [ 0, %160 ]
  %225 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %226 = icmp eq ptr %225, null
  br i1 %226, label %246, label %227, !prof !229

227:                                              ; preds = %223
  %228 = load i32, ptr @dump_flags, align 4, !tbaa !79
  %229 = and i32 %228, 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %227
  %232 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 10, i64 1, ptr nonnull %225)
  %233 = load ptr, ptr @dump_file, align 8, !tbaa !64
  tail call fastcc void @dump_copy_of(ptr noundef %233, ptr noundef %3)
  %234 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %235 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %234)
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !64
  switch i32 %224, label %241 [
    i32 1, label %237
    i32 2, label %239
  ]

237:                                              ; preds = %231
  %238 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 43, i64 1, ptr %236)
  br label %243

239:                                              ; preds = %231
  %240 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 52, i64 1, ptr %236)
  br label %243

241:                                              ; preds = %231
  %242 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 45, i64 1, ptr %236)
  br label %243

243:                                              ; preds = %239, %241, %237
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !64
  %245 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %244)
  br label %246

246:                                              ; preds = %243, %227, %223
  ret i32 %224
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @stmt_may_generate_copy(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !63 !PGOFuncName !257 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %74 [
    i8 16, label %4
    i8 6, label %6
  ], !prof !149

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  br label %67

6:                                                ; preds = %1
  %7 = and i32 %2, 254
  %8 = add nsw i32 %7, -10
  %9 = icmp ult i32 %8, -4
  %10 = and i32 %2, 16384
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %11, %9
  br i1 %12, label %13, label %74, !prof !150

13:                                               ; preds = %6
  br i1 %9, label %18, label %14, !prof !151

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %74, !prof !152

18:                                               ; preds = %13, %14
  switch i8 %3, label %21 [
    i8 6, label %19
    i8 1, label %19
    i8 8, label %22
  ], !prof !153

19:                                               ; preds = %18, %18
  %20 = lshr i32 %2, 16
  br label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %22

22:                                               ; preds = %21, %19, %18
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], [ 59, %18 ]
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !75
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %28, label %48, !prof !154

28:                                               ; preds = %22
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -1
  %32 = icmp ult i32 %31, 9
  tail call void @llvm.assume(i1 %32)
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !79
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !91
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41, !prof !155

40:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %41

41:                                               ; preds = %40, %28
  %42 = getelementptr inbounds i8, ptr %0, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  br label %48

48:                                               ; preds = %22, %41
  %49 = phi i32 [ %47, %41 ], [ %23, %22 ]
  %50 = icmp eq i32 %49, 141
  br i1 %50, label %51, label %74, !prof !156

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -1
  %55 = icmp ult i32 %54, 9
  tail call void @llvm.assume(i1 %55)
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !79
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !91
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64, !prof !157

63:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %64

64:                                               ; preds = %63, %51
  %65 = getelementptr inbounds i8, ptr %0, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  br label %67

67:                                               ; preds = %4, %64
  %68 = phi ptr [ %66, %64 ], [ %5, %4 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 4194304
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i8
  br label %74

74:                                               ; preds = %67, %1, %48, %14, %6
  %75 = phi i8 [ 0, %6 ], [ 0, %14 ], [ 0, %48 ], [ 0, %1 ], [ %73, %67 ]
  ret i8 %75
}

declare i32 @loop_depth_of_name(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_copy_of(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !63 {
  %3 = load i32, ptr @dump_flags, align 4, !tbaa !79
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %3) #18
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %118

7:                                                ; preds = %2
  %8 = load ptr, ptr @cfun, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %12, align 8, !tbaa !125
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #18
  tail call void @sbitmap_zero(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !75
  %21 = load ptr, ptr %18, align 8, !tbaa !258
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = lshr i32 %20, 6
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !91
  %28 = and i32 %20, 63
  %29 = zext nneg i32 %28 to i64
  %30 = shl nuw i64 1, %29
  %31 = and i64 %27, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds i8, ptr %21, i64 %25
  %35 = load i8, ptr %34, align 1, !tbaa !75
  %36 = add i8 %35, 1
  store i8 %36, ptr %34, align 1, !tbaa !75
  br label %37

37:                                               ; preds = %16, %23, %33
  %38 = and i32 %20, 63
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = lshr i32 %20, 6
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !91
  %45 = or i64 %44, %40
  store i64 %45, ptr %43, align 8, !tbaa !91
  %46 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 16, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #18
  %47 = tail call i32 @fputc(i32 32, ptr %0)
  %48 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !75
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.prop_value_d, ptr %48, i64 %51, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !166
  %54 = icmp eq ptr %53, null
  br i1 %54, label %92, label %55

55:                                               ; preds = %37, %82
  %56 = phi ptr [ %86, %82 ], [ %49, %37 ]
  %57 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 3, i64 1, ptr %0)
  %58 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %59 = load i32, ptr %56, align 8, !tbaa !75
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.prop_value_d, ptr %58, i64 %60, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !166
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %62, i32 noundef 0) #18
  %63 = tail call i32 @fputc(i32 32, ptr %0)
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !75
  %66 = lshr i32 %65, 6
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !91
  %70 = and i32 %65, 63
  %71 = zext nneg i32 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = and i64 %72, %69
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %55
  %76 = load ptr, ptr %18, align 8, !tbaa !258
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %76, i64 %67
  %80 = load i8, ptr %79, align 1, !tbaa !75
  %81 = add i8 %80, 1
  store i8 %81, ptr %79, align 1, !tbaa !75
  br label %82

82:                                               ; preds = %75, %78
  %83 = load i64, ptr %68, align 8, !tbaa !91
  %84 = or i64 %83, %72
  store i64 %84, ptr %68, align 8, !tbaa !91
  %85 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !75
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.prop_value_d, ptr %85, i64 %88, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !166
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %55, !llvm.loop !260

92:                                               ; preds = %82, %55, %37
  %93 = load ptr, ptr @copy_of, align 8, !tbaa !64
  %94 = load i32, ptr %19, align 8, !tbaa !75
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.prop_value_d, ptr %93, i64 %95, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !166
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = tail call fastcc zeroext i8 @stmt_may_generate_copy(ptr noundef %101), !range !93
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store ptr %1, ptr %96, align 8, !tbaa !166
  br label %105

105:                                              ; preds = %92, %99, %104
  %106 = load ptr, ptr %96, align 8, !tbaa !166
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 11, i64 1, ptr %0)
  br label %116

110:                                              ; preds = %105
  %111 = icmp eq ptr %106, %1
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 6, i64 1, ptr %0)
  br label %116

114:                                              ; preds = %110
  %115 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %0)
  br label %116

116:                                              ; preds = %112, %114, %108
  %117 = load ptr, ptr %18, align 8, !tbaa !258
  tail call void @free(ptr noundef %117)
  tail call void @free(ptr noundef %18)
  br label %118

118:                                              ; preds = %2, %116
  ret void
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @duplicate_ssa_name_ptr_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #3

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
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!62}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!35 = !{ptr @may_propagate_copy, ptr @useless_type_conversion_p, i64 123217}
!36 = !{ptr @may_propagate_copy, ptr @is_gimple_reg, i64 158613}
!37 = !{ptr @may_propagate_copy_into_stmt, ptr @gimple_assign_single_p, i64 854}
!38 = !{ptr @may_propagate_copy_into_stmt, ptr @useless_type_conversion_p, i64 854}
!39 = !{ptr @may_propagate_copy_into_stmt, ptr @is_gimple_reg, i64 966}
!40 = !{ptr @propagate_value, ptr @unsave_expr_now, i64 50293}
!41 = !{ptr @replace_exp_1, ptr @unsave_expr_now, i64 4}
!42 = !{ptr @replace_exp, ptr @replace_exp_1, i64 12}
!43 = !{ptr @propagate_tree_value_into_stmt, ptr @gimple_assign_single_p, i64 17193}
!44 = !{ptr @propagate_tree_value_into_stmt, ptr @unsave_expr_now, i64 285}
!45 = !{ptr @propagate_tree_value_into_stmt, ptr @gimple_assign_set_rhs_from_tree, i64 17193}
!46 = !{ptr @propagate_tree_value_into_stmt, ptr @fold_convert_loc, i64 134}
!47 = !{ptr @execute_copy_prop, ptr @xcalloc, i64 462}
!48 = !{ptr @execute_copy_prop, ptr @stmt_ends_bb_p, i64 1435491}
!49 = !{ptr @execute_copy_prop, ptr @loop_depth_of_name, i64 306}
!50 = !{ptr @execute_copy_prop, ptr @loop_exit_edge_p, i64 485784}
!51 = !{ptr @execute_copy_prop, ptr @gsi_start_phis, i64 833084}
!52 = !{ptr @execute_copy_prop, ptr @is_gimple_reg, i64 185684}
!53 = !{ptr @execute_copy_prop, ptr @ssa_propagate, i64 154}
!54 = !{ptr @execute_copy_prop, ptr @substitute_and_fold, i64 154}
!55 = !{ptr @execute_copy_prop, ptr @free, i64 462}
!56 = !{ptr @copy_prop_visit_stmt, ptr @gimple_assign_single_p, i64 585747}
!57 = !{ptr @copy_prop_visit_stmt, ptr @useless_type_conversion_p, i64 16312}
!58 = !{ptr @copy_prop_visit_stmt, ptr @is_gimple_reg, i64 20998}
!59 = !{ptr @copy_prop_visit_phi_node, ptr @is_gimple_reg, i64 31766}
!60 = !{ptr @copy_prop_visit_phi_node, ptr @loop_depth_of_name, i64 35396}
!61 = !{ptr @copy_prop_visit_phi_node, ptr @useless_type_conversion_p, i64 10928}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!69, !65, i64 8}
!69 = !{!"_IO_FILE", !70, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !70, i64 112, !70, i64 116, !71, i64 120, !72, i64 128, !66, i64 130, !66, i64 131, !65, i64 136, !71, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !71, i64 184, !70, i64 192, !66, i64 196}
!70 = !{!"int", !66, i64 0}
!71 = !{!"long", !66, i64 0}
!72 = !{!"short", !66, i64 0}
!73 = !{!69, !65, i64 16}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!66, !66, i64 0}
!76 = !{!69, !65, i64 40}
!77 = !{!69, !65, i64 48}
!78 = !{!69, !70, i64 0}
!79 = !{!70, !70, i64 0}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!"function_entry_count", i64 123217}
!84 = !{!"branch_weights", i32 0, i32 151208}
!85 = !{!"branch_weights", i32 150457, i32 751}
!86 = !{!"branch_weights", i32 44188, i32 106269}
!87 = !{!"branch_weights", i32 44188, i32 0}
!88 = !{!"function_entry_count", i64 854}
!89 = !{!"branch_weights", i32 103, i32 751}
!90 = !{!"branch_weights", i32 0, i32 751}
!91 = !{!71, !71, i64 0}
!92 = !{!"branch_weights", i32 0, i32 103}
!93 = !{i8 0, i8 2}
!94 = !{!"branch_weights", i32 0, i32 412, i32 0, i32 0}
!95 = !{!"function_entry_count", i64 169983}
!96 = !{!"branch_weights", i32 119698, i32 50297}
!97 = !{!98, !65, i64 0}
!98 = !{!"ssa_use_operand_d", !65, i64 0, !65, i64 8, !66, i64 16, !65, i64 24}
!99 = !{!"branch_weights", i32 0, i32 119698}
!100 = !{!98, !65, i64 8}
!101 = !{!98, !65, i64 24}
!102 = !{!"branch_weights", i32 119698, i32 0}
!103 = !{!"branch_weights", i32 0, i32 50297}
!104 = !{!"function_entry_count", i64 12}
!105 = !{!"tree-ssa-copy.c;replace_exp_1"}
!106 = !{!"function_entry_count", i64 17327}
!107 = !{!108, !65, i64 0}
!108 = !{!"gimple_seq_node_d", !65, i64 0, !65, i64 8, !65, i64 16}
!109 = !{!"branch_weights", i32 0, i32 4607724, i32 35912, i32 0}
!110 = !{!"branch_weights", i32 1087, i32 16106}
!111 = !{!"branch_weights", i32 0, i32 16106}
!112 = !{!"branch_weights", i32 17042, i32 151}
!113 = !{!"branch_weights", i32 0, i32 134}
!114 = !{!"branch_weights", i32 134, i32 0}
!115 = !{!"function_entry_count", i64 154}
!116 = !{!"tree-ssa-copy.c;gate_copy_prop"}
!117 = !{!"tree-ssa-copy.c;execute_copy_prop"}
!118 = !{!119, !65, i64 24}
!119 = !{!"function", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !70, i64 104, !70, i64 108, !70, i64 112, !70, i64 116, !70, i64 120, !70, i64 124, !65, i64 128, !70, i64 136, !70, i64 137, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139}
!120 = !{!121, !65, i64 16}
!121 = !{!"gimple_df", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !122, i64 32, !122, i64 48, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !70, i64 96, !123, i64 104}
!122 = !{!"pt_solution", !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !65, i64 8}
!123 = !{!"ssa_operands", !65, i64 0, !70, i64 8, !70, i64 12, !66, i64 16, !65, i64 24, !65, i64 32}
!124 = !{!"branch_weights", i32 0, i32 154}
!125 = !{!126, !70, i64 0}
!126 = !{!"VEC_tree_base", !70, i64 0, !70, i64 4, !66, i64 8}
!127 = !{!119, !65, i64 8}
!128 = !{!129, !65, i64 0}
!129 = !{!"control_flow_graph", !65, i64 0, !65, i64 8, !65, i64 16, !70, i64 24, !70, i64 28, !70, i64 32, !65, i64 40, !70, i64 48, !66, i64 52, !66, i64 60, !70, i64 68, !70, i64 72}
!130 = !{!131, !65, i64 56}
!131 = !{!"basic_block_def", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !66, i64 32, !65, i64 48, !65, i64 56, !66, i64 64, !71, i64 72, !70, i64 80, !70, i64 84, !70, i64 88, !70, i64 92, !70, i64 96}
!132 = !{!129, !65, i64 8}
!133 = !{!"branch_weights", i32 1, i32 153}
!134 = !{!"branch_weights", i32 153, i32 832930}
!135 = distinct !{!135, !81, !82}
!136 = !{!131, !70, i64 84}
!137 = !{!131, !70, i64 96}
!138 = !{!139}
!139 = distinct !{!139, !140, !"gsi_start_bb: argument 0"}
!140 = distinct !{!140, !"gsi_start_bb"}
!141 = !{!"branch_weights", i32 833083, i32 0}
!142 = !{!"branch_weights", i32 0, i32 833083}
!143 = !{!144, !65, i64 0}
!144 = !{!"gimple_bb_info", !65, i64 0, !65, i64 8}
!145 = !{!146, !65, i64 0}
!146 = !{!"gimple_seq_d", !65, i64 0, !65, i64 8, !65, i64 16}
!147 = !{!"branch_weights", i32 1, i32 833082}
!148 = !{!"branch_weights", i32 866054, i32 569435}
!149 = !{!"branch_weights", i32 288075, i32 0, i32 577979}
!150 = !{!"branch_weights", i32 577979, i32 0}
!151 = !{!"branch_weights", i32 0, i32 577979}
!152 = !{!"branch_weights", i32 250903, i32 327076}
!153 = !{!"branch_weights", i32 0, i32 250903, i32 0, i32 0}
!154 = !{!"branch_weights", i32 59578, i32 191325}
!155 = !{!"branch_weights", i32 0, i32 59578}
!156 = !{!"branch_weights", i32 16281, i32 234622}
!157 = !{!"branch_weights", i32 0, i32 16281}
!158 = !{!"branch_weights", i32 16281, i32 849773}
!159 = !{!"branch_weights", i32 0, i32 1435489}
!160 = !{!"branch_weights", i32 581245, i32 854244}
!161 = !{!162, !65, i64 8}
!162 = !{!"def_optype_d", !65, i64 0, !65, i64 8}
!163 = !{!162, !65, i64 0}
!164 = !{!"branch_weights", i32 313749, i32 1121740}
!165 = !{!"branch_weights", i32 1105459, i32 16281}
!166 = !{!167, !65, i64 8}
!167 = !{!"prop_value_d", !70, i64 0, !65, i64 8}
!168 = !{!"branch_weights", i32 0, i32 1105459}
!169 = distinct !{!169, !81, !82}
!170 = !{!"branch_weights", i32 854244, i32 267496}
!171 = !{!"branch_weights", i32 0, i32 1121740}
!172 = distinct !{!172, !81, !82}
!173 = !{!108, !65, i64 16}
!174 = !{!"branch_weights", i32 833082, i32 602407}
!175 = distinct !{!175, !81, !82}
!176 = !{!119, !65, i64 32}
!177 = !{!"branch_weights", i32 491154, i32 341929}
!178 = !{!179, !70, i64 0}
!179 = !{!"loops", !70, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!180 = !{!"branch_weights", i32 0, i32 341929}
!181 = !{!"branch_weights", i32 0, i32 827712}
!182 = !{!183, !70, i64 0}
!183 = !{!"VEC_edge_base", !70, i64 0, !70, i64 4, !66, i64 8}
!184 = !{!"branch_weights", i32 341929, i32 485783}
!185 = !{!186, !65, i64 0}
!186 = !{!"edge_def", !65, i64 0, !65, i64 8, !66, i64 16, !65, i64 24, !65, i64 32, !70, i64 40, !70, i64 44, !70, i64 48, !70, i64 52, !71, i64 56}
!187 = !{!131, !65, i64 24}
!188 = !{!"branch_weights", i32 485783, i32 0}
!189 = !{!"branch_weights", i32 0, i32 485783}
!190 = distinct !{!190, !81, !82}
!191 = !{i64 0, i64 8, !64, i64 8, i64 8, !64, i64 16, i64 8, !64}
!192 = !{!"branch_weights", i32 647399, i32 185684}
!193 = !{!"branch_weights", i32 179604, i32 6080}
!194 = !{!"branch_weights", i32 0, i32 179604}
!195 = !{!"branch_weights", i32 185684, i32 0}
!196 = distinct !{!196, !81, !82}
!197 = !{!"branch_weights", i32 0, i32 1583815}
!198 = !{!"branch_weights", i32 1583661, i32 154}
!199 = !{!"branch_weights", i32 275717, i32 1307944}
!200 = !{!"branch_weights", i32 1291663, i32 16281}
!201 = !{!"branch_weights", i32 0, i32 32562}
!202 = !{!"branch_weights", i32 16281, i32 16281}
!203 = !{!"branch_weights", i32 16203, i32 78, i32 0}
!204 = !{!"branch_weights", i32 0, i32 78}
!205 = distinct !{!205, !81, !82}
!206 = !{!"function_entry_count", i64 585747}
!207 = !{!"tree-ssa-copy.c;copy_prop_visit_stmt"}
!208 = !{!"branch_weights", i32 585747, i32 0}
!209 = !{!"branch_weights", i32 569435, i32 16312}
!210 = !{!"branch_weights", i32 0, i32 16312}
!211 = !{!"branch_weights", i32 16312, i32 0}
!212 = !{!"branch_weights", i32 0, i32 16312, i32 0, i32 0}
!213 = !{!"branch_weights", i32 0, i32 -1436984888}
!214 = !{!"branch_weights", i32 5, i32 16307}
!215 = !{!"branch_weights", i32 0, i32 10}
!216 = !{!"branch_weights", i32 5, i32 5}
!217 = !{!"branch_weights", i32 568873, i32 562}
!218 = !{!"branch_weights", i32 0, i32 568873}
!219 = !{!"branch_weights", i32 568873, i32 0}
!220 = !{!131, !70, i64 80}
!221 = !{!186, !65, i64 8}
!222 = !{!"branch_weights", i32 569435, i32 0}
!223 = !{!"branch_weights", i32 0, i32 569435}
!224 = !{!"branch_weights", i32 1, i32 0}
!225 = !{!"branch_weights", i32 0, i32 1}
!226 = distinct !{!226, !81, !82}
!227 = !{!"function_entry_count", i64 11972}
!228 = !{!"tree-ssa-copy.c;copy_prop_visit_phi_node"}
!229 = !{!"branch_weights", i32 11972, i32 0}
!230 = !{!"branch_weights", i32 1, i32 5891}
!231 = !{!"branch_weights", i32 80702, i32 5891}
!232 = distinct !{!232, !81, !82}
!233 = !{!"branch_weights", i32 0, i32 86593}
!234 = !{!131, !65, i64 0}
!235 = !{}
!236 = !{!186, !70, i64 48}
!237 = !{!"branch_weights", i32 69134, i32 17459}
!238 = !{!"branch_weights", i32 17088, i32 371}
!239 = !{!"branch_weights", i32 0, i32 17088}
!240 = !{!"branch_weights", i32 0, i32 22127}
!241 = !{!"branch_weights", i32 17088, i32 5039}
!242 = !{!"branch_weights", i32 17088, i32 0}
!243 = !{!"branch_weights", i32 10583, i32 6505}
!244 = !{!"branch_weights", i32 0, i32 10583}
!245 = !{!"branch_weights", i32 0, i32 6505}
!246 = !{!"branch_weights", i32 6505, i32 0}
!247 = !{!"branch_weights", i32 0, i32 8322}
!248 = !{!"branch_weights", i32 6505, i32 1817}
!249 = !{!"branch_weights", i32 796, i32 5709}
!250 = !{!"branch_weights", i32 6080, i32 80513}
!251 = !{!"branch_weights", i32 1044, i32 10928}
!252 = !{!"branch_weights", i32 1753, i32 9175}
!253 = !{!"branch_weights", i32 0, i32 3506}
!254 = !{!"branch_weights", i32 1753, i32 1753}
!255 = !{!"branch_weights", i32 178, i32 10750}
!256 = !{!"branch_weights", i32 6080, i32 4670}
!257 = !{!"tree-ssa-copy.c;stmt_may_generate_copy"}
!258 = !{!259, !65, i64 0}
!259 = !{!"simple_bitmap_def", !65, i64 0, !70, i64 8, !70, i64 12, !66, i64 16}
!260 = distinct !{!260, !81, !82}
