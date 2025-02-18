; ModuleID = 'tree-ssa-ter.c'
source_filename = "tree-ssa-ter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.temp_expr_table_d = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0AReplacing Expressions\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" replace with --> \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !48
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !47 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !47 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !47 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !47 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !47 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !47 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !47 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !47 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !47 {
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
  br i1 %23, label %7, label %24, !llvm.loop !64

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @find_replaceable_exprs(ptr noundef %0) local_unnamed_addr #9 !prof !67 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call ptr @xmalloc(i64 noundef 72) #15
  store ptr %0, ptr %4, align 8, !tbaa !68
  %5 = load ptr, ptr @cfun, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !76

11:                                               ; preds = %1
  %12 = load i32, ptr %9, align 8, !tbaa !77
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i64 [ %14, %11 ], [ 1, %1 ]
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #15
  %18 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !79
  %19 = load ptr, ptr @cfun, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !76

25:                                               ; preds = %15
  %26 = load i32, ptr %23, align 8, !tbaa !77
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %25, %15
  %30 = phi i64 [ %28, %25 ], [ 1, %15 ]
  %31 = tail call ptr @xcalloc(i64 noundef %30, i64 noundef 8) #15
  %32 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !81
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = tail call ptr @xcalloc(i64 noundef %36, i64 noundef 8) #15
  %38 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 4
  store ptr %37, ptr %38, align 8, !tbaa !83
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %40 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 6
  store ptr %39, ptr %40, align 8, !tbaa !84
  %41 = load i32, ptr %33, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 5
  store i32 %41, ptr %42, align 8, !tbaa !85
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %44 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !87
  %46 = load i32, ptr %33, align 8, !tbaa !81
  %47 = zext i32 %46 to i64
  %48 = tail call ptr @xcalloc(i64 noundef %47, i64 noundef 4) #15
  %49 = getelementptr inbounds %struct.temp_expr_table_d, ptr %4, i64 0, i32 8
  store ptr %48, ptr %49, align 8, !tbaa !88
  %50 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  br label %51

51:                                               ; preds = %96, %29
  %52 = phi i64 [ %97, %96 ], [ 1, %29 ]
  %53 = load ptr, ptr @cfun, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !72
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !89

59:                                               ; preds = %51
  %60 = load i32, ptr %57, align 8, !tbaa !77
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi i32 [ %60, %59 ], [ 0, %51 ]
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %52, %63
  br i1 %64, label %65, label %98, !prof !90

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.VEC_tree_base, ptr %57, i64 0, i32 2, i64 %52
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = icmp eq ptr %67, null
  br i1 %68, label %96, label %69, !prof !91

69:                                               ; preds = %65
  %70 = load i64, ptr %67, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 141
  br i1 %72, label %74, label %73, !prof !92

73:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 147, ptr noundef nonnull @.str.4) #15
  br label %74

74:                                               ; preds = %73, %69
  %75 = load ptr, ptr %0, align 8, !tbaa !93
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !59
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.partition_def, ptr %75, i64 0, i32 1, i64 %78
  %80 = load i32, ptr %79, align 8, !tbaa !94
  %81 = load ptr, ptr %50, align 8, !tbaa !96
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83, !prof !97

83:                                               ; preds = %74
  %84 = sext i32 %80 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !63
  br label %87

87:                                               ; preds = %83, %74
  %88 = phi i32 [ %86, %83 ], [ %80, %74 ]
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %96, label %90, !prof !98

90:                                               ; preds = %87
  %91 = load ptr, ptr %49, align 8, !tbaa !88
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !63
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %93, align 4, !tbaa !63
  br label %96

96:                                               ; preds = %90, %87, %65
  %97 = add nuw nsw i64 %52, 1
  br label %51, !llvm.loop !99

98:                                               ; preds = %61
  %99 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !100
  %101 = load ptr, ptr %100, align 8, !tbaa !101
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !103
  %104 = load ptr, ptr @cfun, align 8, !tbaa !48
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !100
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !105
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %1068, label %119, !prof !106

110:                                              ; preds = %1064, %137
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !103
  %113 = load ptr, ptr @cfun, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !100
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !105
  %118 = icmp eq ptr %112, %117
  br i1 %118, label %1068, label %119, !prof !107, !llvm.loop !108

119:                                              ; preds = %98, %110
  %120 = phi ptr [ %112, %110 ], [ %103, %98 ]
  %121 = load ptr, ptr %4, align 8, !tbaa !68
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 13
  %123 = load i32, ptr %122, align 8, !tbaa !109, !noalias !110
  %124 = and i32 %123, 512
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %132, !prof !113

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !59, !noalias !110
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130, !prof !114

130:                                              ; preds = %126
  %131 = load ptr, ptr %128, align 8, !tbaa !115, !noalias !110
  br label %132

132:                                              ; preds = %130, %126, %119
  %133 = phi ptr [ %131, %130 ], [ null, %126 ], [ null, %119 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !114

135:                                              ; preds = %132
  %136 = load ptr, ptr %133, align 8, !tbaa !117, !noalias !110
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi ptr [ %136, %135 ], [ null, %132 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %110, label %140, !prof !119

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._var_map, ptr %121, i64 0, i32 1
  br label %142

142:                                              ; preds = %140, %1064
  %143 = phi ptr [ %138, %140 ], [ %1066, %1064 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !120
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 255
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %1064, label %148, !prof !122

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %149 = load i32, ptr %144, align 8
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 6
  br i1 %151, label %152, label %360, !prof !123

152:                                              ; preds = %148
  %153 = call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %144) #15
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %360, !prof !124

155:                                              ; preds = %152
  %156 = load i32, ptr %144, align 8
  %157 = and i32 %156, 255
  %158 = add nsw i32 %157, -10
  %159 = icmp ult i32 %158, -9
  br i1 %159, label %163, label %160, !prof !125

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %144, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !59
  br label %163

163:                                              ; preds = %160, %155
  %164 = phi ptr [ %162, %160 ], [ null, %155 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %176, label %166, !prof !125

166:                                              ; preds = %163
  %167 = and i32 %156, 254
  %168 = add nsw i32 %167, -10
  %169 = icmp ult i32 %168, -4
  br i1 %169, label %176, label %170, !prof !125

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !59
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174, !prof !126

174:                                              ; preds = %170
  %175 = load ptr, ptr %164, align 8, !tbaa !127
  br label %176

176:                                              ; preds = %174, %170, %166, %163
  %177 = phi ptr [ %164, %163 ], [ %164, %166 ], [ %164, %170 ], [ %175, %174 ]
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179, !prof !129

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.def_optype_d, ptr %177, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !130
  %182 = load ptr, ptr %181, align 8, !tbaa !48
  %183 = load ptr, ptr %177, align 8, !tbaa !127
  %184 = icmp eq ptr %183, null
  %185 = select i1 %184, ptr %182, ptr null, !prof !131
  br label %186

186:                                              ; preds = %179, %176
  %187 = phi ptr [ %185, %179 ], [ null, %176 ]
  %188 = icmp eq ptr %187, null
  br i1 %188, label %360, label %189, !prof !129

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.tree_ssa_name, ptr %187, i64 0, i32 5
  %191 = getelementptr inbounds %struct.tree_ssa_name, ptr %187, i64 0, i32 5, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !132
  %193 = icmp eq ptr %190, %192
  br i1 %193, label %194, label %195, !prof !134

194:                                              ; preds = %206, %199, %189
  store ptr null, ptr %2, align 8, !tbaa !48
  store ptr null, ptr %3, align 8, !tbaa !48
  br label %211

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %192, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !132
  %198 = icmp eq ptr %190, %197
  br i1 %198, label %199, label %206, !prof !135

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %192, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !59
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 255
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %194, label %205, !prof !136

205:                                              ; preds = %199
  store ptr %192, ptr %2, align 8, !tbaa !48
  store ptr %201, ptr %3, align 8, !tbaa !48
  br label %211

206:                                              ; preds = %195
  %207 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !63
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %194, label %209, !prof !137

209:                                              ; preds = %206
  %210 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %190, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  br label %211

211:                                              ; preds = %209, %205, %194
  %212 = phi i8 [ 0, %194 ], [ 1, %205 ], [ %210, %209 ]
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %360, label %214, !prof !138

214:                                              ; preds = %211
  %215 = load ptr, ptr %3, align 8, !tbaa !48
  %216 = getelementptr inbounds %struct.gimple_statement_base, ptr %215, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !59
  %218 = getelementptr inbounds %struct.gimple_statement_base, ptr %144, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !59
  %220 = icmp eq ptr %217, %219
  br i1 %220, label %221, label %360, !prof !139

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.gimple_statement_base, ptr %144, i64 0, i32 2
  %223 = load i32, ptr %222, align 8, !tbaa !59
  %224 = getelementptr inbounds %struct.gimple_statement_base, ptr %144, i64 0, i32 5
  %225 = load ptr, ptr %224, align 8, !tbaa !59
  %226 = load i32, ptr %215, align 8
  %227 = and i32 %226, 255
  %228 = icmp eq i32 %227, 16
  br i1 %228, label %234, label %229, !prof !140

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.gimple_statement_base, ptr %215, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !59
  %232 = getelementptr inbounds %struct.gimple_statement_base, ptr %215, i64 0, i32 5
  %233 = load ptr, ptr %232, align 8, !tbaa !59
  br label %234

234:                                              ; preds = %229, %221
  %235 = phi i32 [ %231, %229 ], [ 0, %221 ]
  %236 = phi ptr [ %233, %229 ], [ null, %221 ]
  %237 = load i32, ptr @optimize, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %248, !prof !140

239:                                              ; preds = %234
  %240 = icmp eq i32 %223, 0
  %241 = icmp eq i32 %223, %235
  %242 = select i1 %240, i1 true, i1 %241
  br i1 %242, label %243, label %360

243:                                              ; preds = %239
  %244 = icmp ne ptr %225, null
  %245 = icmp ne ptr %225, %236
  %246 = select i1 %244, i1 %245, i1 false
  %247 = or i1 %228, %246
  br i1 %247, label %360, label %249, !prof !141

248:                                              ; preds = %234
  br i1 %228, label %360, label %249, !prof !140

249:                                              ; preds = %243, %248
  %250 = load i32, ptr %144, align 8
  %251 = and i32 %250, 254
  %252 = add nsw i32 %251, -10
  %253 = icmp ult i32 %252, -4
  br i1 %253, label %263, label %254, !prof !140

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !59
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %360, !prof !142

258:                                              ; preds = %254
  br i1 %253, label %263, label %259, !prof !140

259:                                              ; preds = %258
  %260 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !59
  %262 = icmp eq ptr %261, null
  br label %263

263:                                              ; preds = %249, %259, %258
  %264 = phi i1 [ true, %258 ], [ %262, %259 ], [ true, %249 ]
  %265 = icmp ne i32 %237, 0
  %266 = or i1 %265, %264
  br i1 %266, label %267, label %360, !prof !142

267:                                              ; preds = %263
  %268 = load i32, ptr @flag_float_store, align 4, !tbaa !63
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %292, label %270, !prof !142

270:                                              ; preds = %267
  %271 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %144)
  %272 = load i64, ptr %271, align 8
  %273 = and i64 %272, 65535
  %274 = icmp eq i64 %273, 9
  br i1 %274, label %360, label %275

275:                                              ; preds = %270
  %276 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %144)
  %277 = load i64, ptr %276, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 13
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %144)
  %282 = load i64, ptr %281, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 14
  br i1 %284, label %285, label %292

