; ModuleID = 'tree-ssa-forwprop.c'
source_filename = "tree-ssa-forwprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"forwprop\00", align 1
@pass_forwprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_forwprop, ptr @tree_ssa_forward_propagate_single_use_vars, ptr null, ptr null, i32 0, i32 74, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_forwprop = external local_unnamed_addr global i32, align 4
@cfg_changed = internal unnamed_addr global i1 false, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"tree-ssa-forwprop.c\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"' with '\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@dump_flags = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !90 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !91
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !90 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !91
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !90 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !90 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !91
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !90 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !90 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !90 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !90 {
  %2 = load i32, ptr %0, align 8, !tbaa !105
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !90 {
  %2 = load i32, ptr %0, align 8, !tbaa !105
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !90 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !90 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !90 {
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
  br i1 %23, label %7, label %24, !llvm.loop !107

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_forwprop() #9 !prof !110 !PGOFuncName !111 {
  %1 = load i32, ptr @flag_tree_forwprop, align 4, !tbaa !106
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_forward_propagate_single_use_vars() #10 !prof !110 !PGOFuncName !112 {
  %1 = alloca i8, align 1
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 false, ptr @cfg_changed, align 1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %3053, label %17, !prof !120

17:                                               ; preds = %0
  %18 = getelementptr inbounds i8, ptr %7, i64 8
  %19 = getelementptr inbounds i8, ptr %7, i64 16
  br label %20

20:                                               ; preds = %17, %3043
  %21 = phi ptr [ %13, %17 ], [ %3046, %3043 ]
  %22 = phi i32 [ 0, %17 ], [ %3044, %3043 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !121, !noalias !122
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33, !prof !125

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !102, !noalias !122
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !126

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !127, !noalias !122
  br label %33

33:                                               ; preds = %31, %27, %20
  %34 = phi ptr [ %32, %31 ], [ null, %27 ], [ null, %20 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !126

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !129, !noalias !122
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi ptr [ %37, %36 ], [ null, %33 ]
  store ptr %39, ptr %7, align 8, !tbaa.struct !131
  store ptr %34, ptr %18, align 8, !tbaa.struct !132
  store ptr %21, ptr %19, align 8, !tbaa.struct !133
  %40 = icmp eq ptr %39, null
  br i1 %40, label %3043, label %41, !prof !134

41:                                               ; preds = %38, %3039
  %42 = phi ptr [ %3041, %3039 ], [ %39, %38 ]
  %43 = phi i32 [ %3040, %3039 ], [ %22, %38 ]
  %44 = load ptr, ptr %42, align 8, !tbaa !135
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %2162, !prof !137

48:                                               ; preds = %41
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !106
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !138
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57, !prof !139

56:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %57

57:                                               ; preds = %56, %48
  %58 = getelementptr inbounds i8, ptr %44, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !91
  %60 = load i32, ptr %44, align 8
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -9
  br i1 %63, label %77, label %64, !prof !139

64:                                               ; preds = %57
  %65 = zext nneg i32 %61 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !106
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !138
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73, !prof !139

72:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %73

73:                                               ; preds = %72, %64
  %74 = getelementptr inbounds i8, ptr %44, i64 %70
  %75 = getelementptr inbounds ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !91
  br label %77

77:                                               ; preds = %57, %73
  %78 = phi ptr [ %76, %73 ], [ null, %57 ]
  %79 = load i64, ptr %59, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %86, label %82, !prof !140

82:                                               ; preds = %77
  %83 = load ptr, ptr %7, align 8, !tbaa !141
  %84 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !143
  store ptr %85, ptr %7, align 8, !tbaa !141
  br label %3039, !llvm.loop !144

86:                                               ; preds = %77
  %87 = load i32, ptr %44, align 8
  %88 = trunc i32 %87 to i8
  switch i8 %88, label %91 [
    i8 6, label %89
    i8 1, label %89
    i8 8, label %92
  ], !prof !145

89:                                               ; preds = %86, %86
  %90 = lshr i32 %87, 16
  br label %92

91:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %92

92:                                               ; preds = %91, %89, %86
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ], [ 59, %86 ]
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !102
  %97 = icmp eq i8 %96, 3
  br i1 %97, label %98, label %118, !prof !146

98:                                               ; preds = %92
  %99 = load i32, ptr %44, align 8
  %100 = and i32 %99, 255
  %101 = add nsw i32 %100, -1
  %102 = icmp ult i32 %101, 9
  call void @llvm.assume(i1 %102)
  %103 = zext nneg i32 %100 to i64
  %104 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !106
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !138
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111, !prof !147

110:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %111

111:                                              ; preds = %110, %98
  %112 = getelementptr inbounds i8, ptr %44, i64 %108
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !91
  %115 = load i64, ptr %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = and i32 %116, 65535
  br label %118

118:                                              ; preds = %92, %111
  %119 = phi i32 [ %117, %111 ], [ %93, %92 ]
  %120 = icmp eq i32 %119, 121
  br i1 %120, label %200, label %121, !prof !148

121:                                              ; preds = %118
  %122 = load i32, ptr %44, align 8
  %123 = trunc i32 %122 to i8
  switch i8 %123, label %126 [
    i8 6, label %124
    i8 1, label %124
    i8 8, label %127
  ], !prof !149

124:                                              ; preds = %121, %121
  %125 = lshr i32 %122, 16
  br label %127

126:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %127

127:                                              ; preds = %126, %124, %121
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ], [ 59, %121 ]
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !102
  %132 = icmp eq i8 %131, 3
  br i1 %132, label %133, label %153, !prof !150

133:                                              ; preds = %127
  %134 = load i32, ptr %44, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -1
  %137 = icmp ult i32 %136, 9
  call void @llvm.assume(i1 %137)
  %138 = zext nneg i32 %135 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !106
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !138
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146, !prof !151

145:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %146

146:                                              ; preds = %145, %133
  %147 = getelementptr inbounds i8, ptr %44, i64 %143
  %148 = getelementptr inbounds ptr, ptr %147, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !91
  %150 = load i64, ptr %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 65535
  br label %153

153:                                              ; preds = %127, %146
  %154 = phi i32 [ %152, %146 ], [ %128, %127 ]
  %155 = icmp eq i32 %154, 116
  br i1 %155, label %191, label %156, !prof !152

156:                                              ; preds = %153
  %157 = load i32, ptr %44, align 8
  %158 = trunc i32 %157 to i8
  switch i8 %158, label %161 [
    i8 6, label %159
    i8 1, label %159
    i8 8, label %162
  ], !prof !153

159:                                              ; preds = %156, %156
  %160 = lshr i32 %157, 16
  br label %162

161:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %162

162:                                              ; preds = %161, %159, %156
  %163 = phi i32 [ %160, %159 ], [ 0, %161 ], [ 59, %156 ]
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !102
  %167 = icmp eq i8 %166, 3
  br i1 %167, label %168, label %188, !prof !154

168:                                              ; preds = %162
  %169 = load i32, ptr %44, align 8
  %170 = and i32 %169, 255
  %171 = add nsw i32 %170, -1
  %172 = icmp ult i32 %171, 9
  call void @llvm.assume(i1 %172)
  %173 = zext nneg i32 %170 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !106
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !138
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181, !prof !151

180:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %181

181:                                              ; preds = %180, %168
  %182 = getelementptr inbounds i8, ptr %44, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !91
  %185 = load i64, ptr %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = and i32 %186, 65535
  br label %188

188:                                              ; preds = %162, %181
  %189 = phi i32 [ %187, %181 ], [ %163, %162 ]
  %190 = icmp eq i32 %189, 113
  br i1 %190, label %191, label %213, !prof !155

191:                                              ; preds = %188, %153
  %192 = load i64, ptr %78, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 121
  br i1 %194, label %195, label %213, !prof !156

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !102
  %198 = load i64, ptr %197, align 8
  %199 = trunc i64 %198 to i16
  switch i16 %199, label %213 [
    i16 10, label %200
    i16 12, label %200
  ]

200:                                              ; preds = %195, %195, %118
  %201 = call ptr @tree_strip_nop_conversions(ptr noundef %78) #18
  %202 = call zeroext i8 @stmt_references_abnormal_ssa_name(ptr noundef %44) #18
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %209, !prof !157

204:                                              ; preds = %200
  %205 = call fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef nonnull %59, ptr noundef %201), !range !158
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207, !prof !159

207:                                              ; preds = %204
  call void @release_defs(ptr noundef %44) #18
  %208 = or i32 %43, 32768
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #18
  br label %3039

209:                                              ; preds = %204, %200
  %210 = load ptr, ptr %7, align 8, !tbaa !141
  %211 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %210, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !143
  store ptr %212, ptr %7, align 8, !tbaa !141
  br label %3039

213:                                              ; preds = %188, %195, %191
  %214 = load i32, ptr %44, align 8
  %215 = trunc i32 %214 to i8
  switch i8 %215, label %218 [
    i8 6, label %216
    i8 1, label %216
    i8 8, label %219
  ], !prof !149

216:                                              ; preds = %213, %213
  %217 = lshr i32 %214, 16
  br label %219

218:                                              ; preds = %213
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %219

219:                                              ; preds = %218, %216, %213
  %220 = phi i32 [ %217, %216 ], [ 0, %218 ], [ 59, %213 ]
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !102
  %224 = icmp eq i8 %223, 3
  br i1 %224, label %225, label %245, !prof !150

225:                                              ; preds = %219
  %226 = load i32, ptr %44, align 8
  %227 = and i32 %226, 255
  %228 = add nsw i32 %227, -1
  %229 = icmp ult i32 %228, 9
  call void @llvm.assume(i1 %229)
  %230 = zext nneg i32 %227 to i64
  %231 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !106
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !138
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238, !prof !151

237:                                              ; preds = %225
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %238

238:                                              ; preds = %237, %225
  %239 = getelementptr inbounds i8, ptr %44, i64 %235
  %240 = getelementptr inbounds ptr, ptr %239, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !91
  %242 = load i64, ptr %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = and i32 %243, 65535
  br label %245

245:                                              ; preds = %219, %238
  %246 = phi i32 [ %244, %238 ], [ %220, %219 ]
  %247 = icmp eq i32 %246, 66
  br i1 %247, label %248, label %297, !prof !160

248:                                              ; preds = %245
  %249 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %78) #18
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %297, label %251, !prof !161

251:                                              ; preds = %248
  %252 = call zeroext i8 @fold_stmt_inplace(ptr noundef %44) #18
  %253 = load i32, ptr %44, align 8
  %254 = and i32 %253, 255
  %255 = add nsw i32 %254, -10
  %256 = icmp ult i32 %255, -9
  br i1 %256, label %258, label %257

257:                                              ; preds = %251
  call void @gimple_set_modified(ptr noundef nonnull %44, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %44) #18
  br label %258

258:                                              ; preds = %251, %257
  %259 = load i32, ptr %44, align 8
  %260 = trunc i32 %259 to i8
  switch i8 %260, label %263 [
    i8 6, label %261
    i8 1, label %261
    i8 8, label %264
  ]

261:                                              ; preds = %258, %258
  %262 = lshr i32 %259, 16
  br label %264

263:                                              ; preds = %258
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %264

264:                                              ; preds = %263, %261, %258
  %265 = phi i32 [ %262, %261 ], [ 0, %263 ], [ 59, %258 ]
  %266 = zext nneg i32 %265 to i64
  %267 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !102
  %269 = icmp eq i8 %268, 3
  br i1 %269, label %270, label %290

270:                                              ; preds = %264
  %271 = load i32, ptr %44, align 8
  %272 = and i32 %271, 255
  %273 = add nsw i32 %272, -1
  %274 = icmp ult i32 %273, 9
  call void @llvm.assume(i1 %274)
  %275 = zext nneg i32 %272 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !106
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !138
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %283

283:                                              ; preds = %282, %270
  %284 = getelementptr inbounds i8, ptr %44, i64 %280
  %285 = getelementptr inbounds ptr, ptr %284, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !91
  %287 = load i64, ptr %286, align 8
  %288 = trunc i64 %287 to i32
  %289 = and i32 %288, 65535
  br label %290

290:                                              ; preds = %264, %283
  %291 = phi i32 [ %289, %283 ], [ %265, %264 ]
  %292 = icmp eq i32 %291, 66
  br i1 %292, label %293, label %3039

293:                                              ; preds = %290
  %294 = load ptr, ptr %7, align 8, !tbaa !141
  %295 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %294, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !143
  store ptr %296, ptr %7, align 8, !tbaa !141
  br label %3039

297:                                              ; preds = %248, %245
  %298 = load i32, ptr %44, align 8
  %299 = trunc i32 %298 to i8
  switch i8 %299, label %302 [
    i8 6, label %300
    i8 1, label %300
    i8 8, label %303
  ], !prof !149

300:                                              ; preds = %297, %297
  %301 = lshr i32 %298, 16
  br label %303

302:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %303

303:                                              ; preds = %302, %300, %297
  %304 = phi i32 [ %301, %300 ], [ 0, %302 ], [ 59, %297 ]
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !102
  %308 = icmp eq i8 %307, 3
  br i1 %308, label %309, label %329, !prof !150

309:                                              ; preds = %303
  %310 = load i32, ptr %44, align 8
  %311 = and i32 %310, 255
  %312 = add nsw i32 %311, -1
  %313 = icmp ult i32 %312, 9
  call void @llvm.assume(i1 %313)
  %314 = zext nneg i32 %311 to i64
  %315 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !106
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %317
  %319 = load i64, ptr %318, align 8, !tbaa !138
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %322, !prof !151

321:                                              ; preds = %309
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %322

322:                                              ; preds = %321, %309
  %323 = getelementptr inbounds i8, ptr %44, i64 %319
  %324 = getelementptr inbounds ptr, ptr %323, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !91
  %326 = load i64, ptr %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = and i32 %327, 65535
  br label %329

329:                                              ; preds = %303, %322
  %330 = phi i32 [ %328, %322 ], [ %304, %303 ]
  %331 = icmp eq i32 %330, 90
  br i1 %331, label %367, label %332, !prof !162

332:                                              ; preds = %329
  %333 = load i32, ptr %44, align 8
  %334 = trunc i32 %333 to i8
  switch i8 %334, label %337 [
    i8 6, label %335
    i8 1, label %335
    i8 8, label %338
  ], !prof !149

335:                                              ; preds = %332, %332
  %336 = lshr i32 %333, 16
  br label %338

337:                                              ; preds = %332
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %338

338:                                              ; preds = %337, %335, %332
  %339 = phi i32 [ %336, %335 ], [ 0, %337 ], [ 59, %332 ]
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !102
  %343 = icmp eq i8 %342, 3
  br i1 %343, label %344, label %364, !prof !150

344:                                              ; preds = %338
  %345 = load i32, ptr %44, align 8
  %346 = and i32 %345, 255
  %347 = add nsw i32 %346, -1
  %348 = icmp ult i32 %347, 9
  call void @llvm.assume(i1 %348)
  %349 = zext nneg i32 %346 to i64
  %350 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !106
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !138
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %357, !prof !151

356:                                              ; preds = %344
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %357

357:                                              ; preds = %356, %344
  %358 = getelementptr inbounds i8, ptr %44, i64 %354
  %359 = getelementptr inbounds ptr, ptr %358, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !91
  %361 = load i64, ptr %360, align 8
  %362 = trunc i64 %361 to i32
  %363 = and i32 %362, 65535
  br label %364

364:                                              ; preds = %338, %357
  %365 = phi i32 [ %363, %357 ], [ %339, %338 ]
  %366 = icmp eq i32 %365, 79
  br i1 %366, label %367, label %488, !prof !162

367:                                              ; preds = %364, %329
  %368 = load i64, ptr %78, align 8
  %369 = and i64 %368, 65535
  %370 = icmp eq i64 %369, 141
  br i1 %370, label %371, label %488

371:                                              ; preds = %367
  %372 = load ptr, ptr %7, align 8
  %373 = load ptr, ptr %372, align 8, !tbaa !135
  %374 = load i32, ptr %373, align 8
  %375 = and i32 %374, 255
  %376 = add nsw i32 %375, -1
  %377 = icmp ult i32 %376, 9
  call void @llvm.assume(i1 %377)
  %378 = zext nneg i32 %375 to i64
  %379 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !106
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !138
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %371
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %386

386:                                              ; preds = %385, %371
  %387 = getelementptr inbounds i8, ptr %373, i64 %383
  %388 = getelementptr inbounds ptr, ptr %387, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !91
  %390 = getelementptr inbounds %struct.tree_ssa_name, ptr %389, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !102
  %392 = load i32, ptr %391, align 8
  %393 = and i32 %392, 255
  %394 = icmp eq i32 %393, 6
  br i1 %394, label %395, label %484

395:                                              ; preds = %386
  %396 = lshr i32 %392, 16
  %397 = zext nneg i32 %396 to i64
  %398 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !102
  %400 = icmp eq i8 %399, 3
  br i1 %400, label %401, label %417

401:                                              ; preds = %395
  %402 = zext nneg i32 %393 to i64
  %403 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %402
  %404 = load i32, ptr %403, align 4, !tbaa !106
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %405
  %407 = load i64, ptr %406, align 8, !tbaa !138
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %401
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %410

410:                                              ; preds = %409, %401
  %411 = getelementptr inbounds i8, ptr %391, i64 %407
  %412 = getelementptr inbounds ptr, ptr %411, i64 1
  %413 = load ptr, ptr %412, align 8, !tbaa !91
  %414 = load i64, ptr %413, align 8
  %415 = trunc i64 %414 to i32
  %416 = and i32 %415, 65535
  br label %417

417:                                              ; preds = %410, %395
  %418 = phi i32 [ %416, %410 ], [ %396, %395 ]
  %419 = load i32, ptr %373, align 8
  %420 = trunc i32 %419 to i8
  switch i8 %420, label %423 [
    i8 6, label %421
    i8 1, label %421
    i8 8, label %424
  ]

421:                                              ; preds = %417, %417
  %422 = lshr i32 %419, 16
  br label %424

423:                                              ; preds = %417
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %424

424:                                              ; preds = %423, %421, %417
  %425 = phi i32 [ %422, %421 ], [ 0, %423 ], [ 59, %417 ]
  %426 = zext nneg i32 %425 to i64
  %427 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !102
  %429 = icmp eq i8 %428, 3
  br i1 %429, label %430, label %450

430:                                              ; preds = %424
  %431 = load i32, ptr %373, align 8
  %432 = and i32 %431, 255
  %433 = add nsw i32 %432, -1
  %434 = icmp ult i32 %433, 9
  call void @llvm.assume(i1 %434)
  %435 = zext nneg i32 %432 to i64
  %436 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !106
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %438
  %440 = load i64, ptr %439, align 8, !tbaa !138
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %430
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %443

443:                                              ; preds = %442, %430
  %444 = getelementptr inbounds i8, ptr %373, i64 %440
  %445 = getelementptr inbounds ptr, ptr %444, i64 1
  %446 = load ptr, ptr %445, align 8, !tbaa !91
  %447 = load i64, ptr %446, align 8
  %448 = trunc i64 %447 to i32
  %449 = and i32 %448, 65535
  br label %450

450:                                              ; preds = %443, %424
  %451 = phi i32 [ %449, %443 ], [ %425, %424 ]
  %452 = icmp eq i32 %418, %451
  br i1 %452, label %453, label %484

453:                                              ; preds = %450
  %454 = load i32, ptr %391, align 8
  %455 = and i32 %454, 255
  %456 = add nsw i32 %455, -10
  %457 = icmp ult i32 %456, -9
  br i1 %457, label %471, label %458

458:                                              ; preds = %453
  %459 = zext nneg i32 %455 to i64
  %460 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !106
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %462
  %464 = load i64, ptr %463, align 8, !tbaa !138
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %458
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %467

467:                                              ; preds = %466, %458
  %468 = getelementptr inbounds i8, ptr %391, i64 %464
  %469 = getelementptr inbounds ptr, ptr %468, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !91
  br label %471

471:                                              ; preds = %467, %453
  %472 = phi ptr [ %470, %467 ], [ null, %453 ]
  %473 = load i64, ptr %472, align 8
  %474 = and i64 %473, 4259839
  %475 = icmp eq i64 %474, 141
  br i1 %475, label %476, label %484

476:                                              ; preds = %471
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %7, ptr noundef nonnull %472) #18
  %477 = load ptr, ptr %7, align 8
  %478 = load ptr, ptr %477, align 8, !tbaa !135
  %479 = load i32, ptr %478, align 8
  %480 = and i32 %479, 255
  %481 = add nsw i32 %480, -10
  %482 = icmp ult i32 %481, -9
  br i1 %482, label %484, label %483

483:                                              ; preds = %476
  call void @gimple_set_modified(ptr noundef nonnull %478, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %478) #18
  br label %484

484:                                              ; preds = %386, %450, %471, %476, %483
  %485 = load ptr, ptr %7, align 8, !tbaa !141
  %486 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %485, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !143
  store ptr %487, ptr %7, align 8, !tbaa !141
  br label %3039

488:                                              ; preds = %364, %367
  %489 = load i32, ptr %44, align 8
  %490 = trunc i32 %489 to i8
  switch i8 %490, label %493 [
    i8 6, label %491
    i8 1, label %491
    i8 8, label %494
  ], !prof !149

491:                                              ; preds = %488, %488
  %492 = lshr i32 %489, 16
  br label %494

493:                                              ; preds = %488
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %494

494:                                              ; preds = %493, %491, %488
  %495 = phi i32 [ %492, %491 ], [ 0, %493 ], [ 59, %488 ]
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !102
  %499 = icmp eq i8 %498, 3
  br i1 %499, label %500, label %520, !prof !150

500:                                              ; preds = %494
  %501 = load i32, ptr %44, align 8
  %502 = and i32 %501, 255
  %503 = add nsw i32 %502, -1
  %504 = icmp ult i32 %503, 9
  call void @llvm.assume(i1 %504)
  %505 = zext nneg i32 %502 to i64
  %506 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !106
  %508 = zext i32 %507 to i64
  %509 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %508
  %510 = load i64, ptr %509, align 8, !tbaa !138
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %513, !prof !151

512:                                              ; preds = %500
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %513

513:                                              ; preds = %512, %500
  %514 = getelementptr inbounds i8, ptr %44, i64 %510
  %515 = getelementptr inbounds ptr, ptr %514, i64 1
  %516 = load ptr, ptr %515, align 8, !tbaa !91
  %517 = load i64, ptr %516, align 8
  %518 = trunc i64 %517 to i32
  %519 = and i32 %518, 65535
  br label %520

520:                                              ; preds = %494, %513
  %521 = phi i32 [ %519, %513 ], [ %495, %494 ]
  %522 = icmp eq i32 %521, 56
  br i1 %522, label %523, label %703, !prof !162

523:                                              ; preds = %520
  call void @fold_defer_overflow_warnings() #18
  %524 = load ptr, ptr %7, align 8
  %525 = load ptr, ptr %524, align 8, !tbaa !135
  %526 = getelementptr inbounds %struct.gimple_statement_base, ptr %525, i64 0, i32 2
  %527 = load i32, ptr %526, align 8, !tbaa !102
  br label %528

528:                                              ; preds = %680, %523
  %529 = phi i32 [ 0, %523 ], [ %681, %680 ]
  %530 = phi ptr [ undef, %523 ], [ %682, %680 ]
  %531 = phi ptr [ %525, %523 ], [ %683, %680 ]
  %532 = phi i32 [ undef, %523 ], [ %684, %680 ]
  %533 = load i32, ptr %531, align 8
  %534 = and i32 %533, 255
  %535 = add nsw i32 %534, -10
  %536 = icmp ult i32 %535, -9
  br i1 %536, label %550, label %537

537:                                              ; preds = %528
  %538 = zext nneg i32 %534 to i64
  %539 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %538
  %540 = load i32, ptr %539, align 4, !tbaa !106
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %541
  %543 = load i64, ptr %542, align 8, !tbaa !138
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %537
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %546

546:                                              ; preds = %545, %537
  %547 = getelementptr inbounds i8, ptr %531, i64 %543
  %548 = getelementptr inbounds ptr, ptr %547, i64 1
  %549 = load ptr, ptr %548, align 8, !tbaa !91
  br label %550

550:                                              ; preds = %546, %528
  %551 = phi ptr [ %549, %546 ], [ null, %528 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  store i8 0, ptr %5, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  store i8 0, ptr %6, align 1, !tbaa !102
  %552 = load i64, ptr %551, align 8
  %553 = and i64 %552, 65535
  %554 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %553
  %555 = load i32, ptr %554, align 4, !tbaa !106
  %556 = icmp eq i32 %555, 5
  br i1 %556, label %557, label %642

557:                                              ; preds = %550
  %558 = getelementptr inbounds %struct.tree_exp, ptr %551, i64 0, i32 3
  %559 = load ptr, ptr %558, align 8, !tbaa !102
  %560 = load i64, ptr %559, align 8
  %561 = and i64 %560, 65535
  %562 = icmp eq i64 %561, 141
  br i1 %562, label %563, label %642

563:                                              ; preds = %557
  %564 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %559, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %565 = icmp eq ptr %564, null
  br i1 %565, label %583, label %566

566:                                              ; preds = %563
  %567 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %564), !range !158
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %583, label %569

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.tree_exp, ptr %551, i64 1
  %571 = load ptr, ptr %570, align 8, !tbaa !102
  %572 = getelementptr inbounds %struct.tree_common, ptr %571, i64 0, i32 2
  %573 = load ptr, ptr %572, align 8, !tbaa !102
  %574 = call fastcc ptr @rhs_to_tree(ptr noundef %573, ptr noundef nonnull %564)
  %575 = load i64, ptr %551, align 8
  %576 = trunc i64 %575 to i32
  %577 = and i32 %576, 65535
  %578 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %579 = load i8, ptr %5, align 1, !tbaa !102
  %580 = icmp eq i8 %579, 0
  %581 = zext i1 %580 to i8
  %582 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %527, i32 noundef %577, ptr noundef %578, ptr noundef %574, ptr noundef %571, i8 noundef zeroext %581)
  br label %583

583:                                              ; preds = %569, %566, %563
  %584 = phi ptr [ %582, %569 ], [ null, %566 ], [ null, %563 ]
  %585 = phi ptr [ %574, %569 ], [ null, %566 ], [ null, %563 ]
  %586 = icmp eq ptr %584, null
  br i1 %586, label %587, label %617

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.tree_exp, ptr %551, i64 1
  %589 = load ptr, ptr %588, align 8, !tbaa !102
  %590 = load i64, ptr %589, align 8
  %591 = and i64 %590, 65535
  %592 = icmp eq i64 %591, 141
  br i1 %592, label %593, label %617

593:                                              ; preds = %587
  %594 = load ptr, ptr %558, align 8, !tbaa !102
  %595 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %589, i8 noundef zeroext 0, ptr noundef nonnull %6)
  %596 = icmp eq ptr %595, null
  br i1 %596, label %612, label %597

597:                                              ; preds = %593
  %598 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %595), !range !158
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %612, label %600

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.tree_common, ptr %594, i64 0, i32 2
  %602 = load ptr, ptr %601, align 8, !tbaa !102
  %603 = call fastcc ptr @rhs_to_tree(ptr noundef %602, ptr noundef nonnull %595)
  %604 = load i64, ptr %551, align 8
  %605 = trunc i64 %604 to i32
  %606 = and i32 %605, 65535
  %607 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %608 = load i8, ptr %6, align 1, !tbaa !102
  %609 = icmp eq i8 %608, 0
  %610 = zext i1 %609 to i8
  %611 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %527, i32 noundef %606, ptr noundef %607, ptr noundef %594, ptr noundef %603, i8 noundef zeroext %610)
  br label %612

612:                                              ; preds = %600, %597, %593
  %613 = phi ptr [ %611, %600 ], [ null, %597 ], [ null, %593 ]
  %614 = phi ptr [ %603, %600 ], [ null, %597 ], [ null, %593 ]
  %615 = phi i32 [ %532, %600 ], [ %529, %597 ], [ %529, %593 ]
  %616 = phi i1 [ true, %600 ], [ false, %597 ], [ false, %593 ]
  br i1 %616, label %617, label %680

617:                                              ; preds = %612, %587, %583
  %618 = phi ptr [ %613, %612 ], [ null, %587 ], [ %584, %583 ]
  %619 = phi ptr [ %589, %612 ], [ %559, %587 ], [ %559, %583 ]
  %620 = phi ptr [ %614, %612 ], [ null, %587 ], [ null, %583 ]
  %621 = phi i32 [ %615, %612 ], [ %532, %587 ], [ %532, %583 ]
  %622 = icmp eq ptr %618, null
  %623 = icmp ne ptr %585, null
  %624 = and i1 %623, %622
  %625 = icmp ne ptr %620, null
  %626 = and i1 %624, %625
  br i1 %626, label %627, label %650

627:                                              ; preds = %617
  %628 = load i64, ptr %551, align 8
  %629 = trunc i64 %628 to i32
  %630 = and i32 %629, 65535
  %631 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %632 = getelementptr inbounds %struct.tree_common, ptr %585, i64 0, i32 2
  %633 = load ptr, ptr %632, align 8, !tbaa !102
  %634 = call ptr @fold_convert_loc(i32 noundef %527, ptr noundef %633, ptr noundef nonnull %620) #18
  %635 = load i8, ptr %5, align 1, !tbaa !102
  %636 = icmp eq i8 %635, 0
  %637 = load i8, ptr %6, align 1
  %638 = icmp eq i8 %637, 0
  %639 = select i1 %636, i1 true, i1 %638
  %640 = zext i1 %639 to i8
  %641 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %527, i32 noundef %630, ptr noundef %631, ptr noundef nonnull %585, ptr noundef %634, i8 noundef zeroext %640)
  br label %650

642:                                              ; preds = %557, %550
  %643 = icmp eq i64 %553, 141
  br i1 %643, label %644, label %650

644:                                              ; preds = %642
  %645 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %551, i8 noundef zeroext 1, ptr noundef null)
  %646 = icmp eq ptr %645, null
  br i1 %646, label %647, label %680

647:                                              ; preds = %644
  %648 = call fastcc zeroext i8 @can_propagate_from(ptr noundef null), !range !158
  %649 = icmp eq i8 %648, 0
  call void @llvm.assume(i1 %649)
  br label %680

650:                                              ; preds = %642, %627, %617
  %651 = phi ptr [ %641, %627 ], [ %618, %617 ], [ null, %642 ]
  %652 = phi ptr [ %619, %627 ], [ %619, %617 ], [ %530, %642 ]
  %653 = phi i32 [ %621, %627 ], [ %621, %617 ], [ %532, %642 ]
  %654 = icmp eq ptr %651, null
  br i1 %654, label %680, label %655

655:                                              ; preds = %650
  %656 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %657 = icmp eq ptr %656, null
  br i1 %657, label %666, label %658

658:                                              ; preds = %655
  %659 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr nonnull %656)
  %660 = load ptr, ptr @dump_file, align 8, !tbaa !91
  call void @print_generic_expr(ptr noundef %660, ptr noundef nonnull %551, i32 noundef 0) #18
  %661 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %662 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %661)
  %663 = load ptr, ptr @dump_file, align 8, !tbaa !91
  call void @print_generic_expr(ptr noundef %663, ptr noundef nonnull %651, i32 noundef 0) #18
  %664 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %665 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %664)
  br label %666

666:                                              ; preds = %658, %655
  %667 = call ptr @unshare_expr(ptr noundef nonnull %651) #18
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %7, ptr noundef %667) #18
  %668 = load ptr, ptr %7, align 8
  %669 = load ptr, ptr %668, align 8, !tbaa !135
  %670 = load i32, ptr %669, align 8
  %671 = and i32 %670, 255
  %672 = add nsw i32 %671, -10
  %673 = icmp ult i32 %672, -9
  br i1 %673, label %675, label %674

674:                                              ; preds = %666
  call void @gimple_set_modified(ptr noundef nonnull %669, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %669) #18
  br label %675

675:                                              ; preds = %674, %666
  call fastcc void @remove_prop_source_from_use(ptr noundef %652, ptr noundef null)
  %676 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %651) #18
  %677 = icmp eq i8 %676, 0
  %678 = call i32 @llvm.umax.i32(i32 %529, i32 1)
  %679 = select i1 %677, i32 %678, i32 2
  br label %680

680:                                              ; preds = %650, %612, %647, %675, %644
  %681 = phi i32 [ %679, %675 ], [ %529, %647 ], [ %529, %644 ], [ %529, %612 ], [ %529, %650 ]
  %682 = phi ptr [ %652, %675 ], [ %551, %647 ], [ %551, %644 ], [ %589, %612 ], [ %652, %650 ]
  %683 = phi ptr [ %669, %675 ], [ %531, %647 ], [ %531, %644 ], [ %531, %612 ], [ %531, %650 ]
  %684 = phi i32 [ %653, %675 ], [ %529, %647 ], [ %529, %644 ], [ %615, %612 ], [ %653, %650 ]
  %685 = phi i32 [ 3, %675 ], [ 1, %647 ], [ 1, %644 ], [ 1, %612 ], [ 2, %650 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  switch i32 %685, label %687 [
    i32 3, label %528
    i32 2, label %686
  ], !llvm.loop !163

686:                                              ; preds = %680
  br label %687

687:                                              ; preds = %680, %686
  %688 = phi i32 [ %681, %686 ], [ %684, %680 ]
  %689 = load ptr, ptr %7, align 8
  %690 = load ptr, ptr %689, align 8, !tbaa !135
  %691 = icmp eq i32 %688, 2
  br i1 %691, label %692, label %693

692:                                              ; preds = %687
  store i1 true, ptr @cfg_changed, align 1
  br label %693

693:                                              ; preds = %692, %687
  %694 = load i64, ptr %78, align 8
  %695 = and i64 %694, 8388608
  %696 = icmp eq i64 %695, 0
  %697 = icmp ne i32 %688, 0
  %698 = and i1 %697, %696
  %699 = zext i1 %698 to i8
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %699, ptr noundef %690, i32 noundef 2) #18
  %700 = load ptr, ptr %7, align 8, !tbaa !141
  %701 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %700, i64 0, i32 2
  %702 = load ptr, ptr %701, align 8, !tbaa !143
  store ptr %702, ptr %7, align 8, !tbaa !141
  br label %3039

703:                                              ; preds = %520
  %704 = load i32, ptr %44, align 8
  %705 = trunc i32 %704 to i8
  switch i8 %705, label %708 [
    i8 6, label %706
    i8 1, label %706
    i8 8, label %709
  ], !prof !149

706:                                              ; preds = %703, %703
  %707 = lshr i32 %704, 16
  br label %709

708:                                              ; preds = %703
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %709

709:                                              ; preds = %708, %706, %703
  %710 = phi i32 [ %707, %706 ], [ 0, %708 ], [ 59, %703 ]
  %711 = zext nneg i32 %710 to i64
  %712 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !102
  %714 = icmp eq i8 %713, 3
  br i1 %714, label %715, label %735, !prof !150

715:                                              ; preds = %709
  %716 = load i32, ptr %44, align 8
  %717 = and i32 %716, 255
  %718 = add nsw i32 %717, -1
  %719 = icmp ult i32 %718, 9
  call void @llvm.assume(i1 %719)
  %720 = zext nneg i32 %717 to i64
  %721 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %720
  %722 = load i32, ptr %721, align 4, !tbaa !106
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %723
  %725 = load i64, ptr %724, align 8, !tbaa !138
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %727, label %728, !prof !151

727:                                              ; preds = %715
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %728

728:                                              ; preds = %727, %715
  %729 = getelementptr inbounds i8, ptr %44, i64 %725
  %730 = getelementptr inbounds ptr, ptr %729, i64 1
  %731 = load ptr, ptr %730, align 8, !tbaa !91
  %732 = load i64, ptr %731, align 8
  %733 = trunc i64 %732 to i32
  %734 = and i32 %733, 65535
  br label %735

735:                                              ; preds = %709, %728
  %736 = phi i32 [ %734, %728 ], [ %710, %709 ]
  %737 = zext nneg i32 %736 to i64
  %738 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %737
  %739 = load i32, ptr %738, align 4, !tbaa !106
  %740 = icmp eq i32 %739, 5
  %741 = load i32, ptr %44, align 8
  br i1 %740, label %742, label %1968, !prof !164

742:                                              ; preds = %735
  %743 = and i32 %741, 255
  %744 = add nsw i32 %743, -10
  %745 = icmp ult i32 %744, -9
  br i1 %745, label %758, label %746, !prof !165

