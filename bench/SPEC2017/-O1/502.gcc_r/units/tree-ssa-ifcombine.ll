; ModuleID = 'tree-ssa-ifcombine.c'
source_filename = "tree-ssa-ifcombine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"ifcombine\00", align 1
@pass_tree_ifcombine = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_ifcombine, ptr @tree_ssa_ifcombine, ptr null, ptr null, i32 0, i32 168, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"optimizing double bit test to \00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" & T == T\0Awith temporary T = (1 << \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c") | (1 << \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"optimizing two comparisons to \00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"optimizing bits or bits test to \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" & T != 0\0Awith temporary T = \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" | \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !62
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !61 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !61 {
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
  br i1 %23, label %7, label %24, !llvm.loop !78

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_ifcombine() #9 !prof !81 !PGOFuncName !82 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_ifcombine() #10 !prof !81 !PGOFuncName !83 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = tail call ptr @blocks_in_phiopt_order() #16
  %14 = load ptr, ptr @cfun, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !86
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %794, !prof !88

20:                                               ; preds = %0, %780
  %21 = phi i64 [ %782, %780 ], [ 0, %0 ]
  %22 = phi i8 [ %781, %780 ], [ 0, %0 ]
  %23 = getelementptr inbounds ptr, ptr %13, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = call ptr @last_stmt(ptr noundef %24) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %780, label %27, !prof !89

27:                                               ; preds = %20
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %780, !prof !90

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35, !prof !93

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 8, !tbaa !94
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %63, !prof !96

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %33, i64 0, i32 2, i64 0
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %33, i64 0, i32 2, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !97
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr %42, ptr %40, !prof !99
  %48 = select i1 %46, ptr %40, ptr %42, !prof !99
  %49 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !97
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53, !prof !99

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !97
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58, !prof !100

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !101
  br label %63

63:                                               ; preds = %31, %35, %38, %53, %58
  %64 = phi ptr [ null, %31 ], [ null, %38 ], [ null, %53 ], [ %60, %58 ], [ null, %35 ]
  %65 = phi ptr [ null, %31 ], [ null, %38 ], [ null, %53 ], [ %62, %58 ], [ null, %35 ]
  %66 = phi i1 [ true, %31 ], [ true, %38 ], [ true, %53 ], [ false, %58 ], [ true, %35 ]
  br i1 %66, label %777, label %67, !prof !102

67:                                               ; preds = %63
  %68 = load ptr, ptr %24, align 8, !tbaa !103
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70, !prof !102

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 8, !tbaa !94
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i8
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i8 [ %73, %70 ], [ 0, %67 ]
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %776, label %77, !prof !104

77:                                               ; preds = %74
  br i1 %69, label %81, label %78, !prof !105

78:                                               ; preds = %77
  %79 = load i32, ptr %68, align 8, !tbaa !94
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %82, label %81, !prof !106

81:                                               ; preds = %78, %77
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 655, ptr noundef nonnull @.str.2) #16
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %24, align 8, !tbaa !103
  %84 = getelementptr inbounds %struct.VEC_edge_base, ptr %83, i64 0, i32 2, i64 0
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = load ptr, ptr %85, align 8, !tbaa !107
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !91
  %89 = icmp eq ptr %88, null
  br i1 %89, label %124, label %90, !prof !93

90:                                               ; preds = %82
  %91 = load i32, ptr %88, align 8, !tbaa !94
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %124, !prof !96

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %88, i64 0, i32 2, i64 0
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = getelementptr inbounds %struct.VEC_edge_base, ptr %88, i64 0, i32 2, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !97
  %100 = and i32 %99, 1024
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, ptr %97, ptr %95, !prof !99
  %103 = select i1 %101, ptr %95, ptr %97, !prof !99
  %104 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !97
  %106 = and i32 %105, 1024
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %124, label %108, !prof !99

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !97
  %111 = and i32 %110, 2048
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113, !prof !100

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = icmp eq ptr %115, %24
  br i1 %116, label %117, label %124, !prof !108

117:                                              ; preds = %113
  %118 = icmp ne ptr %65, null
  %119 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !101
  %121 = icmp ne ptr %120, %65
  %122 = select i1 %118, ptr %65, ptr %120, !prof !109
  %123 = select i1 %118, i1 %121, i1 false
  br label %124

124:                                              ; preds = %117, %82, %90, %93, %108, %113
  %125 = phi ptr [ %65, %82 ], [ %65, %93 ], [ %65, %108 ], [ %65, %113 ], [ %65, %90 ], [ %122, %117 ]
  %126 = phi i1 [ true, %82 ], [ true, %93 ], [ true, %108 ], [ true, %113 ], [ true, %90 ], [ %123, %117 ]
  br i1 %126, label %404, label %127, !prof !110

127:                                              ; preds = %124
  %128 = call fastcc zeroext i8 @same_phi_args_p(ptr noundef %86, ptr noundef nonnull %24, ptr noundef %125), !range !111
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %404, label %130, !prof !112

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %132 = load i32, ptr %131, align 8, !tbaa !113, !noalias !114
  %133 = and i32 %132, 512
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141, !prof !117

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !73, !noalias !114
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139, !prof !118

139:                                              ; preds = %135
  %140 = load ptr, ptr %137, align 8, !tbaa !119, !noalias !114
  br label %141

141:                                              ; preds = %139, %135, %130
  %142 = phi ptr [ %140, %139 ], [ null, %135 ], [ null, %130 ]
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144, !prof !118

144:                                              ; preds = %141
  %145 = load ptr, ptr %142, align 8, !tbaa !121, !noalias !114
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi ptr [ %145, %144 ], [ null, %141 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %170, label %149, !prof !123

149:                                              ; preds = %146, %166
  %150 = phi ptr [ %168, %166 ], [ %147, %146 ]
  %151 = load ptr, ptr %150, align 8, !tbaa !124
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 254
  %154 = add nsw i32 %153, -10
  %155 = icmp ult i32 %154, -4
  %156 = and i32 %152, 16384
  %157 = icmp eq i32 %156, 0
  %158 = or i1 %157, %155
  br i1 %158, label %159, label %404, !prof !126

159:                                              ; preds = %149
  br i1 %155, label %163, label %160, !prof !127

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %151, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !73
  br label %163

163:                                              ; preds = %160, %159
  %164 = phi ptr [ %162, %160 ], [ null, %159 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %404, !prof !128

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %150, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !129
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %149, !prof !130, !llvm.loop !131

170:                                              ; preds = %166, %146
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %171 = call ptr @last_stmt(ptr noundef nonnull %24) #16
  %172 = icmp eq ptr %171, null
  br i1 %172, label %402, label %173, !prof !132

173:                                              ; preds = %170
  %174 = load i32, ptr %171, align 8
  %175 = and i32 %174, 255
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %402, !prof !133

177:                                              ; preds = %173
  %178 = call ptr @last_stmt(ptr noundef %86) #16
  %179 = icmp eq ptr %178, null
  br i1 %179, label %402, label %180, !prof !132

180:                                              ; preds = %177
  %181 = load i32, ptr %178, align 8
  %182 = and i32 %181, 255
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %402, !prof !133

184:                                              ; preds = %180
  %185 = call fastcc zeroext i8 @recognize_single_bit_test(ptr noundef nonnull %171, ptr noundef nonnull %8, ptr noundef nonnull %10), !range !111
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %241, label %187, !prof !134

187:                                              ; preds = %184
  %188 = call fastcc zeroext i8 @recognize_single_bit_test(ptr noundef nonnull %178, ptr noundef nonnull %9, ptr noundef nonnull %11), !range !111
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %241, label %190, !prof !135

190:                                              ; preds = %187
  %191 = load ptr, ptr %8, align 8, !tbaa !62
  %192 = load ptr, ptr %9, align 8, !tbaa !62
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %194, label %241, !prof !136

194:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef nonnull %171) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  %195 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !73
  %197 = call ptr @build_int_cst(ptr noundef %196, i64 noundef 1) #16
  %198 = load ptr, ptr %10, align 8, !tbaa !62
  %199 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %196, ptr noundef %197, ptr noundef %198) #16
  %200 = load ptr, ptr %195, align 8, !tbaa !73
  %201 = call ptr @build_int_cst(ptr noundef %200, i64 noundef 1) #16
  %202 = load ptr, ptr %11, align 8, !tbaa !62
  %203 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %200, ptr noundef %201, ptr noundef %202) #16
  %204 = load ptr, ptr %195, align 8, !tbaa !73
  %205 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 87, ptr noundef %204, ptr noundef %199, ptr noundef %203) #16
  %206 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %205, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %207 = load ptr, ptr %195, align 8, !tbaa !73
  %208 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %207, ptr noundef %191, ptr noundef %206) #16
  %209 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %208, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %210 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !62
  %211 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %210, ptr noundef %209, ptr noundef %206) #16
  %212 = call ptr @canonicalize_cond_expr_cond(ptr noundef %211) #16
  %213 = icmp eq ptr %212, null
  br i1 %213, label %402, label %214

214:                                              ; preds = %194
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %171, ptr noundef nonnull %212) #16
  %215 = load i32, ptr %171, align 8
  %216 = and i32 %215, 255
  %217 = add nsw i32 %216, -10
  %218 = icmp ult i32 %217, -9
  br i1 %218, label %220, label %219

219:                                              ; preds = %214
  call void @gimple_set_modified(ptr noundef nonnull %171, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %171) #16
  br label %220

220:                                              ; preds = %219, %214
  %221 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !62
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %178, ptr noundef %221) #16
  %222 = load i32, ptr %178, align 8
  %223 = and i32 %222, 255
  %224 = add nsw i32 %223, -10
  %225 = icmp ult i32 %224, -9
  br i1 %225, label %227, label %226

226:                                              ; preds = %220
  call void @gimple_set_modified(ptr noundef nonnull %178, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %178) #16
  br label %227

227:                                              ; preds = %226, %220
  %228 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %229 = icmp eq ptr %228, null
  br i1 %229, label %402, label %230

230:                                              ; preds = %227
  %231 = call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr nonnull %228)
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %232, ptr noundef %191, i32 noundef 0) #16
  %233 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %234 = call i64 @fwrite(ptr nonnull @.str.5, i64 35, i64 1, ptr %233)
  %235 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %235, ptr noundef %198, i32 noundef 0) #16
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %237 = call i64 @fwrite(ptr nonnull @.str.6, i64 10, i64 1, ptr %236)
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %238, ptr noundef %202, i32 noundef 0) #16
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %240 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %239)
  br label %402

241:                                              ; preds = %190, %187, %184
  %242 = load i32, ptr %171, align 8
  %243 = lshr i32 %242, 16
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !77
  %247 = icmp eq i32 %246, 5
  br i1 %247, label %248, label %402, !prof !133

248:                                              ; preds = %241
  %249 = load i32, ptr %178, align 8
  %250 = lshr i32 %249, 16
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !77
  %254 = icmp eq i32 %253, 5
  br i1 %254, label %255, label %402, !prof !133

255:                                              ; preds = %248
  %256 = and i32 %242, 255
  %257 = add nsw i32 %256, -10
  %258 = icmp ult i32 %257, -9
  br i1 %258, label %271, label %259, !prof !132

259:                                              ; preds = %255
  %260 = zext nneg i32 %256 to i64
  %261 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !77
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !138
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268, !prof !132

267:                                              ; preds = %259
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %268

268:                                              ; preds = %267, %259
  %269 = getelementptr inbounds i8, ptr %171, i64 %265
  %270 = load ptr, ptr %269, align 8, !tbaa !62
  br label %271

271:                                              ; preds = %268, %255
  %272 = phi ptr [ %270, %268 ], [ null, %255 ]
  %273 = load i32, ptr %178, align 8
  %274 = and i32 %273, 255
  %275 = add nsw i32 %274, -10
  %276 = icmp ult i32 %275, -9
  br i1 %276, label %289, label %277, !prof !132

277:                                              ; preds = %271
  %278 = zext nneg i32 %274 to i64
  %279 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !77
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %281
  %283 = load i64, ptr %282, align 8, !tbaa !138
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286, !prof !132

285:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %286

