; ModuleID = 'tree-ssa-threadedge.c'
source_filename = "tree-ssa-threadedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@ssa_name_values = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [22 x i8] c"tree-ssa-threadedge.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@stmt_count = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !55 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !56
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !55 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !55 {
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
  br i1 %23, label %7, label %24, !llvm.loop !72

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_ssa_name_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !75 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !76

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !77
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %11 = icmp ult i32 %4, %10
  br i1 %11, label %43, label %12, !prof !79

12:                                               ; preds = %9
  %13 = add i32 %4, 1
  br i1 %6, label %16, label %14, !prof !80

14:                                               ; preds = %12
  %15 = load i32, ptr %5, align 8, !tbaa !77
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %15, %14 ], [ 0, %12 ]
  br i1 %6, label %20, label %18, !prof !80

18:                                               ; preds = %16
  %19 = load i32, ptr %5, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %19, %18 ], [ 0, %16 ]
  %22 = sub nsw i32 %13, %21
  br i1 %6, label %29, label %23, !prof !80

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %5, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !81
  %26 = load i32, ptr %5, align 8, !tbaa !77
  %27 = sub i32 %25, %26
  %28 = icmp uge i32 %27, %22
  br label %31

29:                                               ; preds = %20
  %30 = icmp eq i32 %21, %13
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i1 [ %28, %23 ], [ %30, %29 ]
  br i1 %32, label %35, label %33, !prof !82

33:                                               ; preds = %31
  %34 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %5, i32 noundef %22) #16
  store ptr %34, ptr @ssa_name_values, align 8, !tbaa !56
  br label %35

35:                                               ; preds = %31, %33
  %36 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56, !nonnull !83, !noundef !83
  store i32 %13, ptr %36, align 8, !tbaa !77
  %37 = getelementptr inbounds %struct.VEC_tree_base, ptr %36, i64 0, i32 2
  %38 = sext i32 %17 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = sub nsw i32 %13, %17
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %39, i8 0, i64 %42, i1 false), !prof !84
  br label %43

43:                                               ; preds = %35, %9
  %44 = load ptr, ptr @ssa_name_values, align 8
  %45 = load i32, ptr %3, align 8, !tbaa !67
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.VEC_tree_base, ptr %44, i64 0, i32 2, i64 %46
  store ptr %1, ptr %47, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @threadedge_initialize_values() local_unnamed_addr #10 !prof !85 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !86

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !93

11:                                               ; preds = %4
  %12 = load i32, ptr %9, align 8, !tbaa !77
  br label %13

13:                                               ; preds = %4, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %15 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %14) #16
  store ptr %15, ptr @ssa_name_values, align 8, !tbaa !56
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @threadedge_finalize_values() local_unnamed_addr #11 !prof !85 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !93

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  br label %4