746:                                              ; preds = %742
  %747 = zext nneg i32 %743 to i64
  %748 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %747
  %749 = load i32, ptr %748, align 4, !tbaa !106
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %750
  %752 = load i64, ptr %751, align 8, !tbaa !138
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %754, label %755, !prof !165

754:                                              ; preds = %746
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %755

755:                                              ; preds = %754, %746
  %756 = getelementptr inbounds i8, ptr %44, i64 %752
  %757 = load ptr, ptr %756, align 8, !tbaa !91
  br label %758

758:                                              ; preds = %755, %742
  %759 = phi ptr [ %757, %755 ], [ null, %742 ]
  %760 = load i32, ptr %44, align 8
  %761 = and i32 %760, 255
  %762 = add nsw i32 %761, -1
  %763 = icmp ult i32 %762, 9
  call void @llvm.assume(i1 %763)
  %764 = zext nneg i32 %761 to i64
  %765 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !106
  %767 = zext i32 %766 to i64
  %768 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %767
  %769 = load i64, ptr %768, align 8, !tbaa !138
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %772, !prof !165

771:                                              ; preds = %758
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %772

772:                                              ; preds = %771, %758
  %773 = getelementptr inbounds i8, ptr %44, i64 %769
  %774 = getelementptr inbounds ptr, ptr %773, i64 1
  %775 = load ptr, ptr %774, align 8, !tbaa !91
  %776 = load i64, ptr %775, align 8
  %777 = and i64 %776, 65535
  %778 = icmp eq i64 %777, 141
  br i1 %778, label %779, label %799, !prof !166

779:                                              ; preds = %772
  %780 = load i32, ptr %44, align 8
  %781 = and i32 %780, 255
  %782 = add nsw i32 %781, -1
  %783 = icmp ult i32 %782, 9
  call void @llvm.assume(i1 %783)
  %784 = zext nneg i32 %781 to i64
  %785 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %784
  %786 = load i32, ptr %785, align 4, !tbaa !106
  %787 = zext i32 %786 to i64
  %788 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %787
  %789 = load i64, ptr %788, align 8, !tbaa !138
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %791, label %792, !prof !165

791:                                              ; preds = %779
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %792

792:                                              ; preds = %791, %779
  %793 = getelementptr inbounds i8, ptr %44, i64 %789
  %794 = getelementptr inbounds ptr, ptr %793, i64 1
  %795 = load ptr, ptr %794, align 8, !tbaa !91
  %796 = load i64, ptr %795, align 8
  %797 = and i64 %796, 4194304
  %798 = icmp eq i64 %797, 0
  br i1 %798, label %799, label %1964, !prof !166

799:                                              ; preds = %792, %772
  %800 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 3
  %801 = load i32, ptr %800, align 4, !tbaa !102
  %802 = icmp ugt i32 %801, 2
  call void @llvm.assume(i1 %802)
  %803 = load i32, ptr %44, align 8
  %804 = and i32 %803, 255
  %805 = add nsw i32 %804, -1
  %806 = icmp ult i32 %805, 9
  call void @llvm.assume(i1 %806)
  %807 = zext nneg i32 %804 to i64
  %808 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %807
  %809 = load i32, ptr %808, align 4, !tbaa !106
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %810
  %812 = load i64, ptr %811, align 8, !tbaa !138
  %813 = icmp eq i64 %812, 0
  br i1 %813, label %814, label %815, !prof !165

814:                                              ; preds = %799
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %815

815:                                              ; preds = %814, %799
  %816 = getelementptr inbounds i8, ptr %44, i64 %812
  %817 = getelementptr inbounds ptr, ptr %816, i64 2
  %818 = load ptr, ptr %817, align 8, !tbaa !91
  %819 = load i64, ptr %818, align 8
  %820 = and i64 %819, 65535
  %821 = icmp eq i64 %820, 141
  br i1 %821, label %822, label %844, !prof !167

822:                                              ; preds = %815
  %823 = load i32, ptr %800, align 4, !tbaa !102
  %824 = icmp ugt i32 %823, 2
  call void @llvm.assume(i1 %824)
  %825 = load i32, ptr %44, align 8
  %826 = and i32 %825, 255
  %827 = add nsw i32 %826, -1
  %828 = icmp ult i32 %827, 9
  call void @llvm.assume(i1 %828)
  %829 = zext nneg i32 %826 to i64
  %830 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !106
  %832 = zext i32 %831 to i64
  %833 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %832
  %834 = load i64, ptr %833, align 8, !tbaa !138
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %837, !prof !168

836:                                              ; preds = %822
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %837

837:                                              ; preds = %836, %822
  %838 = getelementptr inbounds i8, ptr %44, i64 %834
  %839 = getelementptr inbounds ptr, ptr %838, i64 2
  %840 = load ptr, ptr %839, align 8, !tbaa !91
  %841 = load i64, ptr %840, align 8
  %842 = and i64 %841, 4194304
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %844, label %1964, !prof !169

844:                                              ; preds = %837, %815
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  br label %845

845:                                              ; preds = %915, %844
  %846 = phi ptr [ %759, %844 ], [ %916, %915 ]
  %847 = getelementptr inbounds %struct.tree_ssa_name, ptr %846, i64 0, i32 5
  %848 = getelementptr inbounds %struct.tree_ssa_name, ptr %846, i64 0, i32 5, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !170
  %850 = icmp eq ptr %847, %849
  br i1 %850, label %851, label %852, !prof !165

851:                                              ; preds = %863, %856, %845
  store ptr null, ptr %2, align 8, !tbaa !91
  store ptr null, ptr %3, align 8, !tbaa !91
  br label %868

852:                                              ; preds = %845
  %853 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %849, i64 0, i32 1
  %854 = load ptr, ptr %853, align 8, !tbaa !170
  %855 = icmp eq ptr %847, %854
  br i1 %855, label %856, label %863, !prof !166

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %849, i64 0, i32 2
  %858 = load ptr, ptr %857, align 8, !tbaa !102
  %859 = load i32, ptr %858, align 8
  %860 = and i32 %859, 255
  %861 = icmp eq i32 %860, 2
  br i1 %861, label %851, label %862, !prof !165

862:                                              ; preds = %856
  store ptr %849, ptr %2, align 8, !tbaa !91
  store ptr %858, ptr %3, align 8, !tbaa !91
  br label %868

863:                                              ; preds = %852
  %864 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !106
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %851, label %866

866:                                              ; preds = %863
  %867 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %847, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  br label %868

868:                                              ; preds = %866, %862, %851
  %869 = phi i8 [ 0, %851 ], [ 1, %862 ], [ %867, %866 ]
  %870 = icmp eq i8 %869, 0
  br i1 %870, label %919, label %871, !prof !165

871:                                              ; preds = %868
  %872 = load ptr, ptr %3, align 8, !tbaa !91
  %873 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %872) #18
  %874 = icmp eq i8 %873, 0
  br i1 %874, label %917, label %875, !prof !166

875:                                              ; preds = %871
  %876 = load ptr, ptr %3, align 8, !tbaa !91
  %877 = load i32, ptr %876, align 8
  %878 = and i32 %877, 255
  %879 = add nsw i32 %878, -10
  %880 = icmp ult i32 %879, -9
  br i1 %880, label %894, label %881

881:                                              ; preds = %875
  %882 = zext nneg i32 %878 to i64
  %883 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %882
  %884 = load i32, ptr %883, align 4, !tbaa !106
  %885 = zext i32 %884 to i64
  %886 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %885
  %887 = load i64, ptr %886, align 8, !tbaa !138
  %888 = icmp eq i64 %887, 0
  br i1 %888, label %889, label %890

889:                                              ; preds = %881
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %890

890:                                              ; preds = %889, %881
  %891 = getelementptr inbounds i8, ptr %876, i64 %887
  %892 = getelementptr inbounds ptr, ptr %891, i64 1
  %893 = load ptr, ptr %892, align 8, !tbaa !91
  br label %894

894:                                              ; preds = %890, %875
  %895 = phi ptr [ %893, %890 ], [ null, %875 ]
  %896 = icmp eq ptr %895, %846
  br i1 %896, label %897, label %917

897:                                              ; preds = %894
  %898 = load ptr, ptr %3, align 8, !tbaa !91
  %899 = load i32, ptr %898, align 8
  %900 = and i32 %899, 255
  %901 = add nsw i32 %900, -10
  %902 = icmp ult i32 %901, -9
  br i1 %902, label %915, label %903

903:                                              ; preds = %897
  %904 = zext nneg i32 %900 to i64
  %905 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %904
  %906 = load i32, ptr %905, align 4, !tbaa !106
  %907 = zext i32 %906 to i64
  %908 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %907
  %909 = load i64, ptr %908, align 8, !tbaa !138
  %910 = icmp eq i64 %909, 0
  br i1 %910, label %911, label %912

911:                                              ; preds = %903
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %912

912:                                              ; preds = %911, %903
  %913 = getelementptr inbounds i8, ptr %898, i64 %909
  %914 = load ptr, ptr %913, align 8, !tbaa !91
  br label %915

915:                                              ; preds = %912, %897
  %916 = phi ptr [ %914, %912 ], [ null, %897 ]
  br label %845, !llvm.loop !172

917:                                              ; preds = %894, %871
  %918 = load ptr, ptr %3, align 8, !tbaa !91
  br label %919

919:                                              ; preds = %868, %917
  %920 = phi ptr [ %846, %917 ], [ %759, %868 ]
  %921 = phi ptr [ %918, %917 ], [ null, %868 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %922 = icmp eq ptr %921, null
  br i1 %922, label %1964, label %923, !prof !165

923:                                              ; preds = %919
  %924 = load i32, ptr %921, align 8
  %925 = and i32 %924, 255
  %926 = icmp eq i32 %925, 6
  br i1 %926, label %927, label %1964, !prof !173

927:                                              ; preds = %923
  %928 = lshr i32 %924, 16
  %929 = zext nneg i32 %928 to i64
  %930 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %929
  %931 = load i8, ptr %930, align 1, !tbaa !102
  %932 = icmp eq i8 %931, 3
  br i1 %932, label %933, label %949, !prof !174

933:                                              ; preds = %927
  %934 = zext nneg i32 %925 to i64
  %935 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %934
  %936 = load i32, ptr %935, align 4, !tbaa !106
  %937 = zext i32 %936 to i64
  %938 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %937
  %939 = load i64, ptr %938, align 8, !tbaa !138
  %940 = icmp eq i64 %939, 0
  br i1 %940, label %941, label %942

941:                                              ; preds = %933
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %942

942:                                              ; preds = %941, %933
  %943 = getelementptr inbounds i8, ptr %921, i64 %939
  %944 = getelementptr inbounds ptr, ptr %943, i64 1
  %945 = load ptr, ptr %944, align 8, !tbaa !91
  %946 = load i64, ptr %945, align 8
  %947 = trunc i64 %946 to i32
  %948 = and i32 %947, 65535
  br label %949

949:                                              ; preds = %942, %927
  %950 = phi i32 [ %948, %942 ], [ %928, %927 ]
  %951 = icmp eq i32 %950, 116
  br i1 %951, label %1060, label %952, !prof !174

952:                                              ; preds = %949
  %953 = load i32, ptr %921, align 8
  %954 = trunc i32 %953 to i8
  switch i8 %954, label %957 [
    i8 6, label %955
    i8 1, label %955
    i8 8, label %958
  ], !prof !175

955:                                              ; preds = %952, %952
  %956 = lshr i32 %953, 16
  br label %958

957:                                              ; preds = %952
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %958

958:                                              ; preds = %957, %955, %952
  %959 = phi i32 [ %956, %955 ], [ 0, %957 ], [ 59, %952 ]
  %960 = zext nneg i32 %959 to i64
  %961 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !102
  %963 = icmp eq i8 %962, 3
  br i1 %963, label %964, label %984, !prof !174

964:                                              ; preds = %958
  %965 = load i32, ptr %921, align 8
  %966 = and i32 %965, 255
  %967 = add nsw i32 %966, -1
  %968 = icmp ult i32 %967, 9
  call void @llvm.assume(i1 %968)
  %969 = zext nneg i32 %966 to i64
  %970 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %969
  %971 = load i32, ptr %970, align 4, !tbaa !106
  %972 = zext i32 %971 to i64
  %973 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %972
  %974 = load i64, ptr %973, align 8, !tbaa !138
  %975 = icmp eq i64 %974, 0
  br i1 %975, label %976, label %977

976:                                              ; preds = %964
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %977

977:                                              ; preds = %976, %964
  %978 = getelementptr inbounds i8, ptr %921, i64 %974
  %979 = getelementptr inbounds ptr, ptr %978, i64 1
  %980 = load ptr, ptr %979, align 8, !tbaa !91
  %981 = load i64, ptr %980, align 8
  %982 = trunc i64 %981 to i32
  %983 = and i32 %982, 65535
  br label %984

984:                                              ; preds = %977, %958
  %985 = phi i32 [ %983, %977 ], [ %959, %958 ]
  %986 = icmp eq i32 %985, 113
  br i1 %986, label %1060, label %987, !prof !176

987:                                              ; preds = %984
  %988 = load i32, ptr %921, align 8
  %989 = trunc i32 %988 to i8
  switch i8 %989, label %992 [
    i8 6, label %990
    i8 1, label %990
    i8 8, label %993
  ], !prof !177

990:                                              ; preds = %987, %987
  %991 = lshr i32 %988, 16
  br label %993

992:                                              ; preds = %987
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %993

993:                                              ; preds = %992, %990, %987
  %994 = phi i32 [ %991, %990 ], [ 0, %992 ], [ 59, %987 ]
  %995 = zext nneg i32 %994 to i64
  %996 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %995
  %997 = load i8, ptr %996, align 1, !tbaa !102
  %998 = icmp eq i8 %997, 3
  br i1 %998, label %999, label %1019, !prof !178

999:                                              ; preds = %993
  %1000 = load i32, ptr %921, align 8
  %1001 = and i32 %1000, 255
  %1002 = add nsw i32 %1001, -1
  %1003 = icmp ult i32 %1002, 9
  call void @llvm.assume(i1 %1003)
  %1004 = zext nneg i32 %1001 to i64
  %1005 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1004
  %1006 = load i32, ptr %1005, align 4, !tbaa !106
  %1007 = zext i32 %1006 to i64
  %1008 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1007
  %1009 = load i64, ptr %1008, align 8, !tbaa !138
  %1010 = icmp eq i64 %1009, 0
  br i1 %1010, label %1011, label %1012

1011:                                             ; preds = %999
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1012

1012:                                             ; preds = %1011, %999
  %1013 = getelementptr inbounds i8, ptr %921, i64 %1009
  %1014 = getelementptr inbounds ptr, ptr %1013, i64 1
  %1015 = load ptr, ptr %1014, align 8, !tbaa !91
  %1016 = load i64, ptr %1015, align 8
  %1017 = trunc i64 %1016 to i32
  %1018 = and i32 %1017, 65535
  br label %1019

1019:                                             ; preds = %1012, %993
  %1020 = phi i32 [ %1018, %1012 ], [ %994, %993 ]
  %1021 = zext nneg i32 %1020 to i64
  %1022 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1021
  %1023 = load i32, ptr %1022, align 4, !tbaa !106
  %1024 = icmp eq i32 %1023, 5
  br i1 %1024, label %1060, label %1025, !prof !179

1025:                                             ; preds = %1019
  %1026 = load i32, ptr %921, align 8
  %1027 = trunc i32 %1026 to i8
  switch i8 %1027, label %1030 [
    i8 6, label %1028
    i8 1, label %1028
    i8 8, label %1031
  ], !prof !180

1028:                                             ; preds = %1025, %1025
  %1029 = lshr i32 %1026, 16
  br label %1031

1030:                                             ; preds = %1025
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1031

1031:                                             ; preds = %1030, %1028, %1025
  %1032 = phi i32 [ %1029, %1028 ], [ 0, %1030 ], [ 59, %1025 ]
  %1033 = zext nneg i32 %1032 to i64
  %1034 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1033
  %1035 = load i8, ptr %1034, align 1, !tbaa !102
  %1036 = icmp eq i8 %1035, 3
  br i1 %1036, label %1037, label %1057, !prof !181

1037:                                             ; preds = %1031
  %1038 = load i32, ptr %921, align 8
  %1039 = and i32 %1038, 255
  %1040 = add nsw i32 %1039, -1
  %1041 = icmp ult i32 %1040, 9
  call void @llvm.assume(i1 %1041)
  %1042 = zext nneg i32 %1039 to i64
  %1043 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !106
  %1045 = zext i32 %1044 to i64
  %1046 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1045
  %1047 = load i64, ptr %1046, align 8, !tbaa !138
  %1048 = icmp eq i64 %1047, 0
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1037
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1050

1050:                                             ; preds = %1049, %1037
  %1051 = getelementptr inbounds i8, ptr %921, i64 %1047
  %1052 = getelementptr inbounds ptr, ptr %1051, i64 1
  %1053 = load ptr, ptr %1052, align 8, !tbaa !91
  %1054 = load i64, ptr %1053, align 8
  %1055 = trunc i64 %1054 to i32
  %1056 = and i32 %1055, 65535
  br label %1057

1057:                                             ; preds = %1050, %1031
  %1058 = phi i32 [ %1056, %1050 ], [ %1032, %1031 ]
  %1059 = icmp eq i32 %1058, 96
  br i1 %1059, label %1060, label %1964, !prof !181

1060:                                             ; preds = %1057, %1019, %984, %949
  %1061 = load i32, ptr %921, align 8
  %1062 = and i32 %1061, 255
  %1063 = add nsw i32 %1062, -1
  %1064 = icmp ult i32 %1063, 9
  call void @llvm.assume(i1 %1064)
  %1065 = zext nneg i32 %1062 to i64
  %1066 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1065
  %1067 = load i32, ptr %1066, align 4, !tbaa !106
  %1068 = zext i32 %1067 to i64
  %1069 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1068
  %1070 = load i64, ptr %1069, align 8, !tbaa !138
  %1071 = icmp eq i64 %1070, 0
  br i1 %1071, label %1072, label %1073, !prof !182

1072:                                             ; preds = %1060
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1073

1073:                                             ; preds = %1072, %1060
  %1074 = getelementptr inbounds i8, ptr %921, i64 %1070
  %1075 = load ptr, ptr %1074, align 8, !tbaa !91
  %1076 = getelementptr inbounds %struct.tree_common, ptr %1075, i64 0, i32 2
  %1077 = load ptr, ptr %1076, align 8, !tbaa !102
  %1078 = load i64, ptr %1077, align 8
  %1079 = and i64 %1078, 65535
  %1080 = icmp eq i64 %1079, 6
  br i1 %1080, label %1123, label %1081, !prof !183

1081:                                             ; preds = %1073
  %1082 = load i32, ptr %921, align 8
  %1083 = and i32 %1082, 255
  %1084 = add nsw i32 %1083, -1
  %1085 = icmp ult i32 %1084, 9
  call void @llvm.assume(i1 %1085)
  %1086 = zext nneg i32 %1083 to i64
  %1087 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1086
  %1088 = load i32, ptr %1087, align 4, !tbaa !106
  %1089 = zext i32 %1088 to i64
  %1090 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1089
  %1091 = load i64, ptr %1090, align 8, !tbaa !138
  %1092 = icmp eq i64 %1091, 0
  br i1 %1092, label %1093, label %1094, !prof !184

1093:                                             ; preds = %1081
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1094

1094:                                             ; preds = %1093, %1081
  %1095 = getelementptr inbounds i8, ptr %921, i64 %1091
  %1096 = load ptr, ptr %1095, align 8, !tbaa !91
  %1097 = getelementptr inbounds %struct.tree_common, ptr %1096, i64 0, i32 2
  %1098 = load ptr, ptr %1097, align 8, !tbaa !102
  %1099 = load i64, ptr %1098, align 8
  %1100 = and i64 %1099, 65535
  %1101 = icmp eq i64 %1100, 7
  br i1 %1101, label %1123, label %1102, !prof !184

1102:                                             ; preds = %1094
  %1103 = load i32, ptr %921, align 8
  %1104 = and i32 %1103, 255
  %1105 = add nsw i32 %1104, -1
  %1106 = icmp ult i32 %1105, 9
  call void @llvm.assume(i1 %1106)
  %1107 = zext nneg i32 %1104 to i64
  %1108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1107
  %1109 = load i32, ptr %1108, align 4, !tbaa !106
  %1110 = zext i32 %1109 to i64
  %1111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1110
  %1112 = load i64, ptr %1111, align 8, !tbaa !138
  %1113 = icmp eq i64 %1112, 0
  br i1 %1113, label %1114, label %1115, !prof !184

1114:                                             ; preds = %1102
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1115

1115:                                             ; preds = %1114, %1102
  %1116 = getelementptr inbounds i8, ptr %921, i64 %1112
  %1117 = load ptr, ptr %1116, align 8, !tbaa !91
  %1118 = getelementptr inbounds %struct.tree_common, ptr %1117, i64 0, i32 2
  %1119 = load ptr, ptr %1118, align 8, !tbaa !102
  %1120 = load i64, ptr %1119, align 8
  %1121 = and i64 %1120, 65535
  %1122 = icmp eq i64 %1121, 8
  br i1 %1122, label %1123, label %1964, !prof !185

1123:                                             ; preds = %1115, %1094, %1073
  %1124 = load i32, ptr %921, align 8
  %1125 = and i32 %1124, 255
  %1126 = add nsw i32 %1125, -10
  %1127 = icmp ult i32 %1126, -9
  br i1 %1127, label %1140, label %1128, !prof !182

1128:                                             ; preds = %1123
  %1129 = zext nneg i32 %1125 to i64
  %1130 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1129
  %1131 = load i32, ptr %1130, align 4, !tbaa !106
  %1132 = zext i32 %1131 to i64
  %1133 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1132
  %1134 = load i64, ptr %1133, align 8, !tbaa !138
  %1135 = icmp eq i64 %1134, 0
  br i1 %1135, label %1136, label %1137, !prof !182

1136:                                             ; preds = %1128
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1137

1137:                                             ; preds = %1136, %1128
  %1138 = getelementptr inbounds i8, ptr %921, i64 %1134
  %1139 = load ptr, ptr %1138, align 8, !tbaa !91
  br label %1140

1140:                                             ; preds = %1137, %1123
  %1141 = phi ptr [ %1139, %1137 ], [ null, %1123 ]
  %1142 = load i32, ptr %921, align 8
  %1143 = trunc i32 %1142 to i8
  switch i8 %1143, label %1146 [
    i8 6, label %1144
    i8 1, label %1144
    i8 8, label %1147
  ], !prof !186

1144:                                             ; preds = %1140, %1140
  %1145 = lshr i32 %1142, 16
  br label %1147

1146:                                             ; preds = %1140
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1147

1147:                                             ; preds = %1146, %1144, %1140
  %1148 = phi i32 [ %1145, %1144 ], [ 0, %1146 ], [ 59, %1140 ]
  %1149 = zext nneg i32 %1148 to i64
  %1150 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1149
  %1151 = load i8, ptr %1150, align 1, !tbaa !102
  %1152 = icmp eq i8 %1151, 3
  br i1 %1152, label %1153, label %1173, !prof !182

1153:                                             ; preds = %1147
  %1154 = load i32, ptr %921, align 8
  %1155 = and i32 %1154, 255
  %1156 = add nsw i32 %1155, -1
  %1157 = icmp ult i32 %1156, 9
  call void @llvm.assume(i1 %1157)
  %1158 = zext nneg i32 %1155 to i64
  %1159 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1158
  %1160 = load i32, ptr %1159, align 4, !tbaa !106
  %1161 = zext i32 %1160 to i64
  %1162 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1161
  %1163 = load i64, ptr %1162, align 8, !tbaa !138
  %1164 = icmp eq i64 %1163, 0
  br i1 %1164, label %1165, label %1166

1165:                                             ; preds = %1153
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1166

1166:                                             ; preds = %1165, %1153
  %1167 = getelementptr inbounds i8, ptr %921, i64 %1163
  %1168 = getelementptr inbounds ptr, ptr %1167, i64 1
  %1169 = load ptr, ptr %1168, align 8, !tbaa !91
  %1170 = load i64, ptr %1169, align 8
  %1171 = trunc i64 %1170 to i32
  %1172 = and i32 %1171, 65535
  br label %1173

1173:                                             ; preds = %1166, %1147
  %1174 = phi i32 [ %1172, %1166 ], [ %1148, %1147 ]
  %1175 = icmp eq i32 %1174, 116
  br i1 %1175, label %1211, label %1176, !prof !182

1176:                                             ; preds = %1173
  %1177 = load i32, ptr %921, align 8
  %1178 = trunc i32 %1177 to i8
  switch i8 %1178, label %1181 [
    i8 6, label %1179
    i8 1, label %1179
    i8 8, label %1182
  ], !prof !186

1179:                                             ; preds = %1176, %1176
  %1180 = lshr i32 %1177, 16
  br label %1182

1181:                                             ; preds = %1176
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1182

1182:                                             ; preds = %1181, %1179, %1176
  %1183 = phi i32 [ %1180, %1179 ], [ 0, %1181 ], [ 59, %1176 ]
  %1184 = zext nneg i32 %1183 to i64
  %1185 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1184
  %1186 = load i8, ptr %1185, align 1, !tbaa !102
  %1187 = icmp eq i8 %1186, 3
  br i1 %1187, label %1188, label %1208, !prof !182

1188:                                             ; preds = %1182
  %1189 = load i32, ptr %921, align 8
  %1190 = and i32 %1189, 255
  %1191 = add nsw i32 %1190, -1
  %1192 = icmp ult i32 %1191, 9
  call void @llvm.assume(i1 %1192)
  %1193 = zext nneg i32 %1190 to i64
  %1194 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1193
  %1195 = load i32, ptr %1194, align 4, !tbaa !106
  %1196 = zext i32 %1195 to i64
  %1197 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1196
  %1198 = load i64, ptr %1197, align 8, !tbaa !138
  %1199 = icmp eq i64 %1198, 0
  br i1 %1199, label %1200, label %1201

1200:                                             ; preds = %1188
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1201

1201:                                             ; preds = %1200, %1188
  %1202 = getelementptr inbounds i8, ptr %921, i64 %1198
  %1203 = getelementptr inbounds ptr, ptr %1202, i64 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !91
  %1205 = load i64, ptr %1204, align 8
  %1206 = trunc i64 %1205 to i32
  %1207 = and i32 %1206, 65535
  br label %1208

1208:                                             ; preds = %1201, %1182
  %1209 = phi i32 [ %1207, %1201 ], [ %1183, %1182 ]
  %1210 = icmp eq i32 %1209, 113
  br i1 %1210, label %1211, label %1289, !prof !187

1211:                                             ; preds = %1208, %1173
  %1212 = load i32, ptr %44, align 8
  %1213 = trunc i32 %1212 to i8
  switch i8 %1213, label %1216 [
    i8 6, label %1214
    i8 1, label %1214
    i8 8, label %1217
  ], !prof !188

1214:                                             ; preds = %1211, %1211
  %1215 = lshr i32 %1212, 16
  br label %1217

1216:                                             ; preds = %1211
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1217

1217:                                             ; preds = %1216, %1214, %1211
  %1218 = phi i32 [ %1215, %1214 ], [ 0, %1216 ], [ 59, %1211 ]
  %1219 = zext nneg i32 %1218 to i64
  %1220 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1219
  %1221 = load i8, ptr %1220, align 1, !tbaa !102
  %1222 = icmp eq i8 %1221, 3
  br i1 %1222, label %1223, label %1243, !prof !189

1223:                                             ; preds = %1217
  %1224 = load i32, ptr %44, align 8
  %1225 = and i32 %1224, 255
  %1226 = add nsw i32 %1225, -1
  %1227 = icmp ult i32 %1226, 9
  call void @llvm.assume(i1 %1227)
  %1228 = zext nneg i32 %1225 to i64
  %1229 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1228
  %1230 = load i32, ptr %1229, align 4, !tbaa !106
  %1231 = zext i32 %1230 to i64
  %1232 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1231
  %1233 = load i64, ptr %1232, align 8, !tbaa !138
  %1234 = icmp eq i64 %1233, 0
  br i1 %1234, label %1235, label %1236

1235:                                             ; preds = %1223
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1236

1236:                                             ; preds = %1235, %1223
  %1237 = getelementptr inbounds i8, ptr %44, i64 %1233
  %1238 = getelementptr inbounds ptr, ptr %1237, i64 1
  %1239 = load ptr, ptr %1238, align 8, !tbaa !91
  %1240 = load i64, ptr %1239, align 8
  %1241 = trunc i64 %1240 to i32
  %1242 = and i32 %1241, 65535
  br label %1243

1243:                                             ; preds = %1236, %1217
  %1244 = phi i32 [ %1242, %1236 ], [ %1218, %1217 ]
  %1245 = getelementptr inbounds %struct.tree_common, ptr %1141, i64 0, i32 2
  %1246 = load ptr, ptr %1245, align 8, !tbaa !102
  %1247 = load i32, ptr %44, align 8
  %1248 = and i32 %1247, 255
  %1249 = add nsw i32 %1248, -10
  %1250 = icmp ult i32 %1249, -9
  br i1 %1250, label %1264, label %1251, !prof !189

1251:                                             ; preds = %1243
  %1252 = zext nneg i32 %1248 to i64
  %1253 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1252
  %1254 = load i32, ptr %1253, align 4, !tbaa !106
  %1255 = zext i32 %1254 to i64
  %1256 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1255
  %1257 = load i64, ptr %1256, align 8, !tbaa !138
  %1258 = icmp eq i64 %1257, 0
  br i1 %1258, label %1259, label %1260, !prof !189

1259:                                             ; preds = %1251
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1260

1260:                                             ; preds = %1259, %1251
  %1261 = getelementptr inbounds i8, ptr %44, i64 %1257
  %1262 = getelementptr inbounds ptr, ptr %1261, i64 1
  %1263 = load ptr, ptr %1262, align 8, !tbaa !91
  br label %1264

1264:                                             ; preds = %1260, %1243
  %1265 = phi ptr [ %1263, %1260 ], [ null, %1243 ]
  %1266 = load i32, ptr %800, align 4, !tbaa !102
  %1267 = icmp ugt i32 %1266, 2
  br i1 %1267, label %1268, label %1286, !prof !190

1268:                                             ; preds = %1264
  %1269 = load i32, ptr %44, align 8
  %1270 = and i32 %1269, 255
  %1271 = add nsw i32 %1270, -10
  %1272 = icmp ult i32 %1271, -9
  br i1 %1272, label %1286, label %1273, !prof !189

1273:                                             ; preds = %1268
  %1274 = zext nneg i32 %1270 to i64
  %1275 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1274
  %1276 = load i32, ptr %1275, align 4, !tbaa !106
  %1277 = zext i32 %1276 to i64
  %1278 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1277
  %1279 = load i64, ptr %1278, align 8, !tbaa !138
  %1280 = icmp eq i64 %1279, 0
  br i1 %1280, label %1281, label %1282, !prof !189

1281:                                             ; preds = %1273
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1282

1282:                                             ; preds = %1281, %1273
  %1283 = getelementptr inbounds i8, ptr %44, i64 %1279
  %1284 = getelementptr inbounds ptr, ptr %1283, i64 2
  %1285 = load ptr, ptr %1284, align 8, !tbaa !91
  br label %1286

1286:                                             ; preds = %1282, %1268, %1264
  %1287 = phi ptr [ null, %1264 ], [ %1285, %1282 ], [ null, %1268 ]
  %1288 = call ptr @build2_stat(i32 noundef %1244, ptr noundef %1246, ptr noundef %1265, ptr noundef %1287) #18
  br label %1916

1289:                                             ; preds = %1208
  %1290 = load i32, ptr %921, align 8
  %1291 = trunc i32 %1290 to i8
  switch i8 %1291, label %1294 [
    i8 6, label %1292
    i8 1, label %1292
    i8 8, label %1295
  ], !prof !191

1292:                                             ; preds = %1289, %1289
  %1293 = lshr i32 %1290, 16
  br label %1295

1294:                                             ; preds = %1289
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1295

1295:                                             ; preds = %1294, %1292, %1289
  %1296 = phi i32 [ %1293, %1292 ], [ 0, %1294 ], [ 59, %1289 ]
  %1297 = zext nneg i32 %1296 to i64
  %1298 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1297
  %1299 = load i8, ptr %1298, align 1, !tbaa !102
  %1300 = icmp eq i8 %1299, 3
  br i1 %1300, label %1301, label %1321, !prof !168

1301:                                             ; preds = %1295
  %1302 = load i32, ptr %921, align 8
  %1303 = and i32 %1302, 255
  %1304 = add nsw i32 %1303, -1
  %1305 = icmp ult i32 %1304, 9
  call void @llvm.assume(i1 %1305)
  %1306 = zext nneg i32 %1303 to i64
  %1307 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1306
  %1308 = load i32, ptr %1307, align 4, !tbaa !106
  %1309 = zext i32 %1308 to i64
  %1310 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1309
  %1311 = load i64, ptr %1310, align 8, !tbaa !138
  %1312 = icmp eq i64 %1311, 0
  br i1 %1312, label %1313, label %1314

1313:                                             ; preds = %1301
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1314

1314:                                             ; preds = %1313, %1301
  %1315 = getelementptr inbounds i8, ptr %921, i64 %1311
  %1316 = getelementptr inbounds ptr, ptr %1315, i64 1
  %1317 = load ptr, ptr %1316, align 8, !tbaa !91
  %1318 = load i64, ptr %1317, align 8
  %1319 = trunc i64 %1318 to i32
  %1320 = and i32 %1319, 65535
  br label %1321

1321:                                             ; preds = %1314, %1295
  %1322 = phi i32 [ %1320, %1314 ], [ %1296, %1295 ]
  %1323 = zext nneg i32 %1322 to i64
  %1324 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1323
  %1325 = load i32, ptr %1324, align 4, !tbaa !106
  %1326 = icmp eq i32 %1325, 5
  br i1 %1326, label %1327, label %1509, !prof !169

1327:                                             ; preds = %1321
  %1328 = load i32, ptr %921, align 8
  %1329 = and i32 %1328, 255
  %1330 = add nsw i32 %1329, -1
  %1331 = icmp ult i32 %1330, 9
  call void @llvm.assume(i1 %1331)
  %1332 = zext nneg i32 %1329 to i64
  %1333 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1332
  %1334 = load i32, ptr %1333, align 4, !tbaa !106
  %1335 = zext i32 %1334 to i64
  %1336 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1335
  %1337 = load i64, ptr %1336, align 8, !tbaa !138
  %1338 = icmp eq i64 %1337, 0
  br i1 %1338, label %1339, label %1340, !prof !168

1339:                                             ; preds = %1327
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1340

1340:                                             ; preds = %1339, %1327
  %1341 = getelementptr inbounds i8, ptr %921, i64 %1337
  %1342 = getelementptr inbounds ptr, ptr %1341, i64 1
  %1343 = load ptr, ptr %1342, align 8, !tbaa !91
  %1344 = load i64, ptr %1343, align 8
  %1345 = and i64 %1344, 65535
  %1346 = icmp eq i64 %1345, 141
  br i1 %1346, label %1347, label %1509, !prof !169

1347:                                             ; preds = %1340
  %1348 = getelementptr inbounds %struct.gimple_statement_base, ptr %921, i64 0, i32 3
  %1349 = load i32, ptr %1348, align 4, !tbaa !102
  %1350 = icmp ugt i32 %1349, 2
  call void @llvm.assume(i1 %1350)
  %1351 = load i32, ptr %921, align 8
  %1352 = and i32 %1351, 255
  %1353 = add nsw i32 %1352, -1
  %1354 = icmp ult i32 %1353, 9
  call void @llvm.assume(i1 %1354)
  %1355 = zext nneg i32 %1352 to i64
  %1356 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1355
  %1357 = load i32, ptr %1356, align 4, !tbaa !106
  %1358 = zext i32 %1357 to i64
  %1359 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1358
  %1360 = load i64, ptr %1359, align 8, !tbaa !138
  %1361 = icmp eq i64 %1360, 0
  br i1 %1361, label %1362, label %1363, !prof !168

1362:                                             ; preds = %1347
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1363

1363:                                             ; preds = %1362, %1347
  %1364 = getelementptr inbounds i8, ptr %921, i64 %1360
  %1365 = getelementptr inbounds ptr, ptr %1364, i64 2
  %1366 = load ptr, ptr %1365, align 8, !tbaa !91
  %1367 = load i64, ptr %1366, align 8
  %1368 = and i64 %1367, 65535
  %1369 = icmp eq i64 %1368, 23
  br i1 %1369, label %1370, label %1509, !prof !168

1370:                                             ; preds = %1363
  %1371 = load i32, ptr %921, align 8
  %1372 = trunc i32 %1371 to i8
  switch i8 %1372, label %1375 [
    i8 6, label %1373
    i8 1, label %1373
    i8 8, label %1376
  ]

1373:                                             ; preds = %1370, %1370
  %1374 = lshr i32 %1371, 16
  br label %1376

1375:                                             ; preds = %1370
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1376

1376:                                             ; preds = %1375, %1373, %1370
  %1377 = phi i32 [ %1374, %1373 ], [ 0, %1375 ], [ 59, %1370 ]
  %1378 = zext nneg i32 %1377 to i64
  %1379 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1378
  %1380 = load i8, ptr %1379, align 1, !tbaa !102
  %1381 = icmp eq i8 %1380, 3
  br i1 %1381, label %1382, label %1402

1382:                                             ; preds = %1376
  %1383 = load i32, ptr %921, align 8
  %1384 = and i32 %1383, 255
  %1385 = add nsw i32 %1384, -1
  %1386 = icmp ult i32 %1385, 9
  call void @llvm.assume(i1 %1386)
  %1387 = zext nneg i32 %1384 to i64
  %1388 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1387
  %1389 = load i32, ptr %1388, align 4, !tbaa !106
  %1390 = zext i32 %1389 to i64
  %1391 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1390
  %1392 = load i64, ptr %1391, align 8, !tbaa !138
  %1393 = icmp eq i64 %1392, 0
  br i1 %1393, label %1394, label %1395

1394:                                             ; preds = %1382
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1395

1395:                                             ; preds = %1394, %1382
  %1396 = getelementptr inbounds i8, ptr %921, i64 %1392
  %1397 = getelementptr inbounds ptr, ptr %1396, i64 1
  %1398 = load ptr, ptr %1397, align 8, !tbaa !91
  %1399 = load i64, ptr %1398, align 8
  %1400 = trunc i64 %1399 to i32
  %1401 = and i32 %1400, 65535
  br label %1402

1402:                                             ; preds = %1395, %1376
  %1403 = phi i32 [ %1401, %1395 ], [ %1377, %1376 ]
  %1404 = load i32, ptr %1348, align 4, !tbaa !102
  %1405 = icmp ugt i32 %1404, 2
  br i1 %1405, label %1406, label %1424

1406:                                             ; preds = %1402
  %1407 = load i32, ptr %921, align 8
  %1408 = and i32 %1407, 255
  %1409 = add nsw i32 %1408, -10
  %1410 = icmp ult i32 %1409, -9
  br i1 %1410, label %1424, label %1411

1411:                                             ; preds = %1406
  %1412 = zext nneg i32 %1408 to i64
  %1413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1412
  %1414 = load i32, ptr %1413, align 4, !tbaa !106
  %1415 = zext i32 %1414 to i64
  %1416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1415
  %1417 = load i64, ptr %1416, align 8, !tbaa !138
  %1418 = icmp eq i64 %1417, 0
  br i1 %1418, label %1419, label %1420

1419:                                             ; preds = %1411
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1420

1420:                                             ; preds = %1419, %1411
  %1421 = getelementptr inbounds i8, ptr %921, i64 %1417
  %1422 = getelementptr inbounds ptr, ptr %1421, i64 2
  %1423 = load ptr, ptr %1422, align 8, !tbaa !91
  br label %1424

1424:                                             ; preds = %1420, %1406, %1402
  %1425 = phi ptr [ null, %1402 ], [ %1423, %1420 ], [ null, %1406 ]
  %1426 = load i32, ptr %44, align 8
  %1427 = trunc i32 %1426 to i8
  switch i8 %1427, label %1430 [
    i8 6, label %1428
    i8 1, label %1428
    i8 8, label %1431
  ]

1428:                                             ; preds = %1424, %1424
  %1429 = lshr i32 %1426, 16
  br label %1431

1430:                                             ; preds = %1424
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1431

1431:                                             ; preds = %1430, %1428, %1424
  %1432 = phi i32 [ %1429, %1428 ], [ 0, %1430 ], [ 59, %1424 ]
  %1433 = zext nneg i32 %1432 to i64
  %1434 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1433
  %1435 = load i8, ptr %1434, align 1, !tbaa !102
  %1436 = icmp eq i8 %1435, 3
  br i1 %1436, label %1437, label %1457

1437:                                             ; preds = %1431
  %1438 = load i32, ptr %44, align 8
  %1439 = and i32 %1438, 255
  %1440 = add nsw i32 %1439, -1
  %1441 = icmp ult i32 %1440, 9
  call void @llvm.assume(i1 %1441)
  %1442 = zext nneg i32 %1439 to i64
  %1443 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1442
  %1444 = load i32, ptr %1443, align 4, !tbaa !106
  %1445 = zext i32 %1444 to i64
  %1446 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1445
  %1447 = load i64, ptr %1446, align 8, !tbaa !138
  %1448 = icmp eq i64 %1447, 0
  br i1 %1448, label %1449, label %1450

1449:                                             ; preds = %1437
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1450

1450:                                             ; preds = %1449, %1437
  %1451 = getelementptr inbounds i8, ptr %44, i64 %1447
  %1452 = getelementptr inbounds ptr, ptr %1451, i64 1
  %1453 = load ptr, ptr %1452, align 8, !tbaa !91
  %1454 = load i64, ptr %1453, align 8
  %1455 = trunc i64 %1454 to i32
  %1456 = and i32 %1455, 65535
  br label %1457

1457:                                             ; preds = %1450, %1431
  %1458 = phi i32 [ %1456, %1450 ], [ %1432, %1431 ]
  %1459 = getelementptr inbounds %struct.tree_common, ptr %1425, i64 0, i32 2
  %1460 = load ptr, ptr %1459, align 8, !tbaa !102
  %1461 = load i32, ptr %44, align 8
  %1462 = and i32 %1461, 255
  %1463 = add nsw i32 %1462, -10
  %1464 = icmp ult i32 %1463, -9
  br i1 %1464, label %1478, label %1465

1465:                                             ; preds = %1457
  %1466 = zext nneg i32 %1462 to i64
  %1467 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1466
  %1468 = load i32, ptr %1467, align 4, !tbaa !106
  %1469 = zext i32 %1468 to i64
  %1470 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1469
  %1471 = load i64, ptr %1470, align 8, !tbaa !138
  %1472 = icmp eq i64 %1471, 0
  br i1 %1472, label %1473, label %1474

1473:                                             ; preds = %1465
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1474

1474:                                             ; preds = %1473, %1465
  %1475 = getelementptr inbounds i8, ptr %44, i64 %1471
  %1476 = getelementptr inbounds ptr, ptr %1475, i64 1
  %1477 = load ptr, ptr %1476, align 8, !tbaa !91
  br label %1478

1478:                                             ; preds = %1474, %1457
  %1479 = phi ptr [ %1477, %1474 ], [ null, %1457 ]
  %1480 = load i32, ptr %800, align 4, !tbaa !102
  %1481 = icmp ugt i32 %1480, 2
  br i1 %1481, label %1482, label %1500

1482:                                             ; preds = %1478
  %1483 = load i32, ptr %44, align 8
  %1484 = and i32 %1483, 255
  %1485 = add nsw i32 %1484, -10
  %1486 = icmp ult i32 %1485, -9
  br i1 %1486, label %1500, label %1487

1487:                                             ; preds = %1482
  %1488 = zext nneg i32 %1484 to i64
  %1489 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1488
  %1490 = load i32, ptr %1489, align 4, !tbaa !106
  %1491 = zext i32 %1490 to i64
  %1492 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1491
  %1493 = load i64, ptr %1492, align 8, !tbaa !138
  %1494 = icmp eq i64 %1493, 0
  br i1 %1494, label %1495, label %1496

1495:                                             ; preds = %1487
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1496

1496:                                             ; preds = %1495, %1487
  %1497 = getelementptr inbounds i8, ptr %44, i64 %1493
  %1498 = getelementptr inbounds ptr, ptr %1497, i64 2
  %1499 = load ptr, ptr %1498, align 8, !tbaa !91
  br label %1500

1500:                                             ; preds = %1496, %1482, %1478
  %1501 = phi ptr [ null, %1478 ], [ %1499, %1496 ], [ null, %1482 ]
  %1502 = call ptr @build2_stat(i32 noundef %1458, ptr noundef %1460, ptr noundef %1479, ptr noundef %1501) #18
  %1503 = getelementptr inbounds %struct.gimple_statement_base, ptr %921, i64 0, i32 2
  %1504 = load i32, ptr %1503, align 8, !tbaa !102
  %1505 = getelementptr inbounds %struct.tree_common, ptr %1141, i64 0, i32 2
  %1506 = load ptr, ptr %1505, align 8, !tbaa !102
  %1507 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %1504, i32 noundef %1403, ptr noundef %1506, ptr noundef %1502, ptr noundef %1425, i8 noundef zeroext 0)
  %1508 = icmp eq ptr %1507, null
  br i1 %1508, label %1964, label %1916