285:                                              ; preds = %280, %275
  %286 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %144)
  %287 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !59
  %289 = load i64, ptr %288, align 8
  %290 = and i64 %289, 65535
  %291 = icmp eq i64 %290, 9
  br i1 %291, label %360, label %292

292:                                              ; preds = %285, %280, %267
  %293 = load i32, ptr %144, align 8
  %294 = trunc i32 %293 to i8
  switch i8 %294, label %297 [
    i8 6, label %295
    i8 1, label %295
    i8 8, label %298
  ], !prof !143

295:                                              ; preds = %292, %292
  %296 = lshr i32 %293, 16
  br label %298

297:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #15
  br label %298

298:                                              ; preds = %297, %295, %292
  %299 = phi i32 [ %296, %295 ], [ 0, %297 ], [ 59, %292 ]
  %300 = zext nneg i32 %299 to i64
  %301 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !59
  %303 = icmp eq i8 %302, 3
  br i1 %303, label %304, label %324, !prof !144

304:                                              ; preds = %298
  %305 = load i32, ptr %144, align 8
  %306 = and i32 %305, 255
  %307 = add nsw i32 %306, -1
  %308 = icmp ult i32 %307, 9
  call void @llvm.assume(i1 %308)
  %309 = zext nneg i32 %306 to i64
  %310 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !63
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %312
  %314 = load i64, ptr %313, align 8, !tbaa !145
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %317, !prof !146

316:                                              ; preds = %304
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %317

317:                                              ; preds = %316, %304
  %318 = getelementptr inbounds i8, ptr %144, i64 %314
  %319 = getelementptr inbounds ptr, ptr %318, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !48
  %321 = load i64, ptr %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = and i32 %322, 65535
  br label %324

324:                                              ; preds = %317, %298
  %325 = phi i32 [ %323, %317 ], [ %299, %298 ]
  %326 = icmp eq i32 %325, 32
  br i1 %326, label %327, label %348, !prof !147

327:                                              ; preds = %324
  %328 = load i32, ptr %144, align 8
  %329 = and i32 %328, 255
  %330 = add nsw i32 %329, -1
  %331 = icmp ult i32 %330, 9
  call void @llvm.assume(i1 %331)
  %332 = zext nneg i32 %329 to i64
  %333 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !63
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !145
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340, !prof !148

339:                                              ; preds = %327
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %340

340:                                              ; preds = %339, %327
  %341 = getelementptr inbounds i8, ptr %144, i64 %337
  %342 = getelementptr inbounds ptr, ptr %341, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !48
  %344 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %343, i64 0, i32 4
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 2
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %360, !prof !149

348:                                              ; preds = %340, %324
  %349 = load i32, ptr %144, align 8
  %350 = and i32 %349, 255
  %351 = icmp eq i32 %350, 8
  br i1 %351, label %360, label %352, !prof !140

352:                                              ; preds = %348
  %353 = and i32 %349, 254
  %354 = add nsw i32 %353, -10
  %355 = icmp ult i32 %354, -4
  %356 = and i32 %349, 16384
  %357 = icmp eq i32 %356, 0
  %358 = or i1 %357, %355
  %359 = zext i1 %358 to i8
  br label %360