4:                                                ; preds = %0, %3
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !56
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @potentially_threadable_block(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !94 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !97

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !98
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %47, label %8, !prof !100

8:                                                ; preds = %1, %5
  %9 = load ptr, ptr %0, align 8, !tbaa !101
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !102

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !98
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %47, label %14, !prof !103

14:                                               ; preds = %8, %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !104, !noalias !105
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !108

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !67, !noalias !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !109

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !110, !noalias !105
  br label %25

25:                                               ; preds = %23, %19, %14
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ null, %14 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !109

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gimple_seq_d, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !112, !noalias !105
  br label %31

31:                                               ; preds = %25, %28
  %32 = phi ptr [ %30, %28 ], [ null, %25 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34, !prof !109

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !114
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37, !prof !109

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 8
  %39 = trunc i32 %38 to i8
  %40 = icmp ult i8 %39, 6
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = shl i32 %38, 3
  %43 = and i32 %42, 2040
  %44 = zext nneg i32 %43 to i48
  %45 = lshr i48 1099528405248, %44
  %46 = trunc i48 %45 to i8
  br label %47

47:                                               ; preds = %41, %37, %31, %34, %5, %11
  %48 = phi i8 [ 0, %11 ], [ 0, %5 ], [ 0, %34 ], [ 0, %31 ], [ 0, %37 ], [ %46, %41 ]
  ret i8 %48
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @thread_across_edge(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #9 !prof !116 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !117
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %79, label %11, !prof !119

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !104, !noalias !121
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  tail call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !67, !noalias !121, !nonnull !83, !noundef !83
  %20 = load ptr, ptr %19, align 8, !tbaa !110, !noalias !121, !nonnull !83, !noundef !83
  %21 = getelementptr inbounds %struct.gimple_seq_d, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !112, !noalias !121
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, -10
  %27 = icmp ult i32 %26, -9
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  br label %31

31:                                               ; preds = %28, %11
  %32 = phi ptr [ %30, %28 ], [ null, %11 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.use_optype_d, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %32, align 8, !tbaa !124
  br label %37

37:                                               ; preds = %31, %34
  %38 = phi i8 [ 0, %34 ], [ 1, %31 ]
  %39 = phi ptr [ %36, %34 ], [ %32, %31 ]
  %40 = phi ptr [ %35, %34 ], [ null, %31 ]
  br i1 %33, label %76, label %41

41:                                               ; preds = %37, %71
  %42 = phi ptr [ %74, %71 ], [ %40, %37 ]
  %43 = phi ptr [ %73, %71 ], [ %39, %37 ]
  %44 = phi i8 [ %72, %71 ], [ %38, %37 ]
  %45 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !127
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %47, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 255
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.gimple_statement_base, ptr %53, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !67
  %60 = load ptr, ptr %12, align 8, !tbaa !120
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %51, %41
  br label %63

63:                                               ; preds = %57, %62
  %64 = phi i1 [ true, %62 ], [ false, %57 ]
  %65 = phi i32 [ 0, %62 ], [ 5, %57 ]
  br i1 %64, label %66, label %76

66:                                               ; preds = %63
  %67 = icmp eq ptr %43, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.use_optype_d, ptr %43, i64 0, i32 1
  %70 = load ptr, ptr %43, align 8, !tbaa !124
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i8 [ %44, %68 ], [ 1, %66 ]
  %73 = phi ptr [ %70, %68 ], [ %43, %66 ]
  %74 = phi ptr [ %69, %68 ], [ null, %66 ]
  %75 = icmp eq i8 %72, 0
  br i1 %75, label %41, label %76, !llvm.loop !128

76:                                               ; preds = %63, %71, %37
  %77 = phi i32 [ 0, %37 ], [ %65, %63 ], [ 0, %71 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %1346

79:                                               ; preds = %76, %5
  store i32 0, ptr @stmt_count, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %80 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !120
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %81) #16
  %82 = load ptr, ptr %6, align 8, !tbaa.struct !129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %227, label %84, !prof !130

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %86

86:                                               ; preds = %84, %212
  %87 = phi i1 [ %83, %84 ], [ %225, %212 ]
  %88 = phi ptr [ %82, %84 ], [ %224, %212 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !114
  %90 = load i32, ptr %85, align 4, !tbaa !131
  %91 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !67
  %93 = icmp ult i32 %92, %90
  br i1 %93, label %94, label %95, !prof !132

94:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %95

95:                                               ; preds = %94, %86
  %96 = zext i32 %90 to i64
  %97 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 4, i64 %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !127
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  %100 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %118, label %103, !prof !132

103:                                              ; preds = %95
  %104 = load i64, ptr %99, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 141
  br i1 %106, label %107, label %118, !prof !133

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tree_ssa_name, ptr %99, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !67
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %111, 16
  br i1 %112, label %113, label %118, !prof !134

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.gimple_statement_base, ptr %109, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !67
  %116 = load ptr, ptr %80, align 8, !tbaa !120
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %226, label %118, !prof !135

118:                                              ; preds = %113, %107, %103, %95
  %119 = call zeroext i8 @is_gimple_reg(ptr noundef %101) #16
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121, !prof !136

121:                                              ; preds = %118
  %122 = load i32, ptr @stmt_count, align 4, !tbaa !71
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr @stmt_count, align 4, !tbaa !71
  br label %124

124:                                              ; preds = %121, %118
  %125 = getelementptr inbounds %struct.tree_ssa_name, ptr %101, i64 0, i32 3
  %126 = load i32, ptr %125, align 8, !tbaa !67
  %127 = load ptr, ptr @ssa_name_values, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129, !prof !137

129:                                              ; preds = %124
  %130 = load i32, ptr %127, align 8, !tbaa !77
  br label %131

131:                                              ; preds = %129, %124
  %132 = phi i32 [ %130, %129 ], [ 0, %124 ]
  %133 = icmp ult i32 %126, %132
  br i1 %133, label %134, label %138, !prof !138

134:                                              ; preds = %131
  %135 = zext i32 %126 to i64
  %136 = getelementptr inbounds %struct.VEC_tree_base, ptr %127, i64 0, i32 2, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !56
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi ptr [ %137, %134 ], [ null, %131 ]
  %140 = load i64, ptr %99, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 141
  br i1 %142, label %143, label %159, !prof !139

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.tree_ssa_name, ptr %99, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !67
  br i1 %128, label %148, label %146, !prof !140

146:                                              ; preds = %143
  %147 = load i32, ptr %127, align 8, !tbaa !77
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi i32 [ %147, %146 ], [ 0, %143 ]
  %150 = icmp ult i32 %145, %149
  br i1 %150, label %151, label %155, !prof !141

151:                                              ; preds = %148
  %152 = zext i32 %145 to i64
  %153 = getelementptr inbounds %struct.VEC_tree_base, ptr %127, i64 0, i32 2, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !56
  br label %155

155:                                              ; preds = %151, %148
  %156 = phi ptr [ %154, %151 ], [ null, %148 ]
  %157 = icmp eq ptr %156, null
  %158 = select i1 %157, ptr %99, ptr %156, !prof !142
  br label %159

159:                                              ; preds = %155, %138
  %160 = phi ptr [ %158, %155 ], [ %99, %138 ]
  br i1 %128, label %163, label %161, !prof !76

161:                                              ; preds = %159
  %162 = load i32, ptr %127, align 8, !tbaa !77
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %162, %161 ], [ 0, %159 ]
  %165 = icmp ult i32 %126, %164
  br i1 %165, label %197, label %166, !prof !79

166:                                              ; preds = %163
  %167 = add i32 %126, 1
  br i1 %128, label %170, label %168, !prof !80

168:                                              ; preds = %166
  %169 = load i32, ptr %127, align 8, !tbaa !77
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %169, %168 ], [ 0, %166 ]
  br i1 %128, label %174, label %172, !prof !80

172:                                              ; preds = %170
  %173 = load i32, ptr %127, align 8, !tbaa !77
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %173, %172 ], [ 0, %170 ]
  %176 = sub nsw i32 %167, %175
  br i1 %128, label %183, label %177, !prof !80

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.VEC_tree_base, ptr %127, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !81
  %180 = load i32, ptr %127, align 8, !tbaa !77
  %181 = sub i32 %179, %180
  %182 = icmp uge i32 %181, %176
  br label %185

183:                                              ; preds = %174
  %184 = icmp eq i32 %175, %167
  br label %185

185:                                              ; preds = %183, %177
  %186 = phi i1 [ %182, %177 ], [ %184, %183 ]
  br i1 %186, label %189, label %187, !prof !82

187:                                              ; preds = %185
  %188 = call ptr @vec_heap_p_reserve_exact(ptr noundef %127, i32 noundef %176) #16
  store ptr %188, ptr @ssa_name_values, align 8, !tbaa !56
  br label %189

189:                                              ; preds = %187, %185
  %190 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56, !nonnull !83, !noundef !83
  store i32 %167, ptr %190, align 8, !tbaa !77
  %191 = getelementptr inbounds %struct.VEC_tree_base, ptr %190, i64 0, i32 2
  %192 = sext i32 %171 to i64
  %193 = getelementptr inbounds ptr, ptr %191, i64 %192
  %194 = sub nsw i32 %167, %171
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %193, i8 0, i64 %196, i1 false), !prof !143
  br label %197

197:                                              ; preds = %189, %163
  %198 = load ptr, ptr @ssa_name_values, align 8
  %199 = load i32, ptr %125, align 8, !tbaa !67
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.VEC_tree_base, ptr %198, i64 0, i32 2, i64 %200
  store ptr %160, ptr %201, align 8, !tbaa !56
  %202 = load ptr, ptr %3, align 8, !tbaa !56
  %203 = icmp eq ptr %202, null
  br i1 %203, label %210, label %204, !prof !137

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.VEC_tree_base, ptr %202, i64 0, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !81
  %207 = load i32, ptr %202, align 8, !tbaa !77
  %208 = sub i32 %206, %207
  %209 = icmp ult i32 %208, 2
  br i1 %209, label %210, label %212, !prof !144

210:                                              ; preds = %204, %197
  %211 = call ptr @vec_heap_p_reserve(ptr noundef %202, i32 noundef 2) #16
  store ptr %211, ptr %3, align 8, !tbaa !56
  br label %212

212:                                              ; preds = %204, %210
  %213 = load ptr, ptr %3, align 8, !tbaa !56
  %214 = load i32, ptr %213, align 8, !tbaa !77
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 8, !tbaa !77
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds %struct.VEC_tree_base, ptr %213, i64 0, i32 2, i64 %216
  store ptr %139, ptr %217, align 8, !tbaa !56
  %218 = load ptr, ptr %3, align 8, !tbaa !56
  %219 = load i32, ptr %218, align 8, !tbaa !77
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8, !tbaa !77
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds %struct.VEC_tree_base, ptr %218, i64 0, i32 2, i64 %221
  store ptr %101, ptr %222, align 8, !tbaa !56
  %223 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %88, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !145
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %86, !prof !146, !llvm.loop !147

226:                                              ; preds = %113
  br i1 %87, label %227, label %1346, !prof !119

227:                                              ; preds = %212, %79, %226
  %228 = load ptr, ptr @compiler_params, align 8, !tbaa !56
  %229 = getelementptr inbounds %struct.param_info, ptr %228, i64 94, i32 1
  %230 = load i32, ptr %229, align 8, !tbaa !148
  %231 = load ptr, ptr %80, align 8, !tbaa !120
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 13
  %233 = load i32, ptr %232, align 8, !tbaa !104, !noalias !150
  %234 = and i32 %233, 512
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %242, !prof !119

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 7
  %238 = load ptr, ptr %237, align 8, !tbaa !67, !noalias !150
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240, !prof !153

240:                                              ; preds = %236
  %241 = load ptr, ptr %238, align 8, !tbaa !110, !noalias !150
  br label %242

242:                                              ; preds = %240, %236, %227
  %243 = phi ptr [ %241, %240 ], [ null, %236 ], [ null, %227 ]
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245, !prof !153

245:                                              ; preds = %242
  %246 = load ptr, ptr %243, align 8, !tbaa !154, !noalias !150
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi ptr [ %246, %245 ], [ null, %242 ]
  %249 = icmp eq ptr %248, null
  br i1 %249, label %920, label %250, !prof !155

250:                                              ; preds = %247, %916
  %251 = phi ptr [ %918, %916 ], [ %248, %247 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !114
  %253 = load i32, ptr %252, align 8
  %254 = trunc i32 %253 to i8
  switch i8 %254, label %258 [
    i8 18, label %914
    i8 4, label %914
    i8 2, label %914
    i8 7, label %255
  ], !prof !156

255:                                              ; preds = %250
  %256 = and i32 %253, 131072
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %914

258:                                              ; preds = %250, %255
  %259 = load i32, ptr @stmt_count, align 4, !tbaa !71
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr @stmt_count, align 4, !tbaa !71
  %261 = icmp slt i32 %259, %230
  br i1 %261, label %262, label %914, !prof !157

262:                                              ; preds = %258
  %263 = load i32, ptr %252, align 8
  %264 = and i32 %263, 255
  %265 = icmp eq i32 %264, 6
  br i1 %265, label %266, label %281, !prof !158

266:                                              ; preds = %262
  %267 = zext nneg i32 %264 to i64
  %268 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !71
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %270
  %272 = load i64, ptr %271, align 8, !tbaa !159
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %275, !prof !160

274:                                              ; preds = %266
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %275

275:                                              ; preds = %274, %266
  %276 = getelementptr inbounds i8, ptr %252, i64 %272
  %277 = load ptr, ptr %276, align 8, !tbaa !56
  %278 = load i64, ptr %277, align 8
  %279 = and i64 %278, 65535
  %280 = icmp eq i64 %279, 141
  br i1 %280, label %317, label %281, !prof !161

281:                                              ; preds = %275, %262
  %282 = load i32, ptr %252, align 8
  %283 = and i32 %282, 255
  %284 = icmp eq i32 %283, 8
  br i1 %284, label %285, label %914, !prof !162

285:                                              ; preds = %281
  %286 = zext nneg i32 %283 to i64
  %287 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !71
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !159
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %294, !prof !163

293:                                              ; preds = %285
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %294

294:                                              ; preds = %293, %285
  %295 = getelementptr inbounds i8, ptr %252, i64 %291
  %296 = load ptr, ptr %295, align 8, !tbaa !56
  %297 = icmp eq ptr %296, null
  br i1 %297, label %914, label %298, !prof !164

298:                                              ; preds = %294
  %299 = load i32, ptr %252, align 8
  %300 = and i32 %299, 255
  %301 = add nsw i32 %300, -1
  %302 = icmp ult i32 %301, 9
  call void @llvm.assume(i1 %302)
  %303 = zext nneg i32 %300 to i64
  %304 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !71
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %306
  %308 = load i64, ptr %307, align 8, !tbaa !159
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %311, !prof !165

310:                                              ; preds = %298
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %311

311:                                              ; preds = %310, %298
  %312 = getelementptr inbounds i8, ptr %252, i64 %308
  %313 = load ptr, ptr %312, align 8, !tbaa !56
  %314 = load i64, ptr %313, align 8
  %315 = and i64 %314, 65535
  %316 = icmp eq i64 %315, 141
  br i1 %316, label %317, label %914, !prof !166

317:                                              ; preds = %311, %275
  %318 = load i32, ptr %252, align 8
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %319, 8
  br i1 %320, label %321, label %351, !prof !167

321:                                              ; preds = %317
  %322 = zext nneg i32 %319 to i64
  %323 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !71
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !159
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %330, !prof !165

329:                                              ; preds = %321
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %330

330:                                              ; preds = %329, %321
  %331 = getelementptr inbounds i8, ptr %252, i64 %327
  %332 = getelementptr inbounds ptr, ptr %331, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !56
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 65535
  %336 = icmp eq i64 %335, 121
  br i1 %336, label %337, label %340, !prof !166

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.tree_exp, ptr %333, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !67
  br label %340

340:                                              ; preds = %337, %330
  %341 = phi ptr [ %339, %337 ], [ null, %330 ]
  %342 = icmp eq ptr %341, null
  br i1 %342, label %347, label %343, !prof !165

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.tree_function_decl, ptr %341, i64 0, i32 5
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 2047
  switch i32 %346, label %347 [
    i32 528, label %348
    i32 428, label %348
  ], !prof !168

347:                                              ; preds = %343, %340
  br label %348

348:                                              ; preds = %343, %347, %343
  %349 = phi i1 [ true, %347 ], [ false, %343 ], [ false, %343 ]
  %350 = phi i32 [ 0, %347 ], [ 4, %343 ], [ 4, %343 ]
  br i1 %349, label %351, label %914, !prof !166

351:                                              ; preds = %348, %317
  %352 = call zeroext i8 @gimple_assign_single_p(ptr noundef %252) #16
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %392, label %354, !prof !169

354:                                              ; preds = %351
  %355 = load i32, ptr %252, align 8
  %356 = and i32 %355, 255
  %357 = add nsw i32 %356, -1
  %358 = icmp ult i32 %357, 9
  call void @llvm.assume(i1 %358)
  %359 = zext nneg i32 %356 to i64
  %360 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !71
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %362
  %364 = load i64, ptr %363, align 8, !tbaa !159
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %367, !prof !170

366:                                              ; preds = %354
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %367

367:                                              ; preds = %366, %354
  %368 = getelementptr inbounds i8, ptr %252, i64 %364
  %369 = getelementptr inbounds ptr, ptr %368, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !56
  %371 = load i64, ptr %370, align 8
  %372 = and i64 %371, 65535
  %373 = icmp eq i64 %372, 141
  br i1 %373, label %374, label %392, !prof !171

374:                                              ; preds = %367
  %375 = load i32, ptr %252, align 8
  %376 = and i32 %375, 255
  %377 = add nsw i32 %376, -10
  %378 = icmp ult i32 %377, -9
  br i1 %378, label %804, label %379, !prof !172

379:                                              ; preds = %374
  %380 = zext nneg i32 %376 to i64
  %381 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !71
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %383
  %385 = load i64, ptr %384, align 8, !tbaa !159
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %388, !prof !172

387:                                              ; preds = %379
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %388

388:                                              ; preds = %387, %379
  %389 = getelementptr inbounds i8, ptr %252, i64 %385
  %390 = getelementptr inbounds ptr, ptr %389, i64 1
  %391 = load ptr, ptr %390, align 8, !tbaa !56
  br label %804

392:                                              ; preds = %367, %351
  %393 = call zeroext i8 @gimple_assign_single_p(ptr noundef %252) #16
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %434, label %395, !prof !173

395:                                              ; preds = %392
  %396 = load i32, ptr %252, align 8
  %397 = and i32 %396, 255
  %398 = add nsw i32 %397, -1
  %399 = icmp ult i32 %398, 9
  call void @llvm.assume(i1 %399)
  %400 = zext nneg i32 %397 to i64
  %401 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !71
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %403
  %405 = load i64, ptr %404, align 8, !tbaa !159
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %408, !prof !174

407:                                              ; preds = %395
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %408

408:                                              ; preds = %407, %395
  %409 = getelementptr inbounds i8, ptr %252, i64 %405
  %410 = getelementptr inbounds ptr, ptr %409, i64 1
  %411 = load ptr, ptr %410, align 8, !tbaa !56
  %412 = load i64, ptr %411, align 8
  %413 = and i64 %412, 65535
  %414 = icmp eq i64 %413, 148
  br i1 %414, label %415, label %434, !prof !175

415:                                              ; preds = %408
  %416 = load i32, ptr %252, align 8
  %417 = and i32 %416, 255
  %418 = add nsw i32 %417, -1
  %419 = icmp ult i32 %418, 9
  call void @llvm.assume(i1 %419)
  %420 = zext nneg i32 %417 to i64
  %421 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !71
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %423
  %425 = load i64, ptr %424, align 8, !tbaa !159
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %428, !prof !176

427:                                              ; preds = %415
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %428

428:                                              ; preds = %427, %415
  %429 = getelementptr inbounds i8, ptr %252, i64 %425
  %430 = getelementptr inbounds ptr, ptr %429, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !56
  %432 = getelementptr inbounds %struct.tree_exp, ptr %431, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !67
  br label %804

434:                                              ; preds = %408, %392
  %435 = load i32, ptr %252, align 8
  %436 = and i32 %435, 255
  %437 = add nsw i32 %436, -10
  %438 = icmp ult i32 %437, -9
  br i1 %438, label %442, label %439, !prof !177

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %252, i64 0, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !67
  br label %442

442:                                              ; preds = %439, %434
  %443 = phi ptr [ %441, %439 ], [ null, %434 ]
  %444 = icmp eq ptr %443, null
  br i1 %444, label %447, label %445, !prof !177

445:                                              ; preds = %442
  %446 = load ptr, ptr %443, align 8, !tbaa !124
  br label %447

447:                                              ; preds = %445, %442
  %448 = phi ptr [ %446, %445 ], [ %443, %442 ]
  %449 = phi i8 [ 0, %445 ], [ 1, %442 ]
  br i1 %444, label %462, label %450, !prof !178

450:                                              ; preds = %447, %458
  %451 = phi i32 [ %454, %458 ], [ 0, %447 ]
  %452 = phi i8 [ %460, %458 ], [ %449, %447 ]
  %453 = phi ptr [ %459, %458 ], [ %448, %447 ]
  %454 = add nuw nsw i32 %451, 1
  %455 = icmp eq ptr %453, null
  br i1 %455, label %458, label %456, !prof !179

456:                                              ; preds = %450
  %457 = load ptr, ptr %453, align 8, !tbaa !124
  br label %458

458:                                              ; preds = %450, %456
  %459 = phi ptr [ %457, %456 ], [ %453, %450 ]
  %460 = phi i8 [ %452, %456 ], [ 1, %450 ]
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %450, label %462, !prof !180, !llvm.loop !181

462:                                              ; preds = %458, %447
  %463 = phi i32 [ 0, %447 ], [ %454, %458 ]
  %464 = zext nneg i32 %463 to i64
  %465 = call ptr @xcalloc(i64 noundef %464, i64 noundef 8) #16
  %466 = load i32, ptr %252, align 8
  %467 = and i32 %466, 255
  %468 = add nsw i32 %467, -10
  %469 = icmp ult i32 %468, -9
  br i1 %469, label %473, label %470, !prof !177

470:                                              ; preds = %462
  %471 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %252, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !67
  br label %473

473:                                              ; preds = %470, %462
  %474 = phi ptr [ %472, %470 ], [ null, %462 ]
  %475 = icmp eq ptr %474, null
  br i1 %475, label %479, label %476, !prof !177

476:                                              ; preds = %473
  %477 = getelementptr inbounds %struct.use_optype_d, ptr %474, i64 0, i32 1
  %478 = load ptr, ptr %474, align 8, !tbaa !124
  br label %479

479:                                              ; preds = %476, %473
  %480 = phi ptr [ %478, %476 ], [ %474, %473 ]
  %481 = phi i8 [ 0, %476 ], [ 1, %473 ]
  %482 = phi ptr [ %477, %476 ], [ null, %473 ]
  br i1 %475, label %544, label %483, !prof !178

483:                                              ; preds = %479, %539
  %484 = phi i32 [ %491, %539 ], [ 0, %479 ]
  %485 = phi ptr [ %542, %539 ], [ %482, %479 ]
  %486 = phi i8 [ %541, %539 ], [ %481, %479 ]
  %487 = phi ptr [ %540, %539 ], [ %480, %479 ]
  %488 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %485, i64 0, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !127
  %490 = load ptr, ptr %489, align 8, !tbaa !56
  %491 = add i32 %484, 1
  %492 = zext i32 %484 to i64
  %493 = getelementptr inbounds ptr, ptr %465, i64 %492
  store ptr %490, ptr %493, align 8, !tbaa !56
  %494 = load i64, ptr %490, align 8
  %495 = and i64 %494, 65535
  %496 = icmp eq i64 %495, 141
  br i1 %496, label %497, label %511, !prof !182

497:                                              ; preds = %483
  %498 = getelementptr inbounds %struct.tree_ssa_name, ptr %490, i64 0, i32 3
  %499 = load i32, ptr %498, align 8, !tbaa !67
  %500 = load ptr, ptr @ssa_name_values, align 8
  %501 = icmp eq ptr %500, null
  br i1 %501, label %504, label %502, !prof !183

502:                                              ; preds = %497
  %503 = load i32, ptr %500, align 8, !tbaa !77
  br label %504

504:                                              ; preds = %502, %497
  %505 = phi i32 [ %503, %502 ], [ 0, %497 ]
  %506 = icmp ult i32 %499, %505
  br i1 %506, label %507, label %511, !prof !184

507:                                              ; preds = %504
  %508 = zext i32 %499 to i64
  %509 = getelementptr inbounds %struct.VEC_tree_base, ptr %500, i64 0, i32 2, i64 %508
  %510 = load ptr, ptr %509, align 8, !tbaa !56
  br label %511

511:                                              ; preds = %507, %504, %483
  %512 = phi ptr [ null, %483 ], [ %510, %507 ], [ null, %504 ]
  %513 = icmp eq ptr %512, null
  br i1 %513, label %534, label %514, !prof !185

514:                                              ; preds = %511
  %515 = load ptr, ptr %485, align 8, !tbaa !186
  %516 = icmp eq ptr %515, null
  br i1 %516, label %522, label %517, !prof !187

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %485, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !188
  %520 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %515, i64 0, i32 1
  store ptr %519, ptr %520, align 8, !tbaa !188
  %521 = load ptr, ptr %518, align 8, !tbaa !188
  store ptr %515, ptr %521, align 8, !tbaa !186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %485, i8 0, i64 16, i1 false)
  br label %522

522:                                              ; preds = %517, %514
  %523 = load ptr, ptr %488, align 8, !tbaa !127
  store ptr %512, ptr %523, align 8, !tbaa !56
  %524 = load i64, ptr %512, align 8
  %525 = and i64 %524, 65535
  %526 = icmp eq i64 %525, 141
  br i1 %526, label %528, label %527, !prof !189

527:                                              ; preds = %522
  store ptr null, ptr %485, align 8, !tbaa !186
  br label %534

528:                                              ; preds = %522
  %529 = getelementptr inbounds %struct.tree_ssa_name, ptr %512, i64 0, i32 5
  store ptr %529, ptr %485, align 8, !tbaa !186
  %530 = getelementptr inbounds %struct.tree_ssa_name, ptr %512, i64 0, i32 5, i32 1
  %531 = load ptr, ptr %530, align 8, !tbaa !188
  %532 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %485, i64 0, i32 1
  store ptr %531, ptr %532, align 8, !tbaa !188
  %533 = load ptr, ptr %530, align 8, !tbaa !188
  store ptr %485, ptr %533, align 8, !tbaa !186
  store ptr %485, ptr %530, align 8, !tbaa !188
  br label %534

534:                                              ; preds = %528, %527, %511
  %535 = icmp eq ptr %487, null
  br i1 %535, label %539, label %536, !prof !179

536:                                              ; preds = %534
  %537 = getelementptr inbounds %struct.use_optype_d, ptr %487, i64 0, i32 1
  %538 = load ptr, ptr %487, align 8, !tbaa !124
  br label %539

539:                                              ; preds = %534, %536
  %540 = phi ptr [ %538, %536 ], [ %487, %534 ]
  %541 = phi i8 [ %486, %536 ], [ 1, %534 ]
  %542 = phi ptr [ %537, %536 ], [ null, %534 ]
  %543 = icmp eq i8 %541, 0
  br i1 %543, label %483, label %544, !prof !180, !llvm.loop !190

544:                                              ; preds = %539, %479
  %545 = load i32, ptr %252, align 8
  %546 = and i32 %545, 255
  %547 = icmp eq i32 %546, 8
  br i1 %547, label %548, label %550, !prof !191

548:                                              ; preds = %544
  %549 = call ptr @fold_call_stmt(ptr noundef nonnull %252, i8 noundef zeroext 0) #16
  br label %731

550:                                              ; preds = %544
  %551 = trunc i32 %545 to i8
  switch i8 %551, label %554 [
    i8 6, label %552
    i8 1, label %552
    i8 8, label %555
  ], !prof !192

552:                                              ; preds = %550, %550
  %553 = lshr i32 %545, 16
  br label %555

554:                                              ; preds = %550
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #16
  br label %555

555:                                              ; preds = %554, %552, %550
  %556 = phi i32 [ %553, %552 ], [ 0, %554 ], [ 59, %550 ]
  %557 = zext nneg i32 %556 to i64
  %558 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !67
  %560 = icmp eq i8 %559, 3
  br i1 %560, label %561, label %581, !prof !193

561:                                              ; preds = %555
  %562 = load i32, ptr %252, align 8
  %563 = and i32 %562, 255
  %564 = add nsw i32 %563, -1
  %565 = icmp ult i32 %564, 9
  call void @llvm.assume(i1 %565)
  %566 = zext nneg i32 %563 to i64
  %567 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !71
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %569
  %571 = load i64, ptr %570, align 8, !tbaa !159
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %573, label %574, !prof !194

573:                                              ; preds = %561
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %574

574:                                              ; preds = %573, %561
  %575 = getelementptr inbounds i8, ptr %252, i64 %571
  %576 = getelementptr inbounds ptr, ptr %575, i64 1
  %577 = load ptr, ptr %576, align 8, !tbaa !56
  %578 = load i64, ptr %577, align 8
  %579 = trunc i64 %578 to i32
  %580 = and i32 %579, 65535
  br label %581

581:                                              ; preds = %574, %555
  %582 = phi i32 [ %580, %574 ], [ %556, %555 ]
  %583 = zext nneg i32 %582 to i64
  %584 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !67
  switch i8 %585, label %730 [
    i8 3, label %586
    i8 2, label %625
    i8 1, label %666
  ], !prof !195

586:                                              ; preds = %581
  %587 = load i32, ptr %252, align 8
  %588 = and i32 %587, 255
  %589 = add nsw i32 %588, -1
  %590 = icmp ult i32 %589, 9
  call void @llvm.assume(i1 %590)
  %591 = zext nneg i32 %588 to i64
  %592 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !71
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %594
  %596 = load i64, ptr %595, align 8, !tbaa !159
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %599, !prof !194

598:                                              ; preds = %586
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %599

599:                                              ; preds = %598, %586
  %600 = getelementptr inbounds i8, ptr %252, i64 %596
  %601 = getelementptr inbounds ptr, ptr %600, i64 1
  %602 = load ptr, ptr %601, align 8, !tbaa !56
  %603 = load i64, ptr %602, align 8
  %604 = and i64 %603, 65535
  %605 = icmp eq i64 %604, 56
  br i1 %605, label %606, label %622, !prof !194

606:                                              ; preds = %599
  %607 = getelementptr inbounds %struct.tree_exp, ptr %602, i64 0, i32 3
  %608 = load ptr, ptr %607, align 8, !tbaa !67
  %609 = call ptr @fold(ptr noundef %608) #16
  %610 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !56
  %611 = icmp eq ptr %609, %610
  br i1 %611, label %612, label %614

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.tree_exp, ptr %602, i64 1
  br label %619

614:                                              ; preds = %606
  %615 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !56
  %616 = icmp eq ptr %609, %615
  br i1 %616, label %617, label %622

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.tree_exp, ptr %602, i64 1, i32 0, i32 1
  br label %619

619:                                              ; preds = %612, %617
  %620 = phi ptr [ %618, %617 ], [ %613, %612 ]
  %621 = load ptr, ptr %620, align 8, !tbaa !67
  br label %622

622:                                              ; preds = %619, %614, %599
  %623 = phi ptr [ %602, %599 ], [ %602, %614 ], [ %621, %619 ]
  %624 = call ptr @fold(ptr noundef %623) #16
  br label %731

625:                                              ; preds = %581
  %626 = load i32, ptr %252, align 8
  %627 = and i32 %626, 255
  %628 = add nsw i32 %627, -10
  %629 = icmp ult i32 %628, -9
  br i1 %629, label %642, label %630

630:                                              ; preds = %625
  %631 = zext nneg i32 %627 to i64
  %632 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %631
  %633 = load i32, ptr %632, align 4, !tbaa !71
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %634
  %636 = load i64, ptr %635, align 8, !tbaa !159
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %638, label %639

638:                                              ; preds = %630
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %639

639:                                              ; preds = %638, %630
  %640 = getelementptr inbounds i8, ptr %252, i64 %636
  %641 = load ptr, ptr %640, align 8, !tbaa !56
  br label %642

642:                                              ; preds = %639, %625
  %643 = phi ptr [ %641, %639 ], [ null, %625 ]
  %644 = load i32, ptr %252, align 8
  %645 = and i32 %644, 255
  %646 = add nsw i32 %645, -10
  %647 = icmp ult i32 %646, -9
  br i1 %647, label %661, label %648

648:                                              ; preds = %642
  %649 = zext nneg i32 %645 to i64
  %650 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %649
  %651 = load i32, ptr %650, align 4, !tbaa !71
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %652
  %654 = load i64, ptr %653, align 8, !tbaa !159
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %648
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %657

657:                                              ; preds = %656, %648
  %658 = getelementptr inbounds i8, ptr %252, i64 %654
  %659 = getelementptr inbounds ptr, ptr %658, i64 1
  %660 = load ptr, ptr %659, align 8, !tbaa !56
  br label %661

661:                                              ; preds = %657, %642
  %662 = phi ptr [ %660, %657 ], [ null, %642 ]
  %663 = getelementptr inbounds %struct.tree_common, ptr %643, i64 0, i32 2
  %664 = load ptr, ptr %663, align 8, !tbaa !67
  %665 = call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %582, ptr noundef %664, ptr noundef %662) #16
  br label %731