1509:                                             ; preds = %1363, %1340, %1321
  %1510 = load i32, ptr %921, align 8
  %1511 = trunc i32 %1510 to i8
  switch i8 %1511, label %1514 [
    i8 6, label %1512
    i8 1, label %1512
    i8 8, label %1515
  ], !prof !191

1512:                                             ; preds = %1509, %1509
  %1513 = lshr i32 %1510, 16
  br label %1515

1514:                                             ; preds = %1509
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1515

1515:                                             ; preds = %1514, %1512, %1509
  %1516 = phi i32 [ %1513, %1512 ], [ 0, %1514 ], [ 59, %1509 ]
  %1517 = zext nneg i32 %1516 to i64
  %1518 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1517
  %1519 = load i8, ptr %1518, align 1, !tbaa !102
  %1520 = icmp eq i8 %1519, 3
  br i1 %1520, label %1521, label %1541, !prof !168

1521:                                             ; preds = %1515
  %1522 = load i32, ptr %921, align 8
  %1523 = and i32 %1522, 255
  %1524 = add nsw i32 %1523, -1
  %1525 = icmp ult i32 %1524, 9
  call void @llvm.assume(i1 %1525)
  %1526 = zext nneg i32 %1523 to i64
  %1527 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1526
  %1528 = load i32, ptr %1527, align 4, !tbaa !106
  %1529 = zext i32 %1528 to i64
  %1530 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1529
  %1531 = load i64, ptr %1530, align 8, !tbaa !138
  %1532 = icmp eq i64 %1531, 0
  br i1 %1532, label %1533, label %1534

1533:                                             ; preds = %1521
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1534

1534:                                             ; preds = %1533, %1521
  %1535 = getelementptr inbounds i8, ptr %921, i64 %1531
  %1536 = getelementptr inbounds ptr, ptr %1535, i64 1
  %1537 = load ptr, ptr %1536, align 8, !tbaa !91
  %1538 = load i64, ptr %1537, align 8
  %1539 = trunc i64 %1538 to i32
  %1540 = and i32 %1539, 65535
  br label %1541

1541:                                             ; preds = %1534, %1515
  %1542 = phi i32 [ %1540, %1534 ], [ %1516, %1515 ]
  %1543 = icmp eq i32 %1542, 96
  br i1 %1543, label %1544, label %1964, !prof !168

1544:                                             ; preds = %1541
  %1545 = load i32, ptr %44, align 8
  %1546 = and i32 %1545, 255
  %1547 = add nsw i32 %1546, -1
  %1548 = icmp ult i32 %1547, 9
  call void @llvm.assume(i1 %1548)
  %1549 = zext nneg i32 %1546 to i64
  %1550 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1549
  %1551 = load i32, ptr %1550, align 4, !tbaa !106
  %1552 = zext i32 %1551 to i64
  %1553 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1552
  %1554 = load i64, ptr %1553, align 8, !tbaa !138
  %1555 = icmp eq i64 %1554, 0
  br i1 %1555, label %1556, label %1557

1556:                                             ; preds = %1544
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1557

1557:                                             ; preds = %1556, %1544
  %1558 = getelementptr inbounds i8, ptr %44, i64 %1554
  %1559 = getelementptr inbounds ptr, ptr %1558, i64 1
  %1560 = load ptr, ptr %1559, align 8, !tbaa !91
  %1561 = getelementptr inbounds %struct.tree_common, ptr %1560, i64 0, i32 2
  %1562 = load ptr, ptr %1561, align 8, !tbaa !102
  %1563 = load i64, ptr %1562, align 8
  %1564 = and i64 %1563, 65535
  %1565 = icmp eq i64 %1564, 14
  br i1 %1565, label %1566, label %1568

1566:                                             ; preds = %1557
  %1567 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1573

1568:                                             ; preds = %1557
  %1569 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1570 = load i32, ptr %1569, align 4
  %1571 = lshr i32 %1570, 16
  %1572 = and i32 %1571, 255
  br label %1573

1573:                                             ; preds = %1568, %1566
  %1574 = phi i32 [ %1567, %1566 ], [ %1572, %1568 ]
  %1575 = zext i32 %1574 to i64
  %1576 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1575
  %1577 = load i8, ptr %1576, align 1, !tbaa !102
  %1578 = icmp eq i8 %1577, 8
  br i1 %1578, label %1630, label %1579

1579:                                             ; preds = %1573
  %1580 = load i64, ptr %1562, align 8
  %1581 = and i64 %1580, 65535
  %1582 = icmp eq i64 %1581, 14
  br i1 %1582, label %1583, label %1585

1583:                                             ; preds = %1579
  %1584 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1590

1585:                                             ; preds = %1579
  %1586 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1587 = load i32, ptr %1586, align 4
  %1588 = lshr i32 %1587, 16
  %1589 = and i32 %1588, 255
  br label %1590

1590:                                             ; preds = %1585, %1583
  %1591 = phi i32 [ %1584, %1583 ], [ %1589, %1585 ]
  %1592 = zext i32 %1591 to i64
  %1593 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1592
  %1594 = load i8, ptr %1593, align 1, !tbaa !102
  %1595 = icmp eq i8 %1594, 9
  br i1 %1595, label %1630, label %1596

1596:                                             ; preds = %1590
  %1597 = load i64, ptr %1562, align 8
  %1598 = and i64 %1597, 65535
  %1599 = icmp eq i64 %1598, 14
  br i1 %1599, label %1600, label %1602

1600:                                             ; preds = %1596
  %1601 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1607

1602:                                             ; preds = %1596
  %1603 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1604 = load i32, ptr %1603, align 4
  %1605 = lshr i32 %1604, 16
  %1606 = and i32 %1605, 255
  br label %1607

1607:                                             ; preds = %1602, %1600
  %1608 = phi i32 [ %1601, %1600 ], [ %1606, %1602 ]
  %1609 = zext i32 %1608 to i64
  %1610 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1609
  %1611 = load i8, ptr %1610, align 1, !tbaa !102
  %1612 = icmp eq i8 %1611, 11
  br i1 %1612, label %1630, label %1613

1613:                                             ; preds = %1607
  %1614 = load i64, ptr %1562, align 8
  %1615 = and i64 %1614, 65535
  %1616 = icmp eq i64 %1615, 14
  br i1 %1616, label %1617, label %1619

1617:                                             ; preds = %1613
  %1618 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1624

1619:                                             ; preds = %1613
  %1620 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1621 = load i32, ptr %1620, align 4
  %1622 = lshr i32 %1621, 16
  %1623 = and i32 %1622, 255
  br label %1624

1624:                                             ; preds = %1619, %1617
  %1625 = phi i32 [ %1618, %1617 ], [ %1623, %1619 ]
  %1626 = zext i32 %1625 to i64
  %1627 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1626
  %1628 = load i8, ptr %1627, align 1, !tbaa !102
  %1629 = icmp eq i8 %1628, 17
  br i1 %1629, label %1630, label %1832

1630:                                             ; preds = %1624, %1607, %1590, %1573
  %1631 = load i64, ptr %1562, align 8
  %1632 = and i64 %1631, 65535
  %1633 = icmp eq i64 %1632, 14
  br i1 %1633, label %1634, label %1636

1634:                                             ; preds = %1630
  %1635 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1641

1636:                                             ; preds = %1630
  %1637 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1638 = load i32, ptr %1637, align 4
  %1639 = lshr i32 %1638, 16
  %1640 = and i32 %1639, 255
  br label %1641

1641:                                             ; preds = %1636, %1634
  %1642 = phi i32 [ %1635, %1634 ], [ %1640, %1636 ]
  %1643 = zext i32 %1642 to i64
  %1644 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1643
  %1645 = load i8, ptr %1644, align 1, !tbaa !102
  %1646 = icmp eq i8 %1645, 8
  br i1 %1646, label %1664, label %1647

1647:                                             ; preds = %1641
  %1648 = load i64, ptr %1562, align 8
  %1649 = and i64 %1648, 65535
  %1650 = icmp eq i64 %1649, 14
  br i1 %1650, label %1651, label %1653

1651:                                             ; preds = %1647
  %1652 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1658

1653:                                             ; preds = %1647
  %1654 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1655 = load i32, ptr %1654, align 4
  %1656 = lshr i32 %1655, 16
  %1657 = and i32 %1656, 255
  br label %1658

1658:                                             ; preds = %1653, %1651
  %1659 = phi i32 [ %1652, %1651 ], [ %1657, %1653 ]
  %1660 = zext i32 %1659 to i64
  %1661 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1660
  %1662 = load i8, ptr %1661, align 1, !tbaa !102
  %1663 = icmp eq i8 %1662, 9
  br i1 %1663, label %1664, label %1675

1664:                                             ; preds = %1658, %1641
  %1665 = load i64, ptr %1562, align 8
  %1666 = and i64 %1665, 65535
  %1667 = icmp eq i64 %1666, 14
  br i1 %1667, label %1668, label %1670

1668:                                             ; preds = %1664
  %1669 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1692

1670:                                             ; preds = %1664
  %1671 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1672 = load i32, ptr %1671, align 4
  %1673 = lshr i32 %1672, 16
  %1674 = and i32 %1673, 255
  br label %1692

1675:                                             ; preds = %1658
  %1676 = load i64, ptr %1562, align 8
  %1677 = and i64 %1676, 65535
  %1678 = icmp eq i64 %1677, 14
  br i1 %1678, label %1679, label %1681

1679:                                             ; preds = %1675
  %1680 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1686

1681:                                             ; preds = %1675
  %1682 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1683 = load i32, ptr %1682, align 4
  %1684 = lshr i32 %1683, 16
  %1685 = and i32 %1684, 255
  br label %1686

1686:                                             ; preds = %1681, %1679
  %1687 = phi i32 [ %1680, %1679 ], [ %1685, %1681 ]
  %1688 = zext i32 %1687 to i64
  %1689 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1688
  %1690 = load i8, ptr %1689, align 1, !tbaa !102
  %1691 = zext i8 %1690 to i32
  br label %1692

1692:                                             ; preds = %1686, %1670, %1668
  %1693 = phi i32 [ %1691, %1686 ], [ %1669, %1668 ], [ %1674, %1670 ]
  %1694 = zext i32 %1693 to i64
  %1695 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1694
  %1696 = load i8, ptr %1695, align 1, !tbaa !102
  %1697 = icmp eq i8 %1696, 9
  %1698 = load i64, ptr %1562, align 8
  %1699 = and i64 %1698, 65535
  %1700 = icmp eq i64 %1699, 14
  br i1 %1697, label %1701, label %1760

1701:                                             ; preds = %1692
  br i1 %1700, label %1702, label %1704

1702:                                             ; preds = %1701
  %1703 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1709

1704:                                             ; preds = %1701
  %1705 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1706 = load i32, ptr %1705, align 4
  %1707 = lshr i32 %1706, 16
  %1708 = and i32 %1707, 255
  br label %1709

1709:                                             ; preds = %1704, %1702
  %1710 = phi i32 [ %1703, %1702 ], [ %1708, %1704 ]
  %1711 = zext i32 %1710 to i64
  %1712 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1711
  %1713 = load i8, ptr %1712, align 1, !tbaa !102
  %1714 = icmp eq i8 %1713, 8
  br i1 %1714, label %1732, label %1715

1715:                                             ; preds = %1709
  %1716 = load i64, ptr %1562, align 8
  %1717 = and i64 %1716, 65535
  %1718 = icmp eq i64 %1717, 14
  br i1 %1718, label %1719, label %1721

1719:                                             ; preds = %1715
  %1720 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1726

1721:                                             ; preds = %1715
  %1722 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1723 = load i32, ptr %1722, align 4
  %1724 = lshr i32 %1723, 16
  %1725 = and i32 %1724, 255
  br label %1726

1726:                                             ; preds = %1721, %1719
  %1727 = phi i32 [ %1720, %1719 ], [ %1725, %1721 ]
  %1728 = zext i32 %1727 to i64
  %1729 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1728
  %1730 = load i8, ptr %1729, align 1, !tbaa !102
  %1731 = icmp eq i8 %1730, 9
  br i1 %1731, label %1732, label %1743

1732:                                             ; preds = %1726, %1709
  %1733 = load i64, ptr %1562, align 8
  %1734 = and i64 %1733, 65535
  %1735 = icmp eq i64 %1734, 14
  br i1 %1735, label %1736, label %1738

1736:                                             ; preds = %1732
  %1737 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1819

1738:                                             ; preds = %1732
  %1739 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1740 = load i32, ptr %1739, align 4
  %1741 = lshr i32 %1740, 16
  %1742 = and i32 %1741, 255
  br label %1819

1743:                                             ; preds = %1726
  %1744 = load i64, ptr %1562, align 8
  %1745 = and i64 %1744, 65535
  %1746 = icmp eq i64 %1745, 14
  br i1 %1746, label %1747, label %1749

1747:                                             ; preds = %1743
  %1748 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1754

1749:                                             ; preds = %1743
  %1750 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1751 = load i32, ptr %1750, align 4
  %1752 = lshr i32 %1751, 16
  %1753 = and i32 %1752, 255
  br label %1754

1754:                                             ; preds = %1749, %1747
  %1755 = phi i32 [ %1748, %1747 ], [ %1753, %1749 ]
  %1756 = zext i32 %1755 to i64
  %1757 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1756
  %1758 = load i8, ptr %1757, align 1, !tbaa !102
  %1759 = zext i8 %1758 to i32
  br label %1819

1760:                                             ; preds = %1692
  br i1 %1700, label %1761, label %1763

1761:                                             ; preds = %1760
  %1762 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1768

1763:                                             ; preds = %1760
  %1764 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1765 = load i32, ptr %1764, align 4
  %1766 = lshr i32 %1765, 16
  %1767 = and i32 %1766, 255
  br label %1768

1768:                                             ; preds = %1763, %1761
  %1769 = phi i32 [ %1762, %1761 ], [ %1767, %1763 ]
  %1770 = zext i32 %1769 to i64
  %1771 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1770
  %1772 = load i8, ptr %1771, align 1, !tbaa !102
  %1773 = icmp eq i8 %1772, 8
  br i1 %1773, label %1791, label %1774

1774:                                             ; preds = %1768
  %1775 = load i64, ptr %1562, align 8
  %1776 = and i64 %1775, 65535
  %1777 = icmp eq i64 %1776, 14
  br i1 %1777, label %1778, label %1780

1778:                                             ; preds = %1774
  %1779 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1785

1780:                                             ; preds = %1774
  %1781 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1782 = load i32, ptr %1781, align 4
  %1783 = lshr i32 %1782, 16
  %1784 = and i32 %1783, 255
  br label %1785

1785:                                             ; preds = %1780, %1778
  %1786 = phi i32 [ %1779, %1778 ], [ %1784, %1780 ]
  %1787 = zext i32 %1786 to i64
  %1788 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1787
  %1789 = load i8, ptr %1788, align 1, !tbaa !102
  %1790 = icmp eq i8 %1789, 9
  br i1 %1790, label %1791, label %1802

1791:                                             ; preds = %1785, %1768
  %1792 = load i64, ptr %1562, align 8
  %1793 = and i64 %1792, 65535
  %1794 = icmp eq i64 %1793, 14
  br i1 %1794, label %1795, label %1797

1795:                                             ; preds = %1791
  %1796 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1819

1797:                                             ; preds = %1791
  %1798 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1799 = load i32, ptr %1798, align 4
  %1800 = lshr i32 %1799, 16
  %1801 = and i32 %1800, 255
  br label %1819

1802:                                             ; preds = %1785
  %1803 = load i64, ptr %1562, align 8
  %1804 = and i64 %1803, 65535
  %1805 = icmp eq i64 %1804, 14
  br i1 %1805, label %1806, label %1808

1806:                                             ; preds = %1802
  %1807 = call i32 @vector_type_mode(ptr noundef nonnull %1562) #18
  br label %1813

1808:                                             ; preds = %1802
  %1809 = getelementptr inbounds %struct.tree_type, ptr %1562, i64 0, i32 6
  %1810 = load i32, ptr %1809, align 4
  %1811 = lshr i32 %1810, 16
  %1812 = and i32 %1811, 255
  br label %1813

1813:                                             ; preds = %1808, %1806
  %1814 = phi i32 [ %1807, %1806 ], [ %1812, %1808 ]
  %1815 = zext i32 %1814 to i64
  %1816 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1815
  %1817 = load i8, ptr %1816, align 1, !tbaa !102
  %1818 = zext i8 %1817 to i32
  br label %1819

1819:                                             ; preds = %1813, %1797, %1795, %1754, %1738, %1736
  %1820 = phi i32 [ %1759, %1754 ], [ %1737, %1736 ], [ %1742, %1738 ], [ %1818, %1813 ], [ %1796, %1795 ], [ %1801, %1797 ]
  %1821 = add i32 %1820, -38
  %1822 = zext i32 %1821 to i64
  %1823 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1822
  %1824 = load ptr, ptr %1823, align 8, !tbaa !91
  %1825 = getelementptr inbounds %struct.real_format, ptr %1824, i64 0, i32 11
  %1826 = load i8, ptr %1825, align 2, !tbaa !192
  %1827 = icmp eq i8 %1826, 0
  br i1 %1827, label %1832, label %1828

1828:                                             ; preds = %1819
  %1829 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !106
  %1830 = icmp eq i32 %1829, 0
  %1831 = zext i1 %1830 to i8
  br label %1832

1832:                                             ; preds = %1828, %1819, %1624
  %1833 = phi i8 [ 0, %1819 ], [ 0, %1624 ], [ %1831, %1828 ]
  %1834 = load i32, ptr %44, align 8
  %1835 = trunc i32 %1834 to i8
  switch i8 %1835, label %1838 [
    i8 6, label %1836
    i8 1, label %1836
    i8 8, label %1839
  ]

1836:                                             ; preds = %1832, %1832
  %1837 = lshr i32 %1834, 16
  br label %1839

1838:                                             ; preds = %1832
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1839

1839:                                             ; preds = %1838, %1836, %1832
  %1840 = phi i32 [ %1837, %1836 ], [ 0, %1838 ], [ 59, %1832 ]
  %1841 = zext nneg i32 %1840 to i64
  %1842 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1841
  %1843 = load i8, ptr %1842, align 1, !tbaa !102
  %1844 = icmp eq i8 %1843, 3
  br i1 %1844, label %1845, label %1865

1845:                                             ; preds = %1839
  %1846 = load i32, ptr %44, align 8
  %1847 = and i32 %1846, 255
  %1848 = add nsw i32 %1847, -1
  %1849 = icmp ult i32 %1848, 9
  call void @llvm.assume(i1 %1849)
  %1850 = zext nneg i32 %1847 to i64
  %1851 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1850
  %1852 = load i32, ptr %1851, align 4, !tbaa !106
  %1853 = zext i32 %1852 to i64
  %1854 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1853
  %1855 = load i64, ptr %1854, align 8, !tbaa !138
  %1856 = icmp eq i64 %1855, 0
  br i1 %1856, label %1857, label %1858

1857:                                             ; preds = %1845
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1858

1858:                                             ; preds = %1857, %1845
  %1859 = getelementptr inbounds i8, ptr %44, i64 %1855
  %1860 = getelementptr inbounds ptr, ptr %1859, i64 1
  %1861 = load ptr, ptr %1860, align 8, !tbaa !91
  %1862 = load i64, ptr %1861, align 8
  %1863 = trunc i64 %1862 to i32
  %1864 = and i32 %1863, 65535
  br label %1865

1865:                                             ; preds = %1858, %1839
  %1866 = phi i32 [ %1864, %1858 ], [ %1840, %1839 ]
  %1867 = call i32 @invert_tree_comparison(i32 noundef %1866, i8 noundef zeroext %1833) #18
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1914, label %1869

1869:                                             ; preds = %1865
  %1870 = getelementptr inbounds %struct.tree_common, ptr %1141, i64 0, i32 2
  %1871 = load ptr, ptr %1870, align 8, !tbaa !102
  %1872 = load i32, ptr %44, align 8
  %1873 = and i32 %1872, 255
  %1874 = add nsw i32 %1873, -10
  %1875 = icmp ult i32 %1874, -9
  br i1 %1875, label %1889, label %1876

1876:                                             ; preds = %1869
  %1877 = zext nneg i32 %1873 to i64
  %1878 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1877
  %1879 = load i32, ptr %1878, align 4, !tbaa !106
  %1880 = zext i32 %1879 to i64
  %1881 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1880
  %1882 = load i64, ptr %1881, align 8, !tbaa !138
  %1883 = icmp eq i64 %1882, 0
  br i1 %1883, label %1884, label %1885

1884:                                             ; preds = %1876
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1885

1885:                                             ; preds = %1884, %1876
  %1886 = getelementptr inbounds i8, ptr %44, i64 %1882
  %1887 = getelementptr inbounds ptr, ptr %1886, i64 1
  %1888 = load ptr, ptr %1887, align 8, !tbaa !91
  br label %1889

1889:                                             ; preds = %1885, %1869
  %1890 = phi ptr [ %1888, %1885 ], [ null, %1869 ]
  %1891 = load i32, ptr %800, align 4, !tbaa !102
  %1892 = icmp ugt i32 %1891, 2
  br i1 %1892, label %1893, label %1911

1893:                                             ; preds = %1889
  %1894 = load i32, ptr %44, align 8
  %1895 = and i32 %1894, 255
  %1896 = add nsw i32 %1895, -10
  %1897 = icmp ult i32 %1896, -9
  br i1 %1897, label %1911, label %1898

1898:                                             ; preds = %1893
  %1899 = zext nneg i32 %1895 to i64
  %1900 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1899
  %1901 = load i32, ptr %1900, align 4, !tbaa !106
  %1902 = zext i32 %1901 to i64
  %1903 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1902
  %1904 = load i64, ptr %1903, align 8, !tbaa !138
  %1905 = icmp eq i64 %1904, 0
  br i1 %1905, label %1906, label %1907

1906:                                             ; preds = %1898
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1907

1907:                                             ; preds = %1906, %1898
  %1908 = getelementptr inbounds i8, ptr %44, i64 %1904
  %1909 = getelementptr inbounds ptr, ptr %1908, i64 2
  %1910 = load ptr, ptr %1909, align 8, !tbaa !91
  br label %1911

1911:                                             ; preds = %1907, %1893, %1889
  %1912 = phi ptr [ null, %1889 ], [ %1910, %1907 ], [ null, %1893 ]
  %1913 = call ptr @build2_stat(i32 noundef %1867, ptr noundef %1871, ptr noundef %1890, ptr noundef %1912) #18
  br label %1914

1914:                                             ; preds = %1911, %1865
  %1915 = phi ptr [ %1913, %1911 ], [ null, %1865 ]
  br i1 %1868, label %1964, label %1916

1916:                                             ; preds = %1914, %1500, %1286
  %1917 = phi ptr [ %1288, %1286 ], [ %1507, %1500 ], [ %1915, %1914 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %921) #18
  %1918 = call ptr @unshare_expr(ptr noundef %1917) #18
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %1918) #18
  %1919 = load ptr, ptr %4, align 8
  %1920 = load ptr, ptr %1919, align 8, !tbaa !135
  %1921 = load i32, ptr %1920, align 8
  %1922 = and i32 %1921, 255
  %1923 = add nsw i32 %1922, -10
  %1924 = icmp ult i32 %1923, -9
  br i1 %1924, label %1926, label %1925, !prof !189

1925:                                             ; preds = %1916
  call void @gimple_set_modified(ptr noundef nonnull %1920, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %1920) #18
  br label %1926

1926:                                             ; preds = %1925, %1916
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @remove_prop_source_from_use(ptr noundef %920, ptr noundef %44)
  %1927 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %1928 = icmp eq ptr %1927, null
  br i1 %1928, label %1962, label %1929, !prof !190

1929:                                             ; preds = %1926
  %1930 = load i32, ptr @dump_flags, align 4, !tbaa !106
  %1931 = and i32 %1930, 8
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %1962, label %1933

1933:                                             ; preds = %1929
  %1934 = load i32, ptr %44, align 8
  %1935 = and i32 %1934, 255
  %1936 = add nsw i32 %1935, -1
  %1937 = icmp ult i32 %1936, 9
  call void @llvm.assume(i1 %1937)
  %1938 = zext nneg i32 %1935 to i64
  %1939 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1938
  %1940 = load i32, ptr %1939, align 4, !tbaa !106
  %1941 = zext i32 %1940 to i64
  %1942 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1941
  %1943 = load i64, ptr %1942, align 8, !tbaa !138
  %1944 = icmp eq i64 %1943, 0
  br i1 %1944, label %1945, label %1946

1945:                                             ; preds = %1933
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1946

1946:                                             ; preds = %1945, %1933
  %1947 = getelementptr inbounds i8, ptr %44, i64 %1943
  %1948 = load ptr, ptr %1947, align 8, !tbaa !91
  %1949 = getelementptr inbounds %struct.tree_common, ptr %1948, i64 0, i32 2
  %1950 = load ptr, ptr %1949, align 8, !tbaa !102
  %1951 = call fastcc ptr @rhs_to_tree(ptr noundef %1950, ptr noundef nonnull %44)
  %1952 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %1953 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %1952)
  %1954 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %1955 = load i32, ptr @dump_flags, align 4, !tbaa !106
  call void @print_generic_expr(ptr noundef %1954, ptr noundef %1951, i32 noundef %1955) #18
  %1956 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %1957 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %1956)
  %1958 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %1959 = load i32, ptr @dump_flags, align 4, !tbaa !106
  call void @print_generic_expr(ptr noundef %1958, ptr noundef %1917, i32 noundef %1959) #18
  %1960 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %1961 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %1960)
  br label %1962

1962:                                             ; preds = %1946, %1929, %1926
  call void @release_defs(ptr noundef %44) #18
  %1963 = or i32 %43, 32768
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #18
  br label %3039

1964:                                             ; preds = %792, %919, %1541, %1115, %923, %837, %1057, %1500, %1914
  %1965 = load ptr, ptr %7, align 8, !tbaa !141
  %1966 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1965, i64 0, i32 2
  %1967 = load ptr, ptr %1966, align 8, !tbaa !143
  store ptr %1967, ptr %7, align 8, !tbaa !141
  br label %3039

1968:                                             ; preds = %735
  %1969 = trunc i32 %741 to i8
  switch i8 %1969, label %1972 [
    i8 6, label %1970
    i8 1, label %1970
    i8 8, label %1973
  ], !prof !194

1970:                                             ; preds = %1968, %1968
  %1971 = lshr i32 %741, 16
  br label %1973

1972:                                             ; preds = %1968
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %1973

1973:                                             ; preds = %1972, %1970, %1968
  %1974 = phi i32 [ %1971, %1970 ], [ 0, %1972 ], [ 59, %1968 ]
  %1975 = zext nneg i32 %1974 to i64
  %1976 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1975
  %1977 = load i8, ptr %1976, align 1, !tbaa !102
  %1978 = icmp eq i8 %1977, 3
  br i1 %1978, label %1979, label %1999, !prof !195

1979:                                             ; preds = %1973
  %1980 = load i32, ptr %44, align 8
  %1981 = and i32 %1980, 255
  %1982 = add nsw i32 %1981, -1
  %1983 = icmp ult i32 %1982, 9
  call void @llvm.assume(i1 %1983)
  %1984 = zext nneg i32 %1981 to i64
  %1985 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1984
  %1986 = load i32, ptr %1985, align 4, !tbaa !106
  %1987 = zext i32 %1986 to i64
  %1988 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1987
  %1989 = load i64, ptr %1988, align 8, !tbaa !138
  %1990 = icmp eq i64 %1989, 0
  br i1 %1990, label %1991, label %1992, !prof !151