360:                                              ; preds = %340, %243, %352, %348, %285, %270, %263, %254, %248, %239, %214, %211, %186, %152, %148
  %361 = phi i8 [ 0, %148 ], [ 0, %152 ], [ 0, %186 ], [ 0, %211 ], [ 0, %214 ], [ 0, %239 ], [ 0, %248 ], [ 0, %254 ], [ 0, %263 ], [ 0, %285 ], [ 0, %270 ], [ 0, %348 ], [ %359, %352 ], [ 0, %243 ], [ 0, %340 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %362 = load i32, ptr %144, align 8
  %363 = and i32 %362, 255
  %364 = add nsw i32 %363, -10
  %365 = icmp ult i32 %364, -9
  br i1 %365, label %369, label %366, !prof !122

366:                                              ; preds = %360
  %367 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %144, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !59
  br label %369

369:                                              ; preds = %366, %360
  %370 = phi ptr [ %368, %366 ], [ null, %360 ]
  %371 = icmp eq ptr %370, null
  br i1 %371, label %382, label %372, !prof !150

372:                                              ; preds = %369
  %373 = and i32 %362, 254
  %374 = add nsw i32 %373, -10
  %375 = icmp ult i32 %374, -4
  br i1 %375, label %382, label %376, !prof !151

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !59
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380, !prof !152

380:                                              ; preds = %376
  %381 = load ptr, ptr %370, align 8, !tbaa !153
  br label %382

382:                                              ; preds = %380, %376, %372, %369
  %383 = phi ptr [ %370, %369 ], [ %370, %372 ], [ %370, %376 ], [ %381, %380 ]
  %384 = icmp eq ptr %383, null
  br i1 %384, label %390, label %385, !prof !155

385:                                              ; preds = %382
  %386 = getelementptr inbounds %struct.use_optype_d, ptr %383, i64 0, i32 1, i32 3
  %387 = load ptr, ptr %386, align 8, !tbaa !156
  %388 = load ptr, ptr %387, align 8, !tbaa !48
  %389 = load ptr, ptr %383, align 8, !tbaa !153
  br label %390

390:                                              ; preds = %385, %382
  %391 = phi i8 [ 0, %385 ], [ 1, %382 ]
  %392 = phi ptr [ %389, %385 ], [ %383, %382 ]
  %393 = phi ptr [ %388, %385 ], [ null, %382 ]
  br i1 %384, label %621, label %394, !prof !157

394:                                              ; preds = %390, %616
  %395 = phi ptr [ %619, %616 ], [ %393, %390 ]
  %396 = phi ptr [ %618, %616 ], [ %392, %390 ]
  %397 = phi i8 [ %617, %616 ], [ %391, %390 ]
  %398 = getelementptr inbounds %struct.tree_ssa_name, ptr %395, i64 0, i32 3
  %399 = load i32, ptr %398, align 8, !tbaa !59
  %400 = load ptr, ptr %32, align 8, !tbaa !80
  %401 = zext i32 %399 to i64
  %402 = getelementptr inbounds ptr, ptr %400, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !48
  %404 = icmp eq ptr %403, null
  br i1 %404, label %609, label %405, !prof !158

405:                                              ; preds = %394
  %406 = load ptr, ptr %403, align 8, !tbaa !159
  %407 = icmp eq ptr %406, null
  br i1 %407, label %463, label %408, !prof !140

408:                                              ; preds = %405
  %409 = load i32, ptr %144, align 8
  %410 = and i32 %409, 255
  %411 = add nsw i32 %410, -10
  %412 = icmp ult i32 %411, -9
  br i1 %412, label %416, label %413, !prof !140

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %144, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !59
  br label %416

416:                                              ; preds = %413, %408
  %417 = phi ptr [ %415, %413 ], [ null, %408 ]
  %418 = icmp eq ptr %417, null
  br i1 %418, label %429, label %419, !prof !161

419:                                              ; preds = %416
  %420 = and i32 %409, 254
  %421 = add nsw i32 %420, -10
  %422 = icmp ult i32 %421, -4
  br i1 %422, label %429, label %423, !prof !162

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !59
  %426 = icmp eq ptr %425, null
  br i1 %426, label %429, label %427, !prof !163

427:                                              ; preds = %423
  %428 = load ptr, ptr %417, align 8, !tbaa !127
  br label %429

429:                                              ; preds = %427, %423, %419, %416
  %430 = phi ptr [ %417, %416 ], [ %417, %419 ], [ %417, %423 ], [ %428, %427 ]
  %431 = icmp eq ptr %430, null
  br i1 %431, label %437, label %432, !prof !164

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct.def_optype_d, ptr %430, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !130
  %435 = load ptr, ptr %434, align 8, !tbaa !48
  %436 = load ptr, ptr %430, align 8, !tbaa !127
  br label %437

437:                                              ; preds = %432, %429
  %438 = phi ptr [ %436, %432 ], [ %430, %429 ]
  %439 = phi i8 [ 0, %432 ], [ 1, %429 ]
  %440 = phi ptr [ %435, %432 ], [ null, %429 ]
  br i1 %431, label %463, label %441, !prof !164

441:                                              ; preds = %437, %458
  %442 = phi ptr [ %461, %458 ], [ %440, %437 ]
  %443 = phi i8 [ %460, %458 ], [ %439, %437 ]
  %444 = phi ptr [ %459, %458 ], [ %438, %437 ]
  %445 = getelementptr inbounds %struct.tree_ssa_name, ptr %442, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !59
  %447 = getelementptr inbounds %struct.tree_decl_minimal, ptr %446, i64 0, i32 2
  %448 = load i32, ptr %447, align 4, !tbaa !59
  %449 = call i32 @bitmap_bit_p(ptr noundef nonnull %403, i32 noundef %448) #15
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %463, label %451, !prof !165

451:                                              ; preds = %441
  %452 = icmp eq ptr %444, null
  br i1 %452, label %458, label %453, !prof !166

453:                                              ; preds = %451
  %454 = getelementptr inbounds %struct.def_optype_d, ptr %444, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !130
  %456 = load ptr, ptr %455, align 8, !tbaa !48
  %457 = load ptr, ptr %444, align 8, !tbaa !127
  br label %458

458:                                              ; preds = %453, %451
  %459 = phi ptr [ %457, %453 ], [ %444, %451 ]
  %460 = phi i8 [ %443, %453 ], [ 1, %451 ]
  %461 = phi ptr [ %456, %453 ], [ null, %451 ]
  %462 = icmp eq i8 %460, 0
  br i1 %462, label %441, label %463, !prof !165, !llvm.loop !167

463:                                              ; preds = %458, %441, %437, %405
  %464 = phi i1 [ false, %405 ], [ false, %437 ], [ %450, %441 ], [ %450, %458 ]
  %465 = load i32, ptr %144, align 8
  %466 = and i32 %465, 254
  %467 = add nsw i32 %466, -6
  %468 = icmp ult i32 %467, 4
  %469 = and i32 %465, 16384
  %470 = icmp ne i32 %469, 0
  %471 = and i1 %470, %468
  %472 = or i1 %464, %471
  br i1 %472, label %473, label %474, !prof !140

473:                                              ; preds = %463
  call fastcc void @finished_with_expr(ptr noundef nonnull %4, i32 noundef %399, i8 noundef zeroext 1)
  br label %609

474:                                              ; preds = %463
  %475 = icmp eq i8 %361, 0
  %476 = load i32, ptr %398, align 8, !tbaa !59
  br i1 %475, label %486, label %477, !prof !168

477:                                              ; preds = %474
  %478 = load ptr, ptr %18, align 8, !tbaa !79
  %479 = sext i32 %476 to i64
  %480 = getelementptr inbounds ptr, ptr %478, i64 %479
  %481 = load ptr, ptr %480, align 8, !tbaa !48
  %482 = icmp eq ptr %481, null
  br i1 %482, label %486, label %483, !prof !169

483:                                              ; preds = %477
  %484 = load ptr, ptr %44, align 8, !tbaa !86
  %485 = call zeroext i8 @bitmap_ior_into(ptr noundef %484, ptr noundef nonnull %481) #15
  br label %486

486:                                              ; preds = %483, %477, %474
  %487 = load ptr, ptr %18, align 8, !tbaa !79
  %488 = sext i32 %476 to i64
  %489 = getelementptr inbounds ptr, ptr %487, i64 %488
  %490 = load ptr, ptr %489, align 8, !tbaa !48
  %491 = icmp eq ptr %490, null
  br i1 %491, label %593, label %492, !prof !170

492:                                              ; preds = %486
  %493 = load ptr, ptr %490, align 8, !tbaa !159
  %494 = icmp eq ptr %493, null
  %495 = select i1 %494, ptr @bitmap_zero_bits, ptr %493, !prof !171
  %496 = getelementptr inbounds %struct.bitmap_element_def, ptr %495, i64 0, i32 2
  %497 = load i32, ptr %496, align 8, !tbaa !172
  %498 = shl i32 %497, 7
  %499 = getelementptr inbounds %struct.bitmap_element_def, ptr %495, i64 0, i32 3
  %500 = load i64, ptr %499, align 8, !tbaa !145
  %501 = icmp eq i64 %500, 0
  %502 = zext i1 %501 to i32
  %503 = or disjoint i32 %498, %502
  br label %504

504:                                              ; preds = %584, %492
  %505 = phi i64 [ %500, %492 ], [ %585, %584 ]
  %506 = phi i32 [ 0, %492 ], [ %561, %584 ]
  %507 = phi i32 [ %503, %492 ], [ %586, %584 ]
  %508 = phi ptr [ %495, %492 ], [ %563, %584 ]
  %509 = icmp eq i64 %505, 0
  br i1 %509, label %524, label %510, !prof !174

510:                                              ; preds = %538, %504
  %511 = phi i64 [ %505, %504 ], [ %543, %538 ]
  %512 = phi i32 [ %506, %504 ], [ %539, %538 ]
  %513 = phi i32 [ %507, %504 ], [ %540, %538 ]
  %514 = phi ptr [ %508, %504 ], [ %531, %538 ]
  %515 = and i64 %511, 1
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %559, !prof !175

517:                                              ; preds = %510, %517
  %518 = phi i32 [ %521, %517 ], [ %513, %510 ]
  %519 = phi i64 [ %520, %517 ], [ %511, %510 ]
  %520 = lshr exact i64 %519, 1
  %521 = add i32 %518, 1
  %522 = and i64 %519, 2
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %517, label %559, !prof !176, !llvm.loop !177

524:                                              ; preds = %504
  %525 = add i32 %507, 63
  %526 = and i32 %525, -64
  %527 = add i32 %506, 1
  br label %528

528:                                              ; preds = %555, %524
  %529 = phi i64 [ %505, %524 ], [ %550, %555 ]
  %530 = phi i32 [ %526, %524 ], [ %558, %555 ]
  %531 = phi ptr [ %508, %524 ], [ %553, %555 ]
  %532 = phi i32 [ %527, %524 ], [ 0, %555 ]
  %533 = icmp eq i32 %532, 2
  br i1 %533, label %549, label %534, !prof !178

534:                                              ; preds = %528
  %535 = add i32 %530, 128
  %536 = shl i32 %532, 6
  %537 = sub i32 %535, %536
  br label %538

538:                                              ; preds = %545, %534
  %539 = phi i32 [ %547, %545 ], [ %532, %534 ]
  %540 = phi i32 [ %546, %545 ], [ %530, %534 ]
  %541 = zext i32 %539 to i64
  %542 = getelementptr inbounds %struct.bitmap_element_def, ptr %531, i64 0, i32 3, i64 %541
  %543 = load i64, ptr %542, align 8, !tbaa !145
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %510, !prof !179

545:                                              ; preds = %538
  %546 = add i32 %540, 64
  %547 = add i32 %539, 1
  %548 = icmp eq i32 %547, 2
  br i1 %548, label %549, label %538, !prof !180, !llvm.loop !181

549:                                              ; preds = %545, %528
  %550 = phi i64 [ %529, %528 ], [ %543, %545 ]
  %551 = phi i32 [ %530, %528 ], [ %537, %545 ]
  %552 = phi i32 [ %532, %528 ], [ 2, %545 ]
  %553 = load ptr, ptr %531, align 8, !tbaa !182
  %554 = icmp eq ptr %553, null
  br i1 %554, label %559, label %555, !prof !183

555:                                              ; preds = %549
  %556 = getelementptr inbounds %struct.bitmap_element_def, ptr %553, i64 0, i32 2
  %557 = load i32, ptr %556, align 8, !tbaa !172
  %558 = shl i32 %557, 7
  br label %528, !llvm.loop !184

559:                                              ; preds = %549, %517, %510
  %560 = phi i64 [ %511, %510 ], [ %520, %517 ], [ %550, %549 ]
  %561 = phi i32 [ %512, %510 ], [ %512, %517 ], [ %552, %549 ]
  %562 = phi i32 [ %513, %510 ], [ %521, %517 ], [ %551, %549 ]
  %563 = phi ptr [ %514, %510 ], [ %514, %517 ], [ %553, %549 ]
  %564 = phi i1 [ false, %510 ], [ false, %517 ], [ true, %549 ]
  br i1 %564, label %587, label %565, !prof !185

565:                                              ; preds = %559
  %566 = load ptr, ptr %38, align 8, !tbaa !83
  %567 = sext i32 %562 to i64
  %568 = getelementptr inbounds ptr, ptr %566, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !48
  %570 = call zeroext i8 @bitmap_clear_bit(ptr noundef %569, i32 noundef %476) #15
  %571 = load ptr, ptr %38, align 8, !tbaa !83
  %572 = getelementptr inbounds ptr, ptr %571, i64 %567
  %573 = load ptr, ptr %572, align 8, !tbaa !48
  %574 = load ptr, ptr %573, align 8, !tbaa !159
  %575 = icmp eq ptr %574, null
  br i1 %575, label %576, label %584, !prof !186

576:                                              ; preds = %565
  %577 = load ptr, ptr %40, align 8, !tbaa !84
  %578 = call zeroext i8 @bitmap_clear_bit(ptr noundef %577, i32 noundef %562) #15
  %579 = load ptr, ptr %38, align 8, !tbaa !83
  %580 = getelementptr inbounds ptr, ptr %579, i64 %567
  %581 = load ptr, ptr %580, align 8, !tbaa !48
  call void @bitmap_obstack_free(ptr noundef %581) #15
  %582 = load ptr, ptr %38, align 8, !tbaa !83
  %583 = getelementptr inbounds ptr, ptr %582, i64 %567
  store ptr null, ptr %583, align 8, !tbaa !48
  br label %584

584:                                              ; preds = %576, %565
  %585 = lshr i64 %560, 1
  %586 = add i32 %562, 1
  br label %504, !llvm.loop !187

587:                                              ; preds = %559
  %588 = load ptr, ptr %18, align 8, !tbaa !79
  %589 = getelementptr inbounds ptr, ptr %588, i64 %488
  %590 = load ptr, ptr %589, align 8, !tbaa !48
  call void @bitmap_obstack_free(ptr noundef %590) #15
  %591 = load ptr, ptr %18, align 8, !tbaa !79
  %592 = getelementptr inbounds ptr, ptr %591, i64 %488
  store ptr null, ptr %592, align 8, !tbaa !48
  br label %593

593:                                              ; preds = %587, %486
  %594 = icmp eq i8 %361, 0
  br i1 %594, label %595, label %601, !prof !168

595:                                              ; preds = %593
  %596 = load ptr, ptr %32, align 8, !tbaa !80
  %597 = getelementptr inbounds ptr, ptr %596, i64 %488
  %598 = load ptr, ptr %597, align 8, !tbaa !48
  call void @bitmap_obstack_free(ptr noundef %598) #15
  %599 = load ptr, ptr %32, align 8, !tbaa !80
  %600 = getelementptr inbounds ptr, ptr %599, i64 %488
  store ptr null, ptr %600, align 8, !tbaa !48
  br label %601

601:                                              ; preds = %593, %595
  %602 = load ptr, ptr %45, align 8, !tbaa !87
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %606, !prof !188

604:                                              ; preds = %601
  %605 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  store ptr %605, ptr %45, align 8, !tbaa !87
  br label %606

606:                                              ; preds = %604, %601
  %607 = load ptr, ptr %45, align 8, !tbaa !87
  %608 = call zeroext i8 @bitmap_set_bit(ptr noundef %607, i32 noundef %476) #15
  br label %609

609:                                              ; preds = %606, %473, %394
  %610 = icmp eq ptr %396, null
  br i1 %610, label %616, label %611, !prof !189

611:                                              ; preds = %609
  %612 = getelementptr inbounds %struct.use_optype_d, ptr %396, i64 0, i32 1, i32 3
  %613 = load ptr, ptr %612, align 8, !tbaa !156
  %614 = load ptr, ptr %613, align 8, !tbaa !48
  %615 = load ptr, ptr %396, align 8, !tbaa !153
  br label %616

616:                                              ; preds = %609, %611
  %617 = phi i8 [ %397, %611 ], [ 1, %609 ]
  %618 = phi ptr [ %615, %611 ], [ %396, %609 ]
  %619 = phi ptr [ %614, %611 ], [ null, %609 ]
  %620 = icmp eq i8 %617, 0
  br i1 %620, label %394, label %621, !prof !190, !llvm.loop !191

621:                                              ; preds = %616, %390
  %622 = load i32, ptr %144, align 8
  %623 = and i32 %622, 255
  %624 = add nsw i32 %623, -10
  %625 = icmp ult i32 %624, -9
  br i1 %625, label %629, label %626, !prof !122

626:                                              ; preds = %621
  %627 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %144, i64 0, i32 1
  %628 = load ptr, ptr %627, align 8, !tbaa !59
  br label %629

629:                                              ; preds = %626, %621
  %630 = phi ptr [ %628, %626 ], [ null, %621 ]
  %631 = icmp eq ptr %630, null
  br i1 %631, label %642, label %632, !prof !192

632:                                              ; preds = %629
  %633 = and i32 %622, 254
  %634 = add nsw i32 %633, -10
  %635 = icmp ult i32 %634, -4
  br i1 %635, label %642, label %636, !prof !193

636:                                              ; preds = %632
  %637 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !59
  %639 = icmp eq ptr %638, null
  br i1 %639, label %642, label %640, !prof !194

640:                                              ; preds = %636
  %641 = load ptr, ptr %630, align 8, !tbaa !127
  br label %642

642:                                              ; preds = %640, %636, %632, %629
  %643 = phi ptr [ %630, %629 ], [ %630, %632 ], [ %630, %636 ], [ %641, %640 ]
  %644 = icmp eq ptr %643, null
  br i1 %644, label %650, label %645, !prof !195

645:                                              ; preds = %642
  %646 = getelementptr inbounds %struct.def_optype_d, ptr %643, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !130
  %648 = load ptr, ptr %647, align 8, !tbaa !48
  %649 = load ptr, ptr %643, align 8, !tbaa !127
  br label %650

650:                                              ; preds = %645, %642
  %651 = phi i8 [ 0, %645 ], [ 1, %642 ]
  %652 = phi ptr [ %649, %645 ], [ %643, %642 ]
  %653 = phi ptr [ %648, %645 ], [ null, %642 ]
  br i1 %644, label %708, label %654, !prof !195

654:                                              ; preds = %650, %703
  %655 = phi ptr [ %706, %703 ], [ %653, %650 ]
  %656 = phi ptr [ %705, %703 ], [ %652, %650 ]
  %657 = phi i8 [ %704, %703 ], [ %651, %650 ]
  %658 = load i64, ptr %655, align 8
  %659 = and i64 %658, 65535
  %660 = icmp eq i64 %659, 141
  br i1 %660, label %662, label %661, !prof !196

661:                                              ; preds = %654
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 147, ptr noundef nonnull @.str.4) #15
  br label %662