666:                                              ; preds = %581
  %667 = load i32, ptr %252, align 8
  %668 = and i32 %667, 255
  %669 = add nsw i32 %668, -10
  %670 = icmp ult i32 %669, -9
  br i1 %670, label %683, label %671, !prof !196

671:                                              ; preds = %666
  %672 = zext nneg i32 %668 to i64
  %673 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %672
  %674 = load i32, ptr %673, align 4, !tbaa !71
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %675
  %677 = load i64, ptr %676, align 8, !tbaa !159
  %678 = icmp eq i64 %677, 0
  br i1 %678, label %679, label %680, !prof !196

679:                                              ; preds = %671
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %680

680:                                              ; preds = %679, %671
  %681 = getelementptr inbounds i8, ptr %252, i64 %677
  %682 = load ptr, ptr %681, align 8, !tbaa !56
  br label %683

683:                                              ; preds = %680, %666
  %684 = phi ptr [ %682, %680 ], [ null, %666 ]
  %685 = load i32, ptr %252, align 8
  %686 = and i32 %685, 255
  %687 = add nsw i32 %686, -10
  %688 = icmp ult i32 %687, -9
  br i1 %688, label %702, label %689, !prof !196

689:                                              ; preds = %683
  %690 = zext nneg i32 %686 to i64
  %691 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %690
  %692 = load i32, ptr %691, align 4, !tbaa !71
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %693
  %695 = load i64, ptr %694, align 8, !tbaa !159
  %696 = icmp eq i64 %695, 0
  br i1 %696, label %697, label %698, !prof !196

697:                                              ; preds = %689
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %698

698:                                              ; preds = %697, %689
  %699 = getelementptr inbounds i8, ptr %252, i64 %695
  %700 = getelementptr inbounds ptr, ptr %699, i64 1
  %701 = load ptr, ptr %700, align 8, !tbaa !56
  br label %702

702:                                              ; preds = %698, %683
  %703 = phi ptr [ %701, %698 ], [ null, %683 ]
  %704 = getelementptr inbounds %struct.gimple_statement_base, ptr %252, i64 0, i32 3
  %705 = load i32, ptr %704, align 4, !tbaa !67
  %706 = icmp ugt i32 %705, 2
  br i1 %706, label %707, label %725, !prof !197

707:                                              ; preds = %702
  %708 = load i32, ptr %252, align 8
  %709 = and i32 %708, 255
  %710 = add nsw i32 %709, -10
  %711 = icmp ult i32 %710, -9
  br i1 %711, label %725, label %712, !prof !196

712:                                              ; preds = %707
  %713 = zext nneg i32 %709 to i64
  %714 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !71
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %716
  %718 = load i64, ptr %717, align 8, !tbaa !159
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %721, !prof !196

720:                                              ; preds = %712
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %721