1991:                                             ; preds = %1979
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %1992

1992:                                             ; preds = %1991, %1979
  %1993 = getelementptr inbounds i8, ptr %44, i64 %1989
  %1994 = getelementptr inbounds ptr, ptr %1993, i64 1
  %1995 = load ptr, ptr %1994, align 8, !tbaa !91
  %1996 = load i64, ptr %1995, align 8
  %1997 = trunc i64 %1996 to i32
  %1998 = and i32 %1997, 65535
  br label %1999

1999:                                             ; preds = %1973, %1992
  %2000 = phi i32 [ %1998, %1992 ], [ %1974, %1973 ]
  %2001 = icmp eq i32 %2000, 89
  br i1 %2001, label %2002, label %2158, !prof !196

2002:                                             ; preds = %1999
  %2003 = load i32, ptr %44, align 8
  %2004 = and i32 %2003, 255
  %2005 = add nsw i32 %2004, -10
  %2006 = icmp ult i32 %2005, -9
  br i1 %2006, label %2020, label %2007, !prof !197

2007:                                             ; preds = %2002
  %2008 = zext nneg i32 %2004 to i64
  %2009 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2008
  %2010 = load i32, ptr %2009, align 4, !tbaa !106
  %2011 = zext i32 %2010 to i64
  %2012 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2011
  %2013 = load i64, ptr %2012, align 8, !tbaa !138
  %2014 = icmp eq i64 %2013, 0
  br i1 %2014, label %2015, label %2016, !prof !197

2015:                                             ; preds = %2007
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2016

2016:                                             ; preds = %2015, %2007
  %2017 = getelementptr inbounds i8, ptr %44, i64 %2013
  %2018 = getelementptr inbounds ptr, ptr %2017, i64 1
  %2019 = load ptr, ptr %2018, align 8, !tbaa !91
  br label %2020

2020:                                             ; preds = %2016, %2002
  %2021 = phi ptr [ %2019, %2016 ], [ null, %2002 ]
  %2022 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 3
  %2023 = load i32, ptr %2022, align 4, !tbaa !102
  %2024 = icmp ugt i32 %2023, 2
  br i1 %2024, label %2025, label %2043, !prof !198

2025:                                             ; preds = %2020
  %2026 = load i32, ptr %44, align 8
  %2027 = and i32 %2026, 255
  %2028 = add nsw i32 %2027, -10
  %2029 = icmp ult i32 %2028, -9
  br i1 %2029, label %2043, label %2030, !prof !197

2030:                                             ; preds = %2025
  %2031 = zext nneg i32 %2027 to i64
  %2032 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2031
  %2033 = load i32, ptr %2032, align 4, !tbaa !106
  %2034 = zext i32 %2033 to i64
  %2035 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2034
  %2036 = load i64, ptr %2035, align 8, !tbaa !138
  %2037 = icmp eq i64 %2036, 0
  br i1 %2037, label %2038, label %2039, !prof !197

2038:                                             ; preds = %2030
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2039

2039:                                             ; preds = %2038, %2030
  %2040 = getelementptr inbounds i8, ptr %44, i64 %2036
  %2041 = getelementptr inbounds ptr, ptr %2040, i64 2
  %2042 = load ptr, ptr %2041, align 8, !tbaa !91
  br label %2043

2043:                                             ; preds = %2039, %2025, %2020
  %2044 = phi ptr [ null, %2020 ], [ %2042, %2039 ], [ null, %2025 ]
  %2045 = load i64, ptr %2044, align 8
  %2046 = and i64 %2045, 65535
  %2047 = icmp eq i64 %2046, 23
  br i1 %2047, label %2048, label %2154, !prof !198

2048:                                             ; preds = %2043
  %2049 = load i64, ptr %2021, align 8
  %2050 = and i64 %2049, 4295032831
  %2051 = icmp eq i64 %2050, 141
  br i1 %2051, label %2052, label %2122, !prof !198

2052:                                             ; preds = %2048
  %2053 = getelementptr inbounds %struct.tree_ssa_name, ptr %2021, i64 0, i32 2
  %2054 = load ptr, ptr %2053, align 8, !tbaa !102
  %2055 = load i32, ptr %2054, align 8
  %2056 = and i32 %2055, 255
  %2057 = icmp eq i32 %2056, 6
  br i1 %2057, label %2058, label %2122, !prof !198

2058:                                             ; preds = %2052
  %2059 = lshr i32 %2055, 16
  %2060 = zext nneg i32 %2059 to i64
  %2061 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2060
  %2062 = load i8, ptr %2061, align 1, !tbaa !102
  %2063 = icmp eq i8 %2062, 3
  br i1 %2063, label %2064, label %2080, !prof !199

2064:                                             ; preds = %2058
  %2065 = zext nneg i32 %2056 to i64
  %2066 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2065
  %2067 = load i32, ptr %2066, align 4, !tbaa !106
  %2068 = zext i32 %2067 to i64
  %2069 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2068
  %2070 = load i64, ptr %2069, align 8, !tbaa !138
  %2071 = icmp eq i64 %2070, 0
  br i1 %2071, label %2072, label %2073, !prof !200

2072:                                             ; preds = %2064
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2073

2073:                                             ; preds = %2072, %2064
  %2074 = getelementptr inbounds i8, ptr %2054, i64 %2070
  %2075 = getelementptr inbounds ptr, ptr %2074, i64 1
  %2076 = load ptr, ptr %2075, align 8, !tbaa !91
  %2077 = load i64, ptr %2076, align 8
  %2078 = trunc i64 %2077 to i32
  %2079 = and i32 %2078, 65535
  br label %2080

2080:                                             ; preds = %2073, %2058
  %2081 = phi i32 [ %2079, %2073 ], [ %2059, %2058 ]
  %2082 = freeze i32 %2081
  %2083 = and i32 %2082, 65533
  %2084 = icmp eq i32 %2083, 116
  br i1 %2084, label %2086, label %2085

2085:                                             ; preds = %2080
  switch i32 %2082, label %2122 [
    i32 113, label %2086
    i32 77, label %2086
  ]

2086:                                             ; preds = %2085, %2085, %2080
  %2087 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %2054)
  %2088 = load i64, ptr %2087, align 8
  %2089 = and i64 %2088, 65535
  %2090 = icmp eq i64 %2089, 6
  br i1 %2090, label %2101, label %2091, !prof !201

2091:                                             ; preds = %2086
  %2092 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %2054)
  %2093 = load i64, ptr %2092, align 8
  %2094 = and i64 %2093, 65535
  %2095 = icmp eq i64 %2094, 7
  br i1 %2095, label %2101, label %2096, !prof !201

2096:                                             ; preds = %2091
  %2097 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %2054)
  %2098 = load i64, ptr %2097, align 8
  %2099 = and i64 %2098, 65535
  %2100 = icmp eq i64 %2099, 8
  br i1 %2100, label %2101, label %2122, !prof !202

2101:                                             ; preds = %2096, %2091, %2086
  %2102 = load i32, ptr %2054, align 8
  %2103 = and i32 %2102, 255
  %2104 = add nsw i32 %2103, -1
  %2105 = icmp ult i32 %2104, 9
  call void @llvm.assume(i1 %2105)
  %2106 = zext nneg i32 %2103 to i64
  %2107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2106
  %2108 = load i32, ptr %2107, align 4, !tbaa !106
  %2109 = zext i32 %2108 to i64
  %2110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2109
  %2111 = load i64, ptr %2110, align 8, !tbaa !138
  %2112 = icmp eq i64 %2111, 0
  br i1 %2112, label %2113, label %2114, !prof !201

2113:                                             ; preds = %2101
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2114

2114:                                             ; preds = %2113, %2101
  %2115 = getelementptr inbounds i8, ptr %2054, i64 %2111
  %2116 = getelementptr inbounds ptr, ptr %2115, i64 1
  %2117 = load ptr, ptr %2116, align 8, !tbaa !91
  %2118 = load i64, ptr %2117, align 8
  %2119 = and i64 %2118, 65535
  %2120 = icmp eq i64 %2119, 121
  %2121 = select i1 %2120, ptr %2117, ptr %2021, !prof !201
  br label %2122

2122:                                             ; preds = %2085, %2052, %2114, %2096, %2048
  %2123 = phi ptr [ %2021, %2048 ], [ %2121, %2114 ], [ %2021, %2096 ], [ %2021, %2085 ], [ %2021, %2052 ]
  %2124 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 2
  %2125 = load i32, ptr %2124, align 8, !tbaa !102
  %2126 = load i32, ptr %44, align 8
  %2127 = and i32 %2126, 255
  %2128 = add nsw i32 %2127, -1
  %2129 = icmp ult i32 %2128, 9
  call void @llvm.assume(i1 %2129)
  %2130 = zext nneg i32 %2127 to i64
  %2131 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2130
  %2132 = load i32, ptr %2131, align 4, !tbaa !106
  %2133 = zext i32 %2132 to i64
  %2134 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2133
  %2135 = load i64, ptr %2134, align 8, !tbaa !138
  %2136 = icmp eq i64 %2135, 0
  br i1 %2136, label %2137, label %2138, !prof !197

2137:                                             ; preds = %2122
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2138

2138:                                             ; preds = %2137, %2122
  %2139 = getelementptr inbounds i8, ptr %44, i64 %2135
  %2140 = load ptr, ptr %2139, align 8, !tbaa !91
  %2141 = getelementptr inbounds %struct.tree_common, ptr %2140, i64 0, i32 2
  %2142 = load ptr, ptr %2141, align 8, !tbaa !102
  %2143 = call ptr @fold_binary_loc(i32 noundef %2125, i32 noundef 89, ptr noundef %2142, ptr noundef %2123, ptr noundef nonnull %2044) #18
  %2144 = icmp eq ptr %2143, null
  br i1 %2144, label %2154, label %2145, !prof !198

2145:                                             ; preds = %2138
  %2146 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2143) #18
  %2147 = icmp eq i8 %2146, 0
  br i1 %2147, label %2154, label %2148

2148:                                             ; preds = %2145
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %7, ptr noundef nonnull %2143) #18
  %2149 = load i32, ptr %44, align 8
  %2150 = and i32 %2149, 255
  %2151 = add nsw i32 %2150, -10
  %2152 = icmp ult i32 %2151, -9
  br i1 %2152, label %2154, label %2153

2153:                                             ; preds = %2148
  call void @gimple_set_modified(ptr noundef nonnull %44, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %44) #18
  br label %2154

2154:                                             ; preds = %2043, %2138, %2145, %2148, %2153
  %2155 = load ptr, ptr %7, align 8, !tbaa !141
  %2156 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2155, i64 0, i32 2
  %2157 = load ptr, ptr %2156, align 8, !tbaa !143
  store ptr %2157, ptr %7, align 8, !tbaa !141
  br label %3039

2158:                                             ; preds = %1999
  %2159 = load ptr, ptr %7, align 8, !tbaa !141
  %2160 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2159, i64 0, i32 2
  %2161 = load ptr, ptr %2160, align 8, !tbaa !143
  store ptr %2161, ptr %7, align 8, !tbaa !141
  br label %3039

2162:                                             ; preds = %41
  %2163 = trunc i32 %45 to i8
  switch i8 %2163, label %3036 [
    i8 5, label %2164
    i8 1, label %2314
  ], !prof !203

2164:                                             ; preds = %2162
  %2165 = add nsw i32 %46, -10
  %2166 = icmp ult i32 %2165, -9
  br i1 %2166, label %2179, label %2167, !prof !204

2167:                                             ; preds = %2164
  %2168 = zext nneg i32 %46 to i64
  %2169 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2168
  %2170 = load i32, ptr %2169, align 4, !tbaa !106
  %2171 = zext i32 %2170 to i64
  %2172 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2171
  %2173 = load i64, ptr %2172, align 8, !tbaa !138
  %2174 = icmp eq i64 %2173, 0
  br i1 %2174, label %2175, label %2176, !prof !204

2175:                                             ; preds = %2167
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2176

2176:                                             ; preds = %2175, %2167
  %2177 = getelementptr inbounds i8, ptr %44, i64 %2173
  %2178 = load ptr, ptr %2177, align 8, !tbaa !91
  br label %2179

2179:                                             ; preds = %2176, %2164
  %2180 = phi ptr [ %2178, %2176 ], [ null, %2164 ]
  %2181 = load i64, ptr %2180, align 8
  %2182 = and i64 %2181, 65535
  %2183 = icmp eq i64 %2182, 141
  br i1 %2183, label %2184, label %2310, !prof !205

2184:                                             ; preds = %2179
  %2185 = getelementptr inbounds %struct.tree_ssa_name, ptr %2180, i64 0, i32 2
  %2186 = load ptr, ptr %2185, align 8, !tbaa !102
  %2187 = load i32, ptr %2186, align 8
  %2188 = and i32 %2187, 255
  %2189 = icmp eq i32 %2188, 6
  br i1 %2189, label %2190, label %2310, !prof !206

2190:                                             ; preds = %2184
  %2191 = lshr i32 %2187, 16
  %2192 = zext nneg i32 %2191 to i64
  %2193 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2192
  %2194 = load i8, ptr %2193, align 1, !tbaa !102
  %2195 = icmp eq i8 %2194, 3
  br i1 %2195, label %2196, label %2212, !prof !207

2196:                                             ; preds = %2190
  %2197 = zext nneg i32 %2188 to i64
  %2198 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2197
  %2199 = load i32, ptr %2198, align 4, !tbaa !106
  %2200 = zext i32 %2199 to i64
  %2201 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2200
  %2202 = load i64, ptr %2201, align 8, !tbaa !138
  %2203 = icmp eq i64 %2202, 0
  br i1 %2203, label %2204, label %2205, !prof !208

2204:                                             ; preds = %2196
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2205

2205:                                             ; preds = %2204, %2196
  %2206 = getelementptr inbounds i8, ptr %2186, i64 %2202
  %2207 = getelementptr inbounds ptr, ptr %2206, i64 1
  %2208 = load ptr, ptr %2207, align 8, !tbaa !91
  %2209 = load i64, ptr %2208, align 8
  %2210 = trunc i64 %2209 to i32
  %2211 = and i32 %2210, 65535
  br label %2212

2212:                                             ; preds = %2205, %2190
  %2213 = phi i32 [ %2211, %2205 ], [ %2191, %2190 ]
  %2214 = icmp eq i32 %2213, 116
  br i1 %2214, label %2215, label %2310, !prof !208

2215:                                             ; preds = %2212
  %2216 = load i32, ptr %2186, align 8
  %2217 = and i32 %2216, 255
  %2218 = add nsw i32 %2217, -10
  %2219 = icmp ult i32 %2218, -9
  br i1 %2219, label %2233, label %2220

2220:                                             ; preds = %2215
  %2221 = zext nneg i32 %2217 to i64
  %2222 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2221
  %2223 = load i32, ptr %2222, align 4, !tbaa !106
  %2224 = zext i32 %2223 to i64
  %2225 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2224
  %2226 = load i64, ptr %2225, align 8, !tbaa !138
  %2227 = icmp eq i64 %2226, 0
  br i1 %2227, label %2228, label %2229

2228:                                             ; preds = %2220
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2229

2229:                                             ; preds = %2228, %2220
  %2230 = getelementptr inbounds i8, ptr %2186, i64 %2226
  %2231 = getelementptr inbounds ptr, ptr %2230, i64 1
  %2232 = load ptr, ptr %2231, align 8, !tbaa !91
  br label %2233

2233:                                             ; preds = %2229, %2215
  %2234 = phi ptr [ %2232, %2229 ], [ null, %2215 ]
  %2235 = getelementptr inbounds %struct.tree_common, ptr %2180, i64 0, i32 2
  %2236 = load ptr, ptr %2235, align 8, !tbaa !102
  %2237 = getelementptr inbounds %struct.tree_common, ptr %2234, i64 0, i32 2
  %2238 = load ptr, ptr %2237, align 8, !tbaa !102
  %2239 = getelementptr inbounds %struct.tree_type, ptr %2238, i64 0, i32 6
  %2240 = load i32, ptr %2239, align 4
  %2241 = and i32 %2240, 1023
  %2242 = load i64, ptr %2238, align 8
  %2243 = trunc i64 %2242 to i32
  %2244 = and i32 %2243, 65535
  %2245 = add nsw i32 %2244, -6
  %2246 = icmp ult i32 %2245, 3
  br i1 %2246, label %2247, label %2260

2247:                                             ; preds = %2233
  %2248 = load i64, ptr %2236, align 8
  %2249 = and i64 %2248, 2097152
  %2250 = icmp ne i64 %2249, 0
  %2251 = and i64 %2242, 2097152
  %2252 = icmp eq i64 %2251, 0
  %2253 = and i1 %2252, %2250
  br i1 %2253, label %2260, label %2254

2254:                                             ; preds = %2247
  %2255 = icmp eq i64 %2249, 0
  br i1 %2255, label %2256, label %2260

2256:                                             ; preds = %2254
  %2257 = lshr i32 %2243, 21
  %2258 = and i32 %2257, 1
  %2259 = add nuw nsw i32 %2258, %2241
  br label %2260

2260:                                             ; preds = %2256, %2254, %2247, %2233
  %2261 = phi i32 [ %2241, %2254 ], [ %2241, %2233 ], [ %2259, %2256 ], [ %2241, %2247 ]
  %2262 = phi i1 [ true, %2254 ], [ false, %2233 ], [ true, %2256 ], [ false, %2247 ]
  %2263 = getelementptr inbounds %struct.tree_type, ptr %2236, i64 0, i32 6
  %2264 = load i32, ptr %2263, align 4
  %2265 = and i32 %2264, 1023
  %2266 = icmp sge i32 %2265, %2261
  %2267 = and i1 %2262, %2266
  br i1 %2267, label %2268, label %2310

2268:                                             ; preds = %2260
  %2269 = load i64, ptr %2234, align 8
  %2270 = trunc i64 %2269 to i16
  switch i16 %2270, label %2276 [
    i16 32, label %2282
    i16 34, label %2282
    i16 36, label %2282
    i16 141, label %2271
  ]

2271:                                             ; preds = %2268
  %2272 = getelementptr inbounds %struct.tree_ssa_name, ptr %2234, i64 0, i32 1
  %2273 = load ptr, ptr %2272, align 8, !tbaa !102
  %2274 = load i64, ptr %2273, align 8
  %2275 = trunc i64 %2274 to i16
  switch i16 %2275, label %2276 [
    i16 32, label %2282
    i16 34, label %2282
    i16 36, label %2282
  ]

2276:                                             ; preds = %2271, %2268
  %2277 = and i64 %2269, 65535
  %2278 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2277
  %2279 = load i32, ptr %2278, align 4, !tbaa !106
  %2280 = icmp eq i32 %2279, 1
  br i1 %2280, label %2282, label %2281

2281:                                             ; preds = %2276
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3203, ptr noundef nonnull @.str.2) #18
  br label %2282

2282:                                             ; preds = %2276, %2271, %2271, %2268, %2268, %2281, %2271, %2268
  %2283 = load i32, ptr %44, align 8
  %2284 = and i32 %2283, 255
  %2285 = add nsw i32 %2284, -10
  %2286 = icmp ult i32 %2285, -9
  br i1 %2286, label %2291, label %2287

2287:                                             ; preds = %2282
  %2288 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 3
  %2289 = load i32, ptr %2288, align 4, !tbaa !102
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %2291, label %2292

2291:                                             ; preds = %2287, %2282
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %2292

2292:                                             ; preds = %2291, %2287
  %2293 = load i32, ptr %44, align 8
  %2294 = and i32 %2293, 255
  %2295 = zext nneg i32 %2294 to i64
  %2296 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2295
  %2297 = load i32, ptr %2296, align 4, !tbaa !106
  %2298 = zext i32 %2297 to i64
  %2299 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2298
  %2300 = load i64, ptr %2299, align 8, !tbaa !138
  %2301 = icmp eq i64 %2300, 0
  br i1 %2301, label %2302, label %2303

2302:                                             ; preds = %2292
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2303

2303:                                             ; preds = %2302, %2292
  %2304 = getelementptr inbounds i8, ptr %44, i64 %2300
  store ptr %2234, ptr %2304, align 8, !tbaa !91
  %2305 = load i32, ptr %44, align 8
  %2306 = and i32 %2305, 255
  %2307 = add nsw i32 %2306, -10
  %2308 = icmp ult i32 %2307, -9
  br i1 %2308, label %2310, label %2309

2309:                                             ; preds = %2303
  call void @gimple_set_modified(ptr noundef nonnull %44, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %44) #18
  br label %2310

2310:                                             ; preds = %2179, %2184, %2212, %2260, %2303, %2309
  %2311 = load ptr, ptr %7, align 8, !tbaa !141
  %2312 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2311, i64 0, i32 2
  %2313 = load ptr, ptr %2312, align 8, !tbaa !143
  store ptr %2313, ptr %7, align 8, !tbaa !141
  br label %3039

2314:                                             ; preds = %2162
  call void @fold_defer_overflow_warnings() #18
  %2315 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 2
  %2316 = load i32, ptr %2315, align 8, !tbaa !102
  br label %2317

2317:                                             ; preds = %3021, %2314
  %2318 = phi ptr [ undef, %2314 ], [ %3022, %3021 ]
  %2319 = phi i32 [ 0, %2314 ], [ %3023, %3021 ]
  %2320 = phi i32 [ undef, %2314 ], [ %3025, %3021 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #18
  store i8 0, ptr %1, align 1, !tbaa !102
  %2321 = load i32, ptr %44, align 8
  %2322 = lshr i32 %2321, 16
  %2323 = zext nneg i32 %2322 to i64
  %2324 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2323
  %2325 = load i32, ptr %2324, align 4, !tbaa !106
  %2326 = icmp eq i32 %2325, 5
  br i1 %2326, label %2327, label %2952, !prof !209

2327:                                             ; preds = %2317
  %2328 = and i32 %2321, 255
  %2329 = add nsw i32 %2328, -1
  %2330 = icmp ult i32 %2329, 9
  call void @llvm.assume(i1 %2330)
  %2331 = zext nneg i32 %2328 to i64
  %2332 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2331
  %2333 = load i32, ptr %2332, align 4, !tbaa !106
  %2334 = zext i32 %2333 to i64
  %2335 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2334
  %2336 = load i64, ptr %2335, align 8, !tbaa !138
  %2337 = icmp eq i64 %2336, 0
  br i1 %2337, label %2338, label %2339, !prof !210

2338:                                             ; preds = %2327
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2339

2339:                                             ; preds = %2338, %2327
  %2340 = getelementptr inbounds i8, ptr %44, i64 %2336
  %2341 = load ptr, ptr %2340, align 8, !tbaa !91
  %2342 = load i64, ptr %2341, align 8
  %2343 = and i64 %2342, 65535
  %2344 = icmp eq i64 %2343, 141
  br i1 %2344, label %2345, label %2952, !prof !209

2345:                                             ; preds = %2339
  %2346 = load i32, ptr %44, align 8
  %2347 = and i32 %2346, 255
  %2348 = add nsw i32 %2347, -10
  %2349 = icmp ult i32 %2348, -9
  br i1 %2349, label %2362, label %2350, !prof !210

2350:                                             ; preds = %2345
  %2351 = zext nneg i32 %2347 to i64
  %2352 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2351
  %2353 = load i32, ptr %2352, align 4, !tbaa !106
  %2354 = zext i32 %2353 to i64
  %2355 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2354
  %2356 = load i64, ptr %2355, align 8, !tbaa !138
  %2357 = icmp eq i64 %2356, 0
  br i1 %2357, label %2358, label %2359, !prof !210

2358:                                             ; preds = %2350
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2359

2359:                                             ; preds = %2358, %2350
  %2360 = getelementptr inbounds i8, ptr %44, i64 %2356
  %2361 = load ptr, ptr %2360, align 8, !tbaa !91
  br label %2362

2362:                                             ; preds = %2359, %2345
  %2363 = phi ptr [ %2361, %2359 ], [ null, %2345 ]
  br label %2364

2364:                                             ; preds = %2556, %2362
  %2365 = phi i8 [ 0, %2362 ], [ %2557, %2556 ]
  %2366 = phi i8 [ 1, %2362 ], [ %2394, %2556 ]
  %2367 = phi ptr [ %2363, %2362 ], [ %2558, %2556 ]
  %2368 = phi ptr [ undef, %2362 ], [ %2560, %2556 ]
  %2369 = getelementptr inbounds %struct.tree_ssa_name, ptr %2367, i64 0, i32 2
  %2370 = load ptr, ptr %2369, align 8, !tbaa !102
  %2371 = getelementptr inbounds %struct.tree_ssa_name, ptr %2367, i64 0, i32 5
  %2372 = getelementptr inbounds %struct.tree_ssa_name, ptr %2367, i64 0, i32 5, i32 1
  %2373 = load ptr, ptr %2372, align 8, !tbaa !170
  %2374 = icmp eq ptr %2371, %2373
  br i1 %2374, label %2391, label %2375, !prof !210

2375:                                             ; preds = %2364
  %2376 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2373, i64 0, i32 1
  %2377 = load ptr, ptr %2376, align 8, !tbaa !170
  %2378 = icmp eq ptr %2371, %2377
  br i1 %2378, label %2379, label %2386, !prof !211

2379:                                             ; preds = %2375
  %2380 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2373, i64 0, i32 2
  %2381 = load ptr, ptr %2380, align 8, !tbaa !102
  %2382 = load i32, ptr %2381, align 8
  %2383 = and i32 %2382, 255
  %2384 = icmp ne i32 %2383, 2
  %2385 = zext i1 %2384 to i8
  br label %2391

2386:                                             ; preds = %2375
  %2387 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !106
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2391, label %2389, !prof !212

2389:                                             ; preds = %2386
  %2390 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2371, ptr noundef null, ptr noundef null) #18
  br label %2391

2391:                                             ; preds = %2389, %2386, %2379, %2364
  %2392 = phi i8 [ %2385, %2379 ], [ %2390, %2389 ], [ 0, %2386 ], [ 0, %2364 ]
  %2393 = icmp eq i8 %2392, 0
  %2394 = select i1 %2393, i8 0, i8 %2366, !prof !213
  %2395 = load i32, ptr %2370, align 8
  %2396 = and i32 %2395, 255
  %2397 = icmp eq i32 %2396, 6
  br i1 %2397, label %2398, label %2556, !prof !214

2398:                                             ; preds = %2391
  %2399 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %2370) #18
  %2400 = icmp eq i8 %2399, 0
  %2401 = load i32, ptr %2370, align 8
  %2402 = and i32 %2401, 255
  %2403 = add nsw i32 %2402, -10
  %2404 = icmp ult i32 %2403, -9
  br i1 %2400, label %2405, label %2542, !prof !215

2405:                                             ; preds = %2398
  br i1 %2404, label %2419, label %2406, !prof !216

2406:                                             ; preds = %2405
  %2407 = zext nneg i32 %2402 to i64
  %2408 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2407
  %2409 = load i32, ptr %2408, align 4, !tbaa !106
  %2410 = zext i32 %2409 to i64
  %2411 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2410
  %2412 = load i64, ptr %2411, align 8, !tbaa !138
  %2413 = icmp eq i64 %2412, 0
  br i1 %2413, label %2414, label %2415, !prof !216

2414:                                             ; preds = %2406
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2415

2415:                                             ; preds = %2414, %2406
  %2416 = getelementptr inbounds i8, ptr %2370, i64 %2412
  %2417 = getelementptr inbounds ptr, ptr %2416, i64 1
  %2418 = load ptr, ptr %2417, align 8, !tbaa !91
  br label %2419

2419:                                             ; preds = %2415, %2405
  %2420 = phi ptr [ %2418, %2415 ], [ null, %2405 ]
  %2421 = load i32, ptr %2370, align 8
  %2422 = trunc i32 %2421 to i8
  switch i8 %2422, label %2425 [
    i8 6, label %2423
    i8 1, label %2423
    i8 8, label %2426
  ], !prof !217

2423:                                             ; preds = %2419, %2419
  %2424 = lshr i32 %2421, 16
  br label %2426

2425:                                             ; preds = %2419
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %2426

2426:                                             ; preds = %2425, %2423, %2419
  %2427 = phi i32 [ %2424, %2423 ], [ 0, %2425 ], [ 59, %2419 ]
  %2428 = zext nneg i32 %2427 to i64
  %2429 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2428
  %2430 = load i8, ptr %2429, align 1, !tbaa !102
  %2431 = icmp eq i8 %2430, 3
  br i1 %2431, label %2432, label %2452, !prof !218

2432:                                             ; preds = %2426
  %2433 = load i32, ptr %2370, align 8
  %2434 = and i32 %2433, 255
  %2435 = add nsw i32 %2434, -1
  %2436 = icmp ult i32 %2435, 9
  call void @llvm.assume(i1 %2436)
  %2437 = zext nneg i32 %2434 to i64
  %2438 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2437
  %2439 = load i32, ptr %2438, align 4, !tbaa !106
  %2440 = zext i32 %2439 to i64
  %2441 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2440
  %2442 = load i64, ptr %2441, align 8, !tbaa !138
  %2443 = icmp eq i64 %2442, 0
  br i1 %2443, label %2444, label %2445, !prof !219

2444:                                             ; preds = %2432
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2445

2445:                                             ; preds = %2444, %2432
  %2446 = getelementptr inbounds i8, ptr %2370, i64 %2442
  %2447 = getelementptr inbounds ptr, ptr %2446, i64 1
  %2448 = load ptr, ptr %2447, align 8, !tbaa !91
  %2449 = load i64, ptr %2448, align 8
  %2450 = trunc i64 %2449 to i32
  %2451 = and i32 %2450, 65535
  br label %2452

2452:                                             ; preds = %2445, %2426
  %2453 = phi i32 [ %2451, %2445 ], [ %2427, %2426 ]
  %2454 = icmp eq i32 %2453, 116
  br i1 %2454, label %2490, label %2455, !prof !220

2455:                                             ; preds = %2452
  %2456 = load i32, ptr %2370, align 8
  %2457 = trunc i32 %2456 to i8
  switch i8 %2457, label %2460 [
    i8 6, label %2458
    i8 1, label %2458
    i8 8, label %2461
  ], !prof !221

2458:                                             ; preds = %2455, %2455
  %2459 = lshr i32 %2456, 16
  br label %2461

2460:                                             ; preds = %2455
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %2461

2461:                                             ; preds = %2460, %2458, %2455
  %2462 = phi i32 [ %2459, %2458 ], [ 0, %2460 ], [ 59, %2455 ]
  %2463 = zext nneg i32 %2462 to i64
  %2464 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2463
  %2465 = load i8, ptr %2464, align 1, !tbaa !102
  %2466 = icmp eq i8 %2465, 3
  br i1 %2466, label %2467, label %2487, !prof !222

2467:                                             ; preds = %2461
  %2468 = load i32, ptr %2370, align 8
  %2469 = and i32 %2468, 255
  %2470 = add nsw i32 %2469, -1
  %2471 = icmp ult i32 %2470, 9
  call void @llvm.assume(i1 %2471)
  %2472 = zext nneg i32 %2469 to i64
  %2473 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2472
  %2474 = load i32, ptr %2473, align 4, !tbaa !106
  %2475 = zext i32 %2474 to i64
  %2476 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2475
  %2477 = load i64, ptr %2476, align 8, !tbaa !138
  %2478 = icmp eq i64 %2477, 0
  br i1 %2478, label %2479, label %2480, !prof !219

2479:                                             ; preds = %2467
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2480

2480:                                             ; preds = %2479, %2467
  %2481 = getelementptr inbounds i8, ptr %2370, i64 %2477
  %2482 = getelementptr inbounds ptr, ptr %2481, i64 1
  %2483 = load ptr, ptr %2482, align 8, !tbaa !91
  %2484 = load i64, ptr %2483, align 8
  %2485 = trunc i64 %2484 to i32
  %2486 = and i32 %2485, 65535
  br label %2487

2487:                                             ; preds = %2480, %2461
  %2488 = phi i32 [ %2486, %2480 ], [ %2462, %2461 ]
  %2489 = icmp eq i32 %2488, 113
  br i1 %2489, label %2490, label %2541, !prof !223

2490:                                             ; preds = %2487, %2452
  %2491 = load i64, ptr %2420, align 8
  %2492 = and i64 %2491, 65535
  %2493 = icmp eq i64 %2492, 141
  br i1 %2493, label %2494, label %2541, !prof !224

2494:                                             ; preds = %2490
  %2495 = load i32, ptr %2370, align 8
  %2496 = and i32 %2495, 255
  %2497 = add nsw i32 %2496, -1
  %2498 = icmp ult i32 %2497, 9
  call void @llvm.assume(i1 %2498)
  %2499 = zext nneg i32 %2496 to i64
  %2500 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2499
  %2501 = load i32, ptr %2500, align 4, !tbaa !106
  %2502 = zext i32 %2501 to i64
  %2503 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2502
  %2504 = load i64, ptr %2503, align 8, !tbaa !138
  %2505 = icmp eq i64 %2504, 0
  br i1 %2505, label %2506, label %2507, !prof !225

2506:                                             ; preds = %2494
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2507

2507:                                             ; preds = %2506, %2494
  %2508 = getelementptr inbounds i8, ptr %2370, i64 %2504
  %2509 = load ptr, ptr %2508, align 8, !tbaa !91
  %2510 = getelementptr inbounds %struct.tree_common, ptr %2509, i64 0, i32 2
  %2511 = load ptr, ptr %2510, align 8, !tbaa !102
  %2512 = load i64, ptr %2511, align 8
  %2513 = and i64 %2512, 65535
  %2514 = icmp eq i64 %2513, 10
  br i1 %2514, label %2536, label %2515, !prof !225

2515:                                             ; preds = %2507
  %2516 = load i32, ptr %2370, align 8
  %2517 = and i32 %2516, 255
  %2518 = add nsw i32 %2517, -1
  %2519 = icmp ult i32 %2518, 9
  call void @llvm.assume(i1 %2519)
  %2520 = zext nneg i32 %2517 to i64
  %2521 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2520
  %2522 = load i32, ptr %2521, align 4, !tbaa !106
  %2523 = zext i32 %2522 to i64
  %2524 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2523
  %2525 = load i64, ptr %2524, align 8, !tbaa !138
  %2526 = icmp eq i64 %2525, 0
  br i1 %2526, label %2527, label %2528, !prof !225

2527:                                             ; preds = %2515
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2528

2528:                                             ; preds = %2527, %2515
  %2529 = getelementptr inbounds i8, ptr %2370, i64 %2525
  %2530 = load ptr, ptr %2529, align 8, !tbaa !91
  %2531 = getelementptr inbounds %struct.tree_common, ptr %2530, i64 0, i32 2
  %2532 = load ptr, ptr %2531, align 8, !tbaa !102
  %2533 = load i64, ptr %2532, align 8
  %2534 = and i64 %2533, 65535
  %2535 = icmp eq i64 %2534, 12
  br i1 %2535, label %2536, label %2541, !prof !225

2536:                                             ; preds = %2528, %2507
  %2537 = getelementptr inbounds %struct.tree_common, ptr %2420, i64 0, i32 2
  %2538 = load ptr, ptr %2537, align 8, !tbaa !102
  %2539 = load i64, ptr %2538, align 8
  %2540 = trunc i64 %2539 to i16
  switch i16 %2540, label %2541 [
    i16 10, label %2556
    i16 12, label %2556
  ]

2541:                                             ; preds = %2536, %2528, %2490, %2487
  br label %2556

2542:                                             ; preds = %2398
  br i1 %2404, label %2556, label %2543

2543:                                             ; preds = %2542
  %2544 = zext nneg i32 %2402 to i64
  %2545 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2544
  %2546 = load i32, ptr %2545, align 4, !tbaa !106
  %2547 = zext i32 %2546 to i64
  %2548 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2547
  %2549 = load i64, ptr %2548, align 8, !tbaa !138
  %2550 = icmp eq i64 %2549, 0
  br i1 %2550, label %2551, label %2552

2551:                                             ; preds = %2543
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2552

2552:                                             ; preds = %2551, %2543
  %2553 = getelementptr inbounds i8, ptr %2370, i64 %2549
  %2554 = getelementptr inbounds ptr, ptr %2553, i64 1
  %2555 = load ptr, ptr %2554, align 8, !tbaa !91
  br label %2556