662:                                              ; preds = %661, %654
  %663 = load ptr, ptr %121, align 8, !tbaa !93
  %664 = getelementptr inbounds %struct.tree_ssa_name, ptr %655, i64 0, i32 3
  %665 = load i32, ptr %664, align 8, !tbaa !59
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds %struct.partition_def, ptr %663, i64 0, i32 1, i64 %666
  %668 = load i32, ptr %667, align 8, !tbaa !94
  %669 = load ptr, ptr %141, align 8, !tbaa !96
  %670 = icmp eq ptr %669, null
  br i1 %670, label %675, label %671, !prof !197

671:                                              ; preds = %662
  %672 = sext i32 %668 to i64
  %673 = getelementptr inbounds i32, ptr %669, i64 %672
  %674 = load i32, ptr %673, align 4, !tbaa !63
  br label %675

675:                                              ; preds = %671, %662
  %676 = phi i32 [ %674, %671 ], [ %668, %662 ]
  %677 = icmp eq i32 %676, -1
  br i1 %677, label %696, label %678, !prof !197

678:                                              ; preds = %675
  %679 = load ptr, ptr %38, align 8, !tbaa !83
  %680 = sext i32 %676 to i64
  %681 = getelementptr inbounds ptr, ptr %679, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !48
  %683 = icmp eq ptr %682, null
  br i1 %683, label %696, label %684, !prof !196

684:                                              ; preds = %678
  %685 = load ptr, ptr %38, align 8, !tbaa !83
  %686 = getelementptr inbounds ptr, ptr %685, i64 %680
  %687 = load ptr, ptr %686, align 8, !tbaa !48
  %688 = icmp eq ptr %687, null
  br i1 %688, label %696, label %689

689:                                              ; preds = %684, %689
  %690 = phi ptr [ %694, %689 ], [ %687, %684 ]
  %691 = call i32 @bitmap_first_set_bit(ptr noundef nonnull %690) #15
  call fastcc void @finished_with_expr(ptr noundef nonnull %4, i32 noundef %691, i8 noundef zeroext 1)
  %692 = load ptr, ptr %38, align 8, !tbaa !83
  %693 = getelementptr inbounds ptr, ptr %692, i64 %680
  %694 = load ptr, ptr %693, align 8, !tbaa !48
  %695 = icmp eq ptr %694, null
  br i1 %695, label %696, label %689, !llvm.loop !198

696:                                              ; preds = %689, %675, %678, %684
  %697 = icmp eq ptr %656, null
  br i1 %697, label %703, label %698, !prof !196

698:                                              ; preds = %696
  %699 = getelementptr inbounds %struct.def_optype_d, ptr %656, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !130
  %701 = load ptr, ptr %700, align 8, !tbaa !48
  %702 = load ptr, ptr %656, align 8, !tbaa !127
  br label %703

703:                                              ; preds = %698, %696
  %704 = phi i8 [ %657, %698 ], [ 1, %696 ]
  %705 = phi ptr [ %702, %698 ], [ %656, %696 ]
  %706 = phi ptr [ %701, %698 ], [ null, %696 ]
  %707 = icmp eq i8 %704, 0
  br i1 %707, label %654, label %708, !prof !197, !llvm.loop !199

708:                                              ; preds = %703, %650
  %709 = icmp eq i8 %361, 0
  br i1 %709, label %1038, label %710, !prof !200

710:                                              ; preds = %708
  %711 = load i32, ptr %144, align 8
  %712 = and i32 %711, 255
  %713 = add nsw i32 %712, -10
  %714 = icmp ult i32 %713, -9
  br i1 %714, label %718, label %715, !prof !140

715:                                              ; preds = %710
  %716 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %144, i64 0, i32 1
  %717 = load ptr, ptr %716, align 8, !tbaa !59
  br label %718

718:                                              ; preds = %715, %710
  %719 = phi ptr [ %717, %715 ], [ null, %710 ]
  %720 = icmp eq ptr %719, null
  br i1 %720, label %731, label %721, !prof !140

721:                                              ; preds = %718
  %722 = and i32 %711, 254
  %723 = add nsw i32 %722, -10
  %724 = icmp ult i32 %723, -4
  br i1 %724, label %731, label %725, !prof !140

725:                                              ; preds = %721
  %726 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 1
  %727 = load ptr, ptr %726, align 8, !tbaa !59
  %728 = icmp eq ptr %727, null
  br i1 %728, label %731, label %729, !prof !142

729:                                              ; preds = %725
  %730 = load ptr, ptr %719, align 8, !tbaa !127
  br label %731

731:                                              ; preds = %729, %725, %721, %718
  %732 = phi ptr [ %719, %718 ], [ %719, %721 ], [ %719, %725 ], [ %730, %729 ]
  %733 = icmp ne ptr %732, null
  %734 = getelementptr inbounds %struct.def_optype_d, ptr %732, i64 0, i32 1
  %735 = load ptr, ptr %734, align 8, !tbaa !130
  %736 = load ptr, ptr %735, align 8, !tbaa !48
  %737 = load ptr, ptr %732, align 8, !tbaa !127
  %738 = icmp eq ptr %737, null
  %739 = select i1 %738, ptr %736, ptr null, !prof !142
  call void @llvm.assume(i1 %733)
  %740 = getelementptr inbounds %struct.tree_ssa_name, ptr %739, i64 0, i32 3
  %741 = load i32, ptr %740, align 8, !tbaa !59
  %742 = getelementptr inbounds %struct.tree_ssa_name, ptr %739, i64 0, i32 1
  %743 = load ptr, ptr %742, align 8, !tbaa !59
  %744 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %745 = getelementptr inbounds %struct.tree_decl_minimal, ptr %743, i64 0, i32 2
  %746 = load i32, ptr %745, align 4, !tbaa !59
  %747 = call zeroext i8 @bitmap_set_bit(ptr noundef %744, i32 noundef %746) #15
  %748 = load i32, ptr %144, align 8
  %749 = and i32 %748, 255
  %750 = add nsw i32 %749, -10
  %751 = icmp ult i32 %750, -9
  br i1 %751, label %755, label %752, !prof !140

752:                                              ; preds = %731
  %753 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %144, i64 0, i32 2
  %754 = load ptr, ptr %753, align 8, !tbaa !59
  br label %755

755:                                              ; preds = %752, %731
  %756 = phi ptr [ %754, %752 ], [ null, %731 ]
  %757 = icmp eq ptr %756, null
  br i1 %757, label %768, label %758, !prof !140

758:                                              ; preds = %755
  %759 = and i32 %748, 254
  %760 = add nsw i32 %759, -10
  %761 = icmp ult i32 %760, -4
  br i1 %761, label %768, label %762, !prof !140

762:                                              ; preds = %758
  %763 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 2
  %764 = load ptr, ptr %763, align 8, !tbaa !59
  %765 = icmp eq ptr %764, null
  br i1 %765, label %768, label %766, !prof !201

766:                                              ; preds = %762
  %767 = load ptr, ptr %756, align 8, !tbaa !153
  br label %768

768:                                              ; preds = %766, %762, %758, %755
  %769 = phi ptr [ %756, %755 ], [ %756, %758 ], [ %756, %762 ], [ %767, %766 ]
  %770 = icmp eq ptr %769, null
  br i1 %770, label %776, label %771, !prof !202