721:                                              ; preds = %720, %712
  %722 = getelementptr inbounds i8, ptr %252, i64 %718
  %723 = getelementptr inbounds ptr, ptr %722, i64 2
  %724 = load ptr, ptr %723, align 8, !tbaa !56
  br label %725

725:                                              ; preds = %721, %707, %702
  %726 = phi ptr [ null, %702 ], [ %724, %721 ], [ null, %707 ]
  %727 = getelementptr inbounds %struct.tree_common, ptr %684, i64 0, i32 2
  %728 = load ptr, ptr %727, align 8, !tbaa !67
  %729 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %582, ptr noundef %728, ptr noundef %703, ptr noundef %726) #16
  br label %731

730:                                              ; preds = %581
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @.str.1) #16
  br label %731

731:                                              ; preds = %730, %725, %661, %622, %548
  %732 = phi ptr [ %549, %548 ], [ null, %730 ], [ %729, %725 ], [ %665, %661 ], [ %624, %622 ]
  %733 = icmp eq ptr %732, null
  br i1 %733, label %741, label %734, !prof !198

734:                                              ; preds = %731
  %735 = load i64, ptr %732, align 8
  %736 = and i64 %735, 65535
  %737 = icmp eq i64 %736, 141
  br i1 %737, label %743, label %738, !prof !199

738:                                              ; preds = %734
  %739 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %732) #16
  %740 = icmp eq i8 %739, 0
  br i1 %740, label %741, label %743, !prof !200

741:                                              ; preds = %738, %731
  %742 = call ptr %4(ptr noundef nonnull %252, ptr noundef nonnull %252) #16, !prof !201
  br label %743

743:                                              ; preds = %741, %738, %734
  %744 = phi ptr [ %732, %738 ], [ %742, %741 ], [ %732, %734 ]
  %745 = load i32, ptr %252, align 8
  %746 = and i32 %745, 255
  %747 = add nsw i32 %746, -10
  %748 = icmp ult i32 %747, -9
  br i1 %748, label %752, label %749, !prof !177

749:                                              ; preds = %743
  %750 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %252, i64 0, i32 2
  %751 = load ptr, ptr %750, align 8, !tbaa !67
  br label %752

752:                                              ; preds = %749, %743
  %753 = phi ptr [ %751, %749 ], [ null, %743 ]
  %754 = icmp eq ptr %753, null
  br i1 %754, label %758, label %755, !prof !177

755:                                              ; preds = %752
  %756 = getelementptr inbounds %struct.use_optype_d, ptr %753, i64 0, i32 1
  %757 = load ptr, ptr %753, align 8, !tbaa !124
  br label %758

758:                                              ; preds = %755, %752
  %759 = phi ptr [ %757, %755 ], [ %753, %752 ]
  %760 = phi i8 [ 0, %755 ], [ 1, %752 ]
  %761 = phi ptr [ %756, %755 ], [ null, %752 ]
  br i1 %754, label %803, label %762, !prof !178

762:                                              ; preds = %758, %798
  %763 = phi i32 [ %767, %798 ], [ 0, %758 ]
  %764 = phi ptr [ %801, %798 ], [ %761, %758 ]
  %765 = phi i8 [ %800, %798 ], [ %760, %758 ]
  %766 = phi ptr [ %799, %798 ], [ %759, %758 ]
  %767 = add i32 %763, 1
  %768 = zext i32 %763 to i64
  %769 = getelementptr inbounds ptr, ptr %465, i64 %768
  %770 = load ptr, ptr %769, align 8, !tbaa !56
  %771 = load ptr, ptr %764, align 8, !tbaa !186
  %772 = icmp eq ptr %771, null
  br i1 %772, label %778, label %773, !prof !202

773:                                              ; preds = %762
  %774 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %764, i64 0, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !188
  %776 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %771, i64 0, i32 1
  store ptr %775, ptr %776, align 8, !tbaa !188
  %777 = load ptr, ptr %774, align 8, !tbaa !188
  store ptr %771, ptr %777, align 8, !tbaa !186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %764, i8 0, i64 16, i1 false)
  br label %778

778:                                              ; preds = %773, %762
  %779 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %764, i64 0, i32 3
  %780 = load ptr, ptr %779, align 8, !tbaa !127
  store ptr %770, ptr %780, align 8, !tbaa !56
  %781 = icmp eq ptr %770, null
  br i1 %781, label %786, label %782, !prof !183

782:                                              ; preds = %778
  %783 = load i64, ptr %770, align 8
  %784 = and i64 %783, 65535
  %785 = icmp eq i64 %784, 141
  br i1 %785, label %787, label %786, !prof !182

786:                                              ; preds = %782, %778
  store ptr null, ptr %764, align 8, !tbaa !186
  br label %793

787:                                              ; preds = %782
  %788 = getelementptr inbounds %struct.tree_ssa_name, ptr %770, i64 0, i32 5
  store ptr %788, ptr %764, align 8, !tbaa !186
  %789 = getelementptr inbounds %struct.tree_ssa_name, ptr %770, i64 0, i32 5, i32 1
  %790 = load ptr, ptr %789, align 8, !tbaa !188
  %791 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %764, i64 0, i32 1
  store ptr %790, ptr %791, align 8, !tbaa !188
  %792 = load ptr, ptr %789, align 8, !tbaa !188
  store ptr %764, ptr %792, align 8, !tbaa !186
  store ptr %764, ptr %789, align 8, !tbaa !188
  br label %793

793:                                              ; preds = %787, %786
  %794 = icmp eq ptr %766, null
  br i1 %794, label %798, label %795, !prof !179

795:                                              ; preds = %793
  %796 = getelementptr inbounds %struct.use_optype_d, ptr %766, i64 0, i32 1
  %797 = load ptr, ptr %766, align 8, !tbaa !124
  br label %798

798:                                              ; preds = %793, %795
  %799 = phi ptr [ %797, %795 ], [ %766, %793 ]
  %800 = phi i8 [ %765, %795 ], [ 1, %793 ]
  %801 = phi ptr [ %796, %795 ], [ null, %793 ]
  %802 = icmp eq i8 %800, 0
  br i1 %802, label %762, label %803, !prof !180, !llvm.loop !203

803:                                              ; preds = %798, %758
  call void @free(ptr noundef %465)
  br label %804

804:                                              ; preds = %803, %428, %388, %374
  %805 = phi ptr [ %433, %428 ], [ %744, %803 ], [ %391, %388 ], [ null, %374 ]
  %806 = icmp eq ptr %805, null
  br i1 %806, label %914, label %807, !prof !204

807:                                              ; preds = %804
  %808 = load i64, ptr %805, align 8
  %809 = and i64 %808, 65535
  %810 = icmp eq i64 %809, 141
  br i1 %810, label %814, label %811, !prof !205

811:                                              ; preds = %807
  %812 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %805) #16
  %813 = icmp eq i8 %812, 0
  br i1 %813, label %914, label %814, !prof !206

814:                                              ; preds = %811, %807
  %815 = call ptr @gimple_get_lhs(ptr noundef %252) #16
  %816 = getelementptr inbounds %struct.tree_ssa_name, ptr %815, i64 0, i32 3
  %817 = load i32, ptr %816, align 8, !tbaa !67
  %818 = load ptr, ptr @ssa_name_values, align 8
  %819 = icmp eq ptr %818, null
  br i1 %819, label %822, label %820, !prof !137

820:                                              ; preds = %814
  %821 = load i32, ptr %818, align 8, !tbaa !77
  br label %822

822:                                              ; preds = %820, %814
  %823 = phi i32 [ %821, %820 ], [ 0, %814 ]
  %824 = icmp ult i32 %817, %823
  br i1 %824, label %825, label %829, !prof !138

825:                                              ; preds = %822
  %826 = zext i32 %817 to i64
  %827 = getelementptr inbounds %struct.VEC_tree_base, ptr %818, i64 0, i32 2, i64 %826
  %828 = load ptr, ptr %827, align 8, !tbaa !56
  br label %829

829:                                              ; preds = %825, %822
  %830 = phi ptr [ %828, %825 ], [ null, %822 ]
  %831 = load i64, ptr %805, align 8
  %832 = and i64 %831, 65535
  %833 = icmp eq i64 %832, 141
  br i1 %833, label %834, label %850, !prof !139

834:                                              ; preds = %829
  %835 = getelementptr inbounds %struct.tree_ssa_name, ptr %805, i64 0, i32 3
  %836 = load i32, ptr %835, align 8, !tbaa !67
  br i1 %819, label %839, label %837, !prof !140

837:                                              ; preds = %834
  %838 = load i32, ptr %818, align 8, !tbaa !77
  br label %839

839:                                              ; preds = %837, %834
  %840 = phi i32 [ %838, %837 ], [ 0, %834 ]
  %841 = icmp ult i32 %836, %840
  br i1 %841, label %842, label %846, !prof !141

842:                                              ; preds = %839
  %843 = zext i32 %836 to i64
  %844 = getelementptr inbounds %struct.VEC_tree_base, ptr %818, i64 0, i32 2, i64 %843
  %845 = load ptr, ptr %844, align 8, !tbaa !56
  br label %846

846:                                              ; preds = %842, %839
  %847 = phi ptr [ %845, %842 ], [ null, %839 ]
  %848 = icmp eq ptr %847, null
  %849 = select i1 %848, ptr %805, ptr %847, !prof !142
  br label %850

850:                                              ; preds = %846, %829
  %851 = phi ptr [ %849, %846 ], [ %805, %829 ]
  br i1 %819, label %854, label %852, !prof !76

852:                                              ; preds = %850
  %853 = load i32, ptr %818, align 8, !tbaa !77
  br label %854

854:                                              ; preds = %852, %850
  %855 = phi i32 [ %853, %852 ], [ 0, %850 ]
  %856 = icmp ult i32 %817, %855
  br i1 %856, label %888, label %857, !prof !79

857:                                              ; preds = %854
  %858 = add i32 %817, 1
  br i1 %819, label %861, label %859, !prof !80

859:                                              ; preds = %857
  %860 = load i32, ptr %818, align 8, !tbaa !77
  br label %861

861:                                              ; preds = %859, %857
  %862 = phi i32 [ %860, %859 ], [ 0, %857 ]
  br i1 %819, label %865, label %863, !prof !80

863:                                              ; preds = %861
  %864 = load i32, ptr %818, align 8, !tbaa !77
  br label %865

865:                                              ; preds = %863, %861
  %866 = phi i32 [ %864, %863 ], [ 0, %861 ]
  %867 = sub nsw i32 %858, %866
  br i1 %819, label %874, label %868, !prof !80

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct.VEC_tree_base, ptr %818, i64 0, i32 1
  %870 = load i32, ptr %869, align 4, !tbaa !81
  %871 = load i32, ptr %818, align 8, !tbaa !77
  %872 = sub i32 %870, %871
  %873 = icmp uge i32 %872, %867
  br label %876

874:                                              ; preds = %865
  %875 = icmp eq i32 %866, %858
  br label %876

876:                                              ; preds = %874, %868
  %877 = phi i1 [ %873, %868 ], [ %875, %874 ]
  br i1 %877, label %880, label %878, !prof !82

878:                                              ; preds = %876
  %879 = call ptr @vec_heap_p_reserve_exact(ptr noundef %818, i32 noundef %867) #16
  store ptr %879, ptr @ssa_name_values, align 8, !tbaa !56
  br label %880

880:                                              ; preds = %878, %876
  %881 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56, !nonnull !83, !noundef !83
  store i32 %858, ptr %881, align 8, !tbaa !77
  %882 = getelementptr inbounds %struct.VEC_tree_base, ptr %881, i64 0, i32 2
  %883 = sext i32 %862 to i64
  %884 = getelementptr inbounds ptr, ptr %882, i64 %883
  %885 = sub nsw i32 %858, %862
  %886 = sext i32 %885 to i64
  %887 = shl nsw i64 %886, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %884, i8 0, i64 %887, i1 false), !prof !207
  br label %888

888:                                              ; preds = %880, %854
  %889 = load ptr, ptr @ssa_name_values, align 8
  %890 = load i32, ptr %816, align 8, !tbaa !67
  %891 = zext i32 %890 to i64
  %892 = getelementptr inbounds %struct.VEC_tree_base, ptr %889, i64 0, i32 2, i64 %891
  store ptr %851, ptr %892, align 8, !tbaa !56
  %893 = load ptr, ptr %3, align 8, !tbaa !56
  %894 = icmp eq ptr %893, null
  br i1 %894, label %901, label %895, !prof !137

895:                                              ; preds = %888
  %896 = getelementptr inbounds %struct.VEC_tree_base, ptr %893, i64 0, i32 1
  %897 = load i32, ptr %896, align 4, !tbaa !81
  %898 = load i32, ptr %893, align 8, !tbaa !77
  %899 = sub i32 %897, %898
  %900 = icmp ult i32 %899, 2
  br i1 %900, label %901, label %903, !prof !144

901:                                              ; preds = %895, %888
  %902 = call ptr @vec_heap_p_reserve(ptr noundef %893, i32 noundef 2) #16
  store ptr %902, ptr %3, align 8, !tbaa !56
  br label %903