2556:                                             ; preds = %2552, %2542, %2541, %2536, %2536, %2391
  %2557 = phi i8 [ %2394, %2541 ], [ %2394, %2536 ], [ %2394, %2536 ], [ %2365, %2542 ], [ %2365, %2552 ], [ %2365, %2391 ]
  %2558 = phi ptr [ %2367, %2541 ], [ %2420, %2536 ], [ %2420, %2536 ], [ null, %2542 ], [ %2555, %2552 ], [ %2367, %2391 ]
  %2559 = phi i1 [ false, %2541 ], [ true, %2536 ], [ true, %2536 ], [ true, %2542 ], [ true, %2552 ], [ false, %2391 ]
  %2560 = phi ptr [ %2370, %2541 ], [ %2368, %2536 ], [ %2368, %2536 ], [ %2368, %2542 ], [ %2368, %2552 ], [ null, %2391 ]
  br i1 %2559, label %2364, label %2561, !prof !210, !llvm.loop !226

2561:                                             ; preds = %2556
  %2562 = icmp eq ptr %2560, null
  br i1 %2562, label %2850, label %2563, !prof !227

2563:                                             ; preds = %2561
  %2564 = load i32, ptr %2560, align 8
  %2565 = and i32 %2564, 255
  %2566 = icmp eq i32 %2565, 6
  br i1 %2566, label %2568, label %2567, !prof !215

2567:                                             ; preds = %2563
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 266, ptr noundef nonnull @.str.2) #18
  br label %2568

2568:                                             ; preds = %2567, %2563
  %2569 = load i32, ptr %2560, align 8
  %2570 = and i32 %2569, 254
  %2571 = add nsw i32 %2570, -10
  %2572 = icmp ult i32 %2571, -4
  %2573 = and i32 %2569, 16384
  %2574 = icmp eq i32 %2573, 0
  %2575 = or i1 %2574, %2572
  br i1 %2575, label %2576, label %2850, !prof !215

2576:                                             ; preds = %2568
  %2577 = trunc i32 %2569 to i8
  switch i8 %2577, label %2580 [
    i8 6, label %2578
    i8 1, label %2578
    i8 8, label %2581
  ], !prof !217

2578:                                             ; preds = %2576, %2576
  %2579 = lshr i32 %2569, 16
  br label %2581

2580:                                             ; preds = %2576
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %2581

2581:                                             ; preds = %2580, %2578, %2576
  %2582 = phi i32 [ %2579, %2578 ], [ 0, %2580 ], [ 59, %2576 ]
  %2583 = zext nneg i32 %2582 to i64
  %2584 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2583
  %2585 = load i8, ptr %2584, align 1, !tbaa !102
  %2586 = icmp eq i8 %2585, 3
  br i1 %2586, label %2587, label %2607, !prof !218

2587:                                             ; preds = %2581
  %2588 = load i32, ptr %2560, align 8
  %2589 = and i32 %2588, 255
  %2590 = add nsw i32 %2589, -1
  %2591 = icmp ult i32 %2590, 9
  call void @llvm.assume(i1 %2591)
  %2592 = zext nneg i32 %2589 to i64
  %2593 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2592
  %2594 = load i32, ptr %2593, align 4, !tbaa !106
  %2595 = zext i32 %2594 to i64
  %2596 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2595
  %2597 = load i64, ptr %2596, align 8, !tbaa !138
  %2598 = icmp eq i64 %2597, 0
  br i1 %2598, label %2599, label %2600, !prof !219

2599:                                             ; preds = %2587
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2600

2600:                                             ; preds = %2599, %2587
  %2601 = getelementptr inbounds i8, ptr %2560, i64 %2597
  %2602 = getelementptr inbounds ptr, ptr %2601, i64 1
  %2603 = load ptr, ptr %2602, align 8, !tbaa !91
  %2604 = load i64, ptr %2603, align 8
  %2605 = trunc i64 %2604 to i32
  %2606 = and i32 %2605, 65535
  br label %2607

2607:                                             ; preds = %2600, %2581
  %2608 = phi i32 [ %2606, %2600 ], [ %2582, %2581 ]
  %2609 = zext nneg i32 %2608 to i64
  %2610 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2609
  %2611 = load i32, ptr %2610, align 4, !tbaa !106
  %2612 = icmp eq i32 %2611, 4
  br i1 %2612, label %2850, label %2613, !prof !228

2613:                                             ; preds = %2607
  %2614 = load i32, ptr %2560, align 8
  %2615 = trunc i32 %2614 to i8
  switch i8 %2615, label %2618 [
    i8 6, label %2616
    i8 1, label %2616
    i8 8, label %2619
  ], !prof !229

2616:                                             ; preds = %2613, %2613
  %2617 = lshr i32 %2614, 16
  br label %2619

2618:                                             ; preds = %2613
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %2619

2619:                                             ; preds = %2618, %2616, %2613
  %2620 = phi i32 [ %2617, %2616 ], [ 0, %2618 ], [ 59, %2613 ]
  %2621 = zext nneg i32 %2620 to i64
  %2622 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2621
  %2623 = load i8, ptr %2622, align 1, !tbaa !102
  %2624 = icmp eq i8 %2623, 3
  br i1 %2624, label %2625, label %2645, !prof !230

2625:                                             ; preds = %2619
  %2626 = load i32, ptr %2560, align 8
  %2627 = and i32 %2626, 255
  %2628 = add nsw i32 %2627, -1
  %2629 = icmp ult i32 %2628, 9
  call void @llvm.assume(i1 %2629)
  %2630 = zext nneg i32 %2627 to i64
  %2631 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2630
  %2632 = load i32, ptr %2631, align 4, !tbaa !106
  %2633 = zext i32 %2632 to i64
  %2634 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2633
  %2635 = load i64, ptr %2634, align 8, !tbaa !138
  %2636 = icmp eq i64 %2635, 0
  br i1 %2636, label %2637, label %2638, !prof !231

2637:                                             ; preds = %2625
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2638

2638:                                             ; preds = %2637, %2625
  %2639 = getelementptr inbounds i8, ptr %2560, i64 %2635
  %2640 = getelementptr inbounds ptr, ptr %2639, i64 1
  %2641 = load ptr, ptr %2640, align 8, !tbaa !91
  %2642 = load i64, ptr %2641, align 8
  %2643 = trunc i64 %2642 to i32
  %2644 = and i32 %2643, 65535
  br label %2645

2645:                                             ; preds = %2638, %2619
  %2646 = phi i32 [ %2644, %2638 ], [ %2620, %2619 ]
  %2647 = zext nneg i32 %2646 to i64
  %2648 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2647
  %2649 = load i32, ptr %2648, align 4, !tbaa !106
  %2650 = icmp eq i32 %2649, 3
  br i1 %2650, label %2850, label %2651, !prof !230

2651:                                             ; preds = %2645
  %2652 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %2560) #18
  %2653 = icmp eq i8 %2652, 0
  br i1 %2653, label %2676, label %2654, !prof !232

2654:                                             ; preds = %2651
  %2655 = load i32, ptr %2560, align 8
  %2656 = and i32 %2655, 255
  %2657 = add nsw i32 %2656, -10
  %2658 = icmp ult i32 %2657, -9
  br i1 %2658, label %2672, label %2659

2659:                                             ; preds = %2654
  %2660 = zext nneg i32 %2656 to i64
  %2661 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2660
  %2662 = load i32, ptr %2661, align 4, !tbaa !106
  %2663 = zext i32 %2662 to i64
  %2664 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2663
  %2665 = load i64, ptr %2664, align 8, !tbaa !138
  %2666 = icmp eq i64 %2665, 0
  br i1 %2666, label %2667, label %2668

2667:                                             ; preds = %2659
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2668

2668:                                             ; preds = %2667, %2659
  %2669 = getelementptr inbounds i8, ptr %2560, i64 %2665
  %2670 = getelementptr inbounds ptr, ptr %2669, i64 1
  %2671 = load ptr, ptr %2670, align 8, !tbaa !91
  br label %2672

2672:                                             ; preds = %2668, %2654
  %2673 = phi ptr [ %2671, %2668 ], [ null, %2654 ]
  %2674 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %2673) #18
  %2675 = icmp eq i8 %2674, 0
  br i1 %2675, label %2676, label %2823

2676:                                             ; preds = %2672, %2651
  %2677 = load i32, ptr %2560, align 8
  %2678 = and i32 %2677, 255
  %2679 = add nsw i32 %2678, -10
  %2680 = icmp ult i32 %2679, -9
  br i1 %2680, label %2684, label %2681, !prof !233

2681:                                             ; preds = %2676
  %2682 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %2560, i64 0, i32 2
  %2683 = load ptr, ptr %2682, align 8, !tbaa !102
  br label %2684

2684:                                             ; preds = %2681, %2676
  %2685 = phi ptr [ %2683, %2681 ], [ null, %2676 ]
  %2686 = icmp eq ptr %2685, null
  br i1 %2686, label %2697, label %2687, !prof !233

2687:                                             ; preds = %2684
  %2688 = and i32 %2677, 254
  %2689 = add nsw i32 %2688, -10
  %2690 = icmp ult i32 %2689, -4
  br i1 %2690, label %2697, label %2691, !prof !233

2691:                                             ; preds = %2687
  %2692 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %2560, i64 0, i32 2
  %2693 = load ptr, ptr %2692, align 8, !tbaa !102
  %2694 = icmp eq ptr %2693, null
  br i1 %2694, label %2697, label %2695, !prof !232

2695:                                             ; preds = %2691
  %2696 = load ptr, ptr %2685, align 8, !tbaa !234
  br label %2697

2697:                                             ; preds = %2695, %2691, %2687, %2684
  %2698 = phi ptr [ %2685, %2684 ], [ %2685, %2687 ], [ %2685, %2691 ], [ %2696, %2695 ]
  %2699 = icmp eq ptr %2698, null
  br i1 %2699, label %2703, label %2700, !prof !233

2700:                                             ; preds = %2697
  %2701 = getelementptr inbounds %struct.use_optype_d, ptr %2698, i64 0, i32 1
  %2702 = load ptr, ptr %2698, align 8, !tbaa !234
  br label %2703

2703:                                             ; preds = %2700, %2697
  %2704 = phi ptr [ %2702, %2700 ], [ %2698, %2697 ]
  %2705 = phi i8 [ 0, %2700 ], [ 1, %2697 ]
  %2706 = phi ptr [ %2701, %2700 ], [ null, %2697 ]
  br i1 %2699, label %2727, label %2707, !prof !236

2707:                                             ; preds = %2703, %2722
  %2708 = phi ptr [ %2725, %2722 ], [ %2706, %2703 ]
  %2709 = phi i8 [ %2724, %2722 ], [ %2705, %2703 ]
  %2710 = phi ptr [ %2723, %2722 ], [ %2704, %2703 ]
  %2711 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2708, i64 0, i32 3
  %2712 = load ptr, ptr %2711, align 8, !tbaa !237
  %2713 = load ptr, ptr %2712, align 8, !tbaa !91
  %2714 = load i64, ptr %2713, align 8
  %2715 = and i64 %2714, 4194304
  %2716 = icmp eq i64 %2715, 0
  br i1 %2716, label %2717, label %2850, !prof !238

2717:                                             ; preds = %2707
  %2718 = icmp eq ptr %2710, null
  br i1 %2718, label %2722, label %2719, !prof !239

2719:                                             ; preds = %2717
  %2720 = getelementptr inbounds %struct.use_optype_d, ptr %2710, i64 0, i32 1
  %2721 = load ptr, ptr %2710, align 8, !tbaa !234
  br label %2722

2722:                                             ; preds = %2719, %2717
  %2723 = phi ptr [ %2721, %2719 ], [ %2710, %2717 ]
  %2724 = phi i8 [ %2709, %2719 ], [ 1, %2717 ]
  %2725 = phi ptr [ %2720, %2719 ], [ null, %2717 ]
  %2726 = icmp eq i8 %2724, 0
  br i1 %2726, label %2707, label %2727, !prof !240, !llvm.loop !241

2727:                                             ; preds = %2722, %2703
  %2728 = trunc i32 %2677 to i8
  switch i8 %2728, label %2731 [
    i8 6, label %2729
    i8 1, label %2729
    i8 8, label %2732
  ], !prof !242

2729:                                             ; preds = %2727, %2727
  %2730 = lshr i32 %2677, 16
  br label %2732

2731:                                             ; preds = %2727
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %2732

2732:                                             ; preds = %2731, %2729, %2727
  %2733 = phi i32 [ %2730, %2729 ], [ 0, %2731 ], [ 59, %2727 ]
  %2734 = zext nneg i32 %2733 to i64
  %2735 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2734
  %2736 = load i8, ptr %2735, align 1, !tbaa !102
  %2737 = icmp eq i8 %2736, 3
  br i1 %2737, label %2738, label %2758, !prof !233

2738:                                             ; preds = %2732
  %2739 = load i32, ptr %2560, align 8
  %2740 = and i32 %2739, 255
  %2741 = add nsw i32 %2740, -1
  %2742 = icmp ult i32 %2741, 9
  call void @llvm.assume(i1 %2742)
  %2743 = zext nneg i32 %2740 to i64
  %2744 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2743
  %2745 = load i32, ptr %2744, align 4, !tbaa !106
  %2746 = zext i32 %2745 to i64
  %2747 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2746
  %2748 = load i64, ptr %2747, align 8, !tbaa !138
  %2749 = icmp eq i64 %2748, 0
  br i1 %2749, label %2750, label %2751

2750:                                             ; preds = %2738
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2751

2751:                                             ; preds = %2750, %2738
  %2752 = getelementptr inbounds i8, ptr %2560, i64 %2748
  %2753 = getelementptr inbounds ptr, ptr %2752, i64 1
  %2754 = load ptr, ptr %2753, align 8, !tbaa !91
  %2755 = load i64, ptr %2754, align 8
  %2756 = trunc i64 %2755 to i32
  %2757 = and i32 %2756, 65535
  br label %2758

2758:                                             ; preds = %2751, %2732
  %2759 = phi i32 [ %2757, %2751 ], [ %2733, %2732 ]
  %2760 = icmp eq i32 %2759, 116
  br i1 %2760, label %2796, label %2761, !prof !243

2761:                                             ; preds = %2758
  %2762 = load i32, ptr %2560, align 8
  %2763 = trunc i32 %2762 to i8
  switch i8 %2763, label %2766 [
    i8 6, label %2764
    i8 1, label %2764
    i8 8, label %2767
  ], !prof !244

2764:                                             ; preds = %2761, %2761
  %2765 = lshr i32 %2762, 16
  br label %2767

2766:                                             ; preds = %2761
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %2767

2767:                                             ; preds = %2766, %2764, %2761
  %2768 = phi i32 [ %2765, %2764 ], [ 0, %2766 ], [ 59, %2761 ]
  %2769 = zext nneg i32 %2768 to i64
  %2770 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2769
  %2771 = load i8, ptr %2770, align 1, !tbaa !102
  %2772 = icmp eq i8 %2771, 3
  br i1 %2772, label %2773, label %2793, !prof !245

2773:                                             ; preds = %2767
  %2774 = load i32, ptr %2560, align 8
  %2775 = and i32 %2774, 255
  %2776 = add nsw i32 %2775, -1
  %2777 = icmp ult i32 %2776, 9
  call void @llvm.assume(i1 %2777)
  %2778 = zext nneg i32 %2775 to i64
  %2779 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2778
  %2780 = load i32, ptr %2779, align 4, !tbaa !106
  %2781 = zext i32 %2780 to i64
  %2782 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2781
  %2783 = load i64, ptr %2782, align 8, !tbaa !138
  %2784 = icmp eq i64 %2783, 0
  br i1 %2784, label %2785, label %2786

2785:                                             ; preds = %2773
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2786

2786:                                             ; preds = %2785, %2773
  %2787 = getelementptr inbounds i8, ptr %2560, i64 %2783
  %2788 = getelementptr inbounds ptr, ptr %2787, i64 1
  %2789 = load ptr, ptr %2788, align 8, !tbaa !91
  %2790 = load i64, ptr %2789, align 8
  %2791 = trunc i64 %2790 to i32
  %2792 = and i32 %2791, 65535
  br label %2793

2793:                                             ; preds = %2786, %2767
  %2794 = phi i32 [ %2792, %2786 ], [ %2768, %2767 ]
  %2795 = icmp eq i32 %2794, 113
  br i1 %2795, label %2796, label %2823, !prof !245

2796:                                             ; preds = %2793, %2758
  %2797 = load i32, ptr %2560, align 8
  %2798 = and i32 %2797, 255
  %2799 = add nsw i32 %2798, -1
  %2800 = icmp ult i32 %2799, 9
  call void @llvm.assume(i1 %2800)
  %2801 = zext nneg i32 %2798 to i64
  %2802 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2801
  %2803 = load i32, ptr %2802, align 4, !tbaa !106
  %2804 = zext i32 %2803 to i64
  %2805 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2804
  %2806 = load i64, ptr %2805, align 8, !tbaa !138
  %2807 = icmp eq i64 %2806, 0
  br i1 %2807, label %2808, label %2809, !prof !225

2808:                                             ; preds = %2796
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2809

2809:                                             ; preds = %2808, %2796
  %2810 = getelementptr inbounds i8, ptr %2560, i64 %2806
  %2811 = getelementptr inbounds ptr, ptr %2810, i64 1
  %2812 = load ptr, ptr %2811, align 8, !tbaa !91
  %2813 = getelementptr inbounds %struct.tree_common, ptr %2812, i64 0, i32 2
  %2814 = load ptr, ptr %2813, align 8, !tbaa !102
  %2815 = load i64, ptr %2814, align 8
  %2816 = trunc i64 %2815 to i16
  switch i16 %2816, label %2823 [
    i16 10, label %2817
    i16 12, label %2817
  ], !prof !246

2817:                                             ; preds = %2809, %2809
  %2818 = getelementptr inbounds %struct.tree_common, ptr %2814, i64 0, i32 2
  %2819 = load ptr, ptr %2818, align 8, !tbaa !102
  %2820 = load i64, ptr %2819, align 8
  %2821 = and i64 %2820, 65535
  %2822 = icmp eq i64 %2821, 20
  br i1 %2822, label %2850, label %2823

2823:                                             ; preds = %2809, %2817, %2793, %2672
  %2824 = load i32, ptr %44, align 8
  %2825 = and i32 %2824, 255
  %2826 = add nsw i32 %2825, -10
  %2827 = icmp ult i32 %2826, -9
  br i1 %2827, label %2841, label %2828, !prof !233

2828:                                             ; preds = %2823
  %2829 = zext nneg i32 %2825 to i64
  %2830 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2829
  %2831 = load i32, ptr %2830, align 4, !tbaa !106
  %2832 = zext i32 %2831 to i64
  %2833 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2832
  %2834 = load i64, ptr %2833, align 8, !tbaa !138
  %2835 = icmp eq i64 %2834, 0
  br i1 %2835, label %2836, label %2837, !prof !233

2836:                                             ; preds = %2828
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2837

2837:                                             ; preds = %2836, %2828
  %2838 = getelementptr ptr, ptr %44, i64 1
  %2839 = getelementptr i8, ptr %2838, i64 %2834
  %2840 = load ptr, ptr %2839, align 8, !tbaa !91
  br label %2841

2841:                                             ; preds = %2837, %2823
  %2842 = phi ptr [ %2840, %2837 ], [ null, %2823 ]
  %2843 = getelementptr inbounds %struct.tree_common, ptr %2842, i64 0, i32 2
  %2844 = load ptr, ptr %2843, align 8, !tbaa !102
  %2845 = call fastcc ptr @rhs_to_tree(ptr noundef %2844, ptr noundef nonnull %2560)
  %2846 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %2847 = icmp eq i8 %2557, 0
  %2848 = zext i1 %2847 to i8
  %2849 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %2316, i32 noundef %2322, ptr noundef %2846, ptr noundef %2845, ptr noundef %2842, i8 noundef zeroext %2848)
  br label %2850

2850:                                             ; preds = %2707, %2568, %2645, %2607, %2817, %2841, %2561
  %2851 = phi ptr [ %2845, %2841 ], [ null, %2561 ], [ null, %2817 ], [ null, %2607 ], [ null, %2645 ], [ null, %2568 ], [ null, %2707 ]
  %2852 = phi ptr [ %2849, %2841 ], [ null, %2561 ], [ null, %2817 ], [ null, %2607 ], [ null, %2645 ], [ null, %2568 ], [ null, %2707 ]
  %2853 = icmp eq ptr %2852, null
  br i1 %2853, label %2854, label %2931, !prof !247

2854:                                             ; preds = %2850
  %2855 = load i32, ptr %44, align 8
  %2856 = and i32 %2855, 255
  %2857 = add nsw i32 %2856, -1
  %2858 = icmp ult i32 %2857, 9
  call void @llvm.assume(i1 %2858)
  %2859 = zext nneg i32 %2856 to i64
  %2860 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2859
  %2861 = load i32, ptr %2860, align 4, !tbaa !106
  %2862 = zext i32 %2861 to i64
  %2863 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2862
  %2864 = load i64, ptr %2863, align 8, !tbaa !138
  %2865 = icmp eq i64 %2864, 0
  br i1 %2865, label %2866, label %2867, !prof !248

2866:                                             ; preds = %2854
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2867

2867:                                             ; preds = %2866, %2854
  %2868 = getelementptr ptr, ptr %44, i64 1
  %2869 = getelementptr i8, ptr %2868, i64 %2864
  %2870 = load ptr, ptr %2869, align 8, !tbaa !91
  %2871 = load i64, ptr %2870, align 8
  %2872 = and i64 %2871, 65535
  %2873 = icmp eq i64 %2872, 141
  br i1 %2873, label %2874, label %2931, !prof !248

2874:                                             ; preds = %2867
  %2875 = load i32, ptr %44, align 8
  %2876 = and i32 %2875, 255
  %2877 = add nsw i32 %2876, -10
  %2878 = icmp ult i32 %2877, -9
  br i1 %2878, label %2891, label %2879

2879:                                             ; preds = %2874
  %2880 = zext nneg i32 %2876 to i64
  %2881 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2880
  %2882 = load i32, ptr %2881, align 4, !tbaa !106
  %2883 = zext i32 %2882 to i64
  %2884 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2883
  %2885 = load i64, ptr %2884, align 8, !tbaa !138
  %2886 = icmp eq i64 %2885, 0
  br i1 %2886, label %2887, label %2888

2887:                                             ; preds = %2879
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2888

2888:                                             ; preds = %2887, %2879
  %2889 = getelementptr inbounds i8, ptr %44, i64 %2885
  %2890 = load ptr, ptr %2889, align 8, !tbaa !91
  br label %2891

2891:                                             ; preds = %2888, %2874
  %2892 = phi ptr [ %2890, %2888 ], [ null, %2874 ]
  %2893 = load i32, ptr %44, align 8
  %2894 = and i32 %2893, 255
  %2895 = add nsw i32 %2894, -10
  %2896 = icmp ult i32 %2895, -9
  br i1 %2896, label %2910, label %2897

2897:                                             ; preds = %2891
  %2898 = zext nneg i32 %2894 to i64
  %2899 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2898
  %2900 = load i32, ptr %2899, align 4, !tbaa !106
  %2901 = zext i32 %2900 to i64
  %2902 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2901
  %2903 = load i64, ptr %2902, align 8, !tbaa !138
  %2904 = icmp eq i64 %2903, 0
  br i1 %2904, label %2905, label %2906

2905:                                             ; preds = %2897
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2906

2906:                                             ; preds = %2905, %2897
  %2907 = getelementptr ptr, ptr %44, i64 1
  %2908 = getelementptr i8, ptr %2907, i64 %2903
  %2909 = load ptr, ptr %2908, align 8, !tbaa !91
  br label %2910

2910:                                             ; preds = %2906, %2891
  %2911 = phi ptr [ %2909, %2906 ], [ null, %2891 ]
  %2912 = call fastcc ptr @get_prop_source_stmt(ptr noundef %2911, i8 noundef zeroext 0, ptr noundef nonnull %1)
  %2913 = icmp eq ptr %2912, null
  br i1 %2913, label %2926, label %2914

2914:                                             ; preds = %2910
  %2915 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %2912), !range !158
  %2916 = icmp eq i8 %2915, 0
  br i1 %2916, label %2926, label %2917

2917:                                             ; preds = %2914
  %2918 = getelementptr inbounds %struct.tree_common, ptr %2892, i64 0, i32 2
  %2919 = load ptr, ptr %2918, align 8, !tbaa !102
  %2920 = call fastcc ptr @rhs_to_tree(ptr noundef %2919, ptr noundef nonnull %2912)
  %2921 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %2922 = load i8, ptr %1, align 1, !tbaa !102
  %2923 = icmp eq i8 %2922, 0
  %2924 = zext i1 %2923 to i8
  %2925 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %2316, i32 noundef %2322, ptr noundef %2921, ptr noundef %2892, ptr noundef %2920, i8 noundef zeroext %2924)
  br label %2926

2926:                                             ; preds = %2917, %2914, %2910
  %2927 = phi ptr [ %2920, %2917 ], [ null, %2914 ], [ null, %2910 ]
  %2928 = phi ptr [ %2925, %2917 ], [ null, %2914 ], [ null, %2910 ]
  %2929 = phi i1 [ true, %2917 ], [ false, %2914 ], [ false, %2910 ]
  %2930 = phi i32 [ %2320, %2917 ], [ %2319, %2914 ], [ %2319, %2910 ]
  br i1 %2929, label %2931, label %3021

2931:                                             ; preds = %2926, %2867, %2850
  %2932 = phi ptr [ %2927, %2926 ], [ null, %2867 ], [ null, %2850 ]
  %2933 = phi ptr [ %2911, %2926 ], [ %2363, %2867 ], [ %2363, %2850 ]
  %2934 = phi ptr [ %2928, %2926 ], [ null, %2867 ], [ %2852, %2850 ]
  %2935 = phi i32 [ %2930, %2926 ], [ %2320, %2867 ], [ %2320, %2850 ]
  %2936 = icmp eq ptr %2934, null
  %2937 = icmp ne ptr %2851, null
  %2938 = and i1 %2937, %2936
  %2939 = icmp ne ptr %2932, null
  %2940 = and i1 %2939, %2938
  br i1 %2940, label %2941, label %2952, !prof !210

2941:                                             ; preds = %2931
  %2942 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %2943 = getelementptr inbounds %struct.tree_common, ptr %2851, i64 0, i32 2
  %2944 = load ptr, ptr %2943, align 8, !tbaa !102
  %2945 = call ptr @fold_convert_loc(i32 noundef %2316, ptr noundef %2944, ptr noundef nonnull %2932) #18
  %2946 = icmp eq i8 %2557, 0
  %2947 = load i8, ptr %1, align 1
  %2948 = icmp eq i8 %2947, 0
  %2949 = select i1 %2946, i1 true, i1 %2948
  %2950 = zext i1 %2949 to i8
  %2951 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %2316, i32 noundef %2322, ptr noundef %2942, ptr noundef nonnull %2851, ptr noundef %2945, i8 noundef zeroext %2950)
  br label %2952

2952:                                             ; preds = %2941, %2931, %2339, %2317
  %2953 = phi ptr [ %2933, %2941 ], [ %2933, %2931 ], [ %2318, %2339 ], [ %2318, %2317 ]
  %2954 = phi ptr [ %2951, %2941 ], [ %2934, %2931 ], [ null, %2339 ], [ null, %2317 ]
  %2955 = phi i32 [ %2935, %2941 ], [ %2935, %2931 ], [ %2320, %2339 ], [ %2320, %2317 ]
  %2956 = icmp eq ptr %2954, null
  br i1 %2956, label %3021, label %2957, !prof !247

2957:                                             ; preds = %2952
  %2958 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %2959 = icmp eq ptr %2958, null
  br i1 %2959, label %3009, label %2960, !prof !224

2960:                                             ; preds = %2957
  %2961 = load i32, ptr %44, align 8
  %2962 = lshr i32 %2961, 16
  %2963 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !91
  %2964 = and i32 %2961, 255
  %2965 = add nsw i32 %2964, -10
  %2966 = icmp ult i32 %2965, -9
  br i1 %2966, label %2979, label %2967

2967:                                             ; preds = %2960
  %2968 = zext nneg i32 %2964 to i64
  %2969 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2968
  %2970 = load i32, ptr %2969, align 4, !tbaa !106
  %2971 = zext i32 %2970 to i64
  %2972 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2971
  %2973 = load i64, ptr %2972, align 8, !tbaa !138
  %2974 = icmp eq i64 %2973, 0
  br i1 %2974, label %2975, label %2976

2975:                                             ; preds = %2967
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2976

2976:                                             ; preds = %2975, %2967
  %2977 = getelementptr inbounds i8, ptr %44, i64 %2973
  %2978 = load ptr, ptr %2977, align 8, !tbaa !91
  br label %2979

2979:                                             ; preds = %2976, %2960
  %2980 = phi ptr [ %2978, %2976 ], [ null, %2960 ]
  %2981 = load i32, ptr %44, align 8
  %2982 = and i32 %2981, 255
  %2983 = add nsw i32 %2982, -10
  %2984 = icmp ult i32 %2983, -9
  br i1 %2984, label %2998, label %2985

2985:                                             ; preds = %2979
  %2986 = zext nneg i32 %2982 to i64
  %2987 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2986
  %2988 = load i32, ptr %2987, align 4, !tbaa !106
  %2989 = zext i32 %2988 to i64
  %2990 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2989
  %2991 = load i64, ptr %2990, align 8, !tbaa !138
  %2992 = icmp eq i64 %2991, 0
  br i1 %2992, label %2993, label %2994

2993:                                             ; preds = %2985
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %2994

2994:                                             ; preds = %2993, %2985
  %2995 = getelementptr ptr, ptr %44, i64 1
  %2996 = getelementptr i8, ptr %2995, i64 %2991
  %2997 = load ptr, ptr %2996, align 8, !tbaa !91
  br label %2998

2998:                                             ; preds = %2994, %2979
  %2999 = phi ptr [ %2997, %2994 ], [ null, %2979 ]
  %3000 = call ptr @build2_stat(i32 noundef %2962, ptr noundef %2963, ptr noundef %2980, ptr noundef %2999) #18
  %3001 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %3002 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %3001)
  %3003 = load ptr, ptr @dump_file, align 8, !tbaa !91
  call void @print_generic_expr(ptr noundef %3003, ptr noundef %3000, i32 noundef 0) #18
  %3004 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %3005 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %3004)
  %3006 = load ptr, ptr @dump_file, align 8, !tbaa !91
  call void @print_generic_expr(ptr noundef %3006, ptr noundef nonnull %2954, i32 noundef 0) #18
  %3007 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %3008 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %3007)
  br label %3009

3009:                                             ; preds = %2998, %2957
  %3010 = call ptr @unshare_expr(ptr noundef nonnull %2954) #18
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %44, ptr noundef %3010) #18
  %3011 = load i32, ptr %44, align 8
  %3012 = and i32 %3011, 255
  %3013 = add nsw i32 %3012, -10
  %3014 = icmp ult i32 %3013, -9
  br i1 %3014, label %3016, label %3015, !prof !225

3015:                                             ; preds = %3009
  call void @gimple_set_modified(ptr noundef nonnull %44, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %44) #18
  br label %3016

3016:                                             ; preds = %3015, %3009
  call fastcc void @remove_prop_source_from_use(ptr noundef %2953, ptr noundef null)
  %3017 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2954) #18
  %3018 = icmp eq i8 %3017, 0
  %3019 = call i32 @llvm.umax.i32(i32 %2319, i32 1)
  %3020 = select i1 %3018, i32 %3019, i32 2, !prof !224
  br label %3021

3021:                                             ; preds = %2952, %2926, %3016
  %3022 = phi ptr [ %2953, %3016 ], [ %2911, %2926 ], [ %2953, %2952 ]
  %3023 = phi i32 [ %3020, %3016 ], [ %2319, %2926 ], [ %2319, %2952 ]
  %3024 = phi i32 [ 3, %3016 ], [ 1, %2926 ], [ 2, %2952 ]
  %3025 = phi i32 [ %2955, %3016 ], [ %2930, %2926 ], [ %2955, %2952 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #18
  switch i32 %3024, label %3027 [
    i32 3, label %2317
    i32 2, label %3026
  ], !prof !249, !llvm.loop !250

3026:                                             ; preds = %3021
  br label %3027

3027:                                             ; preds = %3021, %3026
  %3028 = phi i32 [ %3023, %3026 ], [ %3025, %3021 ]
  %3029 = icmp eq i32 %3028, 2
  br i1 %3029, label %3030, label %3031, !prof !248

3030:                                             ; preds = %3027
  store i1 true, ptr @cfg_changed, align 1
  br label %3031

3031:                                             ; preds = %3030, %3027
  %3032 = trunc i32 %3028 to i8
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %3032, ptr noundef nonnull %44, i32 noundef 2) #18
  %3033 = load ptr, ptr %7, align 8, !tbaa !141
  %3034 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %3033, i64 0, i32 2
  %3035 = load ptr, ptr %3034, align 8, !tbaa !143
  store ptr %3035, ptr %7, align 8, !tbaa !141
  br label %3039

3036:                                             ; preds = %2162
  %3037 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %42, i64 0, i32 2
  %3038 = load ptr, ptr %3037, align 8, !tbaa !143
  store ptr %3038, ptr %7, align 8, !tbaa !141
  br label %3039

3039:                                             ; preds = %82, %293, %290, %693, %2154, %2158, %1962, %1964, %484, %207, %209, %3031, %3036, %2310
  %3040 = phi i32 [ %43, %2310 ], [ %43, %3031 ], [ %43, %3036 ], [ %43, %82 ], [ %43, %209 ], [ %208, %207 ], [ %43, %293 ], [ %43, %290 ], [ %43, %484 ], [ %43, %693 ], [ %1963, %1962 ], [ %43, %1964 ], [ %43, %2154 ], [ %43, %2158 ]
  %3041 = load ptr, ptr %7, align 8
  %3042 = icmp eq ptr %3041, null
  br i1 %3042, label %3043, label %41, !prof !251

3043:                                             ; preds = %3039, %38
  %3044 = phi i32 [ %22, %38 ], [ %3040, %3039 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  %3045 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %3046 = load ptr, ptr %3045, align 8, !tbaa !117
  %3047 = load ptr, ptr @cfun, align 8, !tbaa !91
  %3048 = getelementptr inbounds %struct.function, ptr %3047, i64 0, i32 1
  %3049 = load ptr, ptr %3048, align 8, !tbaa !113
  %3050 = getelementptr inbounds %struct.control_flow_graph, ptr %3049, i64 0, i32 1
  %3051 = load ptr, ptr %3050, align 8, !tbaa !119
  %3052 = icmp eq ptr %3046, %3051
  br i1 %3052, label %3053, label %20, !prof !252, !llvm.loop !253

3053:                                             ; preds = %3043, %0
  %3054 = phi i32 [ 0, %0 ], [ %3044, %3043 ]
  %3055 = load i1, ptr @cfg_changed, align 1
  %3056 = or i32 %3054, 32
  %3057 = select i1 %3055, i32 %3056, i32 %3054, !prof !254
  ret i32 %3057
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_references_abnormal_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !255 !PGOFuncName !256 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %32, label %16, !prof !258

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !170
  %19 = icmp eq ptr %12, %18
  br i1 %19, label %20, label %27, !prof !157

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 255
  %25 = icmp ne i32 %24, 2
  %26 = zext i1 %25 to i8
  br label %32

27:                                               ; preds = %16
  %28 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !106
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #18
  br label %32

32:                                               ; preds = %2, %20, %27, %30
  %33 = phi i8 [ %26, %20 ], [ %31, %30 ], [ 0, %2 ], [ 0, %27 ]
  %34 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  store ptr %12, ptr %34, align 8, !tbaa !259
  %35 = load ptr, ptr %13, align 8, !tbaa !170
  store ptr %35, ptr %3, align 8, !tbaa !261
  %36 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %37 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  %38 = icmp eq ptr %35, %12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %36, i8 0, i64 40, i1 false)
  br i1 %38, label %43, label %39, !prof !258

39:                                               ; preds = %32
  call fastcc void @link_use_stmts_after(ptr noundef %35, ptr noundef nonnull %3)
  %40 = load ptr, ptr %3, align 8, !tbaa !261
  %41 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  br label %43