771:                                              ; preds = %768
  %772 = getelementptr inbounds %struct.use_optype_d, ptr %769, i64 0, i32 1, i32 3
  %773 = load ptr, ptr %772, align 8, !tbaa !156
  %774 = load ptr, ptr %773, align 8, !tbaa !48
  %775 = load ptr, ptr %769, align 8, !tbaa !153
  br label %776

776:                                              ; preds = %771, %768
  %777 = phi ptr [ %775, %771 ], [ %769, %768 ]
  %778 = phi i8 [ 0, %771 ], [ 1, %768 ]
  %779 = phi ptr [ %774, %771 ], [ null, %768 ]
  br i1 %770, label %994, label %780, !prof !203

780:                                              ; preds = %776, %989
  %781 = phi ptr [ %992, %989 ], [ %779, %776 ]
  %782 = phi i8 [ %991, %989 ], [ %778, %776 ]
  %783 = phi ptr [ %990, %989 ], [ %777, %776 ]
  %784 = getelementptr inbounds %struct.tree_ssa_name, ptr %781, i64 0, i32 3
  %785 = load i32, ptr %784, align 8, !tbaa !59
  %786 = load ptr, ptr %32, align 8, !tbaa !80
  %787 = sext i32 %785 to i64
  %788 = getelementptr inbounds ptr, ptr %786, i64 %787
  %789 = load ptr, ptr %788, align 8, !tbaa !48
  %790 = load ptr, ptr %45, align 8, !tbaa !87
  %791 = icmp eq ptr %790, null
  br i1 %791, label %795, label %792, !prof !204

792:                                              ; preds = %780
  %793 = call i32 @bitmap_bit_p(ptr noundef nonnull %790, i32 noundef %785) #15
  %794 = trunc i32 %793 to i8
  br label %795

795:                                              ; preds = %792, %780
  %796 = phi i8 [ %794, %792 ], [ 0, %780 ]
  %797 = icmp eq i8 %796, 0
  br i1 %797, label %911, label %798, !prof !205

798:                                              ; preds = %795
  %799 = load ptr, ptr %44, align 8, !tbaa !86
  %800 = load ptr, ptr %799, align 8, !tbaa !159
  %801 = icmp eq ptr %800, null
  br i1 %801, label %967, label %802, !prof !206

802:                                              ; preds = %798
  %803 = sext i32 %741 to i64
  %804 = getelementptr inbounds %struct.bitmap_element_def, ptr %800, i64 0, i32 2
  %805 = load i32, ptr %804, align 8, !tbaa !172
  %806 = shl i32 %805, 7
  %807 = getelementptr inbounds %struct.bitmap_element_def, ptr %800, i64 0, i32 3
  %808 = load i64, ptr %807, align 8, !tbaa !145
  %809 = icmp eq i64 %808, 0
  %810 = zext i1 %809 to i32
  %811 = or disjoint i32 %806, %810
  br label %812

812:                                              ; preds = %885, %802
  %813 = phi i32 [ 0, %802 ], [ %868, %885 ]
  %814 = phi i64 [ %808, %802 ], [ %890, %885 ]
  %815 = phi ptr [ %800, %802 ], [ %870, %885 ]
  %816 = phi i32 [ %811, %802 ], [ %891, %885 ]
  %817 = icmp eq i64 %814, 0
  br i1 %817, label %832, label %818, !prof !207

818:                                              ; preds = %846, %812
  %819 = phi i32 [ %813, %812 ], [ %847, %846 ]
  %820 = phi i64 [ %814, %812 ], [ %851, %846 ]
  %821 = phi ptr [ %815, %812 ], [ %838, %846 ]
  %822 = phi i32 [ %816, %812 ], [ %848, %846 ]
  %823 = and i64 %820, 1
  %824 = icmp eq i64 %823, 0
  br i1 %824, label %825, label %867, !prof !208

825:                                              ; preds = %818, %825
  %826 = phi i32 [ %829, %825 ], [ %822, %818 ]
  %827 = phi i64 [ %828, %825 ], [ %820, %818 ]
  %828 = lshr exact i64 %827, 1
  %829 = add i32 %826, 1
  %830 = and i64 %827, 2
  %831 = icmp eq i64 %830, 0
  br i1 %831, label %825, label %867, !prof !209, !llvm.loop !177

832:                                              ; preds = %812
  %833 = add i32 %816, 63
  %834 = and i32 %833, -64
  %835 = add i32 %813, 1
  br label %836

836:                                              ; preds = %863, %832
  %837 = phi i64 [ %814, %832 ], [ %858, %863 ]
  %838 = phi ptr [ %815, %832 ], [ %861, %863 ]
  %839 = phi i32 [ %834, %832 ], [ %866, %863 ]
  %840 = phi i32 [ %835, %832 ], [ 0, %863 ]
  %841 = icmp eq i32 %840, 2
  br i1 %841, label %857, label %842, !prof !210

842:                                              ; preds = %836
  %843 = add i32 %839, 128
  %844 = shl i32 %840, 6
  %845 = sub i32 %843, %844
  br label %846

846:                                              ; preds = %842, %853
  %847 = phi i32 [ %855, %853 ], [ %840, %842 ]
  %848 = phi i32 [ %854, %853 ], [ %839, %842 ]
  %849 = zext i32 %847 to i64
  %850 = getelementptr inbounds %struct.bitmap_element_def, ptr %838, i64 0, i32 3, i64 %849
  %851 = load i64, ptr %850, align 8, !tbaa !145
  %852 = icmp eq i64 %851, 0
  br i1 %852, label %853, label %818, !prof !211

853:                                              ; preds = %846
  %854 = add i32 %848, 64
  %855 = add i32 %847, 1
  %856 = icmp eq i32 %855, 2
  br i1 %856, label %857, label %846, !prof !212, !llvm.loop !181

857:                                              ; preds = %853, %836
  %858 = phi i64 [ %837, %836 ], [ %851, %853 ]
  %859 = phi i32 [ %839, %836 ], [ %845, %853 ]
  %860 = phi i32 [ %840, %836 ], [ 2, %853 ]
  %861 = load ptr, ptr %838, align 8, !tbaa !182
  %862 = icmp eq ptr %861, null
  br i1 %862, label %867, label %863, !prof !213

863:                                              ; preds = %857
  %864 = getelementptr inbounds %struct.bitmap_element_def, ptr %861, i64 0, i32 2
  %865 = load i32, ptr %864, align 8, !tbaa !172
  %866 = shl i32 %865, 7
  br label %836, !llvm.loop !184

867:                                              ; preds = %857, %825, %818
  %868 = phi i32 [ %819, %818 ], [ %819, %825 ], [ %860, %857 ]
  %869 = phi i64 [ %820, %818 ], [ %828, %825 ], [ %858, %857 ]
  %870 = phi ptr [ %821, %818 ], [ %821, %825 ], [ %861, %857 ]
  %871 = phi i32 [ %822, %818 ], [ %829, %825 ], [ %859, %857 ]
  %872 = phi i1 [ false, %818 ], [ false, %825 ], [ true, %857 ]
  br i1 %872, label %892, label %873, !prof !214

873:                                              ; preds = %867
  %874 = load ptr, ptr %38, align 8, !tbaa !83
  %875 = sext i32 %871 to i64
  %876 = getelementptr inbounds ptr, ptr %874, i64 %875
  %877 = load ptr, ptr %876, align 8, !tbaa !48
  %878 = icmp eq ptr %877, null
  br i1 %878, label %879, label %885, !prof !215

879:                                              ; preds = %873
  %880 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %881 = load ptr, ptr %38, align 8, !tbaa !83
  %882 = getelementptr inbounds ptr, ptr %881, i64 %875
  store ptr %880, ptr %882, align 8, !tbaa !48
  %883 = load ptr, ptr %40, align 8, !tbaa !84
  %884 = call zeroext i8 @bitmap_set_bit(ptr noundef %883, i32 noundef %871) #15
  br label %885

885:                                              ; preds = %879, %873
  %886 = load ptr, ptr %38, align 8, !tbaa !83
  %887 = getelementptr inbounds ptr, ptr %886, i64 %875
  %888 = load ptr, ptr %887, align 8, !tbaa !48
  %889 = call zeroext i8 @bitmap_set_bit(ptr noundef %888, i32 noundef %741) #15
  %890 = lshr i64 %869, 1
  %891 = add i32 %871, 1
  br label %812, !llvm.loop !216

892:                                              ; preds = %867
  %893 = load ptr, ptr %18, align 8, !tbaa !79
  %894 = getelementptr inbounds ptr, ptr %893, i64 %803
  %895 = load ptr, ptr %894, align 8, !tbaa !48
  %896 = icmp eq ptr %895, null
  br i1 %896, label %897, label %901, !prof !213

897:                                              ; preds = %892
  %898 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %899 = load ptr, ptr %18, align 8, !tbaa !79
  %900 = getelementptr inbounds ptr, ptr %899, i64 %803
  store ptr %898, ptr %900, align 8, !tbaa !48
  br label %901

901:                                              ; preds = %897, %892
  %902 = load ptr, ptr %18, align 8, !tbaa !79
  %903 = getelementptr inbounds ptr, ptr %902, i64 %803
  %904 = load ptr, ptr %903, align 8, !tbaa !48
  %905 = load ptr, ptr %44, align 8, !tbaa !86
  %906 = call zeroext i8 @bitmap_ior_into(ptr noundef %904, ptr noundef %905) #15
  %907 = load ptr, ptr %40, align 8, !tbaa !84
  %908 = load ptr, ptr %44, align 8, !tbaa !86
  %909 = call zeroext i8 @bitmap_ior_into(ptr noundef %907, ptr noundef %908) #15
  %910 = load ptr, ptr %44, align 8, !tbaa !86
  call void @bitmap_clear(ptr noundef %910) #15
  br label %967

911:                                              ; preds = %795
  %912 = load ptr, ptr %4, align 8, !tbaa !68
  %913 = load i64, ptr %781, align 8
  %914 = and i64 %913, 65535
  %915 = icmp eq i64 %914, 141
  br i1 %915, label %917, label %916, !prof !217

916:                                              ; preds = %911
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 147, ptr noundef nonnull @.str.4) #15
  br label %917