903:                                              ; preds = %895, %901
  %904 = load ptr, ptr %3, align 8, !tbaa !56
  %905 = load i32, ptr %904, align 8, !tbaa !77
  %906 = add i32 %905, 1
  store i32 %906, ptr %904, align 8, !tbaa !77
  %907 = zext i32 %905 to i64
  %908 = getelementptr inbounds %struct.VEC_tree_base, ptr %904, i64 0, i32 2, i64 %907
  store ptr %830, ptr %908, align 8, !tbaa !56
  %909 = load ptr, ptr %3, align 8, !tbaa !56
  %910 = load i32, ptr %909, align 8, !tbaa !77
  %911 = add i32 %910, 1
  store i32 %911, ptr %909, align 8, !tbaa !77
  %912 = zext i32 %910 to i64
  %913 = getelementptr inbounds %struct.VEC_tree_base, ptr %909, i64 0, i32 2, i64 %912
  store ptr %815, ptr %913, align 8, !tbaa !56
  br label %914

914:                                              ; preds = %348, %311, %258, %255, %250, %250, %250, %903, %811, %804, %294, %281
  %915 = phi i32 [ 4, %294 ], [ 4, %281 ], [ 0, %903 ], [ 0, %811 ], [ 0, %804 ], [ 4, %250 ], [ 4, %250 ], [ 4, %250 ], [ 1, %255 ], [ 1, %258 ], [ 4, %311 ], [ %350, %348 ]
  switch i32 %915, label %920 [
    i32 0, label %916
    i32 4, label %916
  ], !prof !208

916:                                              ; preds = %914, %914
  %917 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %251, i64 0, i32 2
  %918 = load ptr, ptr %917, align 8, !tbaa !145
  %919 = icmp eq ptr %918, null
  br i1 %919, label %920, label %250, !prof !209, !llvm.loop !210

920:                                              ; preds = %914, %916, %247
  %921 = phi ptr [ null, %247 ], [ null, %914 ], [ %252, %916 ]
  %922 = icmp eq ptr %921, null
  br i1 %922, label %1346, label %923, !prof !153

923:                                              ; preds = %920
  %924 = load i32, ptr %921, align 8
  %925 = trunc i32 %924 to i8
  switch i8 %925, label %1346 [
    i8 1, label %926
    i8 3, label %926
    i8 5, label %926
  ], !prof !211

926:                                              ; preds = %923, %923, %923
  %927 = and i32 %924, 255
  switch i8 %925, label %1216 [
    i8 1, label %928
    i8 5, label %1186
    i8 3, label %1201
  ], !prof !212

928:                                              ; preds = %926
  %929 = add nsw i32 %927, -10
  %930 = icmp ult i32 %929, -9
  br i1 %930, label %943, label %931, !prof !213

931:                                              ; preds = %928
  %932 = zext nneg i32 %927 to i64
  %933 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %932
  %934 = load i32, ptr %933, align 4, !tbaa !71
  %935 = zext i32 %934 to i64
  %936 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %935
  %937 = load i64, ptr %936, align 8, !tbaa !159
  %938 = icmp eq i64 %937, 0
  br i1 %938, label %939, label %940, !prof !213

939:                                              ; preds = %931
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %940

940:                                              ; preds = %939, %931
  %941 = getelementptr inbounds i8, ptr %921, i64 %937
  %942 = load ptr, ptr %941, align 8, !tbaa !56
  br label %943

943:                                              ; preds = %940, %928
  %944 = phi ptr [ %942, %940 ], [ null, %928 ]
  %945 = load i32, ptr %921, align 8
  %946 = and i32 %945, 255
  %947 = add nsw i32 %946, -10
  %948 = icmp ult i32 %947, -9
  br i1 %948, label %962, label %949, !prof !213

949:                                              ; preds = %943
  %950 = zext nneg i32 %946 to i64
  %951 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %950
  %952 = load i32, ptr %951, align 4, !tbaa !71
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %953
  %955 = load i64, ptr %954, align 8, !tbaa !159
  %956 = icmp eq i64 %955, 0
  br i1 %956, label %957, label %958, !prof !213

957:                                              ; preds = %949
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %958

958:                                              ; preds = %957, %949
  %959 = getelementptr inbounds i8, ptr %921, i64 %955
  %960 = getelementptr inbounds ptr, ptr %959, i64 1
  %961 = load ptr, ptr %960, align 8, !tbaa !56
  br label %962

962:                                              ; preds = %958, %943
  %963 = phi ptr [ %961, %958 ], [ null, %943 ]
  %964 = load i32, ptr %921, align 8
  %965 = lshr i32 %964, 16
  %966 = load i64, ptr %944, align 8
  %967 = and i64 %966, 65535
  %968 = icmp eq i64 %967, 141
  br i1 %968, label %969, label %987, !prof !214

969:                                              ; preds = %962
  %970 = getelementptr inbounds %struct.tree_ssa_name, ptr %944, i64 0, i32 3
  %971 = load i32, ptr %970, align 8, !tbaa !67
  %972 = load ptr, ptr @ssa_name_values, align 8
  %973 = icmp eq ptr %972, null
  br i1 %973, label %976, label %974, !prof !213

974:                                              ; preds = %969
  %975 = load i32, ptr %972, align 8, !tbaa !77
  br label %976

976:                                              ; preds = %974, %969
  %977 = phi i32 [ %975, %974 ], [ 0, %969 ]
  %978 = icmp ult i32 %971, %977
  br i1 %978, label %979, label %983, !prof !215

979:                                              ; preds = %976
  %980 = zext i32 %971 to i64
  %981 = getelementptr inbounds %struct.VEC_tree_base, ptr %972, i64 0, i32 2, i64 %980
  %982 = load ptr, ptr %981, align 8, !tbaa !56
  br label %983

983:                                              ; preds = %979, %976
  %984 = phi ptr [ %982, %979 ], [ null, %976 ]
  %985 = icmp eq ptr %984, null
  %986 = select i1 %985, ptr %944, ptr %984, !prof !216
  br label %987

987:                                              ; preds = %983, %962
  %988 = phi ptr [ %986, %983 ], [ %944, %962 ]
  %989 = load i64, ptr %963, align 8
  %990 = and i64 %989, 65535
  %991 = icmp eq i64 %990, 141
  br i1 %991, label %992, label %1010, !prof !213

992:                                              ; preds = %987
  %993 = getelementptr inbounds %struct.tree_ssa_name, ptr %963, i64 0, i32 3
  %994 = load i32, ptr %993, align 8, !tbaa !67
  %995 = load ptr, ptr @ssa_name_values, align 8
  %996 = icmp eq ptr %995, null
  br i1 %996, label %999, label %997

997:                                              ; preds = %992
  %998 = load i32, ptr %995, align 8, !tbaa !77
  br label %999

999:                                              ; preds = %997, %992
  %1000 = phi i32 [ %998, %997 ], [ 0, %992 ]
  %1001 = icmp ult i32 %994, %1000
  br i1 %1001, label %1002, label %1006

1002:                                             ; preds = %999
  %1003 = zext i32 %994 to i64
  %1004 = getelementptr inbounds %struct.VEC_tree_base, ptr %995, i64 0, i32 2, i64 %1003
  %1005 = load ptr, ptr %1004, align 8, !tbaa !56
  br label %1006

1006:                                             ; preds = %1002, %999
  %1007 = phi ptr [ %1005, %1002 ], [ null, %999 ]
  %1008 = icmp eq ptr %1007, null
  %1009 = select i1 %1008, ptr %963, ptr %1007
  br label %1010

1010:                                             ; preds = %1006, %987
  %1011 = phi ptr [ %1009, %1006 ], [ %963, %987 ]
  %1012 = icmp eq i8 %2, 0
  br i1 %1012, label %1107, label %1013, !prof !217

1013:                                             ; preds = %1010
  %1014 = load i64, ptr %988, align 8
  %1015 = and i64 %1014, 65535
  %1016 = icmp eq i64 %1015, 141
  br i1 %1016, label %1017, label %1099, !prof !218

1017:                                             ; preds = %1013
  %1018 = load ptr, ptr %1, align 8, !tbaa !219
  %1019 = getelementptr inbounds %struct.tree_ssa_name, ptr %988, i64 0, i32 5
  %1020 = getelementptr inbounds %struct.tree_ssa_name, ptr %988, i64 0, i32 5, i32 1
  %1021 = load ptr, ptr %1020, align 8, !tbaa !188
  %1022 = icmp eq ptr %1021, %1019
  br i1 %1022, label %1099, label %1023, !prof !220

1023:                                             ; preds = %1017, %1094
  %1024 = phi ptr [ %1098, %1094 ], [ %1021, %1017 ]
  %1025 = phi ptr [ %1096, %1094 ], [ %1021, %1017 ]
  %1026 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1024, i64 0, i32 2
  %1027 = load ptr, ptr %1026, align 8, !tbaa !67
  %1028 = icmp eq ptr %1027, %921
  br i1 %1028, label %1094, label %1029, !prof !221

1029:                                             ; preds = %1023
  %1030 = call zeroext i8 @gimple_assign_single_p(ptr noundef %1027) #16
  %1031 = icmp eq i8 %1030, 0
  br i1 %1031, label %1094, label %1032, !prof !222

1032:                                             ; preds = %1029
  %1033 = load i32, ptr %1027, align 8
  %1034 = and i32 %1033, 255
  %1035 = add nsw i32 %1034, -1
  %1036 = icmp ult i32 %1035, 9
  call void @llvm.assume(i1 %1036)
  %1037 = zext nneg i32 %1034 to i64
  %1038 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !71
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1040
  %1042 = load i64, ptr %1041, align 8, !tbaa !159
  %1043 = icmp eq i64 %1042, 0
  br i1 %1043, label %1044, label %1045, !prof !223

1044:                                             ; preds = %1032
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1045

1045:                                             ; preds = %1044, %1032
  %1046 = getelementptr inbounds i8, ptr %1027, i64 %1042
  %1047 = getelementptr inbounds ptr, ptr %1046, i64 1
  %1048 = load ptr, ptr %1047, align 8, !tbaa !56
  %1049 = load i64, ptr %1048, align 8
  %1050 = and i64 %1049, 65535
  %1051 = icmp eq i64 %1050, 148
  br i1 %1051, label %1052, label %1094, !prof !224

1052:                                             ; preds = %1045
  %1053 = load i32, ptr %1027, align 8
  %1054 = and i32 %1053, 255
  %1055 = add nsw i32 %1054, -1
  %1056 = icmp ult i32 %1055, 9
  call void @llvm.assume(i1 %1056)
  %1057 = zext nneg i32 %1054 to i64
  %1058 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1057
  %1059 = load i32, ptr %1058, align 4, !tbaa !71
  %1060 = zext i32 %1059 to i64
  %1061 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1060
  %1062 = load i64, ptr %1061, align 8, !tbaa !159
  %1063 = icmp eq i64 %1062, 0
  br i1 %1063, label %1064, label %1065, !prof !223

1064:                                             ; preds = %1052
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1065

1065:                                             ; preds = %1064, %1052
  %1066 = getelementptr inbounds i8, ptr %1027, i64 %1062
  %1067 = getelementptr inbounds ptr, ptr %1066, i64 1
  %1068 = load ptr, ptr %1067, align 8, !tbaa !56
  %1069 = getelementptr inbounds %struct.tree_exp, ptr %1068, i64 0, i32 3
  %1070 = load ptr, ptr %1069, align 8, !tbaa !67
  %1071 = icmp eq ptr %1070, %988
  br i1 %1071, label %1072, label %1094, !prof !224

1072:                                             ; preds = %1065
  %1073 = getelementptr inbounds %struct.gimple_statement_base, ptr %1027, i64 0, i32 4
  %1074 = load ptr, ptr %1073, align 8, !tbaa !67
  %1075 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1018, ptr noundef %1074) #16
  %1076 = icmp eq i8 %1075, 0
  br i1 %1076, label %1094, label %1077, !prof !225

1077:                                             ; preds = %1072
  %1078 = load i32, ptr %1027, align 8
  %1079 = and i32 %1078, 255
  %1080 = add nsw i32 %1079, -10
  %1081 = icmp ult i32 %1080, -9
  br i1 %1081, label %1099, label %1082, !prof !226

1082:                                             ; preds = %1077
  %1083 = zext nneg i32 %1079 to i64
  %1084 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1083
  %1085 = load i32, ptr %1084, align 4, !tbaa !71
  %1086 = zext i32 %1085 to i64
  %1087 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1086
  %1088 = load i64, ptr %1087, align 8, !tbaa !159
  %1089 = icmp eq i64 %1088, 0
  br i1 %1089, label %1090, label %1091, !prof !226

1090:                                             ; preds = %1082
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1091

1091:                                             ; preds = %1090, %1082
  %1092 = getelementptr inbounds i8, ptr %1027, i64 %1088
  %1093 = load ptr, ptr %1092, align 8, !tbaa !56
  br label %1099

1094:                                             ; preds = %1072, %1065, %1045, %1029, %1023
  %1095 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1025, i64 0, i32 1
  %1096 = load ptr, ptr %1095, align 8, !tbaa !188
  %1097 = icmp eq ptr %1096, %1019
  %1098 = select i1 %1097, ptr null, ptr %1096, !prof !227
  br i1 %1097, label %1099, label %1023, !prof !228, !llvm.loop !229