286:                                              ; preds = %285, %277
  %287 = getelementptr inbounds i8, ptr %178, i64 %283
  %288 = load ptr, ptr %287, align 8, !tbaa !62
  br label %289

289:                                              ; preds = %286, %271
  %290 = phi ptr [ %288, %286 ], [ null, %271 ]
  %291 = call i32 @operand_equal_p(ptr noundef %272, ptr noundef %290, i32 noundef 0) #16
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %402, label %293, !prof !133

293:                                              ; preds = %289
  %294 = load i32, ptr %171, align 8
  %295 = and i32 %294, 255
  %296 = add nsw i32 %295, -10
  %297 = icmp ult i32 %296, -9
  br i1 %297, label %311, label %298

298:                                              ; preds = %293
  %299 = zext nneg i32 %295 to i64
  %300 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !77
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %302
  %304 = load i64, ptr %303, align 8, !tbaa !138
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %298
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %307

307:                                              ; preds = %306, %298
  %308 = getelementptr inbounds i8, ptr %171, i64 %304
  %309 = getelementptr inbounds ptr, ptr %308, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !62
  br label %311

311:                                              ; preds = %307, %293
  %312 = phi ptr [ %310, %307 ], [ null, %293 ]
  %313 = load i32, ptr %178, align 8
  %314 = and i32 %313, 255
  %315 = add nsw i32 %314, -10
  %316 = icmp ult i32 %315, -9
  br i1 %316, label %330, label %317

317:                                              ; preds = %311
  %318 = zext nneg i32 %314 to i64
  %319 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !77
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %321
  %323 = load i64, ptr %322, align 8, !tbaa !138
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %317
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %326

326:                                              ; preds = %325, %317
  %327 = getelementptr inbounds i8, ptr %178, i64 %323
  %328 = getelementptr inbounds ptr, ptr %327, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !62
  br label %330

330:                                              ; preds = %326, %311
  %331 = phi ptr [ %329, %326 ], [ null, %311 ]
  %332 = call i32 @operand_equal_p(ptr noundef %312, ptr noundef %331, i32 noundef 0) #16
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %402, label %334

334:                                              ; preds = %330
  %335 = load i32, ptr %171, align 8
  %336 = lshr i32 %335, 16
  %337 = load i32, ptr %178, align 8
  %338 = lshr i32 %337, 16
  %339 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !62
  %340 = and i32 %337, 255
  %341 = add nsw i32 %340, -10
  %342 = icmp ult i32 %341, -9
  br i1 %342, label %355, label %343

343:                                              ; preds = %334
  %344 = zext nneg i32 %340 to i64
  %345 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !77
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %347
  %349 = load i64, ptr %348, align 8, !tbaa !138
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %343
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %352

352:                                              ; preds = %351, %343
  %353 = getelementptr inbounds i8, ptr %178, i64 %349
  %354 = load ptr, ptr %353, align 8, !tbaa !62
  br label %355

355:                                              ; preds = %352, %334
  %356 = phi ptr [ %354, %352 ], [ null, %334 ]
  %357 = load i32, ptr %178, align 8
  %358 = and i32 %357, 255
  %359 = add nsw i32 %358, -10
  %360 = icmp ult i32 %359, -9
  br i1 %360, label %374, label %361

361:                                              ; preds = %355
  %362 = zext nneg i32 %358 to i64
  %363 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !77
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !138
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %370

370:                                              ; preds = %369, %361
  %371 = getelementptr inbounds i8, ptr %178, i64 %367
  %372 = getelementptr inbounds ptr, ptr %371, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !62
  br label %374

374:                                              ; preds = %370, %355
  %375 = phi ptr [ %373, %370 ], [ null, %355 ]
  %376 = call ptr @combine_comparisons(i32 noundef 0, i32 noundef 91, i32 noundef %336, i32 noundef %338, ptr noundef %339, ptr noundef %356, ptr noundef %375) #16
  %377 = icmp eq ptr %376, null
  br i1 %377, label %402, label %378

378:                                              ; preds = %374
  %379 = call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %376) #16
  %380 = icmp eq ptr %379, null
  br i1 %380, label %402, label %381

381:                                              ; preds = %378
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %171, ptr noundef nonnull %379) #16
  %382 = load i32, ptr %171, align 8
  %383 = and i32 %382, 255
  %384 = add nsw i32 %383, -10
  %385 = icmp ult i32 %384, -9
  br i1 %385, label %387, label %386

386:                                              ; preds = %381
  call void @gimple_set_modified(ptr noundef nonnull %171, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %171) #16
  br label %387

387:                                              ; preds = %386, %381
  %388 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !62
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %178, ptr noundef %388) #16
  %389 = load i32, ptr %178, align 8
  %390 = and i32 %389, 255
  %391 = add nsw i32 %390, -10
  %392 = icmp ult i32 %391, -9
  br i1 %392, label %394, label %393

393:                                              ; preds = %387
  call void @gimple_set_modified(ptr noundef nonnull %178, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %178) #16
  br label %394

394:                                              ; preds = %393, %387
  %395 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %396 = icmp eq ptr %395, null
  br i1 %396, label %402, label %397

397:                                              ; preds = %394
  %398 = call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %395)
  %399 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %399, ptr noundef nonnull %379, i32 noundef 0) #16
  %400 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %401 = call i32 @fputc(i32 10, ptr %400)
  br label %402

402:                                              ; preds = %397, %394, %378, %374, %330, %289, %248, %241, %230, %227, %194, %180, %177, %173, %170
  %403 = phi i8 [ 0, %173 ], [ 0, %170 ], [ 0, %180 ], [ 0, %177 ], [ 0, %194 ], [ 1, %230 ], [ 1, %227 ], [ 0, %374 ], [ 0, %378 ], [ 1, %397 ], [ 1, %394 ], [ 0, %241 ], [ 0, %248 ], [ 0, %289 ], [ 0, %330 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %773

404:                                              ; preds = %163, %149, %127, %124
  %405 = load ptr, ptr %87, align 8, !tbaa !91
  %406 = icmp eq ptr %405, null
  br i1 %406, label %444, label %407, !prof !93

407:                                              ; preds = %404
  %408 = load i32, ptr %405, align 8, !tbaa !94
  %409 = icmp eq i32 %408, 2
  br i1 %409, label %410, label %444, !prof !96

410:                                              ; preds = %407
  %411 = getelementptr inbounds %struct.VEC_edge_base, ptr %405, i64 0, i32 2, i64 0
  %412 = load ptr, ptr %411, align 8, !tbaa !62
  %413 = getelementptr inbounds %struct.VEC_edge_base, ptr %405, i64 0, i32 2, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !62
  %415 = getelementptr inbounds %struct.edge_def, ptr %412, i64 0, i32 7
  %416 = load i32, ptr %415, align 8, !tbaa !97
  %417 = and i32 %416, 1024
  %418 = icmp eq i32 %417, 0
  %419 = select i1 %418, ptr %414, ptr %412, !prof !99
  %420 = select i1 %418, ptr %412, ptr %414, !prof !99
  %421 = getelementptr inbounds %struct.edge_def, ptr %419, i64 0, i32 7
  %422 = load i32, ptr %421, align 8, !tbaa !97
  %423 = and i32 %422, 1024
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %444, label %425, !prof !99

425:                                              ; preds = %410
  %426 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 7
  %427 = load i32, ptr %426, align 8, !tbaa !97
  %428 = and i32 %427, 2048
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %444, label %430, !prof !100

430:                                              ; preds = %425
  %431 = icmp ne ptr %64, null
  br i1 %431, label %432, label %436, !prof !139

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.edge_def, ptr %419, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !101
  %435 = icmp eq ptr %434, %64
  br i1 %435, label %436, label %444, !prof !108

436:                                              ; preds = %430, %432
  %437 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !101
  %439 = icmp ne ptr %438, %24
  %440 = or i1 %431, %439
  br i1 %440, label %444, label %441, !prof !140

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.edge_def, ptr %419, i64 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !101
  br label %444

444:                                              ; preds = %436, %441, %404, %407, %410, %425, %432
  %445 = phi ptr [ %64, %404 ], [ %64, %410 ], [ %64, %425 ], [ %64, %436 ], [ %64, %432 ], [ %64, %407 ], [ %443, %441 ]
  %446 = phi i1 [ true, %404 ], [ true, %410 ], [ true, %425 ], [ %439, %436 ], [ true, %432 ], [ true, %407 ], [ false, %441 ]
  br i1 %446, label %773, label %447, !prof !141

447:                                              ; preds = %444
  %448 = call fastcc zeroext i8 @same_phi_args_p(ptr noundef %86, ptr noundef nonnull %24, ptr noundef %445), !range !111
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %773, label %450, !prof !142

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %452 = load i32, ptr %451, align 8, !tbaa !113, !noalias !143
  %453 = and i32 %452, 512
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %461, !prof !117

455:                                              ; preds = %450
  %456 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %457 = load ptr, ptr %456, align 8, !tbaa !73, !noalias !143
  %458 = icmp eq ptr %457, null
  br i1 %458, label %461, label %459, !prof !118

459:                                              ; preds = %455
  %460 = load ptr, ptr %457, align 8, !tbaa !119, !noalias !143
  br label %461

461:                                              ; preds = %459, %455, %450
  %462 = phi ptr [ %460, %459 ], [ null, %455 ], [ null, %450 ]
  %463 = icmp eq ptr %462, null
  br i1 %463, label %466, label %464, !prof !118

464:                                              ; preds = %461
  %465 = load ptr, ptr %462, align 8, !tbaa !121, !noalias !143
  br label %466

466:                                              ; preds = %464, %461
  %467 = phi ptr [ %465, %464 ], [ null, %461 ]
  %468 = icmp eq ptr %467, null
  br i1 %468, label %490, label %469, !prof !123

469:                                              ; preds = %466, %486
  %470 = phi ptr [ %488, %486 ], [ %467, %466 ]
  %471 = load ptr, ptr %470, align 8, !tbaa !124
  %472 = load i32, ptr %471, align 8
  %473 = and i32 %472, 254
  %474 = add nsw i32 %473, -10
  %475 = icmp ult i32 %474, -4
  %476 = and i32 %472, 16384
  %477 = icmp eq i32 %476, 0
  %478 = or i1 %477, %475
  br i1 %478, label %479, label %773, !prof !126

479:                                              ; preds = %469
  br i1 %475, label %483, label %480, !prof !127

480:                                              ; preds = %479
  %481 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %471, i64 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !73
  br label %483

483:                                              ; preds = %480, %479
  %484 = phi ptr [ %482, %480 ], [ null, %479 ]
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %773, !prof !128

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %470, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !129
  %489 = icmp eq ptr %488, null
  br i1 %489, label %490, label %469, !prof !130, !llvm.loop !131

490:                                              ; preds = %486, %466
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %491 = call ptr @last_stmt(ptr noundef nonnull %24) #16
  %492 = icmp eq ptr %491, null
  br i1 %492, label %771, label %493, !prof !146

493:                                              ; preds = %490
  %494 = load i32, ptr %491, align 8
  %495 = and i32 %494, 255
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %497, label %771, !prof !147

497:                                              ; preds = %493
  %498 = call ptr @last_stmt(ptr noundef %86) #16
  %499 = icmp eq ptr %498, null
  br i1 %499, label %771, label %500, !prof !146

500:                                              ; preds = %497
  %501 = load i32, ptr %498, align 8
  %502 = and i32 %501, 255
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %504, label %771, !prof !147

504:                                              ; preds = %500
  %505 = call fastcc zeroext i8 @recognize_bits_test(ptr noundef nonnull %491, ptr noundef nonnull %1, ptr noundef nonnull %3), !range !111
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %610, label %507, !prof !148

507:                                              ; preds = %504
  %508 = call fastcc zeroext i8 @recognize_bits_test(ptr noundef nonnull %498, ptr noundef nonnull %2, ptr noundef nonnull %4), !range !111
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %610, label %510, !prof !149

510:                                              ; preds = %507
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %511 = load ptr, ptr %1, align 8, !tbaa !62
  %512 = load ptr, ptr %2, align 8, !tbaa !62
  %513 = icmp eq ptr %511, %512
  br i1 %513, label %525, label %514, !prof !150

514:                                              ; preds = %510
  %515 = load ptr, ptr %3, align 8, !tbaa !62
  %516 = load ptr, ptr %4, align 8, !tbaa !62
  %517 = icmp eq ptr %515, %516
  br i1 %517, label %518, label %519, !prof !151

518:                                              ; preds = %514
  store ptr %516, ptr %2, align 8, !tbaa !62
  store ptr %512, ptr %4, align 8, !tbaa !62
  store ptr %515, ptr %1, align 8, !tbaa !62
  store ptr %511, ptr %3, align 8, !tbaa !62
  br label %525

519:                                              ; preds = %514
  %520 = icmp eq ptr %511, %516
  br i1 %520, label %521, label %522

521:                                              ; preds = %519
  store ptr %516, ptr %2, align 8, !tbaa !62
  store ptr %512, ptr %4, align 8, !tbaa !62
  br label %525

522:                                              ; preds = %519
  %523 = icmp eq ptr %515, %512
  br i1 %523, label %524, label %608

524:                                              ; preds = %522
  store ptr %515, ptr %1, align 8, !tbaa !62
  store ptr %511, ptr %3, align 8, !tbaa !62
  br label %525

525:                                              ; preds = %524, %521, %518, %510
  %526 = load ptr, ptr %3, align 8, !tbaa !62
  %527 = getelementptr inbounds %struct.tree_common, ptr %526, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !73
  %529 = getelementptr inbounds %struct.tree_type, ptr %528, i64 0, i32 6
  %530 = load i32, ptr %529, align 4
  %531 = and i32 %530, 1023
  %532 = load ptr, ptr %4, align 8, !tbaa !62
  %533 = getelementptr inbounds %struct.tree_common, ptr %532, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8, !tbaa !73
  %535 = getelementptr inbounds %struct.tree_type, ptr %534, i64 0, i32 6
  %536 = load i32, ptr %535, align 4
  %537 = and i32 %536, 1023
  %538 = icmp ult i32 %531, %537
  br i1 %538, label %551, label %539, !prof !150

539:                                              ; preds = %525
  %540 = call ptr @unsigned_type_for(ptr noundef %528) #16
  %541 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %540, ptr noundef %526) #16
  store ptr %541, ptr %3, align 8, !tbaa !62
  %542 = getelementptr inbounds %struct.tree_common, ptr %541, i64 0, i32 2
  %543 = load ptr, ptr %542, align 8, !tbaa !73
  %544 = load ptr, ptr %1, align 8, !tbaa !62
  %545 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %543, ptr noundef %544) #16
  store ptr %545, ptr %1, align 8, !tbaa !62
  %546 = load ptr, ptr %533, align 8, !tbaa !73
  %547 = call ptr @unsigned_type_for(ptr noundef %546) #16
  %548 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %547, ptr noundef %532) #16
  store ptr %548, ptr %4, align 8, !tbaa !62
  %549 = load ptr, ptr %542, align 8, !tbaa !73
  %550 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %549, ptr noundef %548) #16
  store ptr %550, ptr %4, align 8, !tbaa !62
  br label %563