917:                                              ; preds = %916, %911
  %918 = load ptr, ptr %912, align 8, !tbaa !93
  %919 = load i32, ptr %784, align 8, !tbaa !59
  %920 = zext i32 %919 to i64
  %921 = getelementptr inbounds %struct.partition_def, ptr %918, i64 0, i32 1, i64 %920
  %922 = load i32, ptr %921, align 8, !tbaa !94
  %923 = getelementptr inbounds %struct._var_map, ptr %912, i64 0, i32 1
  %924 = load ptr, ptr %923, align 8, !tbaa !96
  %925 = icmp eq ptr %924, null
  br i1 %925, label %930, label %926, !prof !218

926:                                              ; preds = %917
  %927 = sext i32 %922 to i64
  %928 = getelementptr inbounds i32, ptr %924, i64 %927
  %929 = load i32, ptr %928, align 4, !tbaa !63
  br label %930

930:                                              ; preds = %926, %917
  %931 = phi i32 [ %929, %926 ], [ %922, %917 ]
  %932 = load ptr, ptr %49, align 8, !tbaa !88
  %933 = sext i32 %931 to i64
  %934 = getelementptr inbounds i32, ptr %932, i64 %933
  %935 = load i32, ptr %934, align 4, !tbaa !63
  %936 = icmp sgt i32 %935, 1
  br i1 %936, label %937, label %967, !prof !219

937:                                              ; preds = %930
  %938 = sext i32 %741 to i64
  %939 = load ptr, ptr %38, align 8, !tbaa !83
  %940 = getelementptr inbounds ptr, ptr %939, i64 %933
  %941 = load ptr, ptr %940, align 8, !tbaa !48
  %942 = icmp eq ptr %941, null
  br i1 %942, label %943, label %949, !prof !220

943:                                              ; preds = %937
  %944 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %945 = load ptr, ptr %38, align 8, !tbaa !83
  %946 = getelementptr inbounds ptr, ptr %945, i64 %933
  store ptr %944, ptr %946, align 8, !tbaa !48
  %947 = load ptr, ptr %40, align 8, !tbaa !84
  %948 = call zeroext i8 @bitmap_set_bit(ptr noundef %947, i32 noundef %931) #15
  br label %949

949:                                              ; preds = %943, %937
  %950 = load ptr, ptr %38, align 8, !tbaa !83
  %951 = getelementptr inbounds ptr, ptr %950, i64 %933
  %952 = load ptr, ptr %951, align 8, !tbaa !48
  %953 = call zeroext i8 @bitmap_set_bit(ptr noundef %952, i32 noundef %741) #15
  %954 = load ptr, ptr %18, align 8, !tbaa !79
  %955 = getelementptr inbounds ptr, ptr %954, i64 %938
  %956 = load ptr, ptr %955, align 8, !tbaa !48
  %957 = icmp eq ptr %956, null
  br i1 %957, label %958, label %962, !prof !221

958:                                              ; preds = %949
  %959 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %960 = load ptr, ptr %18, align 8, !tbaa !79
  %961 = getelementptr inbounds ptr, ptr %960, i64 %938
  store ptr %959, ptr %961, align 8, !tbaa !48
  br label %962

962:                                              ; preds = %958, %949
  %963 = load ptr, ptr %18, align 8, !tbaa !79
  %964 = getelementptr inbounds ptr, ptr %963, i64 %938
  %965 = load ptr, ptr %964, align 8, !tbaa !48
  %966 = call zeroext i8 @bitmap_set_bit(ptr noundef %965, i32 noundef %931) #15
  br label %967

967:                                              ; preds = %962, %930, %901, %798
  %968 = icmp eq ptr %789, null
  br i1 %968, label %976, label %969, !prof !205

969:                                              ; preds = %967
  %970 = call zeroext i8 @bitmap_ior_into(ptr noundef %744, ptr noundef nonnull %789) #15
  %971 = load ptr, ptr %32, align 8, !tbaa !80
  %972 = getelementptr inbounds ptr, ptr %971, i64 %787
  %973 = load ptr, ptr %972, align 8, !tbaa !48
  call void @bitmap_obstack_free(ptr noundef %973) #15
  %974 = load ptr, ptr %32, align 8, !tbaa !80
  %975 = getelementptr inbounds ptr, ptr %974, i64 %787
  store ptr null, ptr %975, align 8, !tbaa !48
  br label %982

976:                                              ; preds = %967
  %977 = getelementptr inbounds %struct.tree_ssa_name, ptr %781, i64 0, i32 1
  %978 = load ptr, ptr %977, align 8, !tbaa !59
  %979 = getelementptr inbounds %struct.tree_decl_minimal, ptr %978, i64 0, i32 2
  %980 = load i32, ptr %979, align 4, !tbaa !59
  %981 = call zeroext i8 @bitmap_set_bit(ptr noundef %744, i32 noundef %980) #15
  br label %982

982:                                              ; preds = %976, %969
  %983 = icmp eq ptr %783, null
  br i1 %983, label %989, label %984, !prof !222

984:                                              ; preds = %982
  %985 = getelementptr inbounds %struct.use_optype_d, ptr %783, i64 0, i32 1, i32 3
  %986 = load ptr, ptr %985, align 8, !tbaa !156
  %987 = load ptr, ptr %986, align 8, !tbaa !48
  %988 = load ptr, ptr %783, align 8, !tbaa !153
  br label %989

989:                                              ; preds = %982, %984
  %990 = phi ptr [ %988, %984 ], [ %783, %982 ]
  %991 = phi i8 [ %782, %984 ], [ 1, %982 ]
  %992 = phi ptr [ %987, %984 ], [ null, %982 ]
  %993 = icmp eq i8 %991, 0
  br i1 %993, label %780, label %994, !prof !223, !llvm.loop !224

994:                                              ; preds = %989, %776
  %995 = load ptr, ptr %32, align 8, !tbaa !80
  %996 = sext i32 %741 to i64
  %997 = getelementptr inbounds ptr, ptr %995, i64 %996
  store ptr %744, ptr %997, align 8, !tbaa !48
  %998 = load i32, ptr %144, align 8
  %999 = and i32 %998, 254
  %1000 = add nsw i32 %999, -10
  %1001 = icmp ult i32 %1000, -4
  br i1 %1001, label %1038, label %1002, !prof !140

1002:                                             ; preds = %994
  %1003 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 2
  %1004 = load ptr, ptr %1003, align 8, !tbaa !59
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1038, label %1006, !prof !201

1006:                                             ; preds = %1002
  %1007 = load i32, ptr %42, align 8, !tbaa !85
  %1008 = load ptr, ptr %18, align 8, !tbaa !79
  %1009 = getelementptr inbounds ptr, ptr %1008, i64 %996
  %1010 = load ptr, ptr %1009, align 8, !tbaa !48
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1012, label %1016, !prof !225

1012:                                             ; preds = %1006
  %1013 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %1014 = load ptr, ptr %18, align 8, !tbaa !79
  %1015 = getelementptr inbounds ptr, ptr %1014, i64 %996
  store ptr %1013, ptr %1015, align 8, !tbaa !48
  br label %1016

1016:                                             ; preds = %1012, %1006
  %1017 = load ptr, ptr %18, align 8, !tbaa !79
  %1018 = getelementptr inbounds ptr, ptr %1017, i64 %996
  %1019 = load ptr, ptr %1018, align 8, !tbaa !48
  %1020 = call zeroext i8 @bitmap_set_bit(ptr noundef %1019, i32 noundef %1007) #15
  %1021 = load i32, ptr %42, align 8, !tbaa !85
  %1022 = load ptr, ptr %38, align 8, !tbaa !83
  %1023 = sext i32 %1021 to i64
  %1024 = getelementptr inbounds ptr, ptr %1022, i64 %1023
  %1025 = load ptr, ptr %1024, align 8, !tbaa !48
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1027, label %1033, !prof !226

1027:                                             ; preds = %1016
  %1028 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %1029 = load ptr, ptr %38, align 8, !tbaa !83
  %1030 = getelementptr inbounds ptr, ptr %1029, i64 %1023
  store ptr %1028, ptr %1030, align 8, !tbaa !48
  %1031 = load ptr, ptr %40, align 8, !tbaa !84
  %1032 = call zeroext i8 @bitmap_set_bit(ptr noundef %1031, i32 noundef %1021) #15
  br label %1033

1033:                                             ; preds = %1027, %1016
  %1034 = load ptr, ptr %38, align 8, !tbaa !83
  %1035 = getelementptr inbounds ptr, ptr %1034, i64 %1023
  %1036 = load ptr, ptr %1035, align 8, !tbaa !48
  %1037 = call zeroext i8 @bitmap_set_bit(ptr noundef %1036, i32 noundef %741) #15
  br label %1038

1038:                                             ; preds = %1033, %1002, %994, %708
  %1039 = load ptr, ptr %44, align 8, !tbaa !86
  call void @bitmap_clear(ptr noundef %1039) #15
  %1040 = load i32, ptr %144, align 8
  %1041 = and i32 %1040, 254
  %1042 = add nsw i32 %1041, -10
  %1043 = icmp ult i32 %1042, -4
  br i1 %1043, label %1047, label %1044, !prof !227

1044:                                             ; preds = %1038
  %1045 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %144, i64 0, i32 1
  %1046 = load ptr, ptr %1045, align 8, !tbaa !59
  br label %1047

1047:                                             ; preds = %1044, %1038
  %1048 = phi ptr [ %1046, %1044 ], [ null, %1038 ]
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1064, label %1050, !prof !228

1050:                                             ; preds = %1047
  %1051 = load i32, ptr %42, align 8, !tbaa !85
  %1052 = sext i32 %1051 to i64
  %1053 = load ptr, ptr %38, align 8, !tbaa !83
  %1054 = getelementptr inbounds ptr, ptr %1053, i64 %1052
  %1055 = load ptr, ptr %1054, align 8, !tbaa !48
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1064, label %1057, !prof !229

1057:                                             ; preds = %1050, %1057
  %1058 = phi ptr [ %1062, %1057 ], [ %1055, %1050 ]
  %1059 = call i32 @bitmap_first_set_bit(ptr noundef nonnull %1058) #15
  call fastcc void @finished_with_expr(ptr noundef nonnull %4, i32 noundef %1059, i8 noundef zeroext 1)
  %1060 = load ptr, ptr %38, align 8, !tbaa !83
  %1061 = getelementptr inbounds ptr, ptr %1060, i64 %1052
  %1062 = load ptr, ptr %1061, align 8, !tbaa !48
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1064, label %1057, !prof !229, !llvm.loop !198