1099:                                             ; preds = %1094, %1091, %1077, %1017, %1013
  %1100 = phi ptr [ %988, %1013 ], [ %1093, %1091 ], [ null, %1077 ], [ %988, %1017 ], [ %988, %1094 ]
  %1101 = load i64, ptr %1011, align 8
  %1102 = and i64 %1101, 65535
  %1103 = icmp eq i64 %1102, 141
  br i1 %1103, label %1104, label %1107, !prof !230

1104:                                             ; preds = %1099
  %1105 = load ptr, ptr %1, align 8, !tbaa !219
  %1106 = call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %1011, ptr noundef %1105, ptr noundef nonnull %921)
  br label %1107

1107:                                             ; preds = %1104, %1099, %1010
  %1108 = phi ptr [ %1100, %1104 ], [ %1100, %1099 ], [ %988, %1010 ]
  %1109 = phi ptr [ %1106, %1104 ], [ %1011, %1099 ], [ %1011, %1010 ]
  %1110 = call zeroext i8 @tree_swap_operands_p(ptr noundef %1108, ptr noundef %1109, i8 noundef zeroext 0) #16
  %1111 = icmp eq i8 %1110, 0
  br i1 %1111, label %1114, label %1112, !prof !214

1112:                                             ; preds = %1107
  %1113 = call i32 @swap_tree_comparison(i32 noundef %965) #16
  br label %1114

1114:                                             ; preds = %1112, %1107
  %1115 = phi ptr [ %1109, %1112 ], [ %1108, %1107 ]
  %1116 = phi ptr [ %1108, %1112 ], [ %1109, %1107 ]
  %1117 = phi i32 [ %1113, %1112 ], [ %965, %1107 ]
  %1118 = load i32, ptr %0, align 8
  %1119 = shl i32 %1117, 16
  %1120 = and i32 %1118, 65535
  %1121 = or disjoint i32 %1120, %1119
  store i32 %1121, ptr %0, align 8
  %1122 = and i32 %1118, 255
  %1123 = add nsw i32 %1122, -10
  %1124 = icmp ult i32 %1123, -9
  br i1 %1124, label %1129, label %1125, !prof !213

1125:                                             ; preds = %1114
  %1126 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %1127 = load i32, ptr %1126, align 4, !tbaa !67
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1130, !prof !213

1129:                                             ; preds = %1125, %1114
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #16
  br label %1130

1130:                                             ; preds = %1129, %1125
  %1131 = load i32, ptr %0, align 8
  %1132 = and i32 %1131, 255
  %1133 = zext nneg i32 %1132 to i64
  %1134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1133
  %1135 = load i32, ptr %1134, align 4, !tbaa !71
  %1136 = zext i32 %1135 to i64
  %1137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1136
  %1138 = load i64, ptr %1137, align 8, !tbaa !159
  %1139 = icmp eq i64 %1138, 0
  br i1 %1139, label %1140, label %1141, !prof !213

1140:                                             ; preds = %1130
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1141

1141:                                             ; preds = %1140, %1130
  %1142 = getelementptr inbounds i8, ptr %0, i64 %1138
  store ptr %1115, ptr %1142, align 8, !tbaa !56
  %1143 = load i32, ptr %0, align 8
  %1144 = and i32 %1143, 255
  %1145 = add nsw i32 %1144, -10
  %1146 = icmp ult i32 %1145, -9
  br i1 %1146, label %1151, label %1147, !prof !213

1147:                                             ; preds = %1141
  %1148 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %1149 = load i32, ptr %1148, align 4, !tbaa !67
  %1150 = icmp ugt i32 %1149, 1
  br i1 %1150, label %1152, label %1151, !prof !214

1151:                                             ; preds = %1147, %1141
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #16
  br label %1152

1152:                                             ; preds = %1151, %1147
  %1153 = load i32, ptr %0, align 8
  %1154 = and i32 %1153, 255
  %1155 = zext nneg i32 %1154 to i64
  %1156 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1155
  %1157 = load i32, ptr %1156, align 4, !tbaa !71
  %1158 = zext i32 %1157 to i64
  %1159 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1158
  %1160 = load i64, ptr %1159, align 8, !tbaa !159
  %1161 = icmp eq i64 %1160, 0
  br i1 %1161, label %1162, label %1163, !prof !213

1162:                                             ; preds = %1152
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1163

1163:                                             ; preds = %1162, %1152
  %1164 = getelementptr inbounds i8, ptr %0, i64 %1160
  %1165 = getelementptr inbounds ptr, ptr %1164, i64 1
  store ptr %1116, ptr %1165, align 8, !tbaa !56
  call void @fold_defer_overflow_warnings() #16
  %1166 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !56
  %1167 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1117, ptr noundef %1166, ptr noundef %1115, ptr noundef %1116) #16
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1176, label %1169, !prof !231

1169:                                             ; preds = %1163, %1173
  %1170 = phi ptr [ %1175, %1173 ], [ %1167, %1163 ]
  %1171 = load i64, ptr %1170, align 8
  %1172 = trunc i64 %1171 to i16
  switch i16 %1172, label %1176 [
    i16 116, label %1173
    i16 113, label %1173
  ], !prof !232

1173:                                             ; preds = %1169, %1169
  %1174 = getelementptr inbounds %struct.tree_exp, ptr %1170, i64 0, i32 3
  %1175 = load ptr, ptr %1174, align 8, !tbaa !67
  br label %1169, !llvm.loop !233

1176:                                             ; preds = %1169, %1163
  %1177 = phi ptr [ null, %1163 ], [ %1170, %1169 ]
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1185, label %1179, !prof !231

1179:                                             ; preds = %1176
  %1180 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1177) #16
  %1181 = icmp ne i8 %1180, 0
  %1182 = zext i1 %1181 to i8
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %1182, ptr noundef nonnull %921, i32 noundef 2) #16
  %1183 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1177) #16
  %1184 = icmp eq i8 %1183, 0
  br i1 %1184, label %1260, label %1263, !prof !234

1185:                                             ; preds = %1176
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef nonnull %921, i32 noundef 2) #16
  br label %1260

1186:                                             ; preds = %926
  %1187 = add nsw i32 %927, -10
  %1188 = icmp ult i32 %1187, -9
  br i1 %1188, label %1217, label %1189, !prof !235

1189:                                             ; preds = %1186
  %1190 = zext nneg i32 %927 to i64
  %1191 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !71
  %1193 = zext i32 %1192 to i64
  %1194 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1193
  %1195 = load i64, ptr %1194, align 8, !tbaa !159
  %1196 = icmp eq i64 %1195, 0
  br i1 %1196, label %1197, label %1198, !prof !235

1197:                                             ; preds = %1189
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1198

1198:                                             ; preds = %1197, %1189
  %1199 = getelementptr inbounds i8, ptr %921, i64 %1195
  %1200 = load ptr, ptr %1199, align 8, !tbaa !56
  br label %1217

1201:                                             ; preds = %926
  %1202 = add nsw i32 %927, -10
  %1203 = icmp ult i32 %1202, -9
  br i1 %1203, label %1217, label %1204

1204:                                             ; preds = %1201
  %1205 = zext nneg i32 %927 to i64
  %1206 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1205
  %1207 = load i32, ptr %1206, align 4, !tbaa !71
  %1208 = zext i32 %1207 to i64
  %1209 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1208
  %1210 = load i64, ptr %1209, align 8, !tbaa !159
  %1211 = icmp eq i64 %1210, 0
  br i1 %1211, label %1212, label %1213

1212:                                             ; preds = %1204
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %1213

1213:                                             ; preds = %1212, %1204
  %1214 = getelementptr inbounds i8, ptr %921, i64 %1210
  %1215 = load ptr, ptr %1214, align 8, !tbaa !56
  br label %1217

1216:                                             ; preds = %926
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @.str.1) #16
  br label %1217

1217:                                             ; preds = %1216, %1213, %1201, %1198, %1186
  %1218 = phi ptr [ undef, %1216 ], [ %1200, %1198 ], [ null, %1186 ], [ %1215, %1213 ], [ null, %1201 ]
  %1219 = load i64, ptr %1218, align 8
  %1220 = and i64 %1219, 65535
  %1221 = icmp eq i64 %1220, 141
  br i1 %1221, label %1222, label %1263, !prof !236

1222:                                             ; preds = %1217
  %1223 = getelementptr inbounds %struct.tree_ssa_name, ptr %1218, i64 0, i32 3
  %1224 = load i32, ptr %1223, align 8, !tbaa !67
  %1225 = load ptr, ptr @ssa_name_values, align 8
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1229, label %1227, !prof !235

1227:                                             ; preds = %1222
  %1228 = load i32, ptr %1225, align 8, !tbaa !77
  br label %1229

1229:                                             ; preds = %1227, %1222
  %1230 = phi i32 [ %1228, %1227 ], [ 0, %1222 ]
  %1231 = icmp ult i32 %1224, %1230
  br i1 %1231, label %1232, label %1244, !prof !236

1232:                                             ; preds = %1229
  %1233 = zext i32 %1224 to i64
  %1234 = getelementptr inbounds %struct.VEC_tree_base, ptr %1225, i64 0, i32 2, i64 %1233
  %1235 = load ptr, ptr %1234, align 8, !tbaa !56
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1244, label %1237, !prof !235

1237:                                             ; preds = %1232
  br i1 %1226, label %1240, label %1238, !prof !235

1238:                                             ; preds = %1237
  %1239 = load i32, ptr %1225, align 8, !tbaa !77
  br label %1240

1240:                                             ; preds = %1238, %1237
  %1241 = phi i32 [ %1239, %1238 ], [ 0, %1237 ]
  %1242 = icmp ult i32 %1224, %1241
  %1243 = select i1 %1242, ptr %1235, ptr null, !prof !236
  br label %1244

1244:                                             ; preds = %1240, %1232, %1229
  %1245 = phi ptr [ %1218, %1232 ], [ %1218, %1229 ], [ %1243, %1240 ]
  %1246 = icmp eq i8 %2, 0
  br i1 %1246, label %1254, label %1247, !prof !236

1247:                                             ; preds = %1244
  %1248 = load i64, ptr %1245, align 8
  %1249 = and i64 %1248, 65535
  %1250 = icmp eq i64 %1249, 141
  br i1 %1250, label %1251, label %1254

1251:                                             ; preds = %1247
  %1252 = load ptr, ptr %1, align 8, !tbaa !219
  %1253 = call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %1245, ptr noundef %1252, ptr noundef nonnull %921)
  br label %1254

1254:                                             ; preds = %1251, %1247, %1244
  %1255 = phi ptr [ %1253, %1251 ], [ %1245, %1247 ], [ %1245, %1244 ]
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1263, label %1257, !prof !235

1257:                                             ; preds = %1254
  %1258 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1255) #16
  %1259 = icmp eq i8 %1258, 0
  br i1 %1259, label %1260, label %1263, !prof !236

1260:                                             ; preds = %1257, %1179, %1185
  %1261 = phi ptr [ %0, %1185 ], [ %0, %1179 ], [ %921, %1257 ]
  %1262 = call ptr %4(ptr noundef nonnull %1261, ptr noundef nonnull %921) #16
  br label %1263

1263:                                             ; preds = %1260, %1179, %1217, %1254, %1257
  %1264 = phi ptr [ %1177, %1179 ], [ %1255, %1257 ], [ null, %1254 ], [ null, %1217 ], [ %1262, %1260 ]
  %1265 = icmp eq ptr %1264, null
  br i1 %1265, label %1346, label %1266, !prof !237

1266:                                             ; preds = %1263
  %1267 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1264) #16
  %1268 = icmp eq i8 %1267, 0
  br i1 %1268, label %1346, label %1269, !prof !238

1269:                                             ; preds = %1266
  %1270 = load ptr, ptr %80, align 8, !tbaa !120
  %1271 = call ptr @find_taken_edge(ptr noundef %1270, ptr noundef nonnull %1264) #16
  %1272 = icmp eq ptr %1271, null
  br i1 %1272, label %1276, label %1273, !prof !239

1273:                                             ; preds = %1269
  %1274 = getelementptr inbounds %struct.edge_def, ptr %1271, i64 0, i32 1
  %1275 = load ptr, ptr %1274, align 8, !tbaa !120
  br label %1276

1276:                                             ; preds = %1269, %1273
  %1277 = phi ptr [ %1275, %1273 ], [ null, %1269 ]
  %1278 = load ptr, ptr %80, align 8, !tbaa !120
  %1279 = icmp eq ptr %1277, %1278
  br i1 %1279, label %1346, label %1280, !prof !239

1280:                                             ; preds = %1276, %1340
  %1281 = load ptr, ptr %3, align 8, !tbaa !56
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1285, label %1283, !prof !240

1283:                                             ; preds = %1280
  %1284 = load i32, ptr %1281, align 8, !tbaa !77
  br label %1285

1285:                                             ; preds = %1283, %1280
  %1286 = phi i32 [ %1284, %1283 ], [ 0, %1280 ]
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1345, label %1288, !prof !241