43:                                               ; preds = %32, %39
  %44 = phi ptr [ %42, %39 ], [ null, %32 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !261
  %46 = load ptr, ptr %34, align 8, !tbaa !259
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %731, label %48, !prof !262

48:                                               ; preds = %43, %726
  %49 = phi ptr [ %727, %726 ], [ %44, %43 ]
  %50 = phi i8 [ %712, %726 ], [ 1, %43 ]
  %51 = load i32, ptr %49, align 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %57, label %54, !prof !263

54:                                               ; preds = %48
  %55 = icmp eq i32 %52, 2
  %56 = select i1 %55, i8 %50, i8 0, !prof !264
  br label %711

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.gimple_statement_base, ptr %49, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 10
  %61 = load i32, ptr %60, align 4, !tbaa !257
  %62 = icmp sgt i32 %61, %11
  br i1 %62, label %711, label %63, !prof !265

63:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %49) #18
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %64, align 8, !tbaa !135
  %66 = load i64, ptr %1, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 121
  br i1 %68, label %70, label %69, !prof !266

69:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 735, ptr noundef nonnull @.str.2) #18
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, ptr %65, align 8
  %72 = and i32 %71, 255
  %73 = add nsw i32 %72, -10
  %74 = icmp ult i32 %73, -9
  br i1 %74, label %87, label %75, !prof !265

75:                                               ; preds = %70
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !106
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !138
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84, !prof !265

83:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %84

84:                                               ; preds = %83, %75
  %85 = getelementptr inbounds i8, ptr %65, i64 %81
  %86 = load ptr, ptr %85, align 8, !tbaa !91
  br label %87

87:                                               ; preds = %70, %84
  %88 = phi ptr [ %86, %84 ], [ null, %70 ]
  %89 = load i32, ptr %65, align 8
  %90 = trunc i32 %89 to i8
  switch i8 %90, label %93 [
    i8 6, label %91
    i8 1, label %91
    i8 8, label %94
  ], !prof !267

91:                                               ; preds = %87, %87
  %92 = lshr i32 %89, 16
  br label %94

93:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %94

94:                                               ; preds = %93, %91, %87
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ], [ 59, %87 ]
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !102
  %99 = icmp eq i8 %98, 3
  br i1 %99, label %100, label %120, !prof !268

100:                                              ; preds = %94
  %101 = load i32, ptr %65, align 8
  %102 = and i32 %101, 255
  %103 = add nsw i32 %102, -1
  %104 = icmp ult i32 %103, 9
  call void @llvm.assume(i1 %104)
  %105 = zext nneg i32 %102 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !138
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113, !prof !269

112:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %113

113:                                              ; preds = %112, %100
  %114 = getelementptr inbounds i8, ptr %65, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !91
  %117 = load i64, ptr %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, 65535
  br label %120

120:                                              ; preds = %94, %113
  %121 = phi i32 [ %119, %113 ], [ %95, %94 ]
  %122 = load i32, ptr %65, align 8
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -10
  %125 = icmp ult i32 %124, -9
  br i1 %125, label %139, label %126, !prof !265

126:                                              ; preds = %120
  %127 = zext nneg i32 %123 to i64
  %128 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !106
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !138
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135, !prof !265

134:                                              ; preds = %126
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %135

135:                                              ; preds = %134, %126
  %136 = getelementptr inbounds i8, ptr %65, i64 %132
  %137 = getelementptr inbounds ptr, ptr %136, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !91
  br label %139

139:                                              ; preds = %120, %135
  %140 = phi ptr [ %138, %135 ], [ null, %120 ]
  %141 = load i64, ptr %88, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 141
  br i1 %143, label %144, label %222, !prof !266

144:                                              ; preds = %139
  switch i32 %121, label %222 [
    i32 141, label %145
    i32 116, label %149
    i32 113, label %149
  ], !prof !270

145:                                              ; preds = %144
  %146 = icmp eq ptr %140, %0
  %147 = icmp eq i32 %121, 113
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %149, label %222

149:                                              ; preds = %144, %145, %144
  %150 = icmp eq i8 %33, 0
  br i1 %150, label %180, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %153 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !102
  %155 = load ptr, ptr %152, align 8, !tbaa !102
  %156 = call zeroext i8 @useless_type_conversion_p(ptr noundef %154, ptr noundef %155) #18
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %151
  %159 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #18
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %180, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %153, align 8, !tbaa !102
  %163 = load i64, ptr %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = and i32 %164, 65535
  %166 = add nsw i32 %165, -6
  %167 = icmp ult i32 %166, 3
  br i1 %167, label %168, label %182

168:                                              ; preds = %161
  %169 = load ptr, ptr %152, align 8, !tbaa !102
  %170 = load i64, ptr %169, align 8
  %171 = trunc i64 %170 to i16
  switch i16 %171, label %182 [
    i16 10, label %172
    i16 12, label %172
  ]

172:                                              ; preds = %168, %168
  %173 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 1023
  %176 = getelementptr inbounds %struct.tree_type, ptr %169, i64 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 1023
  %179 = icmp ugt i32 %175, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %172, %158, %149
  %181 = call fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef nonnull %88, ptr noundef nonnull %1), !range !158
  br label %616

182:                                              ; preds = %172, %168, %161, %151
  %183 = call ptr @unshare_expr(ptr noundef nonnull %1) #18
  %184 = load i32, ptr %65, align 8
  %185 = and i32 %184, 255
  %186 = add nsw i32 %185, -10
  %187 = icmp ult i32 %186, -9
  br i1 %187, label %192, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 3
  %190 = load i32, ptr %189, align 4, !tbaa !102
  %191 = icmp ugt i32 %190, 1
  br i1 %191, label %193, label %192

192:                                              ; preds = %188, %182
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %193

193:                                              ; preds = %192, %188
  %194 = load i32, ptr %65, align 8
  %195 = and i32 %194, 255
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !106
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !138
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %204

204:                                              ; preds = %193, %203
  %205 = getelementptr inbounds i8, ptr %65, i64 %201
  %206 = getelementptr inbounds ptr, ptr %205, i64 1
  store ptr %183, ptr %206, align 8, !tbaa !91
  %207 = load ptr, ptr %153, align 8, !tbaa !102
  %208 = load ptr, ptr %152, align 8, !tbaa !102
  %209 = call zeroext i8 @useless_type_conversion_p(ptr noundef %207, ptr noundef %208) #18
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %204
  %212 = load i64, ptr %1, align 8
  %213 = trunc i64 %212 to i32
  %214 = load i32, ptr %65, align 8
  %215 = shl i32 %213, 16
  %216 = and i32 %214, 65535
  %217 = or disjoint i32 %216, %215
  store i32 %217, ptr %65, align 8
  br label %616

218:                                              ; preds = %204
  %219 = load i32, ptr %65, align 8
  %220 = and i32 %219, 65535
  %221 = or disjoint i32 %220, 7602176
  store i32 %221, ptr %65, align 8
  br label %616

222:                                              ; preds = %145, %144, %139
  %223 = load i32, ptr %65, align 8
  %224 = and i32 %223, 255
  %225 = add nsw i32 %224, -10
  %226 = icmp ult i32 %225, -9
  br i1 %226, label %238, label %227, !prof !265

227:                                              ; preds = %222
  %228 = zext nneg i32 %224 to i64
  %229 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !106
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !138
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %236, !prof !265

235:                                              ; preds = %227
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %236

236:                                              ; preds = %235, %227
  %237 = getelementptr inbounds i8, ptr %65, i64 %233
  br label %238

238:                                              ; preds = %222, %236
  %239 = phi ptr [ null, %222 ], [ %237, %236 ]
  br label %240

240:                                              ; preds = %238, %248
  %241 = phi ptr [ %249, %248 ], [ %239, %238 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !91
  %243 = load i64, ptr %242, align 8
  %244 = trunc i64 %243 to i16
  switch i16 %244, label %245 [
    i16 42, label %248
    i16 41, label %248
    i16 45, label %248
    i16 46, label %248
    i16 118, label %248
    i16 43, label %248
    i16 44, label %248
  ], !prof !271

245:                                              ; preds = %240
  %246 = and i64 %243, 65535
  %247 = icmp eq i64 %246, 47
  br i1 %247, label %250, label %291, !prof !265

248:                                              ; preds = %240, %240, %240, %240, %240, %240, %240
  %249 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 0, i32 3
  br label %240, !llvm.loop !272

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !102
  %253 = icmp eq ptr %252, %0
  br i1 %253, label %254, label %291

254:                                              ; preds = %250
  %255 = call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %1, ptr noundef nonnull %242) #18
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %291, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %65, align 8
  %259 = and i32 %258, 255
  %260 = add nsw i32 %259, -10
  %261 = icmp ult i32 %260, -9
  br i1 %261, label %273, label %262

262:                                              ; preds = %257
  %263 = zext nneg i32 %259 to i64
  %264 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !106
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %266
  %268 = load i64, ptr %267, align 8, !tbaa !138
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %262
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %271

271:                                              ; preds = %270, %262
  %272 = getelementptr inbounds i8, ptr %65, i64 %268
  br label %273

273:                                              ; preds = %257, %271
  %274 = phi ptr [ %272, %271 ], [ null, %257 ]
  %275 = icmp eq ptr %241, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !102
  %279 = getelementptr inbounds %struct.tree_common, ptr %278, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !102
  %281 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !102
  %283 = call zeroext i8 @useless_type_conversion_p(ptr noundef %280, ptr noundef %282) #18
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %276, %273
  %286 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %287 = icmp eq i8 %33, 0
  %288 = load ptr, ptr %286, align 8, !tbaa !102
  %289 = call ptr @unshare_expr(ptr noundef %288) #18
  store ptr %289, ptr %241, align 8, !tbaa !91
  %290 = call zeroext i8 @fold_stmt_inplace(ptr noundef %65) #18
  call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %65)
  br i1 %287, label %291, label %616

291:                                              ; preds = %276, %285, %254, %250, %245
  %292 = phi i8 [ 1, %285 ], [ 1, %250 ], [ 1, %245 ], [ 0, %254 ], [ 0, %276 ]
  %293 = load i32, ptr %65, align 8
  %294 = and i32 %293, 255
  %295 = add nsw i32 %294, -10
  %296 = icmp ult i32 %295, -9
  br i1 %296, label %309, label %297, !prof !265

297:                                              ; preds = %291
  %298 = zext nneg i32 %294 to i64
  %299 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !106
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !138
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %306, !prof !265

305:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %306

306:                                              ; preds = %305, %297
  %307 = getelementptr inbounds i8, ptr %65, i64 %303
  %308 = getelementptr inbounds ptr, ptr %307, i64 1
  br label %309

309:                                              ; preds = %291, %306
  %310 = phi ptr [ null, %291 ], [ %308, %306 ]
  br label %311

311:                                              ; preds = %309, %316
  %312 = phi ptr [ %317, %316 ], [ %310, %309 ]
  %313 = load ptr, ptr %312, align 8, !tbaa !91
  %314 = load i64, ptr %313, align 8
  %315 = trunc i64 %314 to i16
  switch i16 %315, label %330 [
    i16 42, label %316
    i16 41, label %316
    i16 45, label %316
    i16 46, label %316
    i16 118, label %316
    i16 43, label %316
    i16 44, label %316
    i16 121, label %316
    i16 47, label %318
  ], !prof !273

316:                                              ; preds = %311, %311, %311, %311, %311, %311, %311, %311
  %317 = getelementptr inbounds %struct.tree_exp, ptr %313, i64 0, i32 3
  br label %311, !llvm.loop !274

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.tree_exp, ptr %313, i64 0, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !102
  %321 = icmp eq ptr %320, %0
  br i1 %321, label %322, label %330, !prof !161

322:                                              ; preds = %318
  %323 = call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %1, ptr noundef nonnull %313) #18
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %330, label %325, !prof !269

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !102
  %328 = call ptr @unshare_expr(ptr noundef %327) #18
  store ptr %328, ptr %312, align 8, !tbaa !91
  %329 = call zeroext i8 @fold_stmt_inplace(ptr noundef %65) #18
  call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %65)
  br label %616

330:                                              ; preds = %311, %322, %318
  %331 = load i64, ptr %313, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 47
  br i1 %333, label %334, label %443, !prof !275

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.tree_exp, ptr %313, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !102
  %337 = icmp eq ptr %336, %0
  br i1 %337, label %338, label %443

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.tree_common, ptr %313, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !102
  %341 = getelementptr inbounds %struct.tree_type, ptr %340, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !102
  %343 = icmp eq ptr %342, null
  br i1 %343, label %443, label %344

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !102
  %347 = getelementptr inbounds %struct.tree_common, ptr %346, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !102
  %349 = getelementptr inbounds %struct.tree_type, ptr %348, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !102
  %351 = icmp eq ptr %350, null
  br i1 %351, label %443, label %352

352:                                              ; preds = %344
  %353 = load i64, ptr %346, align 8
  %354 = and i64 %353, 65535
  %355 = icmp eq i64 %354, 29
  br i1 %355, label %443, label %356

356:                                              ; preds = %352
  %357 = load i64, ptr %340, align 8
  %358 = and i64 %357, 524288
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %443

360:                                              ; preds = %356
  %361 = load i64, ptr %348, align 8
  %362 = and i64 %361, 524288
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %443

364:                                              ; preds = %360
  %365 = call i32 @operand_equal_p(ptr noundef nonnull %342, ptr noundef nonnull %350, i32 noundef 0) #18
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %443, label %367

367:                                              ; preds = %364
  %368 = load ptr, ptr %345, align 8, !tbaa !102
  %369 = call i32 @get_alias_set(ptr noundef %368) #18
  %370 = call i32 @get_alias_set(ptr noundef nonnull %313) #18
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %443

372:                                              ; preds = %367
  %373 = load ptr, ptr %345, align 8, !tbaa !102
  %374 = call ptr @unshare_expr(ptr noundef %373) #18
  %375 = load ptr, ptr %339, align 8, !tbaa !102
  %376 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 118, ptr noundef %375, ptr noundef %374) #18
  %377 = load i64, ptr %376, align 8
  %378 = and i64 %377, 65535
  %379 = icmp eq i64 %378, 118
  br i1 %379, label %426, label %380

380:                                              ; preds = %372
  %381 = load i32, ptr %65, align 8
  %382 = and i32 %381, 255
  %383 = add nsw i32 %382, -10
  %384 = icmp ult i32 %383, -9
  br i1 %384, label %398, label %385

385:                                              ; preds = %380
  %386 = zext nneg i32 %382 to i64
  %387 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !106
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !138
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %385
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %394

394:                                              ; preds = %393, %385
  %395 = getelementptr inbounds i8, ptr %65, i64 %391
  %396 = getelementptr inbounds ptr, ptr %395, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !91
  br label %398

398:                                              ; preds = %380, %394
  %399 = phi ptr [ %397, %394 ], [ null, %380 ]
  %400 = icmp eq ptr %313, %399
  br i1 %400, label %401, label %440

401:                                              ; preds = %398
  %402 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef nonnull %376, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0) #18
  %403 = load i32, ptr %65, align 8
  %404 = and i32 %403, 255
  %405 = add nsw i32 %404, -10
  %406 = icmp ult i32 %405, -9
  br i1 %406, label %411, label %407

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 3
  %409 = load i32, ptr %408, align 4, !tbaa !102
  %410 = icmp ugt i32 %409, 1
  br i1 %410, label %412, label %411

411:                                              ; preds = %407, %401
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %412

412:                                              ; preds = %411, %407
  %413 = load i32, ptr %65, align 8
  %414 = and i32 %413, 255
  %415 = zext nneg i32 %414 to i64
  %416 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !106
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %418
  %420 = load i64, ptr %419, align 8, !tbaa !138
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %412
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %423

423:                                              ; preds = %412, %422
  %424 = getelementptr inbounds i8, ptr %65, i64 %420
  %425 = getelementptr inbounds ptr, ptr %424, i64 1
  store ptr %402, ptr %425, align 8, !tbaa !91
  call fastcc void @tidy_after_forward_propagate_addr(ptr noundef nonnull %65)
  br label %440

426:                                              ; preds = %372, %436
  %427 = phi ptr [ %437, %436 ], [ %345, %372 ]
  %428 = load ptr, ptr %427, align 8, !tbaa !102
  %429 = load i64, ptr %428, align 8
  %430 = trunc i64 %429 to i16
  switch i16 %430, label %431 [
    i16 42, label %436
    i16 41, label %436
    i16 45, label %436
    i16 46, label %436
    i16 118, label %436
    i16 43, label %436
    i16 44, label %436
  ]

431:                                              ; preds = %426
  %432 = trunc i64 %429 to i32
  %433 = and i32 %432, 65535
  %434 = add nsw i32 %433, -47
  %435 = icmp ult i32 %434, 3
  br i1 %435, label %440, label %438

436:                                              ; preds = %426, %426, %426, %426, %426, %426, %426
  %437 = getelementptr inbounds %struct.tree_exp, ptr %428, i64 0, i32 3
  br label %426, !llvm.loop !276

438:                                              ; preds = %431
  store ptr %376, ptr %312, align 8, !tbaa !91
  %439 = call zeroext i8 @fold_stmt_inplace(ptr noundef %65) #18
  call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %65)
  br label %440

440:                                              ; preds = %438, %431, %423, %398
  %441 = phi i1 [ false, %423 ], [ false, %438 ], [ false, %398 ], [ true, %431 ]
  %442 = phi i8 [ %292, %423 ], [ %292, %438 ], [ 0, %398 ], [ undef, %431 ]
  br i1 %441, label %443, label %616

443:                                              ; preds = %440, %367, %364, %360, %356, %352, %344, %338, %334, %330
  %444 = phi i8 [ undef, %356 ], [ undef, %360 ], [ %442, %440 ], [ undef, %367 ], [ undef, %364 ], [ undef, %352 ], [ undef, %344 ], [ undef, %338 ], [ undef, %334 ], [ undef, %330 ]
  %445 = load i32, ptr %65, align 8
  %446 = trunc i32 %445 to i8
  switch i8 %446, label %449 [
    i8 6, label %447
    i8 1, label %447
    i8 8, label %450
  ], !prof !277

447:                                              ; preds = %443, %443
  %448 = lshr i32 %445, 16
  br label %450

449:                                              ; preds = %443
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %450

450:                                              ; preds = %449, %447, %443
  %451 = phi i32 [ %448, %447 ], [ 0, %449 ], [ 59, %443 ]
  %452 = zext nneg i32 %451 to i64
  %453 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !102
  %455 = icmp eq i8 %454, 3
  br i1 %455, label %456, label %476, !prof !275

456:                                              ; preds = %450
  %457 = load i32, ptr %65, align 8
  %458 = and i32 %457, 255
  %459 = add nsw i32 %458, -1
  %460 = icmp ult i32 %459, 9
  call void @llvm.assume(i1 %460)
  %461 = zext nneg i32 %458 to i64
  %462 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !106
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %464
  %466 = load i64, ptr %465, align 8, !tbaa !138
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %456
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %469

469:                                              ; preds = %468, %456
  %470 = getelementptr inbounds i8, ptr %65, i64 %466
  %471 = getelementptr inbounds ptr, ptr %470, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !91
  %473 = load i64, ptr %472, align 8
  %474 = trunc i64 %473 to i32
  %475 = and i32 %474, 65535
  br label %476

476:                                              ; preds = %450, %469
  %477 = phi i32 [ %475, %469 ], [ %451, %450 ]
  %478 = icmp eq i32 %477, 66
  br i1 %478, label %479, label %616, !prof !278

479:                                              ; preds = %476
  %480 = load i32, ptr %65, align 8
  %481 = and i32 %480, 255
  %482 = add nsw i32 %481, -10
  %483 = icmp ult i32 %482, -9
  br i1 %483, label %497, label %484, !prof !275

484:                                              ; preds = %479
  %485 = zext nneg i32 %481 to i64
  %486 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %485
  %487 = load i32, ptr %486, align 4, !tbaa !106
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %488
  %490 = load i64, ptr %489, align 8, !tbaa !138
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %493, !prof !275

492:                                              ; preds = %484
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %493

493:                                              ; preds = %492, %484
  %494 = getelementptr inbounds i8, ptr %65, i64 %490
  %495 = getelementptr inbounds ptr, ptr %494, i64 1
  %496 = load ptr, ptr %495, align 8, !tbaa !91
  br label %497

497:                                              ; preds = %479, %493
  %498 = phi ptr [ %496, %493 ], [ null, %479 ]
  %499 = icmp eq ptr %498, %0
  br i1 %499, label %500, label %616, !prof !278

500:                                              ; preds = %497
  %501 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %502 = load ptr, ptr %501, align 8, !tbaa !102
  %503 = load i64, ptr %502, align 8
  %504 = and i64 %503, 65535
  %505 = icmp eq i64 %504, 45
  br i1 %505, label %506, label %616, !prof !278

506:                                              ; preds = %500
  %507 = getelementptr inbounds %struct.tree_exp, ptr %502, i64 0, i32 3
  %508 = load ptr, ptr %507, align 8, !tbaa !102
  %509 = getelementptr inbounds %struct.tree_common, ptr %508, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !102
  %511 = load i64, ptr %510, align 8
  %512 = and i64 %511, 65535
  %513 = icmp eq i64 %512, 15
  br i1 %513, label %514, label %616, !prof !278

514:                                              ; preds = %506
  %515 = getelementptr inbounds %struct.tree_exp, ptr %502, i64 1
  %516 = load ptr, ptr %515, align 8, !tbaa !102
  %517 = load i64, ptr %516, align 8
  %518 = and i64 %517, 65535
  %519 = icmp eq i64 %518, 23
  br i1 %519, label %520, label %616, !prof !278

520:                                              ; preds = %514
  %521 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 3
  %522 = load i32, ptr %521, align 4, !tbaa !102
  %523 = icmp ugt i32 %522, 2
  call void @llvm.assume(i1 %523)
  %524 = load i32, ptr %65, align 8
  %525 = and i32 %524, 255
  %526 = add nsw i32 %525, -1
  %527 = icmp ult i32 %526, 9
  call void @llvm.assume(i1 %527)
  %528 = zext nneg i32 %525 to i64
  %529 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !106
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %531
  %533 = load i64, ptr %532, align 8, !tbaa !138
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %536, !prof !275

535:                                              ; preds = %520
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %536

536:                                              ; preds = %535, %520
  %537 = getelementptr inbounds i8, ptr %65, i64 %533
  %538 = getelementptr inbounds ptr, ptr %537, i64 2
  %539 = load ptr, ptr %538, align 8, !tbaa !91
  %540 = load i64, ptr %539, align 8
  %541 = and i64 %540, 65535
  %542 = icmp eq i64 %541, 23
  br i1 %542, label %543, label %593, !prof !275

543:                                              ; preds = %536
  %544 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %545 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 2
  %546 = load i32, ptr %545, align 8, !tbaa !102
  %547 = load ptr, ptr %544, align 8, !tbaa !102
  %548 = call ptr @maybe_fold_stmt_addition(i32 noundef %546, ptr noundef %547, ptr noundef nonnull %1, ptr noundef nonnull %539) #18
  %549 = icmp eq ptr %548, null
  br i1 %549, label %591, label %550

550:                                              ; preds = %543
  %551 = load i32, ptr %65, align 8
  %552 = and i32 %551, 255
  %553 = add nsw i32 %552, -1
  %554 = icmp ult i32 %553, 9
  call void @llvm.assume(i1 %554)
  %555 = zext nneg i32 %552 to i64
  %556 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !106
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %558
  %560 = load i64, ptr %559, align 8, !tbaa !138
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %550
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %563

563:                                              ; preds = %562, %550
  %564 = getelementptr inbounds i8, ptr %65, i64 %560
  %565 = load ptr, ptr %564, align 8, !tbaa !91
  %566 = getelementptr inbounds %struct.tree_common, ptr %565, i64 0, i32 2
  %567 = load ptr, ptr %566, align 8, !tbaa !102
  %568 = call ptr @unshare_expr(ptr noundef nonnull %548) #18
  %569 = getelementptr inbounds %struct.tree_common, ptr %568, i64 0, i32 2
  %570 = load ptr, ptr %569, align 8, !tbaa !102
  %571 = call zeroext i8 @useless_type_conversion_p(ptr noundef %567, ptr noundef %570) #18
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %573, label %581

573:                                              ; preds = %563
  %574 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %568) #18
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %573
  %577 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %568, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  br label %578

578:                                              ; preds = %576, %573
  %579 = phi ptr [ %568, %573 ], [ %577, %576 ]
  %580 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %567, ptr noundef %579) #18
  br label %581

581:                                              ; preds = %578, %563
  %582 = phi ptr [ %568, %563 ], [ %580, %578 ]
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %4, ptr noundef %582) #18
  %583 = load ptr, ptr %4, align 8
  %584 = load ptr, ptr %583, align 8, !tbaa !135
  %585 = load i32, ptr %584, align 8
  %586 = and i32 %585, 255
  %587 = add nsw i32 %586, -10
  %588 = icmp ult i32 %587, -9
  br i1 %588, label %590, label %589

589:                                              ; preds = %581
  call void @gimple_set_modified(ptr noundef nonnull %584, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %584) #18
  br label %590

590:                                              ; preds = %581, %589
  call fastcc void @tidy_after_forward_propagate_addr(ptr noundef nonnull %584)
  br label %591

591:                                              ; preds = %590, %543
  %592 = phi i8 [ 1, %590 ], [ %444, %543 ]
  br i1 %549, label %593, label %616

593:                                              ; preds = %591, %536
  %594 = load i64, ptr %539, align 8
  %595 = and i64 %594, 65535
  %596 = icmp eq i64 %595, 141
  br i1 %596, label %597, label %616, !prof !278

597:                                              ; preds = %593
  %598 = load ptr, ptr %515, align 8, !tbaa !102
  %599 = call i32 @integer_zerop(ptr noundef %598) #18
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %616, label %601, !prof !275

601:                                              ; preds = %597
  %602 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %603 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %604 = load ptr, ptr %602, align 8, !tbaa !102
  %605 = load ptr, ptr %603, align 8, !tbaa !102
  %606 = call zeroext i8 @useless_type_conversion_p(ptr noundef %604, ptr noundef %605) #18
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %616, label %608, !prof !275

608:                                              ; preds = %601
  %609 = getelementptr inbounds %struct.tree_common, ptr %242, i64 0, i32 2
  %610 = load ptr, ptr %609, align 8, !tbaa !102
  %611 = load ptr, ptr %603, align 8, !tbaa !102
  %612 = call zeroext i8 @useless_type_conversion_p(ptr noundef %610, ptr noundef %611) #18
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %616, label %614, !prof !275

614:                                              ; preds = %608
  %615 = call fastcc zeroext i8 @forward_propagate_addr_into_variable_array_index(ptr noundef nonnull %539, ptr noundef nonnull %1, ptr noundef nonnull %4), !range !158
  br label %616

616:                                              ; preds = %440, %180, %211, %218, %285, %325, %476, %497, %500, %506, %514, %591, %593, %597, %601, %608, %614
  %617 = phi i8 [ %181, %180 ], [ %292, %325 ], [ %615, %614 ], [ %592, %591 ], [ 1, %218 ], [ 1, %211 ], [ 1, %285 ], [ 0, %497 ], [ 0, %476 ], [ 0, %514 ], [ 0, %506 ], [ 0, %500 ], [ 0, %608 ], [ 0, %601 ], [ 0, %597 ], [ 0, %593 ], [ %442, %440 ]
  %618 = load ptr, ptr %4, align 8
  %619 = load ptr, ptr %618, align 8, !tbaa !135
  %620 = icmp eq ptr %49, %619
  br i1 %620, label %630, label %621, !prof !266

621:                                              ; preds = %616
  %622 = load i32, ptr %49, align 8
  %623 = and i32 %622, 255
  %624 = add nsw i32 %623, -10
  %625 = icmp ult i32 %624, -9
  br i1 %625, label %627, label %626

626:                                              ; preds = %621
  call void @gimple_set_modified(ptr noundef nonnull %49, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %49) #18
  br label %627

627:                                              ; preds = %621, %626
  %628 = load ptr, ptr %4, align 8
  %629 = load ptr, ptr %628, align 8, !tbaa !135
  br label %630

630:                                              ; preds = %627, %616
  %631 = phi ptr [ %629, %627 ], [ %49, %616 ]
  %632 = load i32, ptr %631, align 8
  %633 = and i32 %632, 255
  %634 = add nsw i32 %633, -10
  %635 = icmp ult i32 %634, -9
  br i1 %635, label %637, label %636, !prof !265

636:                                              ; preds = %630
  call void @gimple_set_modified(ptr noundef nonnull %631, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %631) #18
  br label %637

637:                                              ; preds = %630, %636
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %638 = and i8 %617, %50
  %639 = load i32, ptr %631, align 8
  %640 = and i32 %639, 255
  %641 = add nsw i32 %640, -10
  %642 = icmp ult i32 %641, -9
  br i1 %642, label %656, label %643, !prof !265

643:                                              ; preds = %637
  %644 = zext nneg i32 %640 to i64
  %645 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !106
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %647
  %649 = load i64, ptr %648, align 8, !tbaa !138
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %652, !prof !265

651:                                              ; preds = %643
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %652

652:                                              ; preds = %651, %643
  %653 = getelementptr inbounds i8, ptr %631, i64 %649
  %654 = getelementptr inbounds ptr, ptr %653, i64 1
  %655 = load ptr, ptr %654, align 8, !tbaa !91
  br label %656

656:                                              ; preds = %637, %652
  %657 = phi ptr [ %655, %652 ], [ null, %637 ]
  %658 = icmp eq i8 %617, 0
  br i1 %658, label %711, label %659, !prof !265

659:                                              ; preds = %656
  %660 = load i32, ptr %631, align 8
  %661 = and i32 %660, 255
  %662 = add nsw i32 %661, -1
  %663 = icmp ult i32 %662, 9
  call void @llvm.assume(i1 %663)
  %664 = zext nneg i32 %661 to i64
  %665 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %664
  %666 = load i32, ptr %665, align 4, !tbaa !106
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %667
  %669 = load i64, ptr %668, align 8, !tbaa !138
  %670 = icmp eq i64 %669, 0
  br i1 %670, label %671, label %672, !prof !265

671:                                              ; preds = %659
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %672

672:                                              ; preds = %671, %659
  %673 = getelementptr inbounds i8, ptr %631, i64 %669
  %674 = load ptr, ptr %673, align 8, !tbaa !91
  %675 = load i64, ptr %674, align 8
  %676 = and i64 %675, 65535
  %677 = icmp eq i64 %676, 141
  br i1 %677, label %678, label %711, !prof !266

678:                                              ; preds = %672
  %679 = load i64, ptr %657, align 8
  %680 = and i64 %679, 65535
  %681 = icmp eq i64 %680, 141
  br i1 %681, label %682, label %711, !prof !265

682:                                              ; preds = %678
  %683 = load i32, ptr %631, align 8
  %684 = and i32 %683, 255
  %685 = add nsw i32 %684, -1
  %686 = icmp ult i32 %685, 9
  call void @llvm.assume(i1 %686)
  %687 = zext nneg i32 %684 to i64
  %688 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !106
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %690
  %692 = load i64, ptr %691, align 8, !tbaa !138
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %694, label %695

694:                                              ; preds = %682
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %695

695:                                              ; preds = %694, %682
  %696 = getelementptr inbounds i8, ptr %631, i64 %692
  %697 = load ptr, ptr %696, align 8, !tbaa !91
  %698 = getelementptr inbounds %struct.tree_ssa_name, ptr %697, i64 0, i32 5
  %699 = getelementptr inbounds %struct.tree_ssa_name, ptr %697, i64 0, i32 5, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !170
  %701 = icmp eq ptr %698, %700
  br i1 %701, label %707, label %702

702:                                              ; preds = %695
  %703 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !106
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %707, label %705

705:                                              ; preds = %702
  %706 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %698) #18
  br label %707

707:                                              ; preds = %695, %702, %705
  %708 = phi i8 [ %706, %705 ], [ 1, %695 ], [ 0, %702 ]
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %711, label %710

710:                                              ; preds = %707
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %631) #18
  call void @release_defs(ptr noundef nonnull %631) #18
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %711

711:                                              ; preds = %656, %672, %678, %707, %710, %57, %54
  %712 = phi i8 [ %56, %54 ], [ 0, %57 ], [ %638, %710 ], [ %638, %707 ], [ %638, %678 ], [ %638, %672 ], [ %638, %656 ]
  %713 = load ptr, ptr %37, align 8, !tbaa !170
  store ptr %713, ptr %3, align 8, !tbaa !261
  %714 = load ptr, ptr %34, align 8, !tbaa !259
  %715 = icmp eq ptr %713, %714
  br i1 %715, label %716, label %722, !prof !157

716:                                              ; preds = %711
  %717 = load ptr, ptr %36, align 8, !tbaa !279
  %718 = icmp eq ptr %717, null
  br i1 %718, label %726, label %719, !prof !258

719:                                              ; preds = %716
  %720 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %717, i64 0, i32 1
  store ptr %713, ptr %720, align 8, !tbaa !170
  %721 = load ptr, ptr %37, align 8, !tbaa !170
  store ptr %717, ptr %721, align 8, !tbaa !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %726

722:                                              ; preds = %711
  call fastcc void @link_use_stmts_after(ptr noundef %713, ptr noundef nonnull %3)
  %723 = load ptr, ptr %3, align 8, !tbaa !261
  %724 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %723, i64 0, i32 2
  %725 = load ptr, ptr %724, align 8, !tbaa !102
  br label %726

726:                                              ; preds = %716, %719, %722
  %727 = phi ptr [ %725, %722 ], [ null, %719 ], [ null, %716 ]
  %728 = load ptr, ptr %3, align 8, !tbaa !261
  %729 = load ptr, ptr %34, align 8, !tbaa !259
  %730 = icmp eq ptr %728, %729
  br i1 %730, label %731, label %48, !prof !280, !llvm.loop !281

731:                                              ; preds = %726, %43
  %732 = phi i8 [ 1, %43 ], [ %712, %726 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret i8 %732
}

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #3

declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !255 !PGOFuncName !282 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !237
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1, !prof !258
  %12 = load i32, ptr %5, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %94, !prof !159

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 4
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 5
  %22 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 6
  store i8 0, ptr %3, align 8, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %17) #18
  %24 = icmp eq i8 %23, 0
  %25 = xor i1 %10, %24
  br i1 %25, label %26, label %27, !prof !264

26:                                               ; preds = %15
  store i8 1, ptr %3, align 8, !tbaa !283
  br label %34

27:                                               ; preds = %15
  store ptr %5, ptr %22, align 8, !tbaa !285
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !102
  store i32 %29, ptr %21, align 4, !tbaa !286
  store i32 2, ptr %19, align 4, !tbaa !287
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33, !prof !288

31:                                               ; preds = %27
  store i32 1, ptr %20, align 8, !tbaa !289
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 0
  br label %34

33:                                               ; preds = %27
  store i8 1, ptr %3, align 8, !tbaa !283
  br label %34

34:                                               ; preds = %26, %31, %33
  %35 = phi ptr [ null, %26 ], [ %32, %31 ], [ null, %33 ]
  %36 = load i8, ptr %3, align 8, !tbaa !283
  %37 = load ptr, ptr %18, align 8, !tbaa !290
  %38 = load i32, ptr %20, align 8, !tbaa !289
  %39 = icmp eq i8 %36, 0
  br i1 %39, label %40, label %200, !prof !291

40:                                               ; preds = %34
  %41 = load i32, ptr %21, align 4
  %42 = load ptr, ptr %22, align 8
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %42, i64 0, i32 1
  br label %44

44:                                               ; preds = %40, %88
  %45 = phi ptr [ %35, %40 ], [ %92, %88 ]
  %46 = phi ptr [ %0, %40 ], [ %73, %88 ]
  %47 = phi i8 [ %36, %40 ], [ %91, %88 ]
  %48 = phi ptr [ %37, %40 ], [ %90, %88 ]
  %49 = phi i32 [ %38, %40 ], [ %89, %88 ]
  %50 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !237
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = icmp ne ptr %52, %8
  %54 = icmp eq ptr %45, %0
  %55 = or i1 %53, %54
  br i1 %55, label %72, label %56, !prof !292

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !170
  %59 = icmp eq ptr %58, %45
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %45, align 8, !tbaa !279
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !170
  %66 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !170
  %67 = load ptr, ptr %64, align 8, !tbaa !170
  store ptr %61, ptr %67, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  br label %68

68:                                               ; preds = %63, %60
  store ptr %46, ptr %45, align 8, !tbaa !279
  %69 = load ptr, ptr %57, align 8, !tbaa !170
  %70 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !170
  %71 = load ptr, ptr %57, align 8, !tbaa !170
  store ptr %45, ptr %71, align 8, !tbaa !279
  store ptr %45, ptr %57, align 8, !tbaa !170
  br label %72