1064:                                             ; preds = %1057, %1050, %1047, %142
  %1065 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %143, i64 0, i32 2
  %1066 = load ptr, ptr %1065, align 8, !tbaa !230
  %1067 = icmp eq ptr %1066, null
  br i1 %1067, label %110, label %142, !prof !231, !llvm.loop !232

1068:                                             ; preds = %110, %98
  %1069 = load ptr, ptr %40, align 8, !tbaa !84
  call void @bitmap_obstack_free(ptr noundef %1069) #15
  store ptr null, ptr %40, align 8, !tbaa !84
  %1070 = load ptr, ptr %44, align 8, !tbaa !86
  call void @bitmap_obstack_free(ptr noundef %1070) #15
  store ptr null, ptr %44, align 8, !tbaa !86
  %1071 = load ptr, ptr %32, align 8, !tbaa !80
  call void @free(ptr noundef %1071)
  %1072 = load ptr, ptr %38, align 8, !tbaa !83
  call void @free(ptr noundef %1072)
  %1073 = load ptr, ptr %18, align 8, !tbaa !79
  call void @free(ptr noundef %1073)
  %1074 = load ptr, ptr %49, align 8, !tbaa !88
  call void @free(ptr noundef %1074)
  %1075 = load ptr, ptr %45, align 8, !tbaa !87
  call void @free(ptr noundef %4)
  ret ptr %1075
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_replaceable_exprs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !47 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %0)
  br label %4

4:                                                ; preds = %34, %2
  %5 = phi i64 [ %35, %34 ], [ 0, %2 ]
  %6 = load ptr, ptr @cfun, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %10, align 8, !tbaa !77
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %4 ]
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %5, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = trunc i64 %5 to i32
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.VEC_tree_base, ptr %27, i64 0, i32 2, i64 %5
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %29, i32 noundef 2) #15
  %30 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 18, i64 1, ptr %0)
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %32, i32 noundef 0, i32 noundef 2) #15
  %33 = tail call i32 @fputc(i32 10, ptr %0)
  br label %34

34:                                               ; preds = %18, %22
  %35 = add nuw nsw i64 %5, 1
  br label %4, !llvm.loop !233

36:                                               ; preds = %14
  %37 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @finished_with_expr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #11 !prof !47 !PGOFuncName !234 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %113, label %10, !prof !170

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !159
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @bitmap_zero_bits, ptr %11, !prof !171
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !172
  %16 = shl i32 %15, 7
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !145
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  br label %23

23:                                               ; preds = %104, %10
  %24 = phi i64 [ %18, %10 ], [ %105, %104 ]
  %25 = phi i32 [ 0, %10 ], [ %80, %104 ]
  %26 = phi i32 [ %21, %10 ], [ %106, %104 ]
  %27 = phi ptr [ %13, %10 ], [ %82, %104 ]
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %43, label %29, !prof !174

29:                                               ; preds = %57, %23
  %30 = phi i64 [ %24, %23 ], [ %62, %57 ]
  %31 = phi i32 [ %25, %23 ], [ %58, %57 ]
  %32 = phi i32 [ %26, %23 ], [ %59, %57 ]
  %33 = phi ptr [ %27, %23 ], [ %50, %57 ]
  %34 = and i64 %30, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %78, !prof !175

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %40, %36 ], [ %32, %29 ]
  %38 = phi i64 [ %39, %36 ], [ %30, %29 ]
  %39 = lshr exact i64 %38, 1
  %40 = add i32 %37, 1
  %41 = and i64 %38, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %36, label %78, !prof !176, !llvm.loop !177

43:                                               ; preds = %23
  %44 = add i32 %26, 63
  %45 = and i32 %44, -64
  %46 = add i32 %25, 1
  br label %47

47:                                               ; preds = %74, %43
  %48 = phi i64 [ %24, %43 ], [ %69, %74 ]
  %49 = phi i32 [ %45, %43 ], [ %77, %74 ]
  %50 = phi ptr [ %27, %43 ], [ %72, %74 ]
  %51 = phi i32 [ %46, %43 ], [ 0, %74 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53, !prof !178

53:                                               ; preds = %47
  %54 = add i32 %49, 128
  %55 = shl i32 %51, 6
  %56 = sub i32 %54, %55
  br label %57

57:                                               ; preds = %53, %64
  %58 = phi i32 [ %66, %64 ], [ %51, %53 ]
  %59 = phi i32 [ %65, %64 ], [ %49, %53 ]
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !145
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %29, !prof !179

64:                                               ; preds = %57
  %65 = add i32 %59, 64
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %57, !prof !180, !llvm.loop !181

68:                                               ; preds = %64, %47
  %69 = phi i64 [ %48, %47 ], [ %62, %64 ]
  %70 = phi i32 [ %49, %47 ], [ %56, %64 ]
  %71 = phi i32 [ %51, %47 ], [ 2, %64 ]
  %72 = load ptr, ptr %50, align 8, !tbaa !182
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74, !prof !183

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !172
  %77 = shl i32 %76, 7
  br label %47, !llvm.loop !184

78:                                               ; preds = %68, %36, %29
  %79 = phi i64 [ %30, %29 ], [ %39, %36 ], [ %69, %68 ]
  %80 = phi i32 [ %31, %29 ], [ %31, %36 ], [ %71, %68 ]
  %81 = phi i32 [ %32, %29 ], [ %40, %36 ], [ %70, %68 ]
  %82 = phi ptr [ %33, %29 ], [ %33, %36 ], [ %72, %68 ]
  %83 = phi i1 [ false, %29 ], [ false, %36 ], [ true, %68 ]
  br i1 %83, label %107, label %84, !prof !185

84:                                               ; preds = %78
  %85 = load ptr, ptr %22, align 8, !tbaa !83
  %86 = sext i32 %81 to i64
  %87 = getelementptr inbounds ptr, ptr %85, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !48
  %89 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %88, i32 noundef %1) #15
  %90 = load ptr, ptr %22, align 8, !tbaa !83
  %91 = getelementptr inbounds ptr, ptr %90, i64 %86
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %104, !prof !186

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !84
  %98 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %97, i32 noundef %81) #15
  %99 = load ptr, ptr %22, align 8, !tbaa !83
  %100 = getelementptr inbounds ptr, ptr %99, i64 %86
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  tail call void @bitmap_obstack_free(ptr noundef %101) #15
  %102 = load ptr, ptr %22, align 8, !tbaa !83
  %103 = getelementptr inbounds ptr, ptr %102, i64 %86
  store ptr null, ptr %103, align 8, !tbaa !48
  br label %104

104:                                              ; preds = %84, %95
  %105 = lshr i64 %79, 1
  %106 = add i32 %81, 1
  br label %23, !llvm.loop !187

107:                                              ; preds = %78
  %108 = load ptr, ptr %4, align 8, !tbaa !79
  %109 = getelementptr inbounds ptr, ptr %108, i64 %6
  %110 = load ptr, ptr %109, align 8, !tbaa !48
  tail call void @bitmap_obstack_free(ptr noundef %110) #15
  %111 = load ptr, ptr %4, align 8, !tbaa !79
  %112 = getelementptr inbounds ptr, ptr %111, i64 %6
  store ptr null, ptr %112, align 8, !tbaa !48
  br label %113

113:                                              ; preds = %107, %3
  %114 = icmp eq i8 %2, 0
  br i1 %114, label %122, label %115, !prof !235

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !80
  %118 = getelementptr inbounds ptr, ptr %117, i64 %6
  %119 = load ptr, ptr %118, align 8, !tbaa !48
  tail call void @bitmap_obstack_free(ptr noundef %119) #15
  %120 = load ptr, ptr %116, align 8, !tbaa !80
  %121 = getelementptr inbounds ptr, ptr %120, i64 %6
  store ptr null, ptr %121, align 8, !tbaa !48
  br label %122