551:                                              ; preds = %525
  %552 = call ptr @unsigned_type_for(ptr noundef %534) #16
  %553 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %552, ptr noundef %532) #16
  store ptr %553, ptr %4, align 8, !tbaa !62
  %554 = getelementptr inbounds %struct.tree_common, ptr %553, i64 0, i32 2
  %555 = load ptr, ptr %554, align 8, !tbaa !73
  %556 = load ptr, ptr %1, align 8, !tbaa !62
  %557 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %555, ptr noundef %556) #16
  store ptr %557, ptr %1, align 8, !tbaa !62
  %558 = load ptr, ptr %527, align 8, !tbaa !73
  %559 = call ptr @unsigned_type_for(ptr noundef %558) #16
  %560 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %559, ptr noundef %526) #16
  store ptr %560, ptr %3, align 8, !tbaa !62
  %561 = load ptr, ptr %554, align 8, !tbaa !73
  %562 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %561, ptr noundef %560) #16
  store ptr %562, ptr %3, align 8, !tbaa !62
  br label %563

563:                                              ; preds = %551, %539
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %491) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %564 = load ptr, ptr %1, align 8, !tbaa !62
  %565 = getelementptr inbounds %struct.tree_common, ptr %564, i64 0, i32 2
  %566 = load ptr, ptr %565, align 8, !tbaa !73
  %567 = load ptr, ptr %3, align 8, !tbaa !62
  %568 = load ptr, ptr %4, align 8, !tbaa !62
  %569 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 87, ptr noundef %566, ptr noundef %567, ptr noundef %568) #16
  %570 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %569, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %571 = load ptr, ptr %565, align 8, !tbaa !73
  %572 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %571, ptr noundef %564, ptr noundef %570) #16
  %573 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %572, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %574 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !62
  %575 = getelementptr inbounds %struct.tree_common, ptr %573, i64 0, i32 2
  %576 = load ptr, ptr %575, align 8, !tbaa !73
  %577 = call ptr @build_int_cst(ptr noundef %576, i64 noundef 0) #16
  %578 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %574, ptr noundef %573, ptr noundef %577) #16
  %579 = call ptr @canonicalize_cond_expr_cond(ptr noundef %578) #16
  %580 = icmp eq ptr %579, null
  br i1 %580, label %608, label %581, !prof !150

581:                                              ; preds = %563
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %491, ptr noundef nonnull %579) #16
  %582 = load i32, ptr %491, align 8
  %583 = and i32 %582, 255
  %584 = add nsw i32 %583, -10
  %585 = icmp ult i32 %584, -9
  br i1 %585, label %587, label %586, !prof !150

586:                                              ; preds = %581
  call void @gimple_set_modified(ptr noundef nonnull %491, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %491) #16
  br label %587

587:                                              ; preds = %586, %581
  %588 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !62
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %498, ptr noundef %588) #16
  %589 = load i32, ptr %498, align 8
  %590 = and i32 %589, 255
  %591 = add nsw i32 %590, -10
  %592 = icmp ult i32 %591, -9
  br i1 %592, label %594, label %593, !prof !150

593:                                              ; preds = %587
  call void @gimple_set_modified(ptr noundef nonnull %498, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %498) #16
  br label %594

594:                                              ; preds = %593, %587
  %595 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %596 = icmp eq ptr %595, null
  br i1 %596, label %608, label %597, !prof !151

597:                                              ; preds = %594
  %598 = call i64 @fwrite(ptr nonnull @.str.10, i64 32, i64 1, ptr nonnull %595)
  %599 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %599, ptr noundef %564, i32 noundef 0) #16
  %600 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %601 = call i64 @fwrite(ptr nonnull @.str.11, i64 29, i64 1, ptr %600)
  %602 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %602, ptr noundef %567, i32 noundef 0) #16
  %603 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %604 = call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %603)
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %605, ptr noundef %568, i32 noundef 0) #16
  %606 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %607 = call i32 @fputc(i32 10, ptr %606)
  br label %608

608:                                              ; preds = %597, %594, %563, %522
  %609 = phi i8 [ 0, %522 ], [ 0, %563 ], [ 1, %597 ], [ 1, %594 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  br label %771

610:                                              ; preds = %507, %504
  %611 = load i32, ptr %491, align 8
  %612 = lshr i32 %611, 16
  %613 = zext nneg i32 %612 to i64
  %614 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %613
  %615 = load i32, ptr %614, align 4, !tbaa !77
  %616 = icmp eq i32 %615, 5
  br i1 %616, label %617, label %771, !prof !152

617:                                              ; preds = %610
  %618 = load i32, ptr %498, align 8
  %619 = lshr i32 %618, 16
  %620 = zext nneg i32 %619 to i64
  %621 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %620
  %622 = load i32, ptr %621, align 4, !tbaa !77
  %623 = icmp eq i32 %622, 5
  br i1 %623, label %624, label %771, !prof !152

624:                                              ; preds = %617
  %625 = and i32 %611, 255
  %626 = add nsw i32 %625, -10
  %627 = icmp ult i32 %626, -9
  br i1 %627, label %640, label %628, !prof !153

628:                                              ; preds = %624
  %629 = zext nneg i32 %625 to i64
  %630 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %629
  %631 = load i32, ptr %630, align 4, !tbaa !77
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %632
  %634 = load i64, ptr %633, align 8, !tbaa !138
  %635 = icmp eq i64 %634, 0
  br i1 %635, label %636, label %637, !prof !153

636:                                              ; preds = %628
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %637

637:                                              ; preds = %636, %628
  %638 = getelementptr inbounds i8, ptr %491, i64 %634
  %639 = load ptr, ptr %638, align 8, !tbaa !62
  br label %640

640:                                              ; preds = %637, %624
  %641 = phi ptr [ %639, %637 ], [ null, %624 ]
  %642 = load i32, ptr %498, align 8
  %643 = and i32 %642, 255
  %644 = add nsw i32 %643, -10
  %645 = icmp ult i32 %644, -9
  br i1 %645, label %658, label %646, !prof !153

646:                                              ; preds = %640
  %647 = zext nneg i32 %643 to i64
  %648 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %647
  %649 = load i32, ptr %648, align 4, !tbaa !77
  %650 = zext i32 %649 to i64
  %651 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %650
  %652 = load i64, ptr %651, align 8, !tbaa !138
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %655, !prof !153

654:                                              ; preds = %646
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %655

655:                                              ; preds = %654, %646
  %656 = getelementptr inbounds i8, ptr %498, i64 %652
  %657 = load ptr, ptr %656, align 8, !tbaa !62
  br label %658

658:                                              ; preds = %655, %640
  %659 = phi ptr [ %657, %655 ], [ null, %640 ]
  %660 = call i32 @operand_equal_p(ptr noundef %641, ptr noundef %659, i32 noundef 0) #16
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %771, label %662, !prof !154

662:                                              ; preds = %658
  %663 = load i32, ptr %491, align 8
  %664 = and i32 %663, 255
  %665 = add nsw i32 %664, -10
  %666 = icmp ult i32 %665, -9
  br i1 %666, label %680, label %667, !prof !155

667:                                              ; preds = %662
  %668 = zext nneg i32 %664 to i64
  %669 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %668
  %670 = load i32, ptr %669, align 4, !tbaa !77
  %671 = zext i32 %670 to i64
  %672 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %671
  %673 = load i64, ptr %672, align 8, !tbaa !138
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %675, label %676, !prof !155

675:                                              ; preds = %667
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %676

676:                                              ; preds = %675, %667
  %677 = getelementptr inbounds i8, ptr %491, i64 %673
  %678 = getelementptr inbounds ptr, ptr %677, i64 1
  %679 = load ptr, ptr %678, align 8, !tbaa !62
  br label %680

680:                                              ; preds = %676, %662
  %681 = phi ptr [ %679, %676 ], [ null, %662 ]
  %682 = load i32, ptr %498, align 8
  %683 = and i32 %682, 255
  %684 = add nsw i32 %683, -10
  %685 = icmp ult i32 %684, -9
  br i1 %685, label %699, label %686, !prof !155

686:                                              ; preds = %680
  %687 = zext nneg i32 %683 to i64
  %688 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !77
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %690
  %692 = load i64, ptr %691, align 8, !tbaa !138
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %694, label %695, !prof !155

694:                                              ; preds = %686
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %695

695:                                              ; preds = %694, %686
  %696 = getelementptr inbounds i8, ptr %498, i64 %692
  %697 = getelementptr inbounds ptr, ptr %696, i64 1
  %698 = load ptr, ptr %697, align 8, !tbaa !62
  br label %699

699:                                              ; preds = %695, %680
  %700 = phi ptr [ %698, %695 ], [ null, %680 ]
  %701 = call i32 @operand_equal_p(ptr noundef %681, ptr noundef %700, i32 noundef 0) #16
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %771, label %703, !prof !156

703:                                              ; preds = %699
  %704 = load i32, ptr %491, align 8
  %705 = lshr i32 %704, 16
  %706 = load i32, ptr %498, align 8
  %707 = lshr i32 %706, 16
  %708 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !62
  %709 = and i32 %706, 255
  %710 = add nsw i32 %709, -10
  %711 = icmp ult i32 %710, -9
  br i1 %711, label %724, label %712

712:                                              ; preds = %703
  %713 = zext nneg i32 %709 to i64
  %714 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !77
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %716
  %718 = load i64, ptr %717, align 8, !tbaa !138
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %721

720:                                              ; preds = %712
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %721

721:                                              ; preds = %720, %712
  %722 = getelementptr inbounds i8, ptr %498, i64 %718
  %723 = load ptr, ptr %722, align 8, !tbaa !62
  br label %724

724:                                              ; preds = %721, %703
  %725 = phi ptr [ %723, %721 ], [ null, %703 ]
  %726 = load i32, ptr %498, align 8
  %727 = and i32 %726, 255
  %728 = add nsw i32 %727, -10
  %729 = icmp ult i32 %728, -9
  br i1 %729, label %743, label %730

730:                                              ; preds = %724
  %731 = zext nneg i32 %727 to i64
  %732 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %731
  %733 = load i32, ptr %732, align 4, !tbaa !77
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %734
  %736 = load i64, ptr %735, align 8, !tbaa !138
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %738, label %739

738:                                              ; preds = %730
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %739

739:                                              ; preds = %738, %730
  %740 = getelementptr inbounds i8, ptr %498, i64 %736
  %741 = getelementptr inbounds ptr, ptr %740, i64 1
  %742 = load ptr, ptr %741, align 8, !tbaa !62
  br label %743

743:                                              ; preds = %739, %724
  %744 = phi ptr [ %742, %739 ], [ null, %724 ]
  %745 = call ptr @combine_comparisons(i32 noundef 0, i32 noundef 92, i32 noundef %705, i32 noundef %707, ptr noundef %708, ptr noundef %725, ptr noundef %744) #16
  %746 = icmp eq ptr %745, null
  br i1 %746, label %771, label %747

747:                                              ; preds = %743
  %748 = call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %745) #16
  %749 = icmp eq ptr %748, null
  br i1 %749, label %771, label %750