1288:                                             ; preds = %1285
  %1289 = load i32, ptr %1281, align 8, !tbaa !77
  %1290 = add i32 %1289, -1
  store i32 %1290, ptr %1281, align 8, !tbaa !77
  %1291 = zext i32 %1290 to i64
  %1292 = getelementptr inbounds %struct.VEC_tree_base, ptr %1281, i64 0, i32 2, i64 %1291
  %1293 = load ptr, ptr %1292, align 8, !tbaa !56
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1345, label %1295, !prof !242

1295:                                             ; preds = %1288
  %1296 = add i32 %1289, -2
  store i32 %1296, ptr %1281, align 8, !tbaa !77
  %1297 = zext i32 %1296 to i64
  %1298 = getelementptr inbounds %struct.VEC_tree_base, ptr %1281, i64 0, i32 2, i64 %1297
  %1299 = load ptr, ptr %1298, align 8, !tbaa !56
  %1300 = getelementptr inbounds %struct.tree_ssa_name, ptr %1293, i64 0, i32 3
  %1301 = load i32, ptr %1300, align 8, !tbaa !67
  %1302 = load ptr, ptr @ssa_name_values, align 8
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1306, label %1304, !prof !76

1304:                                             ; preds = %1295
  %1305 = load i32, ptr %1302, align 8, !tbaa !77
  br label %1306

1306:                                             ; preds = %1304, %1295
  %1307 = phi i32 [ %1305, %1304 ], [ 0, %1295 ]
  %1308 = icmp ult i32 %1301, %1307
  br i1 %1308, label %1340, label %1309, !prof !79

1309:                                             ; preds = %1306
  %1310 = add i32 %1301, 1
  br i1 %1303, label %1313, label %1311, !prof !80

1311:                                             ; preds = %1309
  %1312 = load i32, ptr %1302, align 8, !tbaa !77
  br label %1313

1313:                                             ; preds = %1311, %1309
  %1314 = phi i32 [ %1312, %1311 ], [ 0, %1309 ]
  br i1 %1303, label %1317, label %1315, !prof !80

1315:                                             ; preds = %1313
  %1316 = load i32, ptr %1302, align 8, !tbaa !77
  br label %1317

1317:                                             ; preds = %1315, %1313
  %1318 = phi i32 [ %1316, %1315 ], [ 0, %1313 ]
  %1319 = sub nsw i32 %1310, %1318
  br i1 %1303, label %1326, label %1320, !prof !80

1320:                                             ; preds = %1317
  %1321 = getelementptr inbounds %struct.VEC_tree_base, ptr %1302, i64 0, i32 1
  %1322 = load i32, ptr %1321, align 4, !tbaa !81
  %1323 = load i32, ptr %1302, align 8, !tbaa !77
  %1324 = sub i32 %1322, %1323
  %1325 = icmp uge i32 %1324, %1319
  br label %1328

1326:                                             ; preds = %1317
  %1327 = icmp eq i32 %1318, %1310
  br label %1328

1328:                                             ; preds = %1326, %1320
  %1329 = phi i1 [ %1325, %1320 ], [ %1327, %1326 ]
  br i1 %1329, label %1332, label %1330, !prof !82

1330:                                             ; preds = %1328
  %1331 = call ptr @vec_heap_p_reserve_exact(ptr noundef %1302, i32 noundef %1319) #16
  store ptr %1331, ptr @ssa_name_values, align 8, !tbaa !56
  br label %1332

1332:                                             ; preds = %1330, %1328
  %1333 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56, !nonnull !83, !noundef !83
  store i32 %1310, ptr %1333, align 8, !tbaa !77
  %1334 = getelementptr inbounds %struct.VEC_tree_base, ptr %1333, i64 0, i32 2
  %1335 = sext i32 %1314 to i64
  %1336 = getelementptr inbounds ptr, ptr %1334, i64 %1335
  %1337 = sub nsw i32 %1310, %1314
  %1338 = sext i32 %1337 to i64
  %1339 = shl nsw i64 %1338, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1336, i8 0, i64 %1339, i1 false), !prof !243
  br label %1340

1340:                                             ; preds = %1332, %1306
  %1341 = load ptr, ptr @ssa_name_values, align 8
  %1342 = load i32, ptr %1300, align 8, !tbaa !67
  %1343 = zext i32 %1342 to i64
  %1344 = getelementptr inbounds %struct.VEC_tree_base, ptr %1341, i64 0, i32 2, i64 %1343
  store ptr %1299, ptr %1344, align 8, !tbaa !56
  br label %1280

1345:                                             ; preds = %1285, %1288
  call void @register_jump_thread(ptr noundef %1, ptr noundef %1271) #16
  br label %1346

1346:                                             ; preds = %923, %1345, %1266, %1263, %1276, %76, %920, %226
  br label %1347

1347:                                             ; preds = %1346, %1407
  %1348 = load ptr, ptr %3, align 8, !tbaa !56
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1352, label %1350, !prof !240

1350:                                             ; preds = %1347
  %1351 = load i32, ptr %1348, align 8, !tbaa !77
  br label %1352

1352:                                             ; preds = %1350, %1347
  %1353 = phi i32 [ %1351, %1350 ], [ 0, %1347 ]
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1412, label %1355, !prof !241

1355:                                             ; preds = %1352
  %1356 = load i32, ptr %1348, align 8, !tbaa !77
  %1357 = add i32 %1356, -1
  store i32 %1357, ptr %1348, align 8, !tbaa !77
  %1358 = zext i32 %1357 to i64
  %1359 = getelementptr inbounds %struct.VEC_tree_base, ptr %1348, i64 0, i32 2, i64 %1358
  %1360 = load ptr, ptr %1359, align 8, !tbaa !56
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1412, label %1362, !prof !242

1362:                                             ; preds = %1355
  %1363 = add i32 %1356, -2
  store i32 %1363, ptr %1348, align 8, !tbaa !77
  %1364 = zext i32 %1363 to i64
  %1365 = getelementptr inbounds %struct.VEC_tree_base, ptr %1348, i64 0, i32 2, i64 %1364
  %1366 = load ptr, ptr %1365, align 8, !tbaa !56
  %1367 = getelementptr inbounds %struct.tree_ssa_name, ptr %1360, i64 0, i32 3
  %1368 = load i32, ptr %1367, align 8, !tbaa !67
  %1369 = load ptr, ptr @ssa_name_values, align 8
  %1370 = icmp eq ptr %1369, null
  br i1 %1370, label %1373, label %1371, !prof !76

1371:                                             ; preds = %1362
  %1372 = load i32, ptr %1369, align 8, !tbaa !77
  br label %1373

1373:                                             ; preds = %1371, %1362
  %1374 = phi i32 [ %1372, %1371 ], [ 0, %1362 ]
  %1375 = icmp ult i32 %1368, %1374
  br i1 %1375, label %1407, label %1376, !prof !79

1376:                                             ; preds = %1373
  %1377 = add i32 %1368, 1
  br i1 %1370, label %1380, label %1378, !prof !80

1378:                                             ; preds = %1376
  %1379 = load i32, ptr %1369, align 8, !tbaa !77
  br label %1380

1380:                                             ; preds = %1378, %1376
  %1381 = phi i32 [ %1379, %1378 ], [ 0, %1376 ]
  br i1 %1370, label %1384, label %1382, !prof !80

1382:                                             ; preds = %1380
  %1383 = load i32, ptr %1369, align 8, !tbaa !77
  br label %1384

1384:                                             ; preds = %1382, %1380
  %1385 = phi i32 [ %1383, %1382 ], [ 0, %1380 ]
  %1386 = sub nsw i32 %1377, %1385
  br i1 %1370, label %1393, label %1387, !prof !80

1387:                                             ; preds = %1384
  %1388 = getelementptr inbounds %struct.VEC_tree_base, ptr %1369, i64 0, i32 1
  %1389 = load i32, ptr %1388, align 4, !tbaa !81
  %1390 = load i32, ptr %1369, align 8, !tbaa !77
  %1391 = sub i32 %1389, %1390
  %1392 = icmp uge i32 %1391, %1386
  br label %1395

1393:                                             ; preds = %1384
  %1394 = icmp eq i32 %1385, %1377
  br label %1395

1395:                                             ; preds = %1393, %1387
  %1396 = phi i1 [ %1392, %1387 ], [ %1394, %1393 ]
  br i1 %1396, label %1399, label %1397, !prof !82

1397:                                             ; preds = %1395
  %1398 = call ptr @vec_heap_p_reserve_exact(ptr noundef %1369, i32 noundef %1386) #16
  store ptr %1398, ptr @ssa_name_values, align 8, !tbaa !56
  br label %1399

1399:                                             ; preds = %1397, %1395
  %1400 = load ptr, ptr @ssa_name_values, align 8, !tbaa !56, !nonnull !83, !noundef !83
  store i32 %1377, ptr %1400, align 8, !tbaa !77
  %1401 = getelementptr inbounds %struct.VEC_tree_base, ptr %1400, i64 0, i32 2
  %1402 = sext i32 %1381 to i64
  %1403 = getelementptr inbounds ptr, ptr %1401, i64 %1402
  %1404 = sub nsw i32 %1377, %1381
  %1405 = sext i32 %1404 to i64
  %1406 = shl nsw i64 %1405, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1403, i8 0, i64 %1406, i1 false), !prof !244
  br label %1407

1407:                                             ; preds = %1399, %1373
  %1408 = load ptr, ptr @ssa_name_values, align 8
  %1409 = load i32, ptr %1367, align 8, !tbaa !67
  %1410 = zext i32 %1409 to i64
  %1411 = getelementptr inbounds %struct.VEC_tree_base, ptr %1408, i64 0, i32 2, i64 %1410
  store ptr %1366, ptr %1411, align 8, !tbaa !56
  br label %1347

1412:                                             ; preds = %1352, %1355
  ret void
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @register_jump_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lhs_of_dominating_assert(ptr noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #9 !prof !55 !PGOFuncName !245 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %85, label %8, !prof !220

8:                                                ; preds = %3, %79
  %9 = phi ptr [ %83, %79 ], [ %6, %3 ]
  %10 = phi ptr [ %81, %79 ], [ %6, %3 ]
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %79, label %14, !prof !221

14:                                               ; preds = %8
  %15 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %12) #16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %79, label %17, !prof !222

17:                                               ; preds = %14
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, 255
  %20 = add nsw i32 %19, -1
  %21 = icmp ult i32 %20, 9
  tail call void @llvm.assume(i1 %21)
  %22 = zext nneg i32 %19 to i64
  %23 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !159
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30, !prof !223

29:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %30

30:                                               ; preds = %29, %17
  %31 = getelementptr inbounds i8, ptr %12, i64 %27
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 148
  br i1 %36, label %37, label %79, !prof !224

37:                                               ; preds = %30
  %38 = load i32, ptr %12, align 8
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -1
  %41 = icmp ult i32 %40, 9
  tail call void @llvm.assume(i1 %41)
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !71
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !159
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50, !prof !223

49:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %50

50:                                               ; preds = %49, %37
  %51 = getelementptr inbounds i8, ptr %12, i64 %47
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !56
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %79, !prof !224

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !67
  %60 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef %59) #16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %79, label %62, !prof !225

62:                                               ; preds = %57
  %63 = load i32, ptr %12, align 8
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, -10
  %66 = icmp ult i32 %65, -9
  br i1 %66, label %85, label %67, !prof !226

67:                                               ; preds = %62
  %68 = zext nneg i32 %64 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !71
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !159
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76, !prof !226

75:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %76

76:                                               ; preds = %75, %67
  %77 = getelementptr inbounds i8, ptr %12, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  br label %85

79:                                               ; preds = %8, %14, %30, %50, %57
  %80 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %10, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !188
  %82 = icmp eq ptr %81, %4
  %83 = select i1 %82, ptr null, ptr %81, !prof !227
  %84 = icmp eq ptr %81, %4
  br i1 %84, label %85, label %8, !prof !228, !llvm.loop !229

85:                                               ; preds = %79, %3, %76, %62
  %86 = phi ptr [ %78, %76 ], [ null, %62 ], [ %0, %3 ], [ %0, %79 ]
  ret ptr %86
}

declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

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
attributes #11 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @threadedge_initialize_values, ptr @vec_heap_p_reserve_exact, i64 152}
!36 = !{ptr @threadedge_finalize_values, ptr @free, i64 152}
!37 = !{ptr @thread_across_edge, ptr @gsi_start_phis, i64 488389}
!38 = !{ptr @thread_across_edge, ptr @is_gimple_reg, i64 436032}
!39 = !{ptr @thread_across_edge, ptr @vec_heap_p_reserve, i64 56}
!40 = !{ptr @thread_across_edge, ptr @gimple_assign_single_p, i64 1537077}
!41 = !{ptr @thread_across_edge, ptr @xcalloc, i64 671832}
!42 = !{ptr @thread_across_edge, ptr @fold_call_stmt, i64 65482}
!43 = !{ptr @thread_across_edge, ptr @fold, i64 414305}
!44 = !{ptr @thread_across_edge, ptr @fold_binary_loc, i64 680274}
!45 = !{ptr @thread_across_edge, ptr @is_gimple_min_invariant, i64 642939}
!46 = !{ptr @thread_across_edge, ptr @free, i64 671832}
!47 = !{ptr @thread_across_edge, ptr @gimple_get_lhs, i64 104649}
!48 = !{ptr @thread_across_edge, ptr @dominated_by_p, i64 168779}
!49 = !{ptr @thread_across_edge, ptr @tree_swap_operands_p, i64 488229}
!50 = !{ptr @thread_across_edge, ptr @fold_defer_overflow_warnings, i64 488229}
!51 = !{ptr @thread_across_edge, ptr @fold_undefer_overflow_warnings, i64 488229}
!52 = !{ptr @thread_across_edge, ptr @find_taken_edge, i64 41795}
!53 = !{ptr @thread_across_edge, ptr @register_jump_thread, i64 41795}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !57, i64 8}
!61 = !{!"_IO_FILE", !62, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !62, i64 112, !62, i64 116, !63, i64 120, !64, i64 128, !58, i64 130, !58, i64 131, !57, i64 136, !63, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !63, i64 184, !62, i64 192, !58, i64 196}
!62 = !{!"int", !58, i64 0}
!63 = !{!"long", !58, i64 0}
!64 = !{!"short", !58, i64 0}
!65 = !{!61, !57, i64 16}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!58, !58, i64 0}
!68 = !{!61, !57, i64 40}
!69 = !{!61, !57, i64 48}
!70 = !{!61, !62, i64 0}
!71 = !{!62, !62, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!"function_entry_count", i64 320368}
!76 = !{!"branch_weights", i32 0, i32 1503096}
!77 = !{!78, !62, i64 0}
!78 = !{!"VEC_tree_base", !62, i64 0, !62, i64 4, !58, i64 8}
!79 = !{!"branch_weights", i32 1446860, i32 56236}
!80 = !{!"branch_weights", i32 0, i32 56236}
!81 = !{!78, !62, i64 4}
!82 = !{!"branch_weights", i32 56236, i32 0}
!83 = !{}
!84 = !{!"VP", i32 1, i64 11985, i64 8, i64 11810, i64 16, i64 128, i64 513, i64 29, i64 17, i64 6}
!85 = !{!"function_entry_count", i64 152}
!86 = !{!"branch_weights", i32 152, i32 0}
!87 = !{!88, !57, i64 24}
!88 = !{!"function", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !62, i64 104, !62, i64 108, !62, i64 112, !62, i64 116, !62, i64 120, !62, i64 124, !57, i64 128, !62, i64 136, !62, i64 137, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139}
!89 = !{!90, !57, i64 16}
!90 = !{!"gimple_df", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !91, i64 32, !91, i64 48, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !62, i64 96, !92, i64 104}
!91 = !{!"pt_solution", !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !57, i64 8}
!92 = !{!"ssa_operands", !57, i64 0, !62, i64 8, !62, i64 12, !58, i64 16, !57, i64 24, !57, i64 32}
!93 = !{!"branch_weights", i32 0, i32 152}
!94 = !{!"function_entry_count", i64 896586}
!95 = !{!96, !57, i64 8}
!96 = !{!"basic_block_def", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !58, i64 32, !57, i64 48, !57, i64 56, !58, i64 64, !63, i64 72, !62, i64 80, !62, i64 84, !62, i64 88, !62, i64 92, !62, i64 96}
!97 = !{!"branch_weights", i32 76, i32 896510}
!98 = !{!99, !62, i64 0}
!99 = !{!"VEC_edge_base", !62, i64 0, !62, i64 4, !58, i64 8}
!100 = !{!"branch_weights", i32 185836, i32 710750}
!101 = !{!96, !57, i64 0}
!102 = !{!"branch_weights", i32 0, i32 710750}
!103 = !{!"branch_weights", i32 372802, i32 337948}
!104 = !{!96, !62, i64 96}
!105 = !{!106}
!106 = distinct !{!106, !107, !"gsi_last_bb: argument 0"}
!107 = distinct !{!107, !"gsi_last_bb"}
!108 = !{!"branch_weights", i32 337948, i32 0}
!109 = !{!"branch_weights", i32 0, i32 337948}
!110 = !{!111, !57, i64 0}
!111 = !{!"gimple_bb_info", !57, i64 0, !57, i64 8}
!112 = !{!113, !57, i64 8}
!113 = !{!"gimple_seq_d", !57, i64 0, !57, i64 8, !57, i64 16}
!114 = !{!115, !57, i64 0}
!115 = !{!"gimple_seq_node_d", !57, i64 0, !57, i64 8, !57, i64 16}
!116 = !{!"function_entry_count", i64 488389}
!117 = !{!118, !62, i64 48}
!118 = !{!"edge_def", !57, i64 0, !57, i64 8, !58, i64 16, !57, i64 24, !57, i64 32, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !63, i64 56}
!119 = !{!"branch_weights", i32 488389, i32 0}
!120 = !{!118, !57, i64 8}
!121 = !{!122}
!122 = distinct !{!122, !123, !"gsi_last_bb: argument 0"}
!123 = distinct !{!123, !"gsi_last_bb"}
!124 = !{!125, !57, i64 0}
!125 = !{!"use_optype_d", !57, i64 0, !126, i64 8}
!126 = !{!"ssa_use_operand_d", !57, i64 0, !57, i64 8, !58, i64 16, !57, i64 24}
!127 = !{!126, !57, i64 24}
!128 = distinct !{!128, !73, !74}
!129 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56}
!130 = !{!"branch_weights", i32 52357, i32 436032}
!131 = !{!118, !62, i64 44}
!132 = !{!"branch_weights", i32 0, i32 436032}
!133 = !{!"branch_weights", i32 432363, i32 3669}
!134 = !{!"branch_weights", i32 185451, i32 246912}
!135 = !{!"branch_weights", i32 0, i32 185451}
!136 = !{!"branch_weights", i32 424210, i32 11822}
!137 = !{!"branch_weights", i32 0, i32 540681}
!138 = !{!"branch_weights", i32 485021, i32 55660}
!139 = !{!"branch_weights", i32 508001, i32 32680}
!140 = !{!"branch_weights", i32 0, i32 508001}
!141 = !{!"branch_weights", i32 443724, i32 64277}
!142 = !{!"branch_weights", i32 507973, i32 28}
!143 = !{!"VP", i32 1, i64 16312, i64 8, i64 16074, i64 16, i64 174, i64 513, i64 40, i64 17, i64 8}
!144 = !{!"branch_weights", i32 56, i32 540625}
!145 = !{!115, !57, i64 16}
!146 = !{!"branch_weights", i32 436032, i32 0}
!147 = distinct !{!147, !73, !74}
!148 = !{!149, !62, i64 8}
!149 = !{!"param_info", !57, i64 0, !62, i64 8, !58, i64 12, !62, i64 16, !62, i64 20, !57, i64 24}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_start_bb: argument 0"}
!152 = distinct !{!152, !"gsi_start_bb"}
!153 = !{!"branch_weights", i32 0, i32 488389}
!154 = !{!113, !57, i64 0}
!155 = !{!"branch_weights", i32 1, i32 488388}
!156 = !{!"branch_weights", i32 -1665179065, i32 0, i32 0, i32 0, i32 0}
!157 = !{!"branch_weights", i32 1160367, i32 0}
!158 = !{!"branch_weights", i32 606368, i32 553999}
!159 = !{!63, !63, i64 0}
!160 = !{!"branch_weights", i32 0, i32 606368}
!161 = !{!"branch_weights", i32 606368, i32 0}
!162 = !{!"branch_weights", i32 65610, i32 488389}
!163 = !{!"branch_weights", i32 0, i32 65610}
!164 = !{!"branch_weights", i32 128, i32 65482}
!165 = !{!"branch_weights", i32 0, i32 65482}
!166 = !{!"branch_weights", i32 65482, i32 0}
!167 = !{!"branch_weights", i32 65482, i32 606368}
!168 = !{!"branch_weights", i32 65482, i32 0, i32 0}
!169 = !{!"branch_weights", i32 257527, i32 414323}
!170 = !{!"branch_weights", i32 0, i32 414323}
!171 = !{!"branch_weights", i32 2, i32 414321}
!172 = !{!"branch_weights", i32 0, i32 2}
!173 = !{!"branch_weights", i32 257527, i32 414321}
!174 = !{!"branch_weights", i32 0, i32 414321}
!175 = !{!"branch_weights", i32 16, i32 414305}
!176 = !{!"branch_weights", i32 0, i32 16}
!177 = !{!"branch_weights", i32 0, i32 671832}
!178 = !{!"branch_weights", i32 1, i32 671831}
!179 = !{!"branch_weights", i32 671832, i32 113284}
!180 = !{!"branch_weights", i32 113285, i32 671831}
!181 = distinct !{!181, !73, !74}
!182 = !{!"branch_weights", i32 785116, i32 0}
!183 = !{!"branch_weights", i32 0, i32 785116}
!184 = !{!"branch_weights", i32 781703, i32 3413}
!185 = !{!"branch_weights", i32 311740, i32 473376}
!186 = !{!126, !57, i64 0}
!187 = !{!"branch_weights", i32 0, i32 473376}
!188 = !{!126, !57, i64 8}
!189 = !{!"branch_weights", i32 455182, i32 18194}
!190 = distinct !{!190, !73, !74}
!191 = !{!"branch_weights", i32 65482, i32 606350}
!192 = !{!"branch_weights", i32 0, i32 606350, i32 0, i32 0}
!193 = !{!"branch_weights", i32 414305, i32 192045}
!194 = !{!"branch_weights", i32 0, i32 414305}
!195 = !{!"branch_weights", i32 0, i32 414305, i32 0, i32 192045}
!196 = !{!"branch_weights", i32 0, i32 192045}
!197 = !{!"branch_weights", i32 192045, i32 0}
!198 = !{!"branch_weights", i32 220974, i32 450858}
!199 = !{!"branch_weights", i32 566, i32 450292}
!200 = !{!"branch_weights", i32 436713, i32 13579}
!201 = !{!"VP", i32 0, i64 657687, i64 -6212320220593193324, i64 334014, i64 -3736692788910396505, i64 323673}
!202 = !{!"branch_weights", i32 18194, i32 766922}
!203 = distinct !{!203, !73, !74}
!204 = !{!"branch_weights", i32 567201, i32 104649}
!205 = !{!"branch_weights", i32 75638, i32 29011}
!206 = !{!"branch_weights", i32 0, i32 29011}
!207 = !{!"VP", i32 1, i64 3915, i64 8, i64 3858, i64 16, i64 41, i64 513, i64 9, i64 17, i64 2}
!208 = !{!"branch_weights", i32 0, i32 671850, i32 488517}
!209 = !{!"branch_weights", i32 488388, i32 671979}
!210 = distinct !{!210, !73, !74}
!211 = !{!"branch_weights", i32 0, i32 488229, i32 0, i32 160}
!212 = !{!"branch_weights", i32 0, i32 488229, i32 160, i32 0}
!213 = !{!"branch_weights", i32 0, i32 488229}
!214 = !{!"branch_weights", i32 488229, i32 0}
!215 = !{!"branch_weights", i32 488117, i32 112}
!216 = !{!"branch_weights", i32 406834, i32 81395}
!217 = !{!"branch_weights", i32 241758, i32 246471}
!218 = !{!"branch_weights", i32 244828, i32 1643}
!219 = !{!118, !57, i64 0}
!220 = !{!"branch_weights", i32 1, i32 239402}
!221 = !{!"branch_weights", i32 238166, i32 190989}
!222 = !{!"branch_weights", i32 24296, i32 166693}
!223 = !{!"branch_weights", i32 0, i32 166693}
!224 = !{!"branch_weights", i32 166693, i32 0}
!225 = !{!"branch_weights", i32 161268, i32 5425}
!226 = !{!"branch_weights", i32 0, i32 5425}
!227 = !{!"branch_weights", i32 239403, i32 184327}
!228 = !{!"branch_weights", i32 239402, i32 189753}
!229 = distinct !{!229, !73, !74}
!230 = !{!"branch_weights", i32 0, i32 246471}
!231 = !{!"branch_weights", i32 427626, i32 60603}
!232 = !{!"branch_weights", i32 60603, i32 0, i32 0}
!233 = distinct !{!233, !73, !74}
!234 = !{!"branch_weights", i32 42569, i32 18034}
!235 = !{!"branch_weights", i32 0, i32 160}
!236 = !{!"branch_weights", i32 160, i32 0}
!237 = !{!"branch_weights", i32 446119, i32 42270}
!238 = !{!"branch_weights", i32 475, i32 41795}
!239 = !{!"branch_weights", i32 0, i32 41795}
!240 = !{!"branch_weights", i32 0, i32 1172231}
!241 = !{!"branch_weights", i32 261565, i32 910666}
!242 = !{!"branch_weights", i32 268619, i32 642047}
!243 = !{!"VP", i32 1, i64 1893, i64 8, i64 1865, i64 16, i64 20, i64 513, i64 4, i64 17, i64 1}
!244 = !{!"VP", i32 1, i64 22127, i64 8, i64 21804, i64 16, i64 235, i64 513, i64 54, i64 17, i64 11}
!245 = !{!"tree-ssa-threadedge.c;lhs_of_dominating_assert"}