122:                                              ; preds = %115, %113
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !47 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ]

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !63
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !145
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !59
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !63
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !145
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !63
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !145
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #15
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  ret ptr %78
}

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

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
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @find_replaceable_exprs, ptr @xmalloc, i64 38}
!36 = !{ptr @find_replaceable_exprs, ptr @xcalloc, i64 152}
!37 = !{ptr @find_replaceable_exprs, ptr @bitmap_obstack_alloc_stat, i64 274202}
!38 = !{ptr @find_replaceable_exprs, ptr @stmt_could_throw_p, i64 125960}
!39 = !{ptr @find_replaceable_exprs, ptr @bitmap_bit_p, i64 106545}
!40 = !{ptr @find_replaceable_exprs, ptr @bitmap_ior_into, i64 76734}
!41 = !{ptr @find_replaceable_exprs, ptr @bitmap_clear_bit, i64 162279}
!42 = !{ptr @find_replaceable_exprs, ptr @bitmap_obstack_free, i64 274164}
!43 = !{ptr @find_replaceable_exprs, ptr @bitmap_set_bit, i64 477205}
!44 = !{ptr @find_replaceable_exprs, ptr @bitmap_clear, i64 351541}
!45 = !{ptr @find_replaceable_exprs, ptr @free, i64 190}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !49, i64 8}
!53 = !{!"_IO_FILE", !54, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !54, i64 112, !54, i64 116, !55, i64 120, !56, i64 128, !50, i64 130, !50, i64 131, !49, i64 136, !55, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !55, i64 184, !54, i64 192, !50, i64 196}
!54 = !{!"int", !50, i64 0}
!55 = !{!"long", !50, i64 0}
!56 = !{!"short", !50, i64 0}
!57 = !{!53, !49, i64 16}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!50, !50, i64 0}
!60 = !{!53, !49, i64 40}
!61 = !{!53, !49, i64 48}
!62 = !{!53, !54, i64 0}
!63 = !{!54, !54, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"function_entry_count", i64 38}
!68 = !{!69, !49, i64 0}
!69 = !{!"temp_expr_table_d", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !54, i64 40, !49, i64 48, !49, i64 56, !49, i64 64}
!70 = !{!71, !49, i64 24}
!71 = !{!"function", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !54, i64 104, !54, i64 108, !54, i64 112, !54, i64 116, !54, i64 120, !54, i64 124, !49, i64 128, !54, i64 136, !54, i64 137, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139}
!72 = !{!73, !49, i64 16}
!73 = !{!"gimple_df", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !74, i64 32, !74, i64 48, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !54, i64 96, !75, i64 104}
!74 = !{!"pt_solution", !54, i64 0, !54, i64 0, !54, i64 0, !54, i64 0, !54, i64 0, !54, i64 0, !49, i64 8}
!75 = !{!"ssa_operands", !49, i64 0, !54, i64 8, !54, i64 12, !50, i64 16, !49, i64 24, !49, i64 32}
!76 = !{!"branch_weights", i32 0, i32 38}
!77 = !{!78, !54, i64 0}
!78 = !{!"VEC_tree_base", !54, i64 0, !54, i64 4, !50, i64 8}
!79 = !{!69, !49, i64 8}
!80 = !{!69, !49, i64 24}
!81 = !{!82, !54, i64 24}
!82 = !{!"_var_map", !49, i64 0, !49, i64 8, !49, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !49, i64 40, !49, i64 48}
!83 = !{!69, !49, i64 32}
!84 = !{!69, !49, i64 48}
!85 = !{!69, !54, i64 40}
!86 = !{!69, !49, i64 56}
!87 = !{!69, !49, i64 16}
!88 = !{!69, !49, i64 64}
!89 = !{!"branch_weights", i32 0, i32 426477}
!90 = !{!"branch_weights", i32 426439, i32 38}
!91 = !{!"branch_weights", i32 162404, i32 264035}
!92 = !{!"branch_weights", i32 264035, i32 0}
!93 = !{!82, !49, i64 0}
!94 = !{!95, !54, i64 0}
!95 = !{!"partition_elem", !54, i64 0, !49, i64 8, !54, i64 16}
!96 = !{!82, !49, i64 8}
!97 = !{!"branch_weights", i32 0, i32 264035}
!98 = !{!"branch_weights", i32 69013, i32 195022}
!99 = distinct !{!99, !65, !66}
!100 = !{!71, !49, i64 8}
!101 = !{!102, !49, i64 0}
!102 = !{!"control_flow_graph", !49, i64 0, !49, i64 8, !49, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !49, i64 40, !54, i64 48, !50, i64 52, !50, i64 60, !54, i64 68, !54, i64 72}
!103 = !{!104, !49, i64 56}
!104 = !{!"basic_block_def", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !50, i64 32, !49, i64 48, !49, i64 56, !50, i64 64, !55, i64 72, !54, i64 80, !54, i64 84, !54, i64 88, !54, i64 92, !54, i64 96}
!105 = !{!102, !49, i64 8}
!106 = !{!"branch_weights", i32 1, i32 151}
!107 = !{!"branch_weights", i32 151, i32 616089}
!108 = distinct !{!108, !65, !66}
!109 = !{!104, !54, i64 96}
!110 = !{!111}
!111 = distinct !{!111, !112, !"gsi_start_bb: argument 0"}
!112 = distinct !{!112, !"gsi_start_bb"}
!113 = !{!"branch_weights", i32 154060, i32 0}
!114 = !{!"branch_weights", i32 0, i32 154060}
!115 = !{!116, !49, i64 0}
!116 = !{!"gimple_bb_info", !49, i64 0, !49, i64 8}
!117 = !{!118, !49, i64 0}
!118 = !{!"gimple_seq_d", !49, i64 0, !49, i64 8, !49, i64 16}
!119 = !{!"branch_weights", i32 1, i32 154059}
!120 = !{!121, !49, i64 0}
!121 = !{!"gimple_seq_node_d", !49, i64 0, !49, i64 8, !49, i64 16}
!122 = !{!"branch_weights", i32 0, i32 338109}
!123 = !{!"branch_weights", i32 125960, i32 212149}
!124 = !{!"branch_weights", i32 125960, i32 0}
!125 = !{!"branch_weights", i32 0, i32 125960}
!126 = !{!"branch_weights", i32 125920, i32 40}
!127 = !{!128, !49, i64 0}
!128 = !{!"def_optype_d", !49, i64 0, !49, i64 8}
!129 = !{!"branch_weights", i32 40, i32 125920}
!130 = !{!128, !49, i64 8}
!131 = !{!"branch_weights", i32 125920, i32 0}
!132 = !{!133, !49, i64 8}
!133 = !{!"ssa_use_operand_d", !49, i64 0, !49, i64 8, !50, i64 16, !49, i64 24}
!134 = !{!"branch_weights", i32 0, i32 125920}
!135 = !{!"branch_weights", i32 113694, i32 12226}
!136 = !{!"branch_weights", i32 0, i32 113694}
!137 = !{!"branch_weights", i32 12226, i32 0}
!138 = !{!"branch_weights", i32 12226, i32 113694}
!139 = !{!"branch_weights", i32 111827, i32 1867}
!140 = !{!"branch_weights", i32 0, i32 111827}
!141 = !{!"branch_weights", i32 111827, i32 111827}
!142 = !{!"branch_weights", i32 111827, i32 0}
!143 = !{!"branch_weights", i32 0, i32 111827, i32 0, i32 0}
!144 = !{!"branch_weights", i32 64864, i32 46963}
!145 = !{!55, !55, i64 0}
!146 = !{!"branch_weights", i32 0, i32 64864}
!147 = !{!"branch_weights", i32 50353, i32 61474}
!148 = !{!"branch_weights", i32 0, i32 50353}
!149 = !{!"branch_weights", i32 50353, i32 0}
!150 = !{!"branch_weights", i32 2944, i32 335165}
!151 = !{!"branch_weights", i32 140210, i32 194955}
!152 = !{!"branch_weights", i32 48145, i32 146810}
!153 = !{!154, !49, i64 0}
!154 = !{!"use_optype_d", !49, i64 0, !133, i64 8}
!155 = !{!"branch_weights", i32 80552, i32 257557}
!156 = !{!133, !49, i64 24}
!157 = !{!"branch_weights", i32 70351, i32 267758}
!158 = !{!"branch_weights", i32 155931, i32 111827}
!159 = !{!160, !49, i64 0}
!160 = !{!"bitmap_head_def", !49, i64 0, !49, i64 8, !54, i64 16, !49, i64 24}
!161 = !{!"branch_weights", i32 62057, i32 49770}
!162 = !{!"branch_weights", i32 0, i32 49770}
!163 = !{!"branch_weights", i32 35774, i32 13996}
!164 = !{!"branch_weights", i32 62131, i32 49696}
!165 = !{!"branch_weights", i32 0, i32 49696}
!166 = !{!"branch_weights", i32 49696, i32 0}
!167 = distinct !{!167, !65, !66}
!168 = !{!"branch_weights", i32 77220, i32 34607}
!169 = !{!"branch_weights", i32 19344, i32 15263}
!170 = !{!"branch_weights", i32 29485, i32 82342}
!171 = !{!"branch_weights", i32 0, i32 82342}
!172 = !{!173, !54, i64 16}
!173 = !{!"bitmap_element_def", !49, i64 0, !49, i64 8, !54, i64 16, !50, i64 24}
!174 = !{!"branch_weights", i32 124200, i32 40502}
!175 = !{!"branch_weights", i32 82359, i32 1}
!176 = !{!"branch_weights", i32 1824465, i32 82359}
!177 = distinct !{!177, !65, !66}
!178 = !{!"branch_weights", i32 1, i32 82341}
!179 = !{!"branch_weights", i32 40484, i32 41858}
!180 = !{!"branch_weights", i32 82341, i32 1}
!181 = distinct !{!181, !65, !66}
!182 = !{!173, !49, i64 0}
!183 = !{!"branch_weights", i32 82342, i32 0}
!184 = distinct !{!184, !66}
!185 = !{!"branch_weights", i32 82342, i32 82360}
!186 = !{!"branch_weights", i32 79919, i32 2441}
!187 = distinct !{!187, !65, !66}
!188 = !{!"branch_weights", i32 38, i32 111789}
!189 = !{!"branch_weights", i32 257557, i32 10201}
!190 = !{!"branch_weights", i32 0, i32 267758}
!191 = distinct !{!191, !65, !66}
!192 = !{!"branch_weights", i32 143254, i32 194855}
!193 = !{!"branch_weights", i32 0, i32 194855}
!194 = !{!"branch_weights", i32 125920, i32 68935}
!195 = !{!"branch_weights", i32 145505, i32 192604}
!196 = !{!"branch_weights", i32 192604, i32 0}
!197 = !{!"branch_weights", i32 0, i32 192604}
!198 = distinct !{!198, !65, !66}
!199 = distinct !{!199, !65, !66}
!200 = !{!"branch_weights", i32 226282, i32 111827}
!201 = !{!"branch_weights", i32 46963, i32 64864}
!202 = !{!"branch_weights", i32 64723, i32 47104}
!203 = !{!"branch_weights", i32 54940, i32 56887}
!204 = !{!"branch_weights", i32 38, i32 56849}
!205 = !{!"branch_weights", i32 22280, i32 34607}
!206 = !{!"branch_weights", i32 21175, i32 13432}
!207 = !{!"branch_weights", i32 20452, i32 6418}
!208 = !{!"branch_weights", i32 13437, i32 1}
!209 = !{!"branch_weights", i32 316904, i32 13437}
!210 = !{!"branch_weights", i32 1, i32 13431}
!211 = !{!"branch_weights", i32 6412, i32 7020}
!212 = !{!"branch_weights", i32 13431, i32 1}
!213 = !{!"branch_weights", i32 13432, i32 0}
!214 = !{!"branch_weights", i32 13432, i32 13438}
!215 = !{!"branch_weights", i32 12930, i32 508}
!216 = distinct !{!216, !65, !66}
!217 = !{!"branch_weights", i32 22280, i32 0}
!218 = !{!"branch_weights", i32 0, i32 22280}
!219 = !{!"branch_weights", i32 4093, i32 18187}
!220 = !{!"branch_weights", i32 2160, i32 1933}
!221 = !{!"branch_weights", i32 4093, i32 0}
!222 = !{!"branch_weights", i32 47104, i32 9783}
!223 = !{!"branch_weights", i32 0, i32 56887}
!224 = distinct !{!224, !65, !66}
!225 = !{!"branch_weights", i32 64817, i32 47}
!226 = !{!"branch_weights", i32 64829, i32 35}
!227 = !{!"branch_weights", i32 143153, i32 194956}
!228 = !{!"branch_weights", i32 269174, i32 68935}
!229 = !{!"branch_weights", i32 1, i32 0}
!230 = !{!121, !49, i64 16}
!231 = !{!"branch_weights", i32 154059, i32 184050}
!232 = distinct !{!232, !65, !66}
!233 = distinct !{!233, !65, !66}
!234 = !{!"tree-ssa-ter.c;finished_with_expr"}
!235 = !{!"branch_weights", i32 34607, i32 77220}