750:                                              ; preds = %747
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %491, ptr noundef nonnull %748) #16
  %751 = load i32, ptr %491, align 8
  %752 = and i32 %751, 255
  %753 = add nsw i32 %752, -10
  %754 = icmp ult i32 %753, -9
  br i1 %754, label %756, label %755

755:                                              ; preds = %750
  call void @gimple_set_modified(ptr noundef nonnull %491, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %491) #16
  br label %756

756:                                              ; preds = %755, %750
  %757 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !62
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %498, ptr noundef %757) #16
  %758 = load i32, ptr %498, align 8
  %759 = and i32 %758, 255
  %760 = add nsw i32 %759, -10
  %761 = icmp ult i32 %760, -9
  br i1 %761, label %763, label %762

762:                                              ; preds = %756
  call void @gimple_set_modified(ptr noundef nonnull %498, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %498) #16
  br label %763

763:                                              ; preds = %762, %756
  %764 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %765 = icmp eq ptr %764, null
  br i1 %765, label %771, label %766

766:                                              ; preds = %763
  %767 = call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %764)
  %768 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_generic_expr(ptr noundef %768, ptr noundef nonnull %748, i32 noundef 0) #16
  %769 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %770 = call i32 @fputc(i32 10, ptr %769)
  br label %771

771:                                              ; preds = %766, %763, %747, %743, %699, %658, %617, %610, %608, %500, %497, %493, %490
  %772 = phi i8 [ %609, %608 ], [ 0, %493 ], [ 0, %490 ], [ 0, %500 ], [ 0, %497 ], [ 0, %743 ], [ 0, %747 ], [ 1, %766 ], [ 1, %763 ], [ 0, %610 ], [ 0, %617 ], [ 0, %658 ], [ 0, %699 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %773

773:                                              ; preds = %483, %469, %771, %447, %444, %402
  %774 = phi i1 [ false, %402 ], [ false, %771 ], [ true, %447 ], [ true, %444 ], [ true, %469 ], [ true, %483 ]
  %775 = phi i8 [ %403, %402 ], [ %772, %771 ], [ undef, %447 ], [ undef, %444 ], [ undef, %469 ], [ undef, %483 ]
  br i1 %774, label %776, label %777, !prof !157

776:                                              ; preds = %773, %74
  br label %777

777:                                              ; preds = %63, %773, %776
  %778 = phi i8 [ 0, %776 ], [ %775, %773 ], [ 0, %63 ]
  %779 = or i8 %778, %22
  br label %780

780:                                              ; preds = %777, %27, %20
  %781 = phi i8 [ %779, %777 ], [ %22, %27 ], [ %22, %20 ]
  %782 = add nuw nsw i64 %21, 1
  %783 = load ptr, ptr @cfun, align 8, !tbaa !62
  %784 = getelementptr inbounds %struct.function, ptr %783, i64 0, i32 1
  %785 = load ptr, ptr %784, align 8, !tbaa !84
  %786 = getelementptr inbounds %struct.control_flow_graph, ptr %785, i64 0, i32 3
  %787 = load i32, ptr %786, align 8, !tbaa !86
  %788 = add nsw i32 %787, -2
  %789 = sext i32 %788 to i64
  %790 = icmp slt i64 %782, %789
  br i1 %790, label %20, label %791, !prof !158, !llvm.loop !159

791:                                              ; preds = %780
  %792 = icmp eq i8 %781, 0
  %793 = select i1 %792, i32 0, i32 32, !prof !160
  br label %794

794:                                              ; preds = %791, %0
  %795 = phi i32 [ 0, %0 ], [ %793, %791 ]
  call void @free(ptr noundef %13)
  ret i32 %795
}

declare ptr @blocks_in_phiopt_order() local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @same_phi_args_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !161 !PGOFuncName !162 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %2) #16
  %6 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2) #16
  %7 = load ptr, ptr %4, align 8, !tbaa.struct !137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9, !prof !163

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 6
  %11 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  br label %12