72:                                               ; preds = %68, %56, %44
  %73 = phi ptr [ %46, %44 ], [ %45, %68 ], [ %45, %56 ]
  %74 = icmp eq ptr %48, null
  br i1 %74, label %78, label %75, !prof !292

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.use_optype_d, ptr %48, i64 0, i32 1
  %77 = load ptr, ptr %48, align 8, !tbaa !234
  br label %88

78:                                               ; preds = %72
  %79 = icmp slt i32 %49, %41
  br i1 %79, label %80, label %88, !prof !293

80:                                               ; preds = %78
  %81 = add nsw i32 %49, 1
  %82 = load i32, ptr %43, align 8, !tbaa !102
  %83 = icmp ult i32 %82, %49
  br i1 %83, label %84, label %85, !prof !264

84:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %85

85:                                               ; preds = %84, %80
  %86 = zext i32 %49 to i64
  %87 = getelementptr inbounds %struct.gimple_statement_phi, ptr %42, i64 0, i32 4, i64 %86
  br label %88

88:                                               ; preds = %78, %75, %85
  %89 = phi i32 [ %49, %75 ], [ %81, %85 ], [ %49, %78 ]
  %90 = phi ptr [ %77, %75 ], [ %48, %85 ], [ %48, %78 ]
  %91 = phi i8 [ %47, %75 ], [ %47, %85 ], [ 1, %78 ]
  %92 = phi ptr [ %76, %75 ], [ %87, %85 ], [ null, %78 ]
  %93 = icmp eq i8 %91, 0
  br i1 %93, label %44, label %200, !prof !294, !llvm.loop !295

94:                                               ; preds = %2
  br i1 %10, label %159, label %95, !prof !265

95:                                               ; preds = %94
  %96 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %11)
  %97 = load i8, ptr %3, align 8, !tbaa !283
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %206, !prof !296

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 3
  %101 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 4
  %102 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8
  %106 = load ptr, ptr %100, align 8, !tbaa !290
  %107 = load i32, ptr %101, align 8, !tbaa !289
  br label %108

108:                                              ; preds = %99, %153
  %109 = phi i32 [ %107, %99 ], [ %154, %153 ]
  %110 = phi ptr [ %106, %99 ], [ %155, %153 ]
  %111 = phi ptr [ %96, %99 ], [ %157, %153 ]
  %112 = phi ptr [ %0, %99 ], [ %137, %153 ]
  %113 = phi i8 [ %97, %99 ], [ %156, %153 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !237
  %116 = load ptr, ptr %115, align 8, !tbaa !91
  %117 = icmp ne ptr %116, %8
  %118 = icmp eq ptr %111, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120, !prof !297

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !170
  %123 = icmp eq ptr %122, %111
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %111, align 8, !tbaa !279
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !170
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !170
  %131 = load ptr, ptr %128, align 8, !tbaa !170
  store ptr %125, ptr %131, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %112, ptr %111, align 8, !tbaa !279
  %133 = load ptr, ptr %121, align 8, !tbaa !170
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !170
  %135 = load ptr, ptr %121, align 8, !tbaa !170
  store ptr %111, ptr %135, align 8, !tbaa !279
  store ptr %111, ptr %121, align 8, !tbaa !170
  br label %136

136:                                              ; preds = %132, %120, %108
  %137 = phi ptr [ %112, %108 ], [ %111, %132 ], [ %111, %120 ]
  %138 = icmp eq ptr %110, null
  br i1 %138, label %142, label %139, !prof !298

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %110, i64 0, i32 1
  %141 = load ptr, ptr %110, align 8, !tbaa !234
  br label %153

142:                                              ; preds = %136
  %143 = icmp slt i32 %109, %103
  br i1 %143, label %144, label %153, !prof !265

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.gimple_statement_phi, ptr %105, i64 0, i32 1
  %146 = add nsw i32 %109, 1
  %147 = load i32, ptr %145, align 8, !tbaa !102
  %148 = icmp ult i32 %147, %109
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %150

150:                                              ; preds = %149, %144
  %151 = zext i32 %109 to i64
  %152 = getelementptr inbounds %struct.gimple_statement_phi, ptr %105, i64 0, i32 4, i64 %151
  br label %153

153:                                              ; preds = %142, %139, %150
  %154 = phi i32 [ %109, %139 ], [ %146, %150 ], [ %109, %142 ]
  %155 = phi ptr [ %141, %139 ], [ %110, %150 ], [ %110, %142 ]
  %156 = phi i8 [ %113, %139 ], [ %113, %150 ], [ 1, %142 ]
  %157 = phi ptr [ %140, %139 ], [ %152, %150 ], [ null, %142 ]
  %158 = icmp eq i8 %156, 0
  br i1 %158, label %108, label %205, !prof !299, !llvm.loop !300

159:                                              ; preds = %94
  %160 = and i32 %12, 254
  %161 = add nsw i32 %160, -10
  %162 = icmp ult i32 %161, -4
  br i1 %162, label %174, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %5, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !102
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !301
  %170 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %171 = icmp eq ptr %169, %170
  %172 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1
  %173 = select i1 %171, ptr %172, ptr null
  br label %174

174:                                              ; preds = %159, %163, %167
  %175 = phi ptr [ null, %159 ], [ null, %163 ], [ %173, %167 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %209, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !237
  %180 = load ptr, ptr %179, align 8, !tbaa !91
  %181 = icmp ne ptr %180, %8
  %182 = icmp eq ptr %175, %0
  %183 = or i1 %182, %181
  br i1 %183, label %209, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !170
  %187 = icmp eq ptr %186, %175
  br i1 %187, label %209, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %175, align 8, !tbaa !279
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !170
  %194 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  store ptr %193, ptr %194, align 8, !tbaa !170
  %195 = load ptr, ptr %192, align 8, !tbaa !170
  store ptr %189, ptr %195, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %175, i8 0, i64 16, i1 false)
  br label %196

196:                                              ; preds = %191, %188
  store ptr %0, ptr %175, align 8, !tbaa !279
  %197 = load ptr, ptr %185, align 8, !tbaa !170
  %198 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !170
  %199 = load ptr, ptr %185, align 8, !tbaa !170
  store ptr %175, ptr %199, align 8, !tbaa !279
  store ptr %175, ptr %185, align 8, !tbaa !170
  br label %209

200:                                              ; preds = %88, %34
  %201 = phi i32 [ %38, %34 ], [ %89, %88 ]
  %202 = phi ptr [ %37, %34 ], [ %90, %88 ]
  %203 = phi i8 [ %36, %34 ], [ %91, %88 ]
  %204 = phi ptr [ %0, %34 ], [ %73, %88 ]
  store i8 %203, ptr %3, align 8, !tbaa !283
  store ptr %202, ptr %18, align 8, !tbaa !290
  store i32 %201, ptr %20, align 8, !tbaa !289
  br label %209

205:                                              ; preds = %153
  store ptr %155, ptr %100, align 8, !tbaa !290
  store i32 %154, ptr %101, align 8, !tbaa !289
  br label %206

206:                                              ; preds = %205, %95
  %207 = phi i8 [ %156, %205 ], [ %97, %95 ]
  %208 = phi ptr [ %137, %205 ], [ %0, %95 ]
  store i8 %207, ptr %3, align 8, !tbaa !283
  br label %209

209:                                              ; preds = %206, %200, %196, %184, %177, %174
  %210 = phi ptr [ %0, %177 ], [ %0, %174 ], [ %175, %196 ], [ %175, %184 ], [ %204, %200 ], [ %208, %206 ]
  %211 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !279
  %213 = icmp eq ptr %212, null
  br i1 %213, label %219, label %214, !prof !157

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !170
  %217 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %212, i64 0, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !170
  %218 = load ptr, ptr %215, align 8, !tbaa !170
  store ptr %212, ptr %218, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %211, i8 0, i64 16, i1 false)
  br label %219

219:                                              ; preds = %214, %209
  store ptr %210, ptr %211, align 8, !tbaa !279
  %220 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %210, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !170
  %222 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !170
  %223 = load ptr, ptr %220, align 8, !tbaa !170
  store ptr %211, ptr %223, align 8, !tbaa !279
  store ptr %211, ptr %220, align 8, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !prof !302 !PGOFuncName !303 {
  %4 = and i32 %2, 10
  %5 = and i32 %2, 11
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7, !prof !266

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 771, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %2, 4
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %2, 5
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14, !prof !265

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 747, ptr noundef nonnull @.str.2) #18
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %24, label %16, !prof !266

16:                                               ; preds = %14
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 255
  %19 = add nsw i32 %18, -10
  %20 = icmp ult i32 %19, -9
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  br label %24

24:                                               ; preds = %21, %16, %14
  %25 = phi ptr [ null, %14 ], [ %23, %21 ], [ null, %16 ]
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !304
  %27 = icmp eq ptr %25, null
  br i1 %27, label %39, label %28, !prof !266

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 254
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -4
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %25, align 8, !tbaa !305
  store ptr %38, ptr %26, align 8, !tbaa !304
  br label %39

39:                                               ; preds = %28, %37, %33, %24
  %40 = icmp eq i32 %11, 0
  br i1 %40, label %49, label %41, !prof !265

41:                                               ; preds = %39
  %42 = load i32, ptr %1, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  br i1 %45, label %49, label %46, !prof !265

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  br label %49

49:                                               ; preds = %46, %41, %39
  %50 = phi ptr [ null, %39 ], [ %48, %46 ], [ null, %41 ]
  %51 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !290
  %52 = icmp eq ptr %50, null
  %53 = select i1 %10, i1 true, i1 %52, !prof !265
  br i1 %53, label %65, label %54, !prof !265

54:                                               ; preds = %49
  %55 = load i32, ptr %1, align 8
  %56 = and i32 %55, 254
  %57 = add nsw i32 %56, -10
  %58 = icmp ult i32 %57, -4
  br i1 %58, label %65, label %59, !prof !265

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !102
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !268

63:                                               ; preds = %59
  %64 = load ptr, ptr %50, align 8, !tbaa !234
  store ptr %64, ptr %51, align 8, !tbaa !290
  br label %65

65:                                               ; preds = %54, %49, %59, %63
  store i8 0, ptr %0, align 8, !tbaa !283
  %66 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %67 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  store i32 2, ptr %67, align 4, !tbaa !287
  %68 = load ptr, ptr %51, align 8, !tbaa !290
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70, !prof !265

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.use_optype_d, ptr %68, i64 0, i32 1
  %72 = load ptr, ptr %68, align 8, !tbaa !234
  store ptr %72, ptr %51, align 8, !tbaa !290
  br label %74

73:                                               ; preds = %65
  store i8 1, ptr %0, align 8, !tbaa !283
  br label %74

74:                                               ; preds = %70, %73
  %75 = phi ptr [ %71, %70 ], [ null, %73 ]
  ret ptr %75
}

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_address_into_dereference(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @tidy_after_forward_propagate_addr(ptr noundef %0) unnamed_addr #13 !prof !302 !PGOFuncName !307 {
  %2 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %0, ptr noundef %0) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !266

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i1 true, ptr @cfg_changed, align 1
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -1
  %14 = icmp ult i32 %13, 9
  tail call void @llvm.assume(i1 %14)
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !138
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23, !prof !265

22:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %23

23:                                               ; preds = %22, %10
  %24 = getelementptr inbounds i8, ptr %0, i64 %20
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 121
  br i1 %29, label %30, label %50, !prof !268

30:                                               ; preds = %23
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 255
  %33 = add nsw i32 %32, -10
  %34 = icmp ult i32 %33, -9
  br i1 %34, label %48, label %35, !prof !269

35:                                               ; preds = %30
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !106
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !138
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44, !prof !269

43:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %44

44:                                               ; preds = %43, %35
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  br label %48

48:                                               ; preds = %30, %44
  %49 = phi ptr [ %47, %44 ], [ null, %30 ]
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %49) #18
  br label %50

50:                                               ; preds = %48, %23
  ret void
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @maybe_fold_stmt_addition(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_addr_into_variable_array_index(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 !prof !308 !PGOFuncName !309 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = tail call i32 @host_integerp(ptr noundef %9, i32 noundef 1) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %456, label %12, !prof !275

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = tail call i32 @integer_onep(ptr noundef %9) #18
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 6
  br i1 %16, label %46, label %20, !prof !278

20:                                               ; preds = %12
  br i1 %19, label %21, label %430

21:                                               ; preds = %20
  %22 = lshr i32 %17, 16
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !102
  %26 = icmp eq i8 %25, 3
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = zext nneg i32 %18 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !106
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !138
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds i8, ptr %14, i64 %33
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !91
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  br label %43

43:                                               ; preds = %21, %36
  %44 = phi i32 [ %42, %36 ], [ %22, %21 ]
  %45 = icmp eq i32 %44, 65
  br i1 %45, label %456, label %430

46:                                               ; preds = %12
  br i1 %19, label %47, label %456, !prof !278

47:                                               ; preds = %46
  %48 = lshr i32 %17, 16
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !102
  %52 = icmp eq i8 %51, 3
  br i1 %52, label %53, label %69, !prof !275

53:                                               ; preds = %47
  %54 = zext nneg i32 %18 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !106
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !138
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %62

62:                                               ; preds = %61, %53
  %63 = getelementptr inbounds i8, ptr %14, i64 %59
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 65535
  br label %69

69:                                               ; preds = %47, %62
  %70 = phi i32 [ %68, %62 ], [ %48, %47 ]
  %71 = icmp eq i32 %70, 65
  br i1 %71, label %72, label %138, !prof !278

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %14, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !102
  %75 = icmp ugt i32 %74, 2
  tail call void @llvm.assume(i1 %75)
  %76 = load i32, ptr %14, align 8
  %77 = and i32 %76, 255
  %78 = add nsw i32 %77, -1
  %79 = icmp ult i32 %78, 9
  tail call void @llvm.assume(i1 %79)
  %80 = zext nneg i32 %77 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !106
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !138
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88, !prof !275

87:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %88

88:                                               ; preds = %87, %72
  %89 = getelementptr inbounds i8, ptr %14, i64 %85
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %138, !prof !278

95:                                               ; preds = %88
  %96 = load i32, ptr %73, align 4, !tbaa !102
  %97 = icmp ugt i32 %96, 2
  br i1 %97, label %98, label %116, !prof !278

98:                                               ; preds = %95
  %99 = load i32, ptr %14, align 8
  %100 = and i32 %99, 255
  %101 = add nsw i32 %100, -10
  %102 = icmp ult i32 %101, -9
  br i1 %102, label %116, label %103, !prof !275

103:                                              ; preds = %98
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !106
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !138
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112, !prof !275

111:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %112

112:                                              ; preds = %111, %103
  %113 = getelementptr inbounds i8, ptr %14, i64 %109
  %114 = getelementptr inbounds ptr, ptr %113, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !91
  br label %116

116:                                              ; preds = %95, %98, %112
  %117 = phi ptr [ null, %95 ], [ %115, %112 ], [ null, %98 ]
  %118 = tail call i32 @tree_int_cst_equal(ptr noundef %117, ptr noundef %9) #18
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %138, label %120, !prof !275

120:                                              ; preds = %116
  %121 = load i32, ptr %14, align 8
  %122 = and i32 %121, 255
  %123 = add nsw i32 %122, -10
  %124 = icmp ult i32 %123, -9
  br i1 %124, label %430, label %125, !prof !275

125:                                              ; preds = %120
  %126 = zext nneg i32 %122 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !106
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !138
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134, !prof !275

133:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %134

134:                                              ; preds = %133, %125
  %135 = getelementptr inbounds i8, ptr %14, i64 %131
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !91
  br label %430

138:                                              ; preds = %116, %88, %69
  %139 = load i32, ptr %14, align 8
  %140 = trunc i32 %139 to i8
  switch i8 %140, label %143 [
    i8 6, label %141
    i8 1, label %141
    i8 8, label %144
  ]

141:                                              ; preds = %138, %138
  %142 = lshr i32 %139, 16
  br label %144

143:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %144

144:                                              ; preds = %143, %141, %138
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ], [ 59, %138 ]
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !102
  %149 = icmp eq i8 %148, 3
  br i1 %149, label %150, label %170

150:                                              ; preds = %144
  %151 = load i32, ptr %14, align 8
  %152 = and i32 %151, 255
  %153 = add nsw i32 %152, -1
  %154 = icmp ult i32 %153, 9
  tail call void @llvm.assume(i1 %154)
  %155 = zext nneg i32 %152 to i64
  %156 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !106
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !138
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %163

163:                                              ; preds = %162, %150
  %164 = getelementptr inbounds i8, ptr %14, i64 %160
  %165 = getelementptr inbounds ptr, ptr %164, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !91
  %167 = load i64, ptr %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = and i32 %168, 65535
  br label %170

170:                                              ; preds = %144, %163
  %171 = phi i32 [ %169, %163 ], [ %145, %144 ]
  %172 = icmp eq i32 %171, 63
  br i1 %172, label %208, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %14, align 8
  %175 = trunc i32 %174 to i8
  switch i8 %175, label %178 [
    i8 6, label %176
    i8 1, label %176
    i8 8, label %179
  ]

176:                                              ; preds = %173, %173
  %177 = lshr i32 %174, 16
  br label %179

178:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %179

179:                                              ; preds = %178, %176, %173
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ], [ 59, %173 ]
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !102
  %184 = icmp eq i8 %183, 3
  br i1 %184, label %185, label %205

185:                                              ; preds = %179
  %186 = load i32, ptr %14, align 8
  %187 = and i32 %186, 255
  %188 = add nsw i32 %187, -1
  %189 = icmp ult i32 %188, 9
  tail call void @llvm.assume(i1 %189)
  %190 = zext nneg i32 %187 to i64
  %191 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !106
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %193
  %195 = load i64, ptr %194, align 8, !tbaa !138
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %198

198:                                              ; preds = %197, %185
  %199 = getelementptr inbounds i8, ptr %14, i64 %195
  %200 = getelementptr inbounds ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !91
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = and i32 %203, 65535
  br label %205

205:                                              ; preds = %179, %198
  %206 = phi i32 [ %204, %198 ], [ %180, %179 ]
  %207 = icmp eq i32 %206, 64
  br i1 %207, label %208, label %456

208:                                              ; preds = %205, %170
  %209 = load i32, ptr %14, align 8
  %210 = and i32 %209, 255
  %211 = add nsw i32 %210, -1
  %212 = icmp ult i32 %211, 9
  tail call void @llvm.assume(i1 %212)
  %213 = zext nneg i32 %210 to i64
  %214 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !106
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !138
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %221

221:                                              ; preds = %220, %208
  %222 = getelementptr inbounds i8, ptr %14, i64 %218
  %223 = getelementptr inbounds ptr, ptr %222, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !91
  %225 = load i64, ptr %224, align 8
  %226 = and i64 %225, 65535
  %227 = icmp eq i64 %226, 141
  br i1 %227, label %228, label %456

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.gimple_statement_base, ptr %14, i64 0, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !102
  %231 = icmp ugt i32 %230, 2
  tail call void @llvm.assume(i1 %231)
  %232 = load i32, ptr %14, align 8
  %233 = and i32 %232, 255
  %234 = add nsw i32 %233, -1
  %235 = icmp ult i32 %234, 9
  tail call void @llvm.assume(i1 %235)
  %236 = zext nneg i32 %233 to i64
  %237 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !106
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !138
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %228
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %244

244:                                              ; preds = %243, %228
  %245 = getelementptr inbounds i8, ptr %14, i64 %241
  %246 = getelementptr inbounds ptr, ptr %245, i64 2
  %247 = load ptr, ptr %246, align 8, !tbaa !91
  %248 = load i64, ptr %247, align 8
  %249 = and i64 %248, 65535
  %250 = icmp eq i64 %249, 23
  br i1 %250, label %251, label %456

251:                                              ; preds = %244
  %252 = load i32, ptr %229, align 4, !tbaa !102
  %253 = icmp ugt i32 %252, 2
  br i1 %253, label %254, label %272

254:                                              ; preds = %251
  %255 = load i32, ptr %14, align 8
  %256 = and i32 %255, 255
  %257 = add nsw i32 %256, -10
  %258 = icmp ult i32 %257, -9
  br i1 %258, label %272, label %259

259:                                              ; preds = %254
  %260 = zext nneg i32 %256 to i64
  %261 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !106
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !138
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %268

268:                                              ; preds = %267, %259
  %269 = getelementptr inbounds i8, ptr %14, i64 %265
  %270 = getelementptr inbounds ptr, ptr %269, i64 2
  %271 = load ptr, ptr %270, align 8, !tbaa !91
  br label %272

272:                                              ; preds = %251, %254, %268
  %273 = phi ptr [ null, %251 ], [ %271, %268 ], [ null, %254 ]
  %274 = tail call ptr @div_if_zero_remainder(i32 noundef 76, ptr noundef %273, ptr noundef %9) #18
  %275 = icmp eq ptr %274, null
  br i1 %275, label %456, label %276

276:                                              ; preds = %272
  %277 = load i32, ptr %14, align 8
  %278 = and i32 %277, 255
  %279 = add nsw i32 %278, -1
  %280 = icmp ult i32 %279, 9
  tail call void @llvm.assume(i1 %280)
  %281 = zext nneg i32 %278 to i64
  %282 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !106
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %284
  %286 = load i64, ptr %285, align 8, !tbaa !138
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %276
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %289

289:                                              ; preds = %288, %276
  %290 = getelementptr inbounds i8, ptr %14, i64 %286
  %291 = getelementptr inbounds ptr, ptr %290, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !91
  %293 = getelementptr inbounds %struct.tree_ssa_name, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !102
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 255
  %297 = icmp eq i32 %296, 6
  br i1 %297, label %298, label %427

298:                                              ; preds = %289
  %299 = lshr i32 %295, 16
  %300 = zext nneg i32 %299 to i64
  %301 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !102
  %303 = icmp eq i8 %302, 3
  br i1 %303, label %304, label %320

304:                                              ; preds = %298
  %305 = zext nneg i32 %296 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !106
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %308
  %310 = load i64, ptr %309, align 8, !tbaa !138
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %313

313:                                              ; preds = %312, %304
  %314 = getelementptr inbounds i8, ptr %294, i64 %310
  %315 = getelementptr inbounds ptr, ptr %314, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !91
  %317 = load i64, ptr %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = and i32 %318, 65535
  br label %320

320:                                              ; preds = %298, %313
  %321 = phi i32 [ %319, %313 ], [ %299, %298 ]
  %322 = icmp eq i32 %321, 65
  br i1 %322, label %323, label %427

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.gimple_statement_base, ptr %294, i64 0, i32 3
  %325 = load i32, ptr %324, align 4, !tbaa !102
  %326 = icmp ugt i32 %325, 2
  tail call void @llvm.assume(i1 %326)
  %327 = load i32, ptr %294, align 8
  %328 = and i32 %327, 255
  %329 = add nsw i32 %328, -1
  %330 = icmp ult i32 %329, 9
  tail call void @llvm.assume(i1 %330)
  %331 = zext nneg i32 %328 to i64
  %332 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !106
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %334
  %336 = load i64, ptr %335, align 8, !tbaa !138
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %323
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %339

339:                                              ; preds = %338, %323
  %340 = getelementptr inbounds i8, ptr %294, i64 %336
  %341 = getelementptr inbounds ptr, ptr %340, i64 2
  %342 = load ptr, ptr %341, align 8, !tbaa !91
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 65535
  %345 = icmp eq i64 %344, 23
  br i1 %345, label %346, label %427

346:                                              ; preds = %339
  %347 = load i32, ptr %324, align 4, !tbaa !102
  %348 = icmp ugt i32 %347, 2
  br i1 %348, label %349, label %367

349:                                              ; preds = %346
  %350 = load i32, ptr %294, align 8
  %351 = and i32 %350, 255
  %352 = add nsw i32 %351, -10
  %353 = icmp ult i32 %352, -9
  br i1 %353, label %367, label %354

354:                                              ; preds = %349
  %355 = zext nneg i32 %351 to i64
  %356 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !106
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %358
  %360 = load i64, ptr %359, align 8, !tbaa !138
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %363

363:                                              ; preds = %362, %354
  %364 = getelementptr inbounds i8, ptr %294, i64 %360
  %365 = getelementptr inbounds ptr, ptr %364, i64 2
  %366 = load ptr, ptr %365, align 8, !tbaa !91
  br label %367

367:                                              ; preds = %346, %349, %363
  %368 = phi ptr [ null, %346 ], [ %366, %363 ], [ null, %349 ]
  %369 = tail call i32 @tree_int_cst_equal(ptr noundef %368, ptr noundef %9) #18
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %427, label %371

371:                                              ; preds = %367
  %372 = load i32, ptr %14, align 8
  %373 = trunc i32 %372 to i8
  switch i8 %373, label %376 [
    i8 6, label %374
    i8 1, label %374
    i8 8, label %377
  ]

374:                                              ; preds = %371, %371
  %375 = lshr i32 %372, 16
  br label %377

376:                                              ; preds = %371
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %377

377:                                              ; preds = %376, %374, %371
  %378 = phi i32 [ %375, %374 ], [ 0, %376 ], [ 59, %371 ]
  %379 = zext nneg i32 %378 to i64
  %380 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !102
  %382 = icmp eq i8 %381, 3
  br i1 %382, label %383, label %403

383:                                              ; preds = %377
  %384 = load i32, ptr %14, align 8
  %385 = and i32 %384, 255
  %386 = add nsw i32 %385, -1
  %387 = icmp ult i32 %386, 9
  tail call void @llvm.assume(i1 %387)
  %388 = zext nneg i32 %385 to i64
  %389 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %388
  %390 = load i32, ptr %389, align 4, !tbaa !106
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %391
  %393 = load i64, ptr %392, align 8, !tbaa !138
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %383
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %396

396:                                              ; preds = %395, %383
  %397 = getelementptr inbounds i8, ptr %14, i64 %393
  %398 = getelementptr inbounds ptr, ptr %397, i64 1
  %399 = load ptr, ptr %398, align 8, !tbaa !91
  %400 = load i64, ptr %399, align 8
  %401 = trunc i64 %400 to i32
  %402 = and i32 %401, 65535
  br label %403

403:                                              ; preds = %377, %396
  %404 = phi i32 [ %402, %396 ], [ %378, %377 ]
  %405 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !102
  %407 = load i32, ptr %294, align 8
  %408 = and i32 %407, 255
  %409 = add nsw i32 %408, -10
  %410 = icmp ult i32 %409, -9
  br i1 %410, label %424, label %411

411:                                              ; preds = %403
  %412 = zext nneg i32 %408 to i64
  %413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !106
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !138
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %411
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %420

420:                                              ; preds = %419, %411
  %421 = getelementptr inbounds i8, ptr %294, i64 %417
  %422 = getelementptr inbounds ptr, ptr %421, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !91
  br label %424

424:                                              ; preds = %403, %420
  %425 = phi ptr [ %423, %420 ], [ null, %403 ]
  %426 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %404, ptr noundef %406, ptr noundef %425, ptr noundef nonnull %274) #18
  br label %427

427:                                              ; preds = %289, %320, %339, %367, %424
  %428 = phi ptr [ %426, %424 ], [ undef, %367 ], [ undef, %339 ], [ undef, %320 ], [ undef, %289 ]
  %429 = phi i1 [ true, %424 ], [ false, %367 ], [ false, %339 ], [ false, %320 ], [ false, %289 ]
  br i1 %429, label %430, label %456

430:                                              ; preds = %134, %120, %20, %43, %427
  %431 = phi ptr [ %428, %427 ], [ %0, %43 ], [ %0, %20 ], [ %137, %134 ], [ null, %120 ]
  %432 = tail call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef %431, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  %433 = tail call ptr @unshare_expr(ptr noundef %1) #18
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %2, ptr noundef %433) #18
  %434 = load ptr, ptr %2, align 1
  %435 = load ptr, ptr %434, align 8, !tbaa !135
  %436 = load i32, ptr %435, align 8
  %437 = and i32 %436, 255
  %438 = add nsw i32 %437, -1
  %439 = icmp ult i32 %438, 9
  tail call void @llvm.assume(i1 %439)
  %440 = zext nneg i32 %437 to i64
  %441 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !106
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !138
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %448, !prof !275

447:                                              ; preds = %430
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %448

448:                                              ; preds = %447, %430
  %449 = getelementptr inbounds i8, ptr %435, i64 %445
  %450 = getelementptr inbounds ptr, ptr %449, i64 1
  %451 = load ptr, ptr %450, align 8, !tbaa !91
  %452 = getelementptr inbounds %struct.tree_exp, ptr %451, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !102
  %454 = getelementptr inbounds %struct.tree_exp, ptr %453, i64 1
  store ptr %432, ptr %454, align 8, !tbaa !102
  %455 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef nonnull %435) #18
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef nonnull %435)
  br label %456

456:                                              ; preds = %427, %205, %221, %244, %272, %46, %43, %3, %448
  %457 = phi i8 [ 1, %448 ], [ 0, %3 ], [ 0, %43 ], [ 0, %46 ], [ 0, %272 ], [ 0, %244 ], [ 0, %221 ], [ 0, %205 ], [ 0, %427 ]
  ret i8 %457
}

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @div_if_zero_remainder(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_prop_source_stmt(ptr noundef %0, i8 noundef zeroext %1, ptr noundef writeonly %2) unnamed_addr #12 !prof !90 !PGOFuncName !310 {
  %4 = icmp eq i8 %1, 0
  br label %5

5:                                                ; preds = %207, %3
  %6 = phi i8 [ 1, %3 ], [ %208, %207 ]
  %7 = phi ptr [ %0, %3 ], [ %209, %207 ]
  %8 = phi ptr [ undef, %3 ], [ %211, %207 ]
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 5
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 5, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %31, label %15, !prof !210

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !170
  %18 = icmp eq ptr %11, %17
  br i1 %18, label %19, label %26, !prof !211

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 255
  %24 = icmp ne i32 %23, 2
  %25 = zext i1 %24 to i8
  br label %31

26:                                               ; preds = %15
  %27 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !106
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !212

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #18
  br label %31

31:                                               ; preds = %5, %19, %26, %29
  %32 = phi i8 [ %25, %19 ], [ %30, %29 ], [ 0, %26 ], [ 0, %5 ]
  %33 = icmp ne i8 %32, 0
  %34 = or i1 %33, %4
  %35 = select i1 %33, i8 %6, i8 0, !prof !311
  br i1 %34, label %36, label %207, !prof !312

36:                                               ; preds = %31
  %37 = load i32, ptr %10, align 8
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %207, !prof !214

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %10) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %189, !prof !215

43:                                               ; preds = %40
  %44 = icmp eq i8 %1, 0
  %45 = icmp ne ptr %2, null
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %48, !prof !215

47:                                               ; preds = %43
  store i8 %35, ptr %2, align 1, !tbaa !102
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, ptr %10, align 8
  %50 = and i32 %49, 255
  %51 = add nsw i32 %50, -10
  %52 = icmp ult i32 %51, -9
  br i1 %52, label %66, label %53, !prof !216

53:                                               ; preds = %48
  %54 = zext nneg i32 %50 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !106
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !138
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62, !prof !216

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %62

62:                                               ; preds = %61, %53
  %63 = getelementptr inbounds i8, ptr %10, i64 %59
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  br label %66

66:                                               ; preds = %48, %62
  %67 = phi ptr [ %65, %62 ], [ null, %48 ]
  %68 = load i32, ptr %10, align 8
  %69 = trunc i32 %68 to i8
  switch i8 %69, label %72 [
    i8 6, label %70
    i8 1, label %70
    i8 8, label %73
  ], !prof !217

70:                                               ; preds = %66, %66
  %71 = lshr i32 %68, 16
  br label %73

72:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %73

73:                                               ; preds = %72, %70, %66
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ], [ 59, %66 ]
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !102
  %78 = icmp eq i8 %77, 3
  br i1 %78, label %79, label %99, !prof !218

79:                                               ; preds = %73
  %80 = load i32, ptr %10, align 8
  %81 = and i32 %80, 255
  %82 = add nsw i32 %81, -1
  %83 = icmp ult i32 %82, 9
  tail call void @llvm.assume(i1 %83)
  %84 = zext nneg i32 %81 to i64
  %85 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !106
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !138
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92, !prof !219

91:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %92

92:                                               ; preds = %91, %79
  %93 = getelementptr inbounds i8, ptr %10, i64 %89
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !91
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 65535
  br label %99

99:                                               ; preds = %73, %92
  %100 = phi i32 [ %98, %92 ], [ %74, %73 ]
  %101 = icmp eq i32 %100, 116
  br i1 %101, label %137, label %102, !prof !220

102:                                              ; preds = %99
  %103 = load i32, ptr %10, align 8
  %104 = trunc i32 %103 to i8
  switch i8 %104, label %107 [
    i8 6, label %105
    i8 1, label %105
    i8 8, label %108
  ], !prof !221

105:                                              ; preds = %102, %102
  %106 = lshr i32 %103, 16
  br label %108

107:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %108

108:                                              ; preds = %107, %105, %102
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ], [ 59, %102 ]
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !102
  %113 = icmp eq i8 %112, 3
  br i1 %113, label %114, label %134, !prof !222

114:                                              ; preds = %108
  %115 = load i32, ptr %10, align 8
  %116 = and i32 %115, 255
  %117 = add nsw i32 %116, -1
  %118 = icmp ult i32 %117, 9
  tail call void @llvm.assume(i1 %118)
  %119 = zext nneg i32 %116 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !106
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !138
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127, !prof !219

126:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %127

127:                                              ; preds = %126, %114
  %128 = getelementptr inbounds i8, ptr %10, i64 %124
  %129 = getelementptr inbounds ptr, ptr %128, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !91
  %131 = load i64, ptr %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 65535
  br label %134

134:                                              ; preds = %108, %127
  %135 = phi i32 [ %133, %127 ], [ %109, %108 ]
  %136 = icmp eq i32 %135, 113
  br i1 %136, label %137, label %188, !prof !223

137:                                              ; preds = %134, %99
  %138 = load i64, ptr %67, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 141
  br i1 %140, label %141, label %188, !prof !224

141:                                              ; preds = %137
  %142 = load i32, ptr %10, align 8
  %143 = and i32 %142, 255
  %144 = add nsw i32 %143, -1
  %145 = icmp ult i32 %144, 9
  tail call void @llvm.assume(i1 %145)
  %146 = zext nneg i32 %143 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !106
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !138
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154, !prof !225

153:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %154

154:                                              ; preds = %153, %141
  %155 = getelementptr inbounds i8, ptr %10, i64 %151
  %156 = load ptr, ptr %155, align 8, !tbaa !91
  %157 = getelementptr inbounds %struct.tree_common, ptr %156, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !102
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 10
  br i1 %161, label %183, label %162, !prof !225

162:                                              ; preds = %154
  %163 = load i32, ptr %10, align 8
  %164 = and i32 %163, 255
  %165 = add nsw i32 %164, -1
  %166 = icmp ult i32 %165, 9
  tail call void @llvm.assume(i1 %166)
  %167 = zext nneg i32 %164 to i64
  %168 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !106
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !138
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175, !prof !225

174:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %175

175:                                              ; preds = %174, %162
  %176 = getelementptr inbounds i8, ptr %10, i64 %172
  %177 = load ptr, ptr %176, align 8, !tbaa !91
  %178 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !102
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 12
  br i1 %182, label %183, label %188, !prof !225

183:                                              ; preds = %175, %154
  %184 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !102
  %186 = load i64, ptr %185, align 8
  %187 = trunc i64 %186 to i16
  switch i16 %187, label %188 [
    i16 10, label %207
    i16 12, label %207
  ]

188:                                              ; preds = %175, %134, %183, %137
  br label %207

189:                                              ; preds = %40
  %190 = load i32, ptr %10, align 8
  %191 = and i32 %190, 255
  %192 = add nsw i32 %191, -10
  %193 = icmp ult i32 %192, -9
  br i1 %193, label %207, label %194

194:                                              ; preds = %189
  %195 = zext nneg i32 %191 to i64
  %196 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !106
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !138
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %203

203:                                              ; preds = %202, %194
  %204 = getelementptr inbounds i8, ptr %10, i64 %200
  %205 = getelementptr inbounds ptr, ptr %204, i64 1
  %206 = load ptr, ptr %205, align 8, !tbaa !91
  br label %207