12:                                               ; preds = %9, %36
  %13 = phi ptr [ %7, %9 ], [ %38, %36 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = load i32, ptr %10, align 4, !tbaa !164
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %14, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !73
  %18 = icmp ult i32 %17, %15
  br i1 %18, label %19, label %20, !prof !165

19:                                               ; preds = %12
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %20

20:                                               ; preds = %12, %19
  %21 = zext i32 %15 to i64
  %22 = getelementptr inbounds %struct.gimple_statement_phi, ptr %14, i64 0, i32 4, i64 %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !166
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = load i32, ptr %11, align 4, !tbaa !164
  %26 = load i32, ptr %16, align 8, !tbaa !73
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %28, label %29, !prof !165

28:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %29

29:                                               ; preds = %20, %28
  %30 = zext i32 %25 to i64
  %31 = getelementptr inbounds %struct.gimple_statement_phi, ptr %14, i64 0, i32 4, i64 %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !166
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = call i32 @operand_equal_p(ptr noundef %24, ptr noundef %33, i32 noundef 0) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !168

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !129
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %12, !prof !169, !llvm.loop !170

40:                                               ; preds = %29, %36, %3
  %41 = phi i8 [ 1, %3 ], [ 0, %29 ], [ 1, %36 ]
  ret i8 %41
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @recognize_single_bit_test(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !171 !PGOFuncName !172 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -65536
  %6 = icmp eq i32 %5, 6684672
  br i1 %6, label %7, label %802, !prof !173

7:                                                ; preds = %3
  %8 = and i32 %4, 255
  %9 = add nsw i32 %8, -1
  %10 = icmp ult i32 %9, 9
  tail call void @llvm.assume(i1 %10)
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !77
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !138
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19, !prof !174

18:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %19

19:                                               ; preds = %18, %7
  %20 = getelementptr inbounds i8, ptr %0, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %802, !prof !175

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -9
  br i1 %29, label %43, label %30, !prof !174

30:                                               ; preds = %25
  %31 = zext nneg i32 %27 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !77
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !138
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39, !prof !174

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds i8, ptr %0, i64 %36
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  br label %43

43:                                               ; preds = %25, %39
  %44 = phi ptr [ %42, %39 ], [ null, %25 ]
  %45 = tail call i32 @integer_zerop(ptr noundef %44) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %802, label %47, !prof !176

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8
  %49 = and i32 %48, 255
  %50 = add nsw i32 %49, -1
  %51 = icmp ult i32 %50, 9
  tail call void @llvm.assume(i1 %51)
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !77
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !138
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60, !prof !177

59:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %60

60:                                               ; preds = %59, %47
  %61 = getelementptr inbounds i8, ptr %0, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !73
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %68, label %802, !prof !178

68:                                               ; preds = %60
  %69 = lshr i32 %65, 16
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !73
  %73 = icmp eq i8 %72, 3
  br i1 %73, label %74, label %90, !prof !179

74:                                               ; preds = %68
  %75 = zext nneg i32 %66 to i64
  %76 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !77
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !138
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83, !prof !180

82:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %83

83:                                               ; preds = %82, %74
  %84 = getelementptr inbounds i8, ptr %64, i64 %80
  %85 = getelementptr inbounds ptr, ptr %84, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = and i32 %88, 65535
  br label %90

90:                                               ; preds = %68, %83
  %91 = phi i32 [ %89, %83 ], [ %69, %68 ]
  %92 = icmp eq i32 %91, 89
  br i1 %92, label %93, label %368, !prof !181

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !73
  %96 = icmp ugt i32 %95, 2
  br i1 %96, label %97, label %115, !prof !182

97:                                               ; preds = %93
  %98 = load i32, ptr %64, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -10
  %101 = icmp ult i32 %100, -9
  br i1 %101, label %115, label %102, !prof !183

102:                                              ; preds = %97
  %103 = zext nneg i32 %99 to i64
  %104 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !77
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !138
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111, !prof !183

110:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %111

111:                                              ; preds = %110, %102
  %112 = getelementptr inbounds i8, ptr %64, i64 %108
  %113 = getelementptr inbounds ptr, ptr %112, i64 2
  %114 = load ptr, ptr %113, align 8, !tbaa !62
  br label %115

115:                                              ; preds = %93, %97, %111
  %116 = phi ptr [ null, %93 ], [ %114, %111 ], [ null, %97 ]
  %117 = tail call i32 @integer_onep(ptr noundef %116) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %368, label %119, !prof !183

119:                                              ; preds = %115
  %120 = load i32, ptr %64, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -1
  %123 = icmp ult i32 %122, 9
  tail call void @llvm.assume(i1 %123)
  %124 = zext nneg i32 %121 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !77
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !138
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132, !prof !183

131:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %132

132:                                              ; preds = %131, %119
  %133 = getelementptr inbounds i8, ptr %64, i64 %129
  %134 = getelementptr inbounds ptr, ptr %133, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !62
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 141
  br i1 %138, label %139, label %368, !prof !182

139:                                              ; preds = %132
  %140 = load i32, ptr %64, align 8
  %141 = and i32 %140, 255
  %142 = add nsw i32 %141, -1
  %143 = icmp ult i32 %142, 9
  tail call void @llvm.assume(i1 %143)
  %144 = zext nneg i32 %141 to i64
  %145 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !77
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !138
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152, !prof !183

151:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %152

152:                                              ; preds = %151, %139
  %153 = getelementptr inbounds i8, ptr %64, i64 %149
  %154 = getelementptr inbounds ptr, ptr %153, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !62
  %156 = getelementptr inbounds %struct.tree_ssa_name, ptr %155, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !73
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, 6
  br i1 %160, label %161, label %292, !prof !184

161:                                              ; preds = %152, %283
  %162 = phi i32 [ %290, %283 ], [ %159, %152 ]
  %163 = phi i32 [ %289, %283 ], [ %158, %152 ]
  %164 = phi ptr [ %288, %283 ], [ %157, %152 ]
  %165 = lshr i32 %163, 16
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !73
  %169 = icmp eq i8 %168, 3
  br i1 %169, label %170, label %186, !prof !183

170:                                              ; preds = %161
  %171 = zext nneg i32 %162 to i64
  %172 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !77
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !138
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %179

179:                                              ; preds = %178, %170
  %180 = getelementptr inbounds i8, ptr %164, i64 %176
  %181 = getelementptr inbounds ptr, ptr %180, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !62
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = and i32 %184, 65535
  br label %186

186:                                              ; preds = %161, %179
  %187 = phi i32 [ %185, %179 ], [ %165, %161 ]
  %188 = icmp eq i32 %187, 116
  br i1 %188, label %224, label %189, !prof !183

189:                                              ; preds = %186
  %190 = load i32, ptr %164, align 8
  %191 = trunc i32 %190 to i8
  switch i8 %191, label %194 [
    i8 6, label %192
    i8 1, label %192
    i8 8, label %195
  ], !prof !185

192:                                              ; preds = %189, %189
  %193 = lshr i32 %190, 16
  br label %195

194:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #16
  br label %195

195:                                              ; preds = %194, %192, %189
  %196 = phi i32 [ %193, %192 ], [ 0, %194 ], [ 59, %189 ]
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !73
  %200 = icmp eq i8 %199, 3
  br i1 %200, label %201, label %221, !prof !183

201:                                              ; preds = %195
  %202 = load i32, ptr %164, align 8
  %203 = and i32 %202, 255
  %204 = add nsw i32 %203, -1
  %205 = icmp ult i32 %204, 9
  tail call void @llvm.assume(i1 %205)
  %206 = zext nneg i32 %203 to i64
  %207 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !77
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !138
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %214

214:                                              ; preds = %213, %201
  %215 = getelementptr inbounds i8, ptr %164, i64 %211
  %216 = getelementptr inbounds ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !62
  %218 = load i64, ptr %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = and i32 %219, 65535
  br label %221

221:                                              ; preds = %195, %214
  %222 = phi i32 [ %220, %214 ], [ %196, %195 ]
  %223 = icmp eq i32 %222, 113
  br i1 %223, label %224, label %267, !prof !183

224:                                              ; preds = %221, %186
  %225 = load i32, ptr %164, align 8
  %226 = and i32 %225, 255
  %227 = add nsw i32 %226, -1
  %228 = icmp ult i32 %227, 9
  tail call void @llvm.assume(i1 %228)
  %229 = zext nneg i32 %226 to i64
  %230 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !77
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !138
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %224
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %237

237:                                              ; preds = %236, %224
  %238 = getelementptr inbounds i8, ptr %164, i64 %234
  %239 = load ptr, ptr %238, align 8, !tbaa !62
  %240 = getelementptr inbounds %struct.tree_common, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !73
  %242 = getelementptr inbounds %struct.tree_type, ptr %241, i64 0, i32 6
  %243 = load i32, ptr %242, align 4
  %244 = and i32 %243, 1023
  %245 = load i32, ptr %164, align 8
  %246 = and i32 %245, 255
  %247 = add nsw i32 %246, -1
  %248 = icmp ult i32 %247, 9
  tail call void @llvm.assume(i1 %248)
  %249 = zext nneg i32 %246 to i64
  %250 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !77
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %252
  %254 = load i64, ptr %253, align 8, !tbaa !138
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %257

257:                                              ; preds = %256, %237
  %258 = getelementptr inbounds i8, ptr %164, i64 %254
  %259 = getelementptr inbounds ptr, ptr %258, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !62
  %261 = getelementptr inbounds %struct.tree_common, ptr %260, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !73
  %263 = getelementptr inbounds %struct.tree_type, ptr %262, i64 0, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 1023
  %266 = icmp ugt i32 %244, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %221, %257
  %268 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %164) #16
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %292, label %270, !prof !182

270:                                              ; preds = %257, %267
  %271 = load i32, ptr %164, align 8
  %272 = and i32 %271, 255
  %273 = add nsw i32 %272, -1
  %274 = icmp ult i32 %273, 9
  tail call void @llvm.assume(i1 %274)
  %275 = zext nneg i32 %272 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !77
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !138
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %283

283:                                              ; preds = %282, %270
  %284 = getelementptr inbounds i8, ptr %164, i64 %280
  %285 = getelementptr inbounds ptr, ptr %284, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !62
  %287 = getelementptr inbounds %struct.tree_ssa_name, ptr %286, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !73
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 255
  %291 = icmp eq i32 %290, 6
  br i1 %291, label %161, label %292, !prof !182, !llvm.loop !186

292:                                              ; preds = %267, %283, %152
  %293 = phi ptr [ %157, %152 ], [ %164, %267 ], [ %288, %283 ]
  %294 = load i32, ptr %293, align 8
  %295 = and i32 %294, 255
  %296 = icmp eq i32 %295, 6
  br i1 %296, label %297, label %363, !prof !182

297:                                              ; preds = %292
  %298 = lshr i32 %294, 16
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !73
  %302 = icmp eq i8 %301, 3
  br i1 %302, label %303, label %319, !prof !183

303:                                              ; preds = %297
  %304 = zext nneg i32 %295 to i64
  %305 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !77
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !138
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %312

312:                                              ; preds = %311, %303
  %313 = getelementptr inbounds i8, ptr %293, i64 %309
  %314 = getelementptr inbounds ptr, ptr %313, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !62
  %316 = load i64, ptr %315, align 8
  %317 = trunc i64 %316 to i32
  %318 = and i32 %317, 65535
  br label %319

319:                                              ; preds = %297, %312
  %320 = phi i32 [ %318, %312 ], [ %298, %297 ]
  %321 = icmp eq i32 %320, 84
  br i1 %321, label %322, label %363, !prof !182

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.gimple_statement_base, ptr %293, i64 0, i32 3
  %324 = load i32, ptr %323, align 4, !tbaa !73
  %325 = icmp ugt i32 %324, 2
  br i1 %325, label %326, label %344, !prof !182

326:                                              ; preds = %322
  %327 = load i32, ptr %293, align 8
  %328 = and i32 %327, 255
  %329 = add nsw i32 %328, -10
  %330 = icmp ult i32 %329, -9
  br i1 %330, label %344, label %331, !prof !183

331:                                              ; preds = %326
  %332 = zext nneg i32 %328 to i64
  %333 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !77
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !138
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340, !prof !183

339:                                              ; preds = %331
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %340

340:                                              ; preds = %339, %331
  %341 = getelementptr inbounds i8, ptr %293, i64 %337
  %342 = getelementptr inbounds ptr, ptr %341, i64 2
  %343 = load ptr, ptr %342, align 8, !tbaa !62
  br label %344

344:                                              ; preds = %322, %326, %340
  %345 = phi ptr [ null, %322 ], [ %343, %340 ], [ null, %326 ]
  store ptr %345, ptr %2, align 8, !tbaa !62
  %346 = load i32, ptr %293, align 8
  %347 = and i32 %346, 255
  %348 = add nsw i32 %347, -10
  %349 = icmp ult i32 %348, -9
  br i1 %349, label %366, label %350, !prof !183

350:                                              ; preds = %344
  %351 = zext nneg i32 %347 to i64
  %352 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !77
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %354
  %356 = load i64, ptr %355, align 8, !tbaa !138
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %359, !prof !183

358:                                              ; preds = %350
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %359

359:                                              ; preds = %358, %350
  %360 = getelementptr inbounds i8, ptr %293, i64 %356
  %361 = getelementptr inbounds ptr, ptr %360, i64 1
  %362 = load ptr, ptr %361, align 8, !tbaa !62
  br label %366

363:                                              ; preds = %319, %292
  %364 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !62
  store ptr %364, ptr %2, align 8, !tbaa !62
  %365 = tail call fastcc ptr @get_name_for_bit_test(ptr noundef %155)
  br label %366

366:                                              ; preds = %359, %344, %363
  %367 = phi ptr [ %365, %363 ], [ %362, %359 ], [ null, %344 ]
  store ptr %367, ptr %1, align 8, !tbaa !62
  br label %802

368:                                              ; preds = %132, %115, %90
  %369 = load i32, ptr %64, align 8
  %370 = trunc i32 %369 to i8
  switch i8 %370, label %373 [
    i8 6, label %371
    i8 1, label %371
    i8 8, label %374
  ], !prof !187

371:                                              ; preds = %368, %368
  %372 = lshr i32 %369, 16
  br label %374

373:                                              ; preds = %368
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #16
  br label %374

374:                                              ; preds = %373, %371, %368
  %375 = phi i32 [ %372, %371 ], [ 0, %373 ], [ 59, %368 ]
  %376 = zext nneg i32 %375 to i64
  %377 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !73
  %379 = icmp eq i8 %378, 3
  br i1 %379, label %380, label %400, !prof !188

380:                                              ; preds = %374
  %381 = load i32, ptr %64, align 8
  %382 = and i32 %381, 255
  %383 = add nsw i32 %382, -1
  %384 = icmp ult i32 %383, 9
  tail call void @llvm.assume(i1 %384)
  %385 = zext nneg i32 %382 to i64
  %386 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !77
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !138
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %392, label %393, !prof !180

392:                                              ; preds = %380
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %393

393:                                              ; preds = %392, %380
  %394 = getelementptr inbounds i8, ptr %64, i64 %390
  %395 = getelementptr inbounds ptr, ptr %394, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !62
  %397 = load i64, ptr %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = and i32 %398, 65535
  br label %400

400:                                              ; preds = %374, %393
  %401 = phi i32 [ %399, %393 ], [ %375, %374 ]
  %402 = icmp eq i32 %401, 89
  br i1 %402, label %403, label %495, !prof !180

403:                                              ; preds = %400
  %404 = load i32, ptr %64, align 8
  %405 = and i32 %404, 255
  %406 = add nsw i32 %405, -1
  %407 = icmp ult i32 %406, 9
  tail call void @llvm.assume(i1 %407)
  %408 = zext nneg i32 %405 to i64
  %409 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !77
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !138
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %403
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %416

416:                                              ; preds = %415, %403
  %417 = getelementptr inbounds i8, ptr %64, i64 %413
  %418 = getelementptr inbounds ptr, ptr %417, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !62
  %420 = load i64, ptr %419, align 8
  %421 = and i64 %420, 65535
  %422 = icmp eq i64 %421, 141
  br i1 %422, label %423, label %495

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 3
  %425 = load i32, ptr %424, align 4, !tbaa !73
  %426 = icmp ugt i32 %425, 2
  br i1 %426, label %427, label %445

427:                                              ; preds = %423
  %428 = load i32, ptr %64, align 8
  %429 = and i32 %428, 255
  %430 = add nsw i32 %429, -10
  %431 = icmp ult i32 %430, -9
  br i1 %431, label %445, label %432

432:                                              ; preds = %427
  %433 = zext nneg i32 %429 to i64
  %434 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !77
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %436
  %438 = load i64, ptr %437, align 8, !tbaa !138
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %432
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %441

441:                                              ; preds = %440, %432
  %442 = getelementptr inbounds i8, ptr %64, i64 %438
  %443 = getelementptr inbounds ptr, ptr %442, i64 2
  %444 = load ptr, ptr %443, align 8, !tbaa !62
  br label %445

445:                                              ; preds = %423, %427, %441
  %446 = phi ptr [ null, %423 ], [ %444, %441 ], [ null, %427 ]
  %447 = tail call i32 @integer_pow2p(ptr noundef %446) #16
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %495, label %449

449:                                              ; preds = %445
  %450 = load i32, ptr %64, align 8
  %451 = and i32 %450, 255
  %452 = add nsw i32 %451, -10
  %453 = icmp ult i32 %452, -9
  br i1 %453, label %467, label %454

454:                                              ; preds = %449
  %455 = zext nneg i32 %451 to i64
  %456 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !77
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %458
  %460 = load i64, ptr %459, align 8, !tbaa !138
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %454
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %463

463:                                              ; preds = %462, %454
  %464 = getelementptr inbounds i8, ptr %64, i64 %460
  %465 = getelementptr inbounds ptr, ptr %464, i64 1
  %466 = load ptr, ptr %465, align 8, !tbaa !62
  br label %467

467:                                              ; preds = %449, %463
  %468 = phi ptr [ %466, %463 ], [ null, %449 ]
  store ptr %468, ptr %1, align 8, !tbaa !62
  %469 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !62
  %470 = load i32, ptr %424, align 4, !tbaa !73
  %471 = icmp ugt i32 %470, 2
  br i1 %471, label %472, label %490

472:                                              ; preds = %467
  %473 = load i32, ptr %64, align 8
  %474 = and i32 %473, 255
  %475 = add nsw i32 %474, -10
  %476 = icmp ult i32 %475, -9
  br i1 %476, label %490, label %477

477:                                              ; preds = %472
  %478 = zext nneg i32 %474 to i64
  %479 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !77
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %481
  %483 = load i64, ptr %482, align 8, !tbaa !138
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %477
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %486

486:                                              ; preds = %485, %477
  %487 = getelementptr inbounds i8, ptr %64, i64 %483
  %488 = getelementptr inbounds ptr, ptr %487, i64 2
  %489 = load ptr, ptr %488, align 8, !tbaa !62
  br label %490

490:                                              ; preds = %467, %472, %486
  %491 = phi ptr [ null, %467 ], [ %489, %486 ], [ null, %472 ]
  %492 = tail call i32 @tree_log2(ptr noundef %491) #16
  %493 = sext i32 %492 to i64
  %494 = tail call ptr @build_int_cst(ptr noundef %469, i64 noundef %493) #16
  store ptr %494, ptr %2, align 8, !tbaa !62
  br label %802

495:                                              ; preds = %445, %416, %400
  %496 = load i32, ptr %64, align 8
  %497 = trunc i32 %496 to i8
  switch i8 %497, label %500 [
    i8 6, label %498
    i8 1, label %498
    i8 8, label %501
  ], !prof !187

498:                                              ; preds = %495, %495
  %499 = lshr i32 %496, 16
  br label %501

500:                                              ; preds = %495
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #16
  br label %501

501:                                              ; preds = %500, %498, %495
  %502 = phi i32 [ %499, %498 ], [ 0, %500 ], [ 59, %495 ]
  %503 = zext nneg i32 %502 to i64
  %504 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %503
  %505 = load i8, ptr %504, align 1, !tbaa !73
  %506 = icmp eq i8 %505, 3
  br i1 %506, label %507, label %527, !prof !188

507:                                              ; preds = %501
  %508 = load i32, ptr %64, align 8
  %509 = and i32 %508, 255
  %510 = add nsw i32 %509, -1
  %511 = icmp ult i32 %510, 9
  tail call void @llvm.assume(i1 %511)
  %512 = zext nneg i32 %509 to i64
  %513 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !77
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %515
  %517 = load i64, ptr %516, align 8, !tbaa !138
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %520, !prof !180

519:                                              ; preds = %507
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %520

520:                                              ; preds = %519, %507
  %521 = getelementptr inbounds i8, ptr %64, i64 %517
  %522 = getelementptr inbounds ptr, ptr %521, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !62
  %524 = load i64, ptr %523, align 8
  %525 = trunc i64 %524 to i32
  %526 = and i32 %525, 65535
  br label %527

527:                                              ; preds = %501, %520
  %528 = phi i32 [ %526, %520 ], [ %502, %501 ]
  %529 = icmp eq i32 %528, 89
  br i1 %529, label %530, label %802, !prof !180

530:                                              ; preds = %527
  %531 = load i32, ptr %64, align 8
  %532 = and i32 %531, 255
  %533 = add nsw i32 %532, -1
  %534 = icmp ult i32 %533, 9
  tail call void @llvm.assume(i1 %534)
  %535 = zext nneg i32 %532 to i64
  %536 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %535
  %537 = load i32, ptr %536, align 4, !tbaa !77
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %538
  %540 = load i64, ptr %539, align 8, !tbaa !138
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %530
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %543

543:                                              ; preds = %542, %530
  %544 = getelementptr inbounds i8, ptr %64, i64 %540
  %545 = getelementptr inbounds ptr, ptr %544, i64 1
  %546 = load ptr, ptr %545, align 8, !tbaa !62
  %547 = load i64, ptr %546, align 8
  %548 = and i64 %547, 65535
  %549 = icmp eq i64 %548, 141
  br i1 %549, label %550, label %802

550:                                              ; preds = %543
  %551 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 3
  %552 = load i32, ptr %551, align 4, !tbaa !73
  %553 = icmp ugt i32 %552, 2
  tail call void @llvm.assume(i1 %553)
  %554 = load i32, ptr %64, align 8
  %555 = and i32 %554, 255
  %556 = add nsw i32 %555, -1
  %557 = icmp ult i32 %556, 9
  tail call void @llvm.assume(i1 %557)
  %558 = zext nneg i32 %555 to i64
  %559 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !77
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %561
  %563 = load i64, ptr %562, align 8, !tbaa !138
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %550
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %566

566:                                              ; preds = %565, %550
  %567 = getelementptr inbounds i8, ptr %64, i64 %563
  %568 = getelementptr inbounds ptr, ptr %567, i64 2
  %569 = load ptr, ptr %568, align 8, !tbaa !62
  %570 = load i64, ptr %569, align 8
  %571 = and i64 %570, 65535
  %572 = icmp eq i64 %571, 141
  br i1 %572, label %573, label %802

573:                                              ; preds = %566
  %574 = load i32, ptr %64, align 8
  %575 = and i32 %574, 255
  %576 = add nsw i32 %575, -1
  %577 = icmp ult i32 %576, 9
  tail call void @llvm.assume(i1 %577)
  %578 = zext nneg i32 %575 to i64
  %579 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %578
  %580 = load i32, ptr %579, align 4, !tbaa !77
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %581
  %583 = load i64, ptr %582, align 8, !tbaa !138
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %573
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %586

586:                                              ; preds = %585, %573
  %587 = getelementptr inbounds i8, ptr %64, i64 %583
  %588 = getelementptr inbounds ptr, ptr %587, i64 1
  %589 = load ptr, ptr %588, align 8, !tbaa !62
  %590 = getelementptr inbounds %struct.tree_ssa_name, ptr %589, i64 0, i32 2
  %591 = load ptr, ptr %590, align 8, !tbaa !73
  %592 = load i32, ptr %591, align 8
  %593 = and i32 %592, 255
  %594 = icmp eq i32 %593, 6
  br i1 %594, label %595, label %688

595:                                              ; preds = %586
  %596 = lshr i32 %592, 16
  %597 = zext nneg i32 %596 to i64
  %598 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !73
  %600 = icmp eq i8 %599, 3
  br i1 %600, label %601, label %617

601:                                              ; preds = %595
  %602 = zext nneg i32 %593 to i64
  %603 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %602
  %604 = load i32, ptr %603, align 4, !tbaa !77
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %605
  %607 = load i64, ptr %606, align 8, !tbaa !138
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %609, label %610

609:                                              ; preds = %601
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %610

610:                                              ; preds = %609, %601
  %611 = getelementptr inbounds i8, ptr %591, i64 %607
  %612 = getelementptr inbounds ptr, ptr %611, i64 1
  %613 = load ptr, ptr %612, align 8, !tbaa !62
  %614 = load i64, ptr %613, align 8
  %615 = trunc i64 %614 to i32
  %616 = and i32 %615, 65535
  br label %617

617:                                              ; preds = %595, %610
  %618 = phi i32 [ %616, %610 ], [ %596, %595 ]
  %619 = icmp eq i32 %618, 83
  br i1 %619, label %620, label %688

620:                                              ; preds = %617
  %621 = load i32, ptr %591, align 8
  %622 = and i32 %621, 255
  %623 = add nsw i32 %622, -10
  %624 = icmp ult i32 %623, -9
  br i1 %624, label %638, label %625

625:                                              ; preds = %620
  %626 = zext nneg i32 %622 to i64
  %627 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !77
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %629
  %631 = load i64, ptr %630, align 8, !tbaa !138
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %625
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %634

634:                                              ; preds = %633, %625
  %635 = getelementptr inbounds i8, ptr %591, i64 %631
  %636 = getelementptr inbounds ptr, ptr %635, i64 1
  %637 = load ptr, ptr %636, align 8, !tbaa !62
  br label %638

638:                                              ; preds = %620, %634
  %639 = phi ptr [ %637, %634 ], [ null, %620 ]
  %640 = tail call i32 @integer_onep(ptr noundef %639) #16
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %688, label %642

642:                                              ; preds = %638
  %643 = load i32, ptr %551, align 4, !tbaa !73
  %644 = icmp ugt i32 %643, 2
  br i1 %644, label %645, label %663

645:                                              ; preds = %642
  %646 = load i32, ptr %64, align 8
  %647 = and i32 %646, 255
  %648 = add nsw i32 %647, -10
  %649 = icmp ult i32 %648, -9
  br i1 %649, label %663, label %650

650:                                              ; preds = %645
  %651 = zext nneg i32 %647 to i64
  %652 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !77
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %654
  %656 = load i64, ptr %655, align 8, !tbaa !138
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %659

658:                                              ; preds = %650
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %659

659:                                              ; preds = %658, %650
  %660 = getelementptr inbounds i8, ptr %64, i64 %656
  %661 = getelementptr inbounds ptr, ptr %660, i64 2
  %662 = load ptr, ptr %661, align 8, !tbaa !62
  br label %663

663:                                              ; preds = %642, %645, %659
  %664 = phi ptr [ null, %642 ], [ %662, %659 ], [ null, %645 ]
  store ptr %664, ptr %1, align 8, !tbaa !62
  %665 = getelementptr inbounds %struct.gimple_statement_base, ptr %591, i64 0, i32 3
  %666 = load i32, ptr %665, align 4, !tbaa !73
  %667 = icmp ugt i32 %666, 2
  br i1 %667, label %668, label %686

668:                                              ; preds = %663
  %669 = load i32, ptr %591, align 8
  %670 = and i32 %669, 255
  %671 = add nsw i32 %670, -10
  %672 = icmp ult i32 %671, -9
  br i1 %672, label %686, label %673

673:                                              ; preds = %668
  %674 = zext nneg i32 %670 to i64
  %675 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !77
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %677
  %679 = load i64, ptr %678, align 8, !tbaa !138
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %681, label %682

681:                                              ; preds = %673
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %682

682:                                              ; preds = %681, %673
  %683 = getelementptr inbounds i8, ptr %591, i64 %679
  %684 = getelementptr inbounds ptr, ptr %683, i64 2
  %685 = load ptr, ptr %684, align 8, !tbaa !62
  br label %686

686:                                              ; preds = %663, %668, %682
  %687 = phi ptr [ null, %663 ], [ %685, %682 ], [ null, %668 ]
  store ptr %687, ptr %2, align 8, !tbaa !62
  br label %802

688:                                              ; preds = %638, %617, %586
  %689 = load i32, ptr %551, align 4, !tbaa !73
  %690 = icmp ugt i32 %689, 2
  tail call void @llvm.assume(i1 %690)
  %691 = load i32, ptr %64, align 8
  %692 = and i32 %691, 255
  %693 = add nsw i32 %692, -1
  %694 = icmp ult i32 %693, 9
  tail call void @llvm.assume(i1 %694)
  %695 = zext nneg i32 %692 to i64
  %696 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %695
  %697 = load i32, ptr %696, align 4, !tbaa !77
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %698
  %700 = load i64, ptr %699, align 8, !tbaa !138
  %701 = icmp eq i64 %700, 0
  br i1 %701, label %702, label %703

702:                                              ; preds = %688
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %703

703:                                              ; preds = %702, %688
  %704 = getelementptr inbounds i8, ptr %64, i64 %700
  %705 = getelementptr inbounds ptr, ptr %704, i64 2
  %706 = load ptr, ptr %705, align 8, !tbaa !62
  %707 = getelementptr inbounds %struct.tree_ssa_name, ptr %706, i64 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !73
  %709 = load i32, ptr %708, align 8
  %710 = and i32 %709, 255
  %711 = icmp eq i32 %710, 6
  br i1 %711, label %712, label %802

712:                                              ; preds = %703
  %713 = lshr i32 %709, 16
  %714 = zext nneg i32 %713 to i64
  %715 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !73
  %717 = icmp eq i8 %716, 3
  br i1 %717, label %718, label %734

718:                                              ; preds = %712
  %719 = zext nneg i32 %710 to i64
  %720 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %719
  %721 = load i32, ptr %720, align 4, !tbaa !77
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %722
  %724 = load i64, ptr %723, align 8, !tbaa !138
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %726, label %727

726:                                              ; preds = %718
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %727

727:                                              ; preds = %726, %718
  %728 = getelementptr inbounds i8, ptr %708, i64 %724
  %729 = getelementptr inbounds ptr, ptr %728, i64 1
  %730 = load ptr, ptr %729, align 8, !tbaa !62
  %731 = load i64, ptr %730, align 8
  %732 = trunc i64 %731 to i32
  %733 = and i32 %732, 65535
  br label %734

734:                                              ; preds = %712, %727
  %735 = phi i32 [ %733, %727 ], [ %713, %712 ]
  %736 = icmp eq i32 %735, 83
  br i1 %736, label %737, label %802

737:                                              ; preds = %734
  %738 = load i32, ptr %708, align 8
  %739 = and i32 %738, 255
  %740 = add nsw i32 %739, -10
  %741 = icmp ult i32 %740, -9
  br i1 %741, label %755, label %742

742:                                              ; preds = %737
  %743 = zext nneg i32 %739 to i64
  %744 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !77
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %746
  %748 = load i64, ptr %747, align 8, !tbaa !138
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %750, label %751

750:                                              ; preds = %742
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %751

751:                                              ; preds = %750, %742
  %752 = getelementptr inbounds i8, ptr %708, i64 %748
  %753 = getelementptr inbounds ptr, ptr %752, i64 1
  %754 = load ptr, ptr %753, align 8, !tbaa !62
  br label %755

755:                                              ; preds = %737, %751
  %756 = phi ptr [ %754, %751 ], [ null, %737 ]
  %757 = tail call i32 @integer_onep(ptr noundef %756) #16
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %802, label %759

759:                                              ; preds = %755
  %760 = load i32, ptr %64, align 8
  %761 = and i32 %760, 255
  %762 = add nsw i32 %761, -10
  %763 = icmp ult i32 %762, -9
  br i1 %763, label %777, label %764

764:                                              ; preds = %759
  %765 = zext nneg i32 %761 to i64
  %766 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %765
  %767 = load i32, ptr %766, align 4, !tbaa !77
  %768 = zext i32 %767 to i64
  %769 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %768
  %770 = load i64, ptr %769, align 8, !tbaa !138
  %771 = icmp eq i64 %770, 0
  br i1 %771, label %772, label %773

772:                                              ; preds = %764
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %773

773:                                              ; preds = %772, %764
  %774 = getelementptr inbounds i8, ptr %64, i64 %770
  %775 = getelementptr inbounds ptr, ptr %774, i64 1
  %776 = load ptr, ptr %775, align 8, !tbaa !62
  br label %777

777:                                              ; preds = %759, %773
  %778 = phi ptr [ %776, %773 ], [ null, %759 ]
  store ptr %778, ptr %1, align 8, !tbaa !62
  %779 = getelementptr inbounds %struct.gimple_statement_base, ptr %708, i64 0, i32 3
  %780 = load i32, ptr %779, align 4, !tbaa !73
  %781 = icmp ugt i32 %780, 2
  br i1 %781, label %782, label %800

782:                                              ; preds = %777
  %783 = load i32, ptr %708, align 8
  %784 = and i32 %783, 255
  %785 = add nsw i32 %784, -10
  %786 = icmp ult i32 %785, -9
  br i1 %786, label %800, label %787

787:                                              ; preds = %782
  %788 = zext nneg i32 %784 to i64
  %789 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %788
  %790 = load i32, ptr %789, align 4, !tbaa !77
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %791
  %793 = load i64, ptr %792, align 8, !tbaa !138
  %794 = icmp eq i64 %793, 0
  br i1 %794, label %795, label %796

795:                                              ; preds = %787
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %796

796:                                              ; preds = %795, %787
  %797 = getelementptr inbounds i8, ptr %708, i64 %793
  %798 = getelementptr inbounds ptr, ptr %797, i64 2
  %799 = load ptr, ptr %798, align 8, !tbaa !62
  br label %800

800:                                              ; preds = %777, %782, %796
  %801 = phi ptr [ null, %777 ], [ %799, %796 ], [ null, %782 ]
  store ptr %801, ptr %2, align 8, !tbaa !62
  br label %802

802:                                              ; preds = %686, %800, %527, %543, %566, %703, %734, %755, %60, %3, %19, %43, %490, %366
  %803 = phi i8 [ 1, %366 ], [ 1, %490 ], [ 0, %43 ], [ 0, %19 ], [ 0, %3 ], [ 0, %60 ], [ 0, %755 ], [ 0, %734 ], [ 0, %703 ], [ 0, %566 ], [ 0, %543 ], [ 0, %527 ], [ 1, %800 ], [ 1, %686 ]
  ret i8 %803
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @canonicalize_cond_expr_cond(ptr noundef) local_unnamed_addr #3

declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @combine_comparisons(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_name_for_bit_test(ptr noundef %0) unnamed_addr #13 !prof !189 !PGOFuncName !190 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %144, !prof !191

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !192
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %26, label %10, !prof !193

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  %13 = icmp eq ptr %6, %12
  br i1 %13, label %14, label %21, !prof !191

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 255
  %19 = icmp ne i32 %18, 2
  %20 = zext i1 %19 to i8
  br label %26

21:                                               ; preds = %10
  %22 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !77
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  br label %26

26:                                               ; preds = %5, %14, %21, %24
  %27 = phi i8 [ %20, %14 ], [ %25, %24 ], [ 0, %5 ], [ 0, %21 ]
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %144, label %29, !prof !193

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %141, !prof !191

35:                                               ; preds = %29
  %36 = lshr i32 %32, 16
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !73
  %40 = icmp eq i8 %39, 3
  br i1 %40, label %41, label %57, !prof !193

41:                                               ; preds = %35
  %42 = zext nneg i32 %33 to i64
  %43 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !77
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !138
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %50

50:                                               ; preds = %49, %41
  %51 = getelementptr inbounds i8, ptr %31, i64 %47
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  br label %57

57:                                               ; preds = %35, %50
  %58 = phi i32 [ %56, %50 ], [ %36, %35 ]
  %59 = icmp eq i32 %58, 116
  br i1 %59, label %95, label %60, !prof !193

60:                                               ; preds = %57
  %61 = load i32, ptr %31, align 8
  %62 = trunc i32 %61 to i8
  switch i8 %62, label %65 [
    i8 6, label %63
    i8 1, label %63
    i8 8, label %66
  ], !prof !194

63:                                               ; preds = %60, %60
  %64 = lshr i32 %61, 16
  br label %66

65:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #16
  br label %66

66:                                               ; preds = %65, %63, %60
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ], [ 59, %60 ]
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !73
  %71 = icmp eq i8 %70, 3
  br i1 %71, label %72, label %92, !prof !193

72:                                               ; preds = %66
  %73 = load i32, ptr %31, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -1
  %76 = icmp ult i32 %75, 9
  tail call void @llvm.assume(i1 %76)
  %77 = zext nneg i32 %74 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !77
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !138
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %85

85:                                               ; preds = %84, %72
  %86 = getelementptr inbounds i8, ptr %31, i64 %82
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !62
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 65535
  br label %92

92:                                               ; preds = %66, %85
  %93 = phi i32 [ %91, %85 ], [ %67, %66 ]
  %94 = icmp eq i32 %93, 113
  br i1 %94, label %95, label %141, !prof !193

95:                                               ; preds = %92, %57
  %96 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !73
  %98 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 1023
  %101 = load i32, ptr %31, align 8
  %102 = and i32 %101, 255
  %103 = add nsw i32 %102, -1
  %104 = icmp ult i32 %103, 9
  tail call void @llvm.assume(i1 %104)
  %105 = zext nneg i32 %102 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !77
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !138
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %113

113:                                              ; preds = %112, %95
  %114 = getelementptr inbounds i8, ptr %31, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  %117 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !73
  %119 = getelementptr inbounds %struct.tree_type, ptr %118, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1023
  %122 = icmp ugt i32 %100, %121
  br i1 %122, label %141, label %123

123:                                              ; preds = %113
  %124 = load i32, ptr %31, align 8
  %125 = and i32 %124, 255
  %126 = add nsw i32 %125, -10
  %127 = icmp ult i32 %126, -9
  br i1 %127, label %141, label %128

128:                                              ; preds = %123
  %129 = zext nneg i32 %125 to i64
  %130 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !77
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !138
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %137

137:                                              ; preds = %136, %128
  %138 = getelementptr inbounds i8, ptr %31, i64 %134
  %139 = getelementptr inbounds ptr, ptr %138, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !62
  br label %141

141:                                              ; preds = %92, %137, %123, %29, %113
  %142 = phi ptr [ undef, %113 ], [ undef, %29 ], [ %140, %137 ], [ null, %123 ], [ undef, %92 ]
  %143 = phi i1 [ true, %113 ], [ true, %29 ], [ false, %137 ], [ false, %123 ], [ true, %92 ]
  br i1 %143, label %144, label %145, !prof !191

144:                                              ; preds = %141, %26, %1
  br label %145

145:                                              ; preds = %141, %144
  %146 = phi ptr [ %142, %141 ], [ %0, %144 ]
  ret ptr %146
}

declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #3

declare i32 @tree_log2(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @recognize_bits_test(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !195 !PGOFuncName !196 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -65536
  %6 = icmp eq i32 %5, 6684672
  br i1 %6, label %7, label %137, !prof !197

7:                                                ; preds = %3
  %8 = and i32 %4, 255
  %9 = add nsw i32 %8, -1
  %10 = icmp ult i32 %9, 9
  tail call void @llvm.assume(i1 %10)
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !77
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !138
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19, !prof !198

18:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %19

19:                                               ; preds = %18, %7
  %20 = getelementptr inbounds i8, ptr %0, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %137, !prof !199

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -9
  br i1 %29, label %43, label %30, !prof !198

30:                                               ; preds = %25
  %31 = zext nneg i32 %27 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !77
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !138
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39, !prof !198

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds i8, ptr %0, i64 %36
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  br label %43

43:                                               ; preds = %25, %39
  %44 = phi ptr [ %42, %39 ], [ null, %25 ]
  %45 = tail call i32 @integer_zerop(ptr noundef %44) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %137, label %47, !prof !200

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8
  %49 = and i32 %48, 255
  %50 = add nsw i32 %49, -1
  %51 = icmp ult i32 %50, 9
  tail call void @llvm.assume(i1 %51)
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !77
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !138
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60, !prof !201

59:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %60

60:                                               ; preds = %59, %47
  %61 = getelementptr inbounds i8, ptr %0, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !73
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %68, label %137, !prof !202

68:                                               ; preds = %60
  %69 = lshr i32 %65, 16
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !73
  %73 = icmp eq i8 %72, 3
  br i1 %73, label %74, label %90, !prof !201

74:                                               ; preds = %68
  %75 = zext nneg i32 %66 to i64
  %76 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !77
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !138
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %83

83:                                               ; preds = %82, %74
  %84 = getelementptr inbounds i8, ptr %64, i64 %80
  %85 = getelementptr inbounds ptr, ptr %84, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = and i32 %88, 65535
  br label %90

90:                                               ; preds = %68, %83
  %91 = phi i32 [ %89, %83 ], [ %69, %68 ]
  %92 = icmp eq i32 %91, 89
  br i1 %92, label %93, label %137, !prof !203

93:                                               ; preds = %90
  %94 = load i32, ptr %64, align 8
  %95 = and i32 %94, 255
  %96 = add nsw i32 %95, -10
  %97 = icmp ult i32 %96, -9
  br i1 %97, label %111, label %98, !prof !193

98:                                               ; preds = %93
  %99 = zext nneg i32 %95 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !77
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !138
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107, !prof !193

106:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %107

107:                                              ; preds = %106, %98
  %108 = getelementptr inbounds i8, ptr %64, i64 %104
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  br label %111

111:                                              ; preds = %93, %107
  %112 = phi ptr [ %110, %107 ], [ null, %93 ]
  %113 = tail call fastcc ptr @get_name_for_bit_test(ptr noundef %112)
  store ptr %113, ptr %1, align 8, !tbaa !62
  %114 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 3
  %115 = load i32, ptr %114, align 4, !tbaa !73
  %116 = icmp ugt i32 %115, 2
  br i1 %116, label %117, label %135, !prof !191

117:                                              ; preds = %111
  %118 = load i32, ptr %64, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %135, label %122, !prof !193

122:                                              ; preds = %117
  %123 = zext nneg i32 %119 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !77
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !138
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131, !prof !193

130:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %131

131:                                              ; preds = %130, %122
  %132 = getelementptr inbounds i8, ptr %64, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  %134 = load ptr, ptr %133, align 8, !tbaa !62
  br label %135

135:                                              ; preds = %111, %117, %131
  %136 = phi ptr [ null, %111 ], [ %134, %131 ], [ null, %117 ]
  store ptr %136, ptr %2, align 8, !tbaa !62
  br label %137

137:                                              ; preds = %60, %90, %3, %19, %43, %135
  %138 = phi i8 [ 1, %135 ], [ 0, %43 ], [ 0, %19 ], [ 0, %3 ], [ 0, %90 ], [ 0, %60 ]
  ret i8 %138
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @tree_ssa_ifcombine, ptr @blocks_in_phiopt_order, i64 38}
!36 = !{ptr @tree_ssa_ifcombine, ptr @last_stmt, i64 151380}
!37 = !{ptr @tree_ssa_ifcombine, ptr @same_phi_args_p, i64 72856}
!38 = !{ptr @tree_ssa_ifcombine, ptr @recognize_single_bit_test, i64 2689}
!39 = !{ptr @tree_ssa_ifcombine, ptr @operand_equal_p, i64 3069}
!40 = !{ptr @tree_ssa_ifcombine, ptr @recognize_bits_test, i64 1419}
!41 = !{ptr @tree_ssa_ifcombine, ptr @unsigned_type_for, i64 2}
!42 = !{ptr @tree_ssa_ifcombine, ptr @fold_convert_loc, i64 4}
!43 = !{ptr @tree_ssa_ifcombine, ptr @gsi_for_stmt, i64 1}
!44 = !{ptr @tree_ssa_ifcombine, ptr @fold_build2_stat_loc, i64 3}
!45 = !{ptr @tree_ssa_ifcombine, ptr @force_gimple_operand_gsi, i64 2}
!46 = !{ptr @tree_ssa_ifcombine, ptr @build_int_cst, i64 1}
!47 = !{ptr @tree_ssa_ifcombine, ptr @canonicalize_cond_expr_cond, i64 1}
!48 = !{ptr @tree_ssa_ifcombine, ptr @gimple_cond_set_condition_from_tree, i64 2}
!49 = !{ptr @tree_ssa_ifcombine, ptr @gimple_set_modified, i64 2}
!50 = !{ptr @tree_ssa_ifcombine, ptr @update_stmt_operands, i64 2}
!51 = !{ptr @tree_ssa_ifcombine, ptr @free, i64 38}
!52 = !{ptr @same_phi_args_p, ptr @find_edge, i64 146086}
!53 = !{ptr @same_phi_args_p, ptr @gsi_start_phis, i64 73043}
!54 = !{ptr @same_phi_args_p, ptr @operand_equal_p, i64 89508}
!55 = !{ptr @recognize_single_bit_test, ptr @integer_zerop, i64 762}
!56 = !{ptr @recognize_single_bit_test, ptr @integer_onep, i64 580}
!57 = !{ptr @recognize_single_bit_test, ptr @gimple_assign_ssa_name_copy_p, i64 580}
!58 = !{ptr @recognize_bits_test, ptr @integer_zerop, i64 5095}
!59 = !{ptr @recognize_bits_test, ptr @get_name_for_bit_test, i64 7}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !63, i64 8}
!67 = !{!"_IO_FILE", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !68, i64 112, !68, i64 116, !69, i64 120, !70, i64 128, !64, i64 130, !64, i64 131, !63, i64 136, !69, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !69, i64 184, !68, i64 192, !64, i64 196}
!68 = !{!"int", !64, i64 0}
!69 = !{!"long", !64, i64 0}
!70 = !{!"short", !64, i64 0}
!71 = !{!67, !63, i64 16}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!64, !64, i64 0}
!74 = !{!67, !63, i64 40}
!75 = !{!67, !63, i64 48}
!76 = !{!67, !68, i64 0}
!77 = !{!68, !68, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"function_entry_count", i64 38}
!82 = !{!"tree-ssa-ifcombine.c;gate_ifcombine"}
!83 = !{!"tree-ssa-ifcombine.c;tree_ssa_ifcombine"}
!84 = !{!85, !63, i64 8}
!85 = !{!"function", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !68, i64 104, !68, i64 108, !68, i64 112, !68, i64 116, !68, i64 120, !68, i64 124, !63, i64 128, !68, i64 136, !68, i64 137, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139}
!86 = !{!87, !68, i64 24}
!87 = !{!"control_flow_graph", !63, i64 0, !63, i64 8, !63, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !63, i64 40, !68, i64 48, !64, i64 52, !64, i64 60, !68, i64 68, !68, i64 72}
!88 = !{!"branch_weights", i32 151, i32 1}
!89 = !{!"branch_weights", i32 2540, i32 142742}
!90 = !{!"branch_weights", i32 142034, i32 708}
!91 = !{!92, !63, i64 8}
!92 = !{!"basic_block_def", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !64, i64 32, !63, i64 48, !63, i64 56, !64, i64 64, !69, i64 72, !68, i64 80, !68, i64 84, !68, i64 88, !68, i64 92, !68, i64 96}
!93 = !{!"branch_weights", i32 0, i32 326880}
!94 = !{!95, !68, i64 0}
!95 = !{!"VEC_edge_base", !68, i64 0, !68, i64 4, !64, i64 8}
!96 = !{!"branch_weights", i32 321454, i32 5426}
!97 = !{!98, !68, i64 48}
!98 = !{!"edge_def", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 24, !63, i64 32, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !69, i64 56}
!99 = !{!"branch_weights", i32 6, i32 321448}
!100 = !{!"branch_weights", i32 0, i32 321448}
!101 = !{!98, !63, i64 8}
!102 = !{!"branch_weights", i32 0, i32 142034}
!103 = !{!92, !63, i64 0}
!104 = !{!"branch_weights", i32 49257, i32 92777}
!105 = !{!"branch_weights", i32 0, i32 92777}
!106 = !{!"branch_weights", i32 92777, i32 0}
!107 = !{!98, !63, i64 0}
!108 = !{!"branch_weights", i32 85851, i32 93563}
!109 = !{!"branch_weights", i32 85851, i32 142034}
!110 = !{!"branch_weights", i32 38341, i32 54436}
!111 = !{i8 0, i8 2}
!112 = !{!"branch_weights", i32 37251, i32 17185}
!113 = !{!92, !68, i64 96}
!114 = !{!115}
!115 = distinct !{!115, !116, !"gsi_start_bb: argument 0"}
!116 = distinct !{!116, !"gsi_start_bb"}
!117 = !{!"branch_weights", i32 32269, i32 0}
!118 = !{!"branch_weights", i32 0, i32 32269}
!119 = !{!120, !63, i64 0}
!120 = !{!"gimple_bb_info", !63, i64 0, !63, i64 8}
!121 = !{!122, !63, i64 0}
!122 = !{!"gimple_seq_d", !63, i64 0, !63, i64 8, !63, i64 16}
!123 = !{!"branch_weights", i32 1, i32 5923}
!124 = !{!125, !63, i64 0}
!125 = !{!"gimple_seq_node_d", !63, i64 0, !63, i64 8, !63, i64 16}
!126 = !{!"branch_weights", i32 49310, i32 0}
!127 = !{!"branch_weights", i32 5924, i32 43386}
!128 = !{!"branch_weights", i32 22965, i32 26345}
!129 = !{!125, !63, i64 16}
!130 = !{!"branch_weights", i32 5923, i32 43387}
!131 = distinct !{!131, !79, !80}
!132 = !{!"branch_weights", i32 0, i32 708}
!133 = !{!"branch_weights", i32 708, i32 0}
!134 = !{!"branch_weights", i32 249, i32 459}
!135 = !{!"branch_weights", i32 338, i32 121}
!136 = !{!"branch_weights", i32 0, i32 121}
!137 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62}
!138 = !{!69, !69, i64 0}
!139 = !{!"branch_weights", i32 179414, i32 142034}
!140 = !{!"branch_weights", i32 2022496516, i32 -1701319931}
!141 = !{!"branch_weights", i32 73462, i32 18607}
!142 = !{!"branch_weights", i32 3523, i32 15084}
!143 = !{!144}
!144 = distinct !{!144, !145, !"gsi_start_bb: argument 0"}
!145 = distinct !{!145, !"gsi_start_bb"}
!146 = !{!"branch_weights", i32 0, i32 5216}
!147 = !{!"branch_weights", i32 5216, i32 0}
!148 = !{!"branch_weights", i32 5212, i32 4}
!149 = !{!"branch_weights", i32 1, i32 3}
!150 = !{!"branch_weights", i32 0, i32 3}
!151 = !{!"branch_weights", i32 3, i32 0}
!152 = !{!"branch_weights", i32 5213, i32 0}
!153 = !{!"branch_weights", i32 0, i32 5213}
!154 = !{!"branch_weights", i32 5134, i32 79}
!155 = !{!"branch_weights", i32 0, i32 79}
!156 = !{!"branch_weights", i32 79, i32 0}
!157 = !{!"branch_weights", i32 86853, i32 5924}
!158 = !{!"branch_weights", i32 580977, i32 151}
!159 = distinct !{!159, !79, !80}
!160 = !{!"branch_weights", i32 37, i32 1}
!161 = !{!"function_entry_count", i64 73043}
!162 = !{!"tree-ssa-ifcombine.c;same_phi_args_p"}
!163 = !{!"branch_weights", i32 1, i32 32268}
!164 = !{!98, !68, i64 44}
!165 = !{!"branch_weights", i32 0, i32 64520}
!166 = !{!167, !63, i64 24}
!167 = !{!"ssa_use_operand_d", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 24}
!168 = !{!"branch_weights", i32 40774, i32 23746}
!169 = !{!"branch_weights", i32 32268, i32 32252}
!170 = distinct !{!170, !79, !80}
!171 = !{!"function_entry_count", i64 1167}
!172 = !{!"tree-ssa-ifcombine.c;recognize_single_bit_test"}
!173 = !{!"branch_weights", i32 762, i32 405}
!174 = !{!"branch_weights", i32 0, i32 762}
!175 = !{!"branch_weights", i32 762, i32 0}
!176 = !{!"branch_weights", i32 116, i32 646}
!177 = !{!"branch_weights", i32 0, i32 646}
!178 = !{!"branch_weights", i32 646, i32 0}
!179 = !{!"branch_weights", i32 66, i32 580}
!180 = !{!"branch_weights", i32 0, i32 66}
!181 = !{!"branch_weights", i32 580, i32 66}
!182 = !{!"branch_weights", i32 580, i32 0}
!183 = !{!"branch_weights", i32 0, i32 580}
!184 = !{!"branch_weights", i32 1, i32 0}
!185 = !{!"branch_weights", i32 0, i32 580, i32 0, i32 0}
!186 = distinct !{!186, !79, !80}
!187 = !{!"branch_weights", i32 0, i32 66, i32 0, i32 0}
!188 = !{!"branch_weights", i32 66, i32 0}
!189 = !{!"function_entry_count", i64 7}
!190 = !{!"tree-ssa-ifcombine.c;get_name_for_bit_test"}
!191 = !{!"branch_weights", i32 7, i32 0}
!192 = !{!167, !63, i64 8}
!193 = !{!"branch_weights", i32 0, i32 7}
!194 = !{!"branch_weights", i32 0, i32 7, i32 0, i32 0}
!195 = !{!"function_entry_count", i64 5220}
!196 = !{!"tree-ssa-ifcombine.c;recognize_bits_test"}
!197 = !{!"branch_weights", i32 5095, i32 125}
!198 = !{!"branch_weights", i32 0, i32 5095}
!199 = !{!"branch_weights", i32 5095, i32 0}
!200 = !{!"branch_weights", i32 99, i32 4996}
!201 = !{!"branch_weights", i32 0, i32 4996}
!202 = !{!"branch_weights", i32 4996, i32 0}
!203 = !{!"branch_weights", i32 7, i32 4989}