207:                                              ; preds = %31, %183, %203, %189, %188, %183, %36
  %208 = phi i8 [ %35, %36 ], [ %35, %183 ], [ %35, %188 ], [ %35, %189 ], [ %35, %203 ], [ %35, %183 ], [ 0, %31 ]
  %209 = phi ptr [ %7, %36 ], [ %67, %183 ], [ %7, %188 ], [ null, %189 ], [ %206, %203 ], [ %67, %183 ], [ %7, %31 ]
  %210 = phi i1 [ false, %36 ], [ true, %183 ], [ false, %188 ], [ true, %189 ], [ true, %203 ], [ true, %183 ], [ false, %31 ]
  %211 = phi ptr [ null, %36 ], [ %8, %183 ], [ %10, %188 ], [ %8, %189 ], [ %8, %203 ], [ %8, %183 ], [ null, %31 ]
  br i1 %210, label %5, label %212, !prof !210, !llvm.loop !226

212:                                              ; preds = %207
  ret ptr %211
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @can_propagate_from(ptr noundef %0) unnamed_addr #12 !prof !90 !PGOFuncName !313 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %6, label %5, !prof !215

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 266, ptr noundef nonnull @.str.2) #18
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 254
  %9 = add nsw i32 %8, -10
  %10 = icmp ult i32 %9, -4
  %11 = and i32 %7, 16384
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %12, %10
  br i1 %13, label %14, label %263, !prof !215

14:                                               ; preds = %6
  %15 = trunc i32 %7 to i8
  switch i8 %15, label %18 [
    i8 6, label %16
    i8 1, label %16
    i8 8, label %19
  ], !prof !217

16:                                               ; preds = %14, %14
  %17 = lshr i32 %7, 16
  br label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %19

19:                                               ; preds = %18, %16, %14
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ], [ 59, %14 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !102
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %45, !prof !218

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -1
  %29 = icmp ult i32 %28, 9
  tail call void @llvm.assume(i1 %29)
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !106
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !138
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38, !prof !219

37:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %38

38:                                               ; preds = %37, %25
  %39 = getelementptr inbounds i8, ptr %0, i64 %35
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65535
  br label %45

45:                                               ; preds = %19, %38
  %46 = phi i32 [ %44, %38 ], [ %20, %19 ]
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !106
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %263, label %51, !prof !228

51:                                               ; preds = %45
  %52 = load i32, ptr %0, align 8
  %53 = trunc i32 %52 to i8
  switch i8 %53, label %56 [
    i8 6, label %54
    i8 1, label %54
    i8 8, label %57
  ], !prof !229

54:                                               ; preds = %51, %51
  %55 = lshr i32 %52, 16
  br label %57

56:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %57

57:                                               ; preds = %56, %54, %51
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ], [ 59, %51 ]
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !102
  %62 = icmp eq i8 %61, 3
  br i1 %62, label %63, label %83, !prof !230

63:                                               ; preds = %57
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 255
  %66 = add nsw i32 %65, -1
  %67 = icmp ult i32 %66, 9
  tail call void @llvm.assume(i1 %67)
  %68 = zext nneg i32 %65 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !106
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !138
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76, !prof !231

75:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %76

76:                                               ; preds = %75, %63
  %77 = getelementptr inbounds i8, ptr %0, i64 %73
  %78 = getelementptr inbounds ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !91
  %80 = load i64, ptr %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = and i32 %81, 65535
  br label %83

83:                                               ; preds = %57, %76
  %84 = phi i32 [ %82, %76 ], [ %58, %57 ]
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !106
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %263, label %89, !prof !230

89:                                               ; preds = %83
  %90 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %0) #18
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %114, label %92, !prof !232

92:                                               ; preds = %89
  %93 = load i32, ptr %0, align 8
  %94 = and i32 %93, 255
  %95 = add nsw i32 %94, -10
  %96 = icmp ult i32 %95, -9
  br i1 %96, label %110, label %97

97:                                               ; preds = %92
  %98 = zext nneg i32 %94 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !106
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !138
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %0, i64 %103
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !91
  br label %110

110:                                              ; preds = %92, %106
  %111 = phi ptr [ %109, %106 ], [ null, %92 ]
  %112 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %111) #18
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %263

114:                                              ; preds = %110, %89
  %115 = load i32, ptr %0, align 8
  %116 = and i32 %115, 255
  %117 = add nsw i32 %116, -10
  %118 = icmp ult i32 %117, -9
  br i1 %118, label %122, label %119, !prof !233

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !102
  br label %122

122:                                              ; preds = %119, %114
  %123 = phi ptr [ %121, %119 ], [ null, %114 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %125, !prof !233

125:                                              ; preds = %122
  %126 = and i32 %115, 254
  %127 = add nsw i32 %126, -10
  %128 = icmp ult i32 %127, -4
  br i1 %128, label %135, label %129, !prof !233

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !102
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133, !prof !232

133:                                              ; preds = %129
  %134 = load ptr, ptr %123, align 8, !tbaa !234
  br label %135

135:                                              ; preds = %133, %129, %125, %122
  %136 = phi ptr [ %123, %122 ], [ %123, %125 ], [ %123, %129 ], [ %134, %133 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138, !prof !233

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.use_optype_d, ptr %136, i64 0, i32 1
  %140 = load ptr, ptr %136, align 8, !tbaa !234
  br label %141

141:                                              ; preds = %135, %138
  %142 = phi ptr [ %140, %138 ], [ %136, %135 ]
  %143 = phi i8 [ 0, %138 ], [ 1, %135 ]
  %144 = phi ptr [ %139, %138 ], [ null, %135 ]
  br i1 %137, label %165, label %145, !prof !236

145:                                              ; preds = %141, %160
  %146 = phi ptr [ %163, %160 ], [ %144, %141 ]
  %147 = phi i8 [ %162, %160 ], [ %143, %141 ]
  %148 = phi ptr [ %161, %160 ], [ %142, %141 ]
  %149 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %146, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !237
  %151 = load ptr, ptr %150, align 8, !tbaa !91
  %152 = load i64, ptr %151, align 8
  %153 = and i64 %152, 4194304
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %263, !prof !238

155:                                              ; preds = %145
  %156 = icmp eq ptr %148, null
  br i1 %156, label %160, label %157, !prof !239

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.use_optype_d, ptr %148, i64 0, i32 1
  %159 = load ptr, ptr %148, align 8, !tbaa !234
  br label %160

160:                                              ; preds = %155, %157
  %161 = phi ptr [ %159, %157 ], [ %148, %155 ]
  %162 = phi i8 [ %147, %157 ], [ 1, %155 ]
  %163 = phi ptr [ %158, %157 ], [ null, %155 ]
  %164 = icmp eq i8 %162, 0
  br i1 %164, label %145, label %165, !prof !240, !llvm.loop !241

165:                                              ; preds = %160, %141
  %166 = load i32, ptr %0, align 8
  %167 = trunc i32 %166 to i8
  switch i8 %167, label %170 [
    i8 6, label %168
    i8 1, label %168
    i8 8, label %171
  ], !prof !242

168:                                              ; preds = %165, %165
  %169 = lshr i32 %166, 16
  br label %171

170:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %171

171:                                              ; preds = %170, %168, %165
  %172 = phi i32 [ %169, %168 ], [ 0, %170 ], [ 59, %165 ]
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !102
  %176 = icmp eq i8 %175, 3
  br i1 %176, label %177, label %197, !prof !233

177:                                              ; preds = %171
  %178 = load i32, ptr %0, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -1
  %181 = icmp ult i32 %180, 9
  tail call void @llvm.assume(i1 %181)
  %182 = zext nneg i32 %179 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !106
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !138
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %190

190:                                              ; preds = %189, %177
  %191 = getelementptr inbounds i8, ptr %0, i64 %187
  %192 = getelementptr inbounds ptr, ptr %191, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !91
  %194 = load i64, ptr %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = and i32 %195, 65535
  br label %197

197:                                              ; preds = %171, %190
  %198 = phi i32 [ %196, %190 ], [ %172, %171 ]
  %199 = icmp eq i32 %198, 116
  br i1 %199, label %235, label %200, !prof !243

200:                                              ; preds = %197
  %201 = load i32, ptr %0, align 8
  %202 = trunc i32 %201 to i8
  switch i8 %202, label %205 [
    i8 6, label %203
    i8 1, label %203
    i8 8, label %206
  ], !prof !244

203:                                              ; preds = %200, %200
  %204 = lshr i32 %201, 16
  br label %206

205:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %206

206:                                              ; preds = %205, %203, %200
  %207 = phi i32 [ %204, %203 ], [ 0, %205 ], [ 59, %200 ]
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !102
  %211 = icmp eq i8 %210, 3
  br i1 %211, label %212, label %232, !prof !245

212:                                              ; preds = %206
  %213 = load i32, ptr %0, align 8
  %214 = and i32 %213, 255
  %215 = add nsw i32 %214, -1
  %216 = icmp ult i32 %215, 9
  tail call void @llvm.assume(i1 %216)
  %217 = zext nneg i32 %214 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !106
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !138
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %225

225:                                              ; preds = %224, %212
  %226 = getelementptr inbounds i8, ptr %0, i64 %222
  %227 = getelementptr inbounds ptr, ptr %226, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !91
  %229 = load i64, ptr %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = and i32 %230, 65535
  br label %232

232:                                              ; preds = %206, %225
  %233 = phi i32 [ %231, %225 ], [ %207, %206 ]
  %234 = icmp eq i32 %233, 113
  br i1 %234, label %235, label %263, !prof !245

235:                                              ; preds = %232, %197
  %236 = load i32, ptr %0, align 8
  %237 = and i32 %236, 255
  %238 = add nsw i32 %237, -1
  %239 = icmp ult i32 %238, 9
  tail call void @llvm.assume(i1 %239)
  %240 = zext nneg i32 %237 to i64
  %241 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !106
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !138
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248, !prof !225

247:                                              ; preds = %235
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %248

248:                                              ; preds = %247, %235
  %249 = getelementptr inbounds i8, ptr %0, i64 %245
  %250 = getelementptr inbounds ptr, ptr %249, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !91
  %252 = getelementptr inbounds %struct.tree_common, ptr %251, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !102
  %254 = load i64, ptr %253, align 8
  %255 = trunc i64 %254 to i16
  switch i16 %255, label %262 [
    i16 10, label %256
    i16 12, label %256
  ], !prof !246

256:                                              ; preds = %248, %248
  %257 = getelementptr inbounds %struct.tree_common, ptr %253, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !102
  %259 = load i64, ptr %258, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 20
  br i1 %261, label %263, label %262

262:                                              ; preds = %256, %248
  br label %263

263:                                              ; preds = %145, %256, %232, %262, %110, %45, %83, %6
  %264 = phi i8 [ 0, %6 ], [ 0, %83 ], [ 0, %45 ], [ 1, %110 ], [ 1, %262 ], [ 1, %232 ], [ 0, %256 ], [ 0, %145 ]
  ret i8 %264
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rhs_to_tree(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !314 !PGOFuncName !315 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !102
  %5 = load i32, ptr %1, align 8
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %9 [
    i8 6, label %7
    i8 1, label %7
    i8 8, label %10
  ], !prof !242

7:                                                ; preds = %2, %2
  %8 = lshr i32 %5, 16
  br label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #18
  br label %10

10:                                               ; preds = %9, %7, %2
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ], [ 59, %2 ]
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !102
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %36, !prof !233

16:                                               ; preds = %10
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 255
  %19 = add nsw i32 %18, -1
  %20 = icmp ult i32 %19, 9
  tail call void @llvm.assume(i1 %20)
  %21 = zext nneg i32 %18 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !106
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !138
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %29

29:                                               ; preds = %28, %16
  %30 = getelementptr inbounds i8, ptr %1, i64 %26
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  br label %36

36:                                               ; preds = %10, %29
  %37 = phi i32 [ %35, %29 ], [ %11, %10 ]
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !102
  switch i8 %40, label %124 [
    i8 1, label %41
    i8 2, label %85
    i8 3, label %106
  ], !prof !316

41:                                               ; preds = %36
  %42 = load i32, ptr %1, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  br i1 %45, label %59, label %46, !prof !245

46:                                               ; preds = %41
  %47 = zext nneg i32 %43 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !106
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !138
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55, !prof !245

54:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %55

55:                                               ; preds = %54, %46
  %56 = getelementptr inbounds i8, ptr %1, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  br label %59

59:                                               ; preds = %41, %55
  %60 = phi ptr [ %58, %55 ], [ null, %41 ]
  %61 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !102
  %63 = icmp ugt i32 %62, 2
  br i1 %63, label %64, label %82, !prof !317

64:                                               ; preds = %59
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -10
  %68 = icmp ult i32 %67, -9
  br i1 %68, label %82, label %69, !prof !245

69:                                               ; preds = %64
  %70 = zext nneg i32 %66 to i64
  %71 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !106
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !138
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78, !prof !245

77:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %78

78:                                               ; preds = %77, %69
  %79 = getelementptr inbounds i8, ptr %1, i64 %75
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !91
  br label %82

82:                                               ; preds = %59, %64, %78
  %83 = phi ptr [ null, %59 ], [ %81, %78 ], [ null, %64 ]
  %84 = tail call ptr @fold_build2_stat_loc(i32 noundef %4, i32 noundef %37, ptr noundef %0, ptr noundef %60, ptr noundef %83) #18
  br label %125

85:                                               ; preds = %36
  %86 = load i32, ptr %1, align 8
  %87 = and i32 %86, 255
  %88 = add nsw i32 %87, -10
  %89 = icmp ult i32 %88, -9
  br i1 %89, label %103, label %90, !prof !225

90:                                               ; preds = %85
  %91 = zext nneg i32 %87 to i64
  %92 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !106
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !138
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99, !prof !225

98:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %99

99:                                               ; preds = %98, %90
  %100 = getelementptr inbounds i8, ptr %1, i64 %96
  %101 = getelementptr inbounds ptr, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !91
  br label %103

103:                                              ; preds = %85, %99
  %104 = phi ptr [ %102, %99 ], [ null, %85 ]
  %105 = tail call ptr @build1_stat(i32 noundef %37, ptr noundef %0, ptr noundef %104) #18
  br label %125

106:                                              ; preds = %36
  %107 = load i32, ptr %1, align 8
  %108 = and i32 %107, 255
  %109 = add nsw i32 %108, -10
  %110 = icmp ult i32 %109, -9
  br i1 %110, label %125, label %111

111:                                              ; preds = %106
  %112 = zext nneg i32 %108 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !106
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !138
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %120

120:                                              ; preds = %119, %111
  %121 = getelementptr inbounds i8, ptr %1, i64 %117
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  br label %125

124:                                              ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 352, ptr noundef nonnull @.str.2) #18
  br label %125

125:                                              ; preds = %120, %106, %124, %103, %82
  %126 = phi ptr [ %84, %82 ], [ %105, %103 ], [ null, %124 ], [ %123, %120 ], [ null, %106 ]
  ret ptr %126
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @combine_cond_expr_cond(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #10 !prof !314 !PGOFuncName !318 {
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %12, label %11, !prof !232

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 370, ptr noundef nonnull @.str.2) #18
  br label %12

12:                                               ; preds = %6, %11
  %13 = tail call ptr @fold_binary_loc(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15, !prof !319

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %2, align 8
  %20 = xor i64 %19, %18
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23, !prof !320

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.2) #18
  br label %24

24:                                               ; preds = %15, %23
  %25 = tail call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %13) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !321

27:                                               ; preds = %24
  %28 = icmp eq i8 %5, 0
  br i1 %28, label %32, label %29, !prof !224

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %25) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %27
  br label %33

33:                                               ; preds = %24, %29, %12, %32
  %34 = phi ptr [ %25, %32 ], [ null, %12 ], [ null, %29 ], [ null, %24 ]
  ret ptr %34
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_prop_source_from_use(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #10 !prof !322 !PGOFuncName !323 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  br label %5

5:                                                ; preds = %47, %2
  %6 = phi ptr [ %0, %2 ], [ %45, %47 ]
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 5
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %16, label %11, !prof !324

11:                                               ; preds = %5
  %12 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !106
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %7) #18
  br label %16

16:                                               ; preds = %5, %11, %14
  %17 = phi i8 [ %15, %14 ], [ 1, %5 ], [ 0, %11 ]
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %51, label %19, !prof !325

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %51, label %23, !prof !326

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %21) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @release_defs(ptr noundef %21) #18
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #18
  %24 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %21) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26, !prof !224

26:                                               ; preds = %23
  %27 = load i32, ptr %21, align 8
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -10
  %30 = icmp ult i32 %29, -9
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = zext nneg i32 %28 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !106
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !138
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds i8, ptr %21, i64 %37
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %40, %26, %23
  %45 = phi ptr [ null, %23 ], [ %43, %40 ], [ null, %26 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47, !prof !224

47:                                               ; preds = %44
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %5, label %51, !llvm.loop !327

51:                                               ; preds = %47, %44, %19, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @canonicalize_cond_expr_cond(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #12 !prof !328 !PGOFuncName !329 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ], !prof !330

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !138
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !102
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51, !prof !331

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !106
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !138
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72, !prof !331

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !106
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !138
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #18
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !102
  ret ptr %78
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!89}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!35 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @tree_strip_nop_conversions, i64 43}
!36 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @stmt_references_abnormal_ssa_name, i64 43}
!37 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @forward_propagate_addr_expr, i64 43}
!38 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @release_defs, i64 300}
!39 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_remove, i64 300}
!40 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @is_gimple_min_invariant, i64 4932}
!41 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_assign_ssa_name_copy_p, i64 384567}
!42 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @build2_stat, i64 282}
!43 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_for_stmt, i64 282}
!44 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @unshare_expr, i64 5202}
!45 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_assign_set_rhs_from_tree, i64 282}
!46 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_set_modified, i64 5202}
!47 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @update_stmt_operands, i64 5202}
!48 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @remove_prop_source_from_use, i64 5202}
!49 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_expr_type, i64 83370}
!50 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @fold_binary_loc, i64 33348}
!51 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @fold_defer_overflow_warnings, i64 568396}
!52 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_assign_single_p, i64 77044}
!53 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @rhs_to_tree, i64 77044}
!54 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @combine_cond_expr_cond, i64 77044}
!55 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_cond_set_condition_from_tree, i64 4920}
!56 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @fold_undefer_overflow_warnings, i64 568396}
!57 = !{ptr @forward_propagate_addr_expr, ptr @link_use_stmts_after, i64 43}
!58 = !{ptr @forward_propagate_addr_expr, ptr @gsi_for_stmt, i64 18}
!59 = !{ptr @forward_propagate_addr_expr, ptr @may_propagate_address_into_dereference, i64 12}
!60 = !{ptr @forward_propagate_addr_expr, ptr @unshare_expr, i64 12}
!61 = !{ptr @forward_propagate_addr_expr, ptr @fold_stmt_inplace, i64 12}
!62 = !{ptr @forward_propagate_addr_expr, ptr @tidy_after_forward_propagate_addr, i64 12}
!63 = !{ptr @forward_propagate_addr_expr, ptr @integer_zerop, i64 6}
!64 = !{ptr @forward_propagate_addr_expr, ptr @useless_type_conversion_p, i64 12}
!65 = !{ptr @forward_propagate_addr_expr, ptr @forward_propagate_addr_into_variable_array_index, i64 6}
!66 = !{ptr @forward_propagate_addr_expr, ptr @gimple_set_modified, i64 18}
!67 = !{ptr @forward_propagate_addr_expr, ptr @update_stmt_operands, i64 18}
!68 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 68}
!69 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 18}
!70 = !{ptr @tidy_after_forward_propagate_addr, ptr @maybe_clean_or_replace_eh_stmt, i64 18}
!71 = !{ptr @tidy_after_forward_propagate_addr, ptr @recompute_tree_invariant_for_addr_expr, i64 12}
!72 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @host_integerp, i64 6}
!73 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @integer_onep, i64 6}
!74 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @tree_int_cst_equal, i64 6}
!75 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @force_gimple_operand_gsi, i64 6}
!76 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @unshare_expr, i64 6}
!77 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @gimple_assign_set_rhs_from_tree, i64 6}
!78 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @fold_stmt_inplace, i64 6}
!79 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @tidy_after_forward_propagate_addr, i64 6}
!80 = !{ptr @rhs_to_tree, ptr @fold_build2_stat_loc, i64 72124}
!81 = !{ptr @rhs_to_tree, ptr @build1_stat, i64 4920}
!82 = !{ptr @combine_cond_expr_cond, ptr @fold_binary_loc, i64 77044}
!83 = !{ptr @combine_cond_expr_cond, ptr @canonicalize_cond_expr_cond, i64 62750}
!84 = !{ptr @remove_prop_source_from_use, ptr @gsi_for_stmt, i64 4920}
!85 = !{ptr @remove_prop_source_from_use, ptr @release_defs, i64 4920}
!86 = !{ptr @remove_prop_source_from_use, ptr @gsi_remove, i64 4920}
!87 = !{ptr @remove_prop_source_from_use, ptr @gimple_assign_copy_p, i64 4920}
!88 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 24}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = !{!"function_entry_count", i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"any pointer", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !92, i64 8}
!96 = !{!"_IO_FILE", !97, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !97, i64 112, !97, i64 116, !98, i64 120, !99, i64 128, !93, i64 130, !93, i64 131, !92, i64 136, !98, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !98, i64 184, !97, i64 192, !93, i64 196}
!97 = !{!"int", !93, i64 0}
!98 = !{!"long", !93, i64 0}
!99 = !{!"short", !93, i64 0}
!100 = !{!96, !92, i64 16}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!93, !93, i64 0}
!103 = !{!96, !92, i64 40}
!104 = !{!96, !92, i64 48}
!105 = !{!96, !97, i64 0}
!106 = !{!97, !97, i64 0}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"function_entry_count", i64 154}
!111 = !{!"tree-ssa-forwprop.c;gate_forwprop"}
!112 = !{!"tree-ssa-forwprop.c;tree_ssa_forward_propagate_single_use_vars"}
!113 = !{!114, !92, i64 8}
!114 = !{!"function", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !97, i64 104, !97, i64 108, !97, i64 112, !97, i64 116, !97, i64 120, !97, i64 124, !92, i64 128, !97, i64 136, !97, i64 137, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139}
!115 = !{!116, !92, i64 0}
!116 = !{!"control_flow_graph", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !92, i64 40, !97, i64 48, !93, i64 52, !93, i64 60, !97, i64 68, !97, i64 72}
!117 = !{!118, !92, i64 56}
!118 = !{!"basic_block_def", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !93, i64 32, !92, i64 48, !92, i64 56, !93, i64 64, !98, i64 72, !97, i64 80, !97, i64 84, !97, i64 88, !97, i64 92, !97, i64 96}
!119 = !{!116, !92, i64 8}
!120 = !{!"branch_weights", i32 1, i32 153}
!121 = !{!118, !97, i64 96}
!122 = !{!123}
!123 = distinct !{!123, !124, !"gsi_start_bb: argument 0"}
!124 = distinct !{!124, !"gsi_start_bb"}
!125 = !{!"branch_weights", i32 645581, i32 0}
!126 = !{!"branch_weights", i32 0, i32 645581}
!127 = !{!128, !92, i64 0}
!128 = !{!"gimple_bb_info", !92, i64 0, !92, i64 8}
!129 = !{!130, !92, i64 0}
!130 = !{!"gimple_seq_d", !92, i64 0, !92, i64 8, !92, i64 16}
!131 = !{i64 0, i64 8, !91, i64 8, i64 8, !91, i64 16, i64 8, !91}
!132 = !{i64 0, i64 8, !91, i64 8, i64 8, !91}
!133 = !{i64 0, i64 8, !91}
!134 = !{!"branch_weights", i32 1, i32 645580}
!135 = !{!136, !92, i64 0}
!136 = !{!"gimple_seq_node_d", !92, i64 0, !92, i64 8, !92, i64 16}
!137 = !{!"branch_weights", i32 581168, i32 856820}
!138 = !{!98, !98, i64 0}
!139 = !{!"branch_weights", i32 0, i32 581168}
!140 = !{!"branch_weights", i32 581047, i32 121}
!141 = !{!142, !92, i64 0}
!142 = !{!"", !92, i64 0, !92, i64 8, !92, i64 16}
!143 = !{!136, !92, i64 16}
!144 = distinct !{!144, !108, !109}
!145 = !{!"branch_weights", i32 0, i32 581047, i32 0, i32 0}
!146 = !{!"branch_weights", i32 383981, i32 197066}
!147 = !{!"branch_weights", i32 0, i32 383981}
!148 = !{!"branch_weights", i32 43, i32 581004}
!149 = !{!"branch_weights", i32 0, i32 581004, i32 0, i32 0}
!150 = !{!"branch_weights", i32 383938, i32 197066}
!151 = !{!"branch_weights", i32 0, i32 383938}
!152 = !{!"branch_weights", i32 5029, i32 575975}
!153 = !{!"branch_weights", i32 0, i32 575975, i32 0, i32 0}
!154 = !{!"branch_weights", i32 383938, i32 192037}
!155 = !{!"branch_weights", i32 184, i32 575791}
!156 = !{!"branch_weights", i32 0, i32 5213}
!157 = !{!"branch_weights", i32 43, i32 0}
!158 = !{i8 0, i8 2}
!159 = !{!"branch_weights", i32 25, i32 18}
!160 = !{!"branch_weights", i32 12, i32 580992}
!161 = !{!"branch_weights", i32 12, i32 0}
!162 = !{!"branch_weights", i32 0, i32 581004}
!163 = distinct !{!163, !109}
!164 = !{!"branch_weights", i32 77961, i32 503043}
!165 = !{!"branch_weights", i32 0, i32 77961}
!166 = !{!"branch_weights", i32 77961, i32 0}
!167 = !{!"branch_weights", i32 56, i32 77905}
!168 = !{!"branch_weights", i32 0, i32 56}
!169 = !{!"branch_weights", i32 56, i32 0}
!170 = !{!171, !92, i64 8}
!171 = !{!"ssa_use_operand_d", !92, i64 0, !92, i64 8, !93, i64 16, !92, i64 24}
!172 = distinct !{!172, !109}
!173 = !{!"branch_weights", i32 77392, i32 569}
!174 = !{!"branch_weights", i32 0, i32 77392}
!175 = !{!"branch_weights", i32 0, i32 77392, i32 0, i32 0}
!176 = !{!"branch_weights", i32 282, i32 77110}
!177 = !{!"branch_weights", i32 0, i32 77110, i32 0, i32 0}
!178 = !{!"branch_weights", i32 0, i32 77110}
!179 = !{!"branch_weights", i32 56, i32 77054}
!180 = !{!"branch_weights", i32 0, i32 77054, i32 0, i32 0}
!181 = !{!"branch_weights", i32 0, i32 77054}
!182 = !{!"branch_weights", i32 0, i32 338}
!183 = !{!"branch_weights", i32 97, i32 241}
!184 = !{!"branch_weights", i32 0, i32 241}
!185 = !{!"branch_weights", i32 241, i32 0}
!186 = !{!"branch_weights", i32 0, i32 338, i32 0, i32 0}
!187 = !{!"branch_weights", i32 282, i32 56}
!188 = !{!"branch_weights", i32 0, i32 282, i32 0, i32 0}
!189 = !{!"branch_weights", i32 0, i32 282}
!190 = !{!"branch_weights", i32 282, i32 0}
!191 = !{!"branch_weights", i32 0, i32 56, i32 0, i32 0}
!192 = !{!193, !93, i64 46}
!193 = !{!"real_format", !92, i64 0, !92, i64 8, !97, i64 16, !97, i64 20, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !97, i64 40, !93, i64 44, !93, i64 45, !93, i64 46, !93, i64 47, !93, i64 48, !93, i64 49, !93, i64 50, !93, i64 51}
!194 = !{!"branch_weights", i32 0, i32 503043, i32 0, i32 0}
!195 = !{!"branch_weights", i32 383938, i32 119105}
!196 = !{!"branch_weights", i32 33348, i32 469695}
!197 = !{!"branch_weights", i32 0, i32 33348}
!198 = !{!"branch_weights", i32 33348, i32 0}
!199 = !{!"branch_weights", i32 4838, i32 28510}
!200 = !{!"branch_weights", i32 0, i32 4838}
!201 = !{!"branch_weights", i32 0, i32 8}
!202 = !{!"branch_weights", i32 8, i32 0}
!203 = !{!"branch_weights", i32 288266, i32 158, i32 568396}
!204 = !{!"branch_weights", i32 0, i32 158}
!205 = !{!"branch_weights", i32 158, i32 0}
!206 = !{!"branch_weights", i32 87, i32 71}
!207 = !{!"branch_weights", i32 87, i32 0}
!208 = !{!"branch_weights", i32 0, i32 87}
!209 = !{!"branch_weights", i32 573316, i32 0}
!210 = !{!"branch_weights", i32 0, i32 573316}
!211 = !{!"branch_weights", i32 549101, i32 24215}
!212 = !{!"branch_weights", i32 24215, i32 0}
!213 = !{!"branch_weights", i32 146591556, i32 -970847118}
!214 = !{!"branch_weights", i32 306606, i32 266710}
!215 = !{!"branch_weights", i32 306606, i32 0}
!216 = !{!"branch_weights", i32 0, i32 306606}
!217 = !{!"branch_weights", i32 0, i32 306606, i32 0, i32 0}
!218 = !{!"branch_weights", i32 229562, i32 77044}
!219 = !{!"branch_weights", i32 0, i32 229562}
!220 = !{!"branch_weights", i32 4920, i32 301686}
!221 = !{!"branch_weights", i32 0, i32 301686, i32 0, i32 0}
!222 = !{!"branch_weights", i32 229562, i32 72124}
!223 = !{!"branch_weights", i32 0, i32 301686}
!224 = !{!"branch_weights", i32 4920, i32 0}
!225 = !{!"branch_weights", i32 0, i32 4920}
!226 = distinct !{!226, !109}
!227 = !{!"branch_weights", i32 266710, i32 306606}
!228 = !{!"branch_weights", i32 9416, i32 297190}
!229 = !{!"branch_weights", i32 0, i32 297190, i32 0, i32 0}
!230 = !{!"branch_weights", i32 220146, i32 77044}
!231 = !{!"branch_weights", i32 0, i32 220146}
!232 = !{!"branch_weights", i32 77044, i32 0}
!233 = !{!"branch_weights", i32 0, i32 77044}
!234 = !{!235, !92, i64 0}
!235 = !{!"use_optype_d", !92, i64 0, !171, i64 8}
!236 = !{!"branch_weights", i32 1, i32 77043}
!237 = !{!171, !92, i64 24}
!238 = !{!"branch_weights", i32 115479, i32 0}
!239 = !{!"branch_weights", i32 77044, i32 38435}
!240 = !{!"branch_weights", i32 38436, i32 77043}
!241 = distinct !{!241, !108, !109}
!242 = !{!"branch_weights", i32 0, i32 77044, i32 0, i32 0}
!243 = !{!"branch_weights", i32 4920, i32 72124}
!244 = !{!"branch_weights", i32 0, i32 72124, i32 0, i32 0}
!245 = !{!"branch_weights", i32 0, i32 72124}
!246 = !{!"branch_weights", i32 4920, i32 0, i32 0}
!247 = !{!"branch_weights", i32 568396, i32 4920}
!248 = !{!"branch_weights", i32 0, i32 568396}
!249 = !{!"branch_weights", i32 0, i32 4920, i32 568396}
!250 = distinct !{!250, !109}
!251 = !{!"branch_weights", i32 645580, i32 792408}
!252 = !{!"branch_weights", i32 153, i32 645428}
!253 = distinct !{!253, !108, !109}
!254 = !{!"branch_weights", i32 0, i32 154}
!255 = !{!"function_entry_count", i64 43}
!256 = !{!"tree-ssa-forwprop.c;forward_propagate_addr_expr"}
!257 = !{!118, !97, i64 84}
!258 = !{!"branch_weights", i32 0, i32 43}
!259 = !{!260, !92, i64 8}
!260 = !{!"immediate_use_iterator_d", !92, i64 0, !92, i64 8, !171, i64 16, !92, i64 48}
!261 = !{!260, !92, i64 0}
!262 = !{!"branch_weights", i32 1, i32 171}
!263 = !{!"branch_weights", i32 18, i32 25}
!264 = !{!"branch_weights", i32 0, i32 25}
!265 = !{!"branch_weights", i32 0, i32 18}
!266 = !{!"branch_weights", i32 18, i32 0}
!267 = !{!"branch_weights", i32 0, i32 18, i32 0, i32 0}
!268 = !{!"branch_weights", i32 12, i32 6}
!269 = !{!"branch_weights", i32 0, i32 12}
!270 = !{!"branch_weights", i32 18, i32 0, i32 0, i32 0}
!271 = !{!"branch_weights", i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!272 = distinct !{!272, !108, !109}
!273 = !{!"branch_weights", i32 144, i32 0, i32 144, i32 144, i32 0, i32 0, i32 0, i32 0, i32 144, i32 288}
!274 = distinct !{!274, !108, !109}
!275 = !{!"branch_weights", i32 0, i32 6}
!276 = distinct !{!276, !108, !109}
!277 = !{!"branch_weights", i32 0, i32 6, i32 0, i32 0}
!278 = !{!"branch_weights", i32 6, i32 0}
!279 = !{!171, !92, i64 0}
!280 = !{!"branch_weights", i32 171, i32 1}
!281 = distinct !{!281, !108, !109}
!282 = !{!"tree-ssa-forwprop.c;link_use_stmts_after"}
!283 = !{!284, !93, i64 0}
!284 = !{!"ssa_operand_iterator_d", !93, i64 0, !97, i64 4, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !92, i64 32}
!285 = !{!284, !92, i64 32}
!286 = !{!284, !97, i64 28}
!287 = !{!284, !97, i64 4}
!288 = !{!"branch_weights", i32 25, i32 0}
!289 = !{!284, !97, i64 24}
!290 = !{!284, !92, i64 16}
!291 = !{!"branch_weights", i32 199, i32 1}
!292 = !{!"branch_weights", i32 50, i32 0}
!293 = !{!"branch_weights", i32 25, i32 25}
!294 = !{!"branch_weights", i32 201, i32 199}
!295 = distinct !{!295, !108, !109}
!296 = !{!"branch_weights", i32 143, i32 1}
!297 = !{!"branch_weights", i32 24, i32 0}
!298 = !{!"branch_weights", i32 18, i32 6}
!299 = !{!"branch_weights", i32 49, i32 143}
!300 = distinct !{!300, !108, !109}
!301 = !{!235, !92, i64 32}
!302 = !{!"function_entry_count", i64 18}
!303 = !{!"tree-ssa-forwprop.c;op_iter_init_use"}
!304 = !{!284, !92, i64 8}
!305 = !{!306, !92, i64 0}
!306 = !{!"def_optype_d", !92, i64 0, !92, i64 8}
!307 = !{!"tree-ssa-forwprop.c;tidy_after_forward_propagate_addr"}
!308 = !{!"function_entry_count", i64 6}
!309 = !{!"tree-ssa-forwprop.c;forward_propagate_addr_into_variable_array_index"}
!310 = !{!"tree-ssa-forwprop.c;get_prop_source_stmt"}
!311 = !{!"branch_weights", i32 -970847118, i32 146591556}
!312 = !{!"branch_weights", i32 -824255561, i32 0}
!313 = !{!"tree-ssa-forwprop.c;can_propagate_from"}
!314 = !{!"function_entry_count", i64 77044}
!315 = !{!"tree-ssa-forwprop.c;rhs_to_tree"}
!316 = !{!"branch_weights", i32 0, i32 72124, i32 4920, i32 0}
!317 = !{!"branch_weights", i32 72124, i32 0}
!318 = !{!"tree-ssa-forwprop.c;combine_cond_expr_cond"}
!319 = !{!"branch_weights", i32 14294, i32 62750}
!320 = !{!"branch_weights", i32 62750, i32 0}
!321 = !{!"branch_weights", i32 57830, i32 4920}
!322 = !{!"function_entry_count", i64 5202}
!323 = !{!"tree-ssa-forwprop.c;remove_prop_source_from_use"}
!324 = !{!"branch_weights", i32 5202, i32 0}
!325 = !{!"branch_weights", i32 0, i32 5202}
!326 = !{!"branch_weights", i32 282, i32 4920}
!327 = distinct !{!327, !108, !109}
!328 = !{!"function_entry_count", i64 24}
!329 = !{!"tree-ssa-forwprop.c;gimple_expr_type"}
!330 = !{!"branch_weights", i32 0, i32 0, i32 24, i32 0}
!331 = !{!"branch_weights", i32 0, i32 24}
