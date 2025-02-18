; ModuleID = 'tree-ssa-uncprop.c'
source_filename = "tree-ssa-uncprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.edge_equivalency = type { ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.equiv_hash_elt = type { ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"uncprop\00", align 1
@pass_uncprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_uncprop, ptr @tree_ssa_uncprop, ptr null, ptr null, i32 0, i32 103, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_tree_dom = external local_unnamed_addr global i32, align 4
@equiv = internal unnamed_addr global ptr null, align 8
@equiv_stack = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_uncprop() #9 !prof !83 !PGOFuncName !84 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !79
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_uncprop() #10 !prof !83 !PGOFuncName !85 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %4 = load ptr, ptr @cfun, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %586, label %13, !prof !93

13:                                               ; preds = %0, %577
  %14 = phi ptr [ %579, %577 ], [ %9, %0 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !94, !noalias !95
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !98

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !75, !noalias !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !99

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !100, !noalias !95
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ null, %13 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !99

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gimple_seq_d, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !102, !noalias !95
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %30, %28 ], [ null, %25 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %577, label %34, !prof !104

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !105
  %36 = icmp eq ptr %35, null
  br i1 %36, label %577, label %37, !prof !107

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 255
  %40 = trunc i32 %38 to i8
  switch i8 %40, label %577 [
    i8 1, label %41
    i8 5, label %443
  ], !prof !108

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %42 = load i32, ptr %35, align 8
  %43 = lshr i32 %42, 16
  call void @extract_true_false_edges_from_block(ptr noundef %14, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %44 = icmp eq i32 %43, 101
  %45 = add nsw i32 %43, -101
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %442, !prof !109

47:                                               ; preds = %41
  %48 = load i32, ptr %35, align 8
  %49 = and i32 %48, 255
  %50 = add nsw i32 %49, -10
  %51 = icmp ult i32 %50, -9
  br i1 %51, label %64, label %52, !prof !110

52:                                               ; preds = %47
  %53 = zext nneg i32 %49 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !79
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !111
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61, !prof !110

60:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %61

61:                                               ; preds = %60, %52
  %62 = getelementptr inbounds i8, ptr %35, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !64
  br label %64

64:                                               ; preds = %61, %47
  %65 = phi ptr [ %63, %61 ], [ null, %47 ]
  %66 = load i32, ptr %35, align 8
  %67 = and i32 %66, 255
  %68 = add nsw i32 %67, -10
  %69 = icmp ult i32 %68, -9
  br i1 %69, label %83, label %70, !prof !110

70:                                               ; preds = %64
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !79
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !111
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79, !prof !110

78:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %79

79:                                               ; preds = %78, %70
  %80 = getelementptr inbounds i8, ptr %35, i64 %76
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !64
  br label %83

83:                                               ; preds = %79, %64
  %84 = phi ptr [ %82, %79 ], [ null, %64 ]
  %85 = load i64, ptr %65, align 8
  %86 = and i64 %85, 4259839
  %87 = icmp eq i64 %86, 141
  br i1 %87, label %88, label %128, !prof !112

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !75
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 7
  br i1 %93, label %94, label %128, !prof !113

94:                                               ; preds = %88
  %95 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %84) #15
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %128, label %97, !prof !114

97:                                               ; preds = %94
  %98 = call ptr @xmalloc(i64 noundef 16) #15
  %99 = getelementptr inbounds %struct.edge_equivalency, ptr %98, i64 0, i32 1
  store ptr %65, ptr %99, align 8, !tbaa !115
  %100 = call i32 @integer_zerop(ptr noundef %84) #15
  %101 = icmp eq i32 %100, 0
  br i1 %44, label %102, label %115, !prof !114

102:                                              ; preds = %97
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %105 = select i1 %101, ptr %104, ptr %103
  store ptr %105, ptr %98, align 8, !tbaa !117
  %106 = load ptr, ptr %1, align 8, !tbaa !64
  %107 = getelementptr inbounds %struct.edge_def, ptr %106, i64 0, i32 3
  store ptr %98, ptr %107, align 8, !tbaa !118
  %108 = call ptr @xmalloc(i64 noundef 16) #15
  %109 = getelementptr inbounds %struct.edge_equivalency, ptr %108, i64 0, i32 1
  store ptr %65, ptr %109, align 8, !tbaa !115
  %110 = call i32 @integer_zerop(ptr noundef %84) #15
  %111 = icmp eq i32 %110, 0
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %113 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %114 = select i1 %111, ptr %113, ptr %112
  store ptr %114, ptr %108, align 8, !tbaa !117
  br label %437

115:                                              ; preds = %97
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %117 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %118 = select i1 %101, ptr %117, ptr %116, !prof !114
  store ptr %118, ptr %98, align 8, !tbaa !117
  %119 = load ptr, ptr %1, align 8, !tbaa !64
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 3
  store ptr %98, ptr %120, align 8, !tbaa !118
  %121 = call ptr @xmalloc(i64 noundef 16) #15
  %122 = getelementptr inbounds %struct.edge_equivalency, ptr %121, i64 0, i32 1
  store ptr %65, ptr %122, align 8, !tbaa !115
  %123 = call i32 @integer_zerop(ptr noundef %84) #15
  %124 = icmp eq i32 %123, 0
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %126 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %127 = select i1 %124, ptr %126, ptr %125, !prof !114
  store ptr %127, ptr %121, align 8, !tbaa !117
  br label %437

128:                                              ; preds = %94, %88, %83
  %129 = load i64, ptr %65, align 8
  %130 = and i64 %129, 4259839
  %131 = icmp eq i64 %130, 141
  br i1 %131, label %132, label %442, !prof !120

132:                                              ; preds = %128
  %133 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %84) #15
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %139, !prof !121

135:                                              ; preds = %132
  %136 = load i64, ptr %84, align 8
  %137 = and i64 %136, 4259839
  %138 = icmp eq i64 %137, 141
  br i1 %138, label %139, label %442

139:                                              ; preds = %135, %132
  %140 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = load i64, ptr %141, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %147, !prof !121

145:                                              ; preds = %139
  %146 = call i32 @vector_type_mode(ptr noundef nonnull %141) #15
  br label %152

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.tree_type, ptr %141, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %152

152:                                              ; preds = %147, %145
  %153 = phi i32 [ %146, %145 ], [ %151, %147 ]
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !75
  %157 = icmp eq i8 %156, 8
  br i1 %157, label %212, label %158, !prof !121

158:                                              ; preds = %152
  %159 = load ptr, ptr %140, align 8, !tbaa !75
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 14
  br i1 %162, label %163, label %165, !prof !121

163:                                              ; preds = %158
  %164 = call i32 @vector_type_mode(ptr noundef nonnull %159) #15
  br label %170

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.tree_type, ptr %159, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  br label %170

170:                                              ; preds = %165, %163
  %171 = phi i32 [ %164, %163 ], [ %169, %165 ]
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !75
  %175 = icmp eq i8 %174, 9
  br i1 %175, label %212, label %176, !prof !121

176:                                              ; preds = %170
  %177 = load ptr, ptr %140, align 8, !tbaa !75
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 14
  br i1 %180, label %181, label %183, !prof !121

181:                                              ; preds = %176
  %182 = call i32 @vector_type_mode(ptr noundef nonnull %177) #15
  br label %188

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.tree_type, ptr %177, i64 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  br label %188

188:                                              ; preds = %183, %181
  %189 = phi i32 [ %182, %181 ], [ %187, %183 ]
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !75
  %193 = icmp eq i8 %192, 11
  br i1 %193, label %212, label %194, !prof !121

194:                                              ; preds = %188
  %195 = load ptr, ptr %140, align 8, !tbaa !75
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %201, !prof !121

199:                                              ; preds = %194
  %200 = call i32 @vector_type_mode(ptr noundef nonnull %195) #15
  br label %206

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  br label %206

206:                                              ; preds = %201, %199
  %207 = phi i32 [ %200, %199 ], [ %205, %201 ]
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !75
  %211 = icmp eq i8 %210, 17
  br i1 %211, label %212, label %433, !prof !121

212:                                              ; preds = %206, %188, %170, %152
  %213 = load ptr, ptr %140, align 8, !tbaa !75
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 14
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 @vector_type_mode(ptr noundef nonnull %213) #15
  br label %224

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 6
  %221 = load i32, ptr %220, align 4
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  br label %224

224:                                              ; preds = %219, %217
  %225 = phi i32 [ %218, %217 ], [ %223, %219 ]
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !75
  %229 = icmp eq i8 %228, 8
  br i1 %229, label %248, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr %140, align 8, !tbaa !75
  %232 = load i64, ptr %231, align 8
  %233 = and i64 %232, 65535
  %234 = icmp eq i64 %233, 14
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = call i32 @vector_type_mode(ptr noundef nonnull %231) #15
  br label %242

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.tree_type, ptr %231, i64 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = lshr i32 %239, 16
  %241 = and i32 %240, 255
  br label %242

242:                                              ; preds = %237, %235
  %243 = phi i32 [ %236, %235 ], [ %241, %237 ]
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !75
  %247 = icmp eq i8 %246, 9
  br i1 %247, label %248, label %260

248:                                              ; preds = %242, %224
  %249 = load ptr, ptr %140, align 8, !tbaa !75
  %250 = load i64, ptr %249, align 8
  %251 = and i64 %250, 65535
  %252 = icmp eq i64 %251, 14
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = call i32 @vector_type_mode(ptr noundef nonnull %249) #15
  br label %278

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.tree_type, ptr %249, i64 0, i32 6
  %257 = load i32, ptr %256, align 4
  %258 = lshr i32 %257, 16
  %259 = and i32 %258, 255
  br label %278

260:                                              ; preds = %242
  %261 = load ptr, ptr %140, align 8, !tbaa !75
  %262 = load i64, ptr %261, align 8
  %263 = and i64 %262, 65535
  %264 = icmp eq i64 %263, 14
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = call i32 @vector_type_mode(ptr noundef nonnull %261) #15
  br label %272

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.tree_type, ptr %261, i64 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  br label %272

272:                                              ; preds = %267, %265
  %273 = phi i32 [ %266, %265 ], [ %271, %267 ]
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !75
  %277 = zext i8 %276 to i32
  br label %278

278:                                              ; preds = %272, %255, %253
  %279 = phi i32 [ %277, %272 ], [ %254, %253 ], [ %259, %255 ]
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !75
  %283 = icmp eq i8 %282, 9
  %284 = load ptr, ptr %140, align 8, !tbaa !75
  %285 = load i64, ptr %284, align 8
  %286 = and i64 %285, 65535
  %287 = icmp eq i64 %286, 14
  br i1 %283, label %288, label %350

288:                                              ; preds = %278
  br i1 %287, label %289, label %291

289:                                              ; preds = %288
  %290 = call i32 @vector_type_mode(ptr noundef nonnull %284) #15
  br label %296

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.tree_type, ptr %284, i64 0, i32 6
  %293 = load i32, ptr %292, align 4
  %294 = lshr i32 %293, 16
  %295 = and i32 %294, 255
  br label %296

296:                                              ; preds = %291, %289
  %297 = phi i32 [ %290, %289 ], [ %295, %291 ]
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !75
  %301 = icmp eq i8 %300, 8
  br i1 %301, label %320, label %302

302:                                              ; preds = %296
  %303 = load ptr, ptr %140, align 8, !tbaa !75
  %304 = load i64, ptr %303, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 14
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = call i32 @vector_type_mode(ptr noundef nonnull %303) #15
  br label %314

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 6
  %311 = load i32, ptr %310, align 4
  %312 = lshr i32 %311, 16
  %313 = and i32 %312, 255
  br label %314

314:                                              ; preds = %309, %307
  %315 = phi i32 [ %308, %307 ], [ %313, %309 ]
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !75
  %319 = icmp eq i8 %318, 9
  br i1 %319, label %320, label %332

320:                                              ; preds = %314, %296
  %321 = load ptr, ptr %140, align 8, !tbaa !75
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 14
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = call i32 @vector_type_mode(ptr noundef nonnull %321) #15
  br label %412

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.tree_type, ptr %321, i64 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = lshr i32 %329, 16
  %331 = and i32 %330, 255
  br label %412

332:                                              ; preds = %314
  %333 = load ptr, ptr %140, align 8, !tbaa !75
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 65535
  %336 = icmp eq i64 %335, 14
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = call i32 @vector_type_mode(ptr noundef nonnull %333) #15
  br label %344

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.tree_type, ptr %333, i64 0, i32 6
  %341 = load i32, ptr %340, align 4
  %342 = lshr i32 %341, 16
  %343 = and i32 %342, 255
  br label %344

344:                                              ; preds = %339, %337
  %345 = phi i32 [ %338, %337 ], [ %343, %339 ]
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !75
  %349 = zext i8 %348 to i32
  br label %412

350:                                              ; preds = %278
  br i1 %287, label %351, label %353

351:                                              ; preds = %350
  %352 = call i32 @vector_type_mode(ptr noundef nonnull %284) #15
  br label %358

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.tree_type, ptr %284, i64 0, i32 6
  %355 = load i32, ptr %354, align 4
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  br label %358

358:                                              ; preds = %353, %351
  %359 = phi i32 [ %352, %351 ], [ %357, %353 ]
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !75
  %363 = icmp eq i8 %362, 8
  br i1 %363, label %382, label %364

364:                                              ; preds = %358
  %365 = load ptr, ptr %140, align 8, !tbaa !75
  %366 = load i64, ptr %365, align 8
  %367 = and i64 %366, 65535
  %368 = icmp eq i64 %367, 14
  br i1 %368, label %369, label %371

369:                                              ; preds = %364
  %370 = call i32 @vector_type_mode(ptr noundef nonnull %365) #15
  br label %376

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.tree_type, ptr %365, i64 0, i32 6
  %373 = load i32, ptr %372, align 4
  %374 = lshr i32 %373, 16
  %375 = and i32 %374, 255
  br label %376

376:                                              ; preds = %371, %369
  %377 = phi i32 [ %370, %369 ], [ %375, %371 ]
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !75
  %381 = icmp eq i8 %380, 9
  br i1 %381, label %382, label %394

382:                                              ; preds = %376, %358
  %383 = load ptr, ptr %140, align 8, !tbaa !75
  %384 = load i64, ptr %383, align 8
  %385 = and i64 %384, 65535
  %386 = icmp eq i64 %385, 14
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = call i32 @vector_type_mode(ptr noundef nonnull %383) #15
  br label %412

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.tree_type, ptr %383, i64 0, i32 6
  %391 = load i32, ptr %390, align 4
  %392 = lshr i32 %391, 16
  %393 = and i32 %392, 255
  br label %412

394:                                              ; preds = %376
  %395 = load ptr, ptr %140, align 8, !tbaa !75
  %396 = load i64, ptr %395, align 8
  %397 = and i64 %396, 65535
  %398 = icmp eq i64 %397, 14
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = call i32 @vector_type_mode(ptr noundef nonnull %395) #15
  br label %406

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.tree_type, ptr %395, i64 0, i32 6
  %403 = load i32, ptr %402, align 4
  %404 = lshr i32 %403, 16
  %405 = and i32 %404, 255
  br label %406

406:                                              ; preds = %401, %399
  %407 = phi i32 [ %400, %399 ], [ %405, %401 ]
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !75
  %411 = zext i8 %410 to i32
  br label %412

412:                                              ; preds = %406, %389, %387, %344, %327, %325
  %413 = phi i32 [ %349, %344 ], [ %326, %325 ], [ %331, %327 ], [ %411, %406 ], [ %388, %387 ], [ %393, %389 ]
  %414 = add i32 %413, -38
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !64
  %418 = getelementptr inbounds %struct.real_format, ptr %417, i64 0, i32 14
  %419 = load i8, ptr %418, align 1, !tbaa !122
  %420 = icmp ne i8 %419, 0
  %421 = load i32, ptr @flag_signed_zeros, align 4
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %433

424:                                              ; preds = %412
  %425 = load i64, ptr %84, align 8
  %426 = and i64 %425, 65535
  %427 = icmp eq i64 %426, 24
  br i1 %427, label %428, label %442

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.tree_real_cst, ptr %84, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !75
  %431 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %430) #15
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %433, label %442

433:                                              ; preds = %428, %412, %206
  %434 = call ptr @xmalloc(i64 noundef 16) #15
  %435 = getelementptr inbounds %struct.edge_equivalency, ptr %434, i64 0, i32 1
  store ptr %65, ptr %435, align 8, !tbaa !115
  store ptr %84, ptr %434, align 8, !tbaa !117
  %436 = select i1 %44, ptr %1, ptr %2, !prof !124
  br label %437

437:                                              ; preds = %433, %102, %115
  %438 = phi ptr [ %2, %115 ], [ %2, %102 ], [ %436, %433 ]
  %439 = phi ptr [ %121, %115 ], [ %108, %102 ], [ %434, %433 ]
  %440 = load ptr, ptr %438, align 8, !tbaa !64
  %441 = getelementptr inbounds %struct.edge_def, ptr %440, i64 0, i32 3
  store ptr %439, ptr %441, align 8, !tbaa !118
  br label %442

442:                                              ; preds = %437, %428, %424, %135, %128, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  br label %577

443:                                              ; preds = %37
  %444 = add nsw i32 %39, -10
  %445 = icmp ult i32 %444, -9
  br i1 %445, label %458, label %446, !prof !125

446:                                              ; preds = %443
  %447 = zext nneg i32 %39 to i64
  %448 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !79
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %450
  %452 = load i64, ptr %451, align 8, !tbaa !111
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %455, !prof !125

454:                                              ; preds = %446
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %455

455:                                              ; preds = %454, %446
  %456 = getelementptr inbounds i8, ptr %35, i64 %452
  %457 = load ptr, ptr %456, align 8, !tbaa !64
  br label %458

458:                                              ; preds = %455, %443
  %459 = phi ptr [ %457, %455 ], [ null, %443 ]
  %460 = load i64, ptr %459, align 8
  %461 = and i64 %460, 4259839
  %462 = icmp eq i64 %461, 141
  br i1 %462, label %463, label %577, !prof !126

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.gimple_statement_base, ptr %35, i64 0, i32 3
  %465 = load i32, ptr %464, align 4, !tbaa !75
  %466 = icmp ugt i32 %465, 1
  br i1 %466, label %468, label %467, !prof !126

467:                                              ; preds = %463
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3162, ptr noundef nonnull @.str.2) #15
  br label %468

468:                                              ; preds = %467, %463
  %469 = add i32 %465, -1
  %470 = load ptr, ptr @cfun, align 8, !tbaa !64
  %471 = getelementptr inbounds %struct.function, ptr %470, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !86
  %473 = getelementptr inbounds %struct.control_flow_graph, ptr %472, i64 0, i32 5
  %474 = load i32, ptr %473, align 8, !tbaa !127
  %475 = sext i32 %474 to i64
  %476 = call ptr @xcalloc(i64 noundef %475, i64 noundef 8) #15
  %477 = icmp sgt i32 %469, 0
  br i1 %477, label %478, label %480, !prof !128

478:                                              ; preds = %468
  %479 = zext nneg i32 %469 to i64
  br label %489

480:                                              ; preds = %541, %468
  %481 = load ptr, ptr @cfun, align 8, !tbaa !64
  %482 = getelementptr inbounds %struct.function, ptr %481, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !86
  %484 = getelementptr inbounds %struct.control_flow_graph, ptr %483, i64 0, i32 3
  %485 = load i32, ptr %484, align 8, !tbaa !129
  %486 = icmp sgt i32 %485, 0
  br i1 %486, label %487, label %576, !prof !128

487:                                              ; preds = %480
  %488 = getelementptr inbounds %struct.tree_common, ptr %459, i64 0, i32 2
  br label %543

489:                                              ; preds = %478, %541
  %490 = phi i64 [ 0, %478 ], [ %492, %541 ]
  %491 = load i32, ptr %464, align 4, !tbaa !75
  %492 = add nuw nsw i64 %490, 1
  %493 = zext i32 %491 to i64
  %494 = icmp ult i64 %492, %493
  br i1 %494, label %496, label %495, !prof !130

495:                                              ; preds = %489
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3215, ptr noundef nonnull @.str.2) #15
  br label %496

496:                                              ; preds = %495, %489
  %497 = load i32, ptr %35, align 8
  %498 = and i32 %497, 255
  %499 = add nsw i32 %498, -10
  %500 = icmp ult i32 %499, -9
  br i1 %500, label %514, label %501, !prof !131

501:                                              ; preds = %496
  %502 = zext nneg i32 %498 to i64
  %503 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %502
  %504 = load i32, ptr %503, align 4, !tbaa !79
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %505
  %507 = load i64, ptr %506, align 8, !tbaa !111
  %508 = icmp eq i64 %507, 0
  br i1 %508, label %509, label %510, !prof !131

509:                                              ; preds = %501
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %510

510:                                              ; preds = %509, %501
  %511 = getelementptr inbounds i8, ptr %35, i64 %507
  %512 = getelementptr inbounds ptr, ptr %511, i64 %492
  %513 = load ptr, ptr %512, align 8, !tbaa !64
  br label %514

514:                                              ; preds = %510, %496
  %515 = phi ptr [ %513, %510 ], [ null, %496 ]
  %516 = load ptr, ptr @cfun, align 8, !tbaa !64
  %517 = getelementptr inbounds %struct.tree_exp, ptr %515, i64 1, i32 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !75
  %519 = call ptr @label_to_block_fn(ptr noundef %516, ptr noundef %518) #15
  %520 = getelementptr inbounds %struct.tree_exp, ptr %515, i64 1
  %521 = load ptr, ptr %520, align 8, !tbaa !75
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %534, !prof !132

523:                                              ; preds = %514
  %524 = getelementptr inbounds %struct.tree_exp, ptr %515, i64 0, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !75
  %526 = icmp eq ptr %525, null
  br i1 %526, label %534, label %527, !prof !133

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.basic_block_def, ptr %519, i64 0, i32 9
  %529 = load i32, ptr %528, align 8, !tbaa !134
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds ptr, ptr %476, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !64
  %533 = icmp eq ptr %532, null
  br i1 %533, label %540, label %534, !prof !135

534:                                              ; preds = %527, %523, %514
  %535 = load ptr, ptr @global_trees, align 16, !tbaa !64
  %536 = getelementptr inbounds %struct.basic_block_def, ptr %519, i64 0, i32 9
  %537 = load i32, ptr %536, align 8, !tbaa !134
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds ptr, ptr %476, i64 %538
  store ptr %535, ptr %539, align 8, !tbaa !64
  br label %541

540:                                              ; preds = %527
  store ptr %515, ptr %531, align 8, !tbaa !64
  br label %541

541:                                              ; preds = %540, %534
  %542 = icmp eq i64 %492, %479
  br i1 %542, label %480, label %489, !prof !136, !llvm.loop !137

543:                                              ; preds = %487, %567
  %544 = phi i64 [ 0, %487 ], [ %568, %567 ]
  %545 = getelementptr inbounds ptr, ptr %476, i64 %544
  %546 = load ptr, ptr %545, align 8, !tbaa !64
  %547 = icmp eq ptr %546, null
  %548 = load ptr, ptr @global_trees, align 16
  %549 = icmp eq ptr %546, %548
  %550 = select i1 %547, i1 true, i1 %549, !prof !138
  br i1 %550, label %567, label %551, !prof !139

551:                                              ; preds = %543
  %552 = load ptr, ptr %488, align 8, !tbaa !75
  %553 = getelementptr inbounds %struct.tree_exp, ptr %546, i64 0, i32 3
  %554 = load ptr, ptr %553, align 8, !tbaa !75
  %555 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %552, ptr noundef %554) #15
  %556 = call ptr @xmalloc(i64 noundef 16) #15
  store ptr %555, ptr %556, align 8, !tbaa !117
  %557 = getelementptr inbounds %struct.edge_equivalency, ptr %556, i64 0, i32 1
  store ptr %459, ptr %557, align 8, !tbaa !115
  %558 = load ptr, ptr @cfun, align 8, !tbaa !64
  %559 = getelementptr inbounds %struct.function, ptr %558, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !86
  %561 = getelementptr inbounds %struct.control_flow_graph, ptr %560, i64 0, i32 2
  %562 = load ptr, ptr %561, align 8, !tbaa !140
  %563 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %562, i64 0, i32 2, i64 %544
  %564 = load ptr, ptr %563, align 8, !tbaa !64
  %565 = call ptr @find_edge(ptr noundef %14, ptr noundef %564) #15
  %566 = getelementptr inbounds %struct.edge_def, ptr %565, i64 0, i32 3
  store ptr %556, ptr %566, align 8, !tbaa !118
  br label %567

567:                                              ; preds = %551, %543
  %568 = add nuw nsw i64 %544, 1
  %569 = load ptr, ptr @cfun, align 8, !tbaa !64
  %570 = getelementptr inbounds %struct.function, ptr %569, i64 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !86
  %572 = getelementptr inbounds %struct.control_flow_graph, ptr %571, i64 0, i32 3
  %573 = load i32, ptr %572, align 8, !tbaa !129
  %574 = sext i32 %573 to i64
  %575 = icmp slt i64 %568, %574
  br i1 %575, label %543, label %576, !prof !141, !llvm.loop !142

576:                                              ; preds = %567, %480
  call void @free(ptr noundef %476)
  br label %577

577:                                              ; preds = %576, %458, %442, %37, %34, %31
  %578 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %579 = load ptr, ptr %578, align 8, !tbaa !90
  %580 = load ptr, ptr @cfun, align 8, !tbaa !64
  %581 = getelementptr inbounds %struct.function, ptr %580, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !86
  %583 = getelementptr inbounds %struct.control_flow_graph, ptr %582, i64 0, i32 1
  %584 = load ptr, ptr %583, align 8, !tbaa !92
  %585 = icmp eq ptr %579, %584
  br i1 %585, label %586, label %13, !prof !143, !llvm.loop !144

586:                                              ; preds = %577, %0
  %587 = call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @equiv_hash, ptr noundef nonnull @equiv_eq, ptr noundef nonnull @equiv_free) #15
  store ptr %587, ptr @equiv, align 8, !tbaa !64
  %588 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #15
  store ptr %588, ptr @equiv_stack, align 8, !tbaa !64
  call void @calculate_dominance_info(i32 noundef 1) #15
  %589 = load i8, ptr %3, align 8
  %590 = and i8 %589, -4
  %591 = or disjoint i8 %590, 1
  store i8 %591, ptr %3, align 8
  %592 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 1
  store ptr null, ptr %592, align 8, !tbaa !145
  %593 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 2
  store ptr @uncprop_enter_block, ptr %593, align 8, !tbaa !147
  %594 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 3
  store ptr @uncprop_leave_block, ptr %594, align 8, !tbaa !148
  %595 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 4
  store ptr null, ptr %595, align 8, !tbaa !149
  %596 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 6
  store i64 0, ptr %596, align 8, !tbaa !150
  call void @init_walk_dominator_tree(ptr noundef nonnull %3) #15
  %597 = load ptr, ptr @cfun, align 8, !tbaa !64
  %598 = getelementptr inbounds %struct.function, ptr %597, i64 0, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !86
  %600 = load ptr, ptr %599, align 8, !tbaa !88
  call void @walk_dominator_tree(ptr noundef nonnull %3, ptr noundef %600) #15
  call void @fini_walk_dominator_tree(ptr noundef nonnull %3) #15
  %601 = load ptr, ptr @equiv, align 8, !tbaa !64
  call void @htab_delete(ptr noundef %601) #15
  %602 = load ptr, ptr @equiv_stack, align 8, !tbaa !64
  %603 = icmp eq ptr %602, null
  br i1 %603, label %605, label %604, !prof !151

604:                                              ; preds = %586
  call void @free(ptr noundef %602)
  br label %605

605:                                              ; preds = %586, %604
  store ptr null, ptr @equiv_stack, align 8, !tbaa !64
  %606 = load ptr, ptr @cfun, align 8, !tbaa !64
  %607 = getelementptr inbounds %struct.function, ptr %606, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !86
  %609 = load ptr, ptr %608, align 8, !tbaa !88
  %610 = getelementptr inbounds %struct.basic_block_def, ptr %609, i64 0, i32 6
  %611 = load ptr, ptr %610, align 8, !tbaa !90
  %612 = getelementptr inbounds %struct.control_flow_graph, ptr %608, i64 0, i32 1
  %613 = load ptr, ptr %612, align 8, !tbaa !92
  %614 = icmp eq ptr %611, %613
  br i1 %614, label %658, label %624, !prof !93

615:                                              ; preds = %640
  %616 = getelementptr inbounds %struct.basic_block_def, ptr %625, i64 0, i32 6
  %617 = load ptr, ptr %616, align 8, !tbaa !90
  %618 = load ptr, ptr @cfun, align 8, !tbaa !64
  %619 = getelementptr inbounds %struct.function, ptr %618, i64 0, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !86
  %621 = getelementptr inbounds %struct.control_flow_graph, ptr %620, i64 0, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !92
  %623 = icmp eq ptr %617, %622
  br i1 %623, label %658, label %624, !prof !143, !llvm.loop !152

624:                                              ; preds = %605, %615
  %625 = phi ptr [ %617, %615 ], [ %611, %605 ]
  %626 = getelementptr inbounds %struct.basic_block_def, ptr %625, i64 0, i32 1
  br label %627

627:                                              ; preds = %656, %624
  %628 = phi i32 [ 0, %624 ], [ %657, %656 ]
  %629 = load ptr, ptr %626, align 8, !tbaa !64
  %630 = icmp eq ptr %629, null
  br i1 %630, label %633, label %631, !prof !153

631:                                              ; preds = %627
  %632 = load i32, ptr %629, align 8, !tbaa !154
  br label %633

633:                                              ; preds = %631, %627
  %634 = phi i32 [ %632, %631 ], [ 0, %627 ]
  %635 = icmp eq i32 %634, %628
  br i1 %635, label %640, label %636, !prof !156

636:                                              ; preds = %633
  %637 = zext i32 %628 to i64
  %638 = getelementptr inbounds %struct.VEC_edge_base, ptr %629, i64 0, i32 2, i64 %637
  %639 = load ptr, ptr %638, align 8, !tbaa !64
  br label %640

640:                                              ; preds = %633, %636
  %641 = phi ptr [ %639, %636 ], [ null, %633 ]
  br i1 %635, label %615, label %642, !prof !156

642:                                              ; preds = %640
  %643 = getelementptr inbounds %struct.edge_def, ptr %641, i64 0, i32 3
  %644 = load ptr, ptr %643, align 8, !tbaa !118
  %645 = icmp eq ptr %644, null
  br i1 %645, label %647, label %646, !prof !157

646:                                              ; preds = %642
  call void @free(ptr noundef %644)
  store ptr null, ptr %643, align 8, !tbaa !118
  br label %647

647:                                              ; preds = %646, %642
  %648 = load ptr, ptr %626, align 8, !tbaa !64
  %649 = icmp eq ptr %648, null
  br i1 %649, label %652, label %650, !prof !158

650:                                              ; preds = %647
  %651 = load i32, ptr %648, align 8, !tbaa !154
  br label %652

652:                                              ; preds = %650, %647
  %653 = phi i32 [ %651, %650 ], [ 0, %647 ]
  %654 = icmp ult i32 %628, %653
  br i1 %654, label %656, label %655, !prof !159

655:                                              ; preds = %652
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %656

656:                                              ; preds = %652, %655
  %657 = add i32 %628, 1
  br label %627, !llvm.loop !160

658:                                              ; preds = %615, %605
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 0
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @equiv_hash(ptr nocapture noundef readonly %0) #11 !prof !161 !PGOFuncName !162 {
  %2 = load ptr, ptr %0, align 8, !tbaa !163
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #15
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @equiv_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !165 !PGOFuncName !166 {
  %3 = load ptr, ptr %0, align 8, !tbaa !163
  %4 = load ptr, ptr %1, align 8, !tbaa !163
  %5 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %4, i32 noundef 0) #15
  ret i32 %5
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal void @equiv_free(ptr nocapture noundef %0) #12 !prof !167 !PGOFuncName !168 {
  %2 = getelementptr inbounds %struct.equiv_hash_elt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !169

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !64
  tail call void @free(ptr noundef %0)
  ret void
}

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @uncprop_enter_block(ptr nocapture readnone %0, ptr noundef %1) #11 !prof !170 !PGOFuncName !171 {
  %3 = alloca %struct.equiv_hash_elt, align 8
  %4 = alloca %struct.equiv_hash_elt, align 8
  %5 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %95, label %7, !prof !172

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br label %9

9:                                                ; preds = %7, %45
  %10 = phi i32 [ %46, %45 ], [ 0, %7 ]
  %11 = phi ptr [ %36, %45 ], [ null, %7 ]
  br i1 %8, label %12, label %13, !prof !173

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %13

13:                                               ; preds = %12, %9
  %14 = load ptr, ptr %1, align 8, !tbaa !64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !173

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !154
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %25, label %21, !prof !174

21:                                               ; preds = %18
  %22 = zext i32 %10 to i64
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi ptr [ %24, %21 ], [ null, %18 ]
  br i1 %20, label %47, label %27, !prof !174

27:                                               ; preds = %25
  %28 = load ptr, ptr %26, align 8, !tbaa !175
  %29 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !176
  %31 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %28, ptr noundef %30) #15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35, !prof !177

33:                                               ; preds = %27
  %34 = icmp eq ptr %11, null
  br i1 %34, label %35, label %47, !prof !178

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %11, %27 ], [ %26, %33 ]
  %37 = load ptr, ptr %1, align 8, !tbaa !64
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !99

39:                                               ; preds = %35
  %40 = load i32, ptr %37, align 8, !tbaa !154
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %40, %39 ], [ 0, %35 ]
  %43 = icmp ult i32 %10, %42
  br i1 %43, label %45, label %44, !prof !98

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %45

45:                                               ; preds = %44, %41
  %46 = add i32 %10, 1
  br label %9, !llvm.loop !179

47:                                               ; preds = %25, %33
  %48 = phi ptr [ null, %33 ], [ %11, %25 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %95, label %50, !prof !180

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !175
  %52 = icmp eq ptr %51, %5
  br i1 %52, label %53, label %95, !prof !181

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !118
  %56 = icmp eq ptr %55, null
  br i1 %56, label %95, label %57, !prof !182

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 8, !tbaa !117
  %59 = getelementptr inbounds %struct.edge_equivalency, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !115
  %61 = tail call ptr @xmalloc(i64 noundef 16) #15
  store ptr %58, ptr %61, align 8, !tbaa !163
  %62 = getelementptr inbounds %struct.equiv_hash_elt, ptr %61, i64 0, i32 1
  store ptr null, ptr %62, align 8, !tbaa !183
  %63 = load ptr, ptr @equiv, align 8, !tbaa !64
  %64 = tail call ptr @htab_find_slot(ptr noundef %63, ptr noundef nonnull %61, i32 noundef 1) #15
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68, !prof !184

67:                                               ; preds = %57
  store ptr %61, ptr %64, align 8, !tbaa !64
  br label %69

68:                                               ; preds = %57
  tail call void @free(ptr noundef %61)
  br label %69

69:                                               ; preds = %68, %67
  %70 = load ptr, ptr %64, align 8, !tbaa !64
  %71 = getelementptr inbounds %struct.equiv_hash_elt, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !64
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74, !prof !184

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.VEC_tree_base, ptr %72, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !185
  %77 = load i32, ptr %72, align 8, !tbaa !187
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81, !prof !188

79:                                               ; preds = %74, %69
  %80 = tail call ptr @vec_heap_p_reserve(ptr noundef %72, i32 noundef 1) #15
  store ptr %80, ptr %71, align 8, !tbaa !64
  br label %81

81:                                               ; preds = %74, %79
  %82 = load ptr, ptr %71, align 8, !tbaa !64
  %83 = load i32, ptr %82, align 8, !tbaa !187
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8, !tbaa !187
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds %struct.VEC_tree_base, ptr %82, i64 0, i32 2, i64 %85
  store ptr %60, ptr %86, align 8, !tbaa !64
  %87 = load ptr, ptr %55, align 8, !tbaa !117
  %88 = load ptr, ptr @equiv_stack, align 8, !tbaa !64
  %89 = icmp eq ptr %88, null
  br i1 %89, label %103, label %90, !prof !189

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.VEC_tree_base, ptr %88, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !185
  %93 = load i32, ptr %88, align 8, !tbaa !187
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %103, label %107, !prof !190

95:                                               ; preds = %47, %2, %53, %50
  %96 = load ptr, ptr @equiv_stack, align 8, !tbaa !64
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98, !prof !191

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.VEC_tree_base, ptr %96, i64 0, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !185
  %101 = load i32, ptr %96, align 8, !tbaa !187
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107, !prof !192

103:                                              ; preds = %98, %95, %90, %81
  %104 = phi ptr [ %88, %81 ], [ %88, %90 ], [ %96, %95 ], [ %96, %98 ]
  %105 = phi ptr [ %87, %81 ], [ %87, %90 ], [ null, %95 ], [ null, %98 ]
  %106 = tail call ptr @vec_heap_p_reserve(ptr noundef %104, i32 noundef 1) #15
  store ptr %106, ptr @equiv_stack, align 8, !tbaa !64
  br label %107

107:                                              ; preds = %103, %98, %90
  %108 = phi ptr [ %87, %90 ], [ null, %98 ], [ %105, %103 ]
  %109 = load ptr, ptr @equiv_stack, align 8, !tbaa !64
  %110 = load i32, ptr %109, align 8, !tbaa !187
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 8, !tbaa !187
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds %struct.VEC_tree_base, ptr %109, i64 0, i32 2, i64 %112
  store ptr %108, ptr %113, align 8, !tbaa !64
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %115 = getelementptr inbounds %struct.equiv_hash_elt, ptr %4, i64 0, i32 1
  br label %116

116:                                              ; preds = %308, %107
  %117 = phi i32 [ 0, %107 ], [ %309, %308 ]
  %118 = load ptr, ptr %114, align 8, !tbaa !64
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120, !prof !193

120:                                              ; preds = %116
  %121 = load i32, ptr %118, align 8, !tbaa !154
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i32 [ %121, %120 ], [ 0, %116 ]
  %124 = icmp eq i32 %123, %117
  br i1 %124, label %129, label %125, !prof !194

125:                                              ; preds = %122
  %126 = zext i32 %117 to i64
  %127 = getelementptr inbounds %struct.VEC_edge_base, ptr %118, i64 0, i32 2, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !64
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi ptr [ %128, %125 ], [ null, %122 ]
  br i1 %124, label %310, label %131, !prof !194

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !176
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 13
  %135 = load i32, ptr %134, align 8, !tbaa !94
  %136 = and i32 %135, 512
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138, !prof !195

138:                                              ; preds = %131
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.2) #15
  br label %139

139:                                              ; preds = %138, %131
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143, !prof !196

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.gimple_bb_info, ptr %141, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !197
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi ptr [ %145, %143 ], [ null, %139 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149, !prof !198

149:                                              ; preds = %146
  %150 = load ptr, ptr %147, align 8, !tbaa !199
  %151 = icmp eq ptr %150, null
  %152 = zext i1 %151 to i8
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi i8 [ 1, %146 ], [ %152, %149 ]
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %299, !prof !200

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !118
  %159 = icmp eq ptr %158, null
  br i1 %159, label %190, label %160, !prof !201

160:                                              ; preds = %156
  %161 = load ptr, ptr %158, align 8, !tbaa !117
  %162 = getelementptr inbounds %struct.edge_equivalency, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !115
  %164 = call ptr @xmalloc(i64 noundef 16) #15
  store ptr %161, ptr %164, align 8, !tbaa !163
  %165 = getelementptr inbounds %struct.equiv_hash_elt, ptr %164, i64 0, i32 1
  store ptr null, ptr %165, align 8, !tbaa !183
  %166 = load ptr, ptr @equiv, align 8, !tbaa !64
  %167 = call ptr @htab_find_slot(ptr noundef %166, ptr noundef nonnull %164, i32 noundef 1) #15
  %168 = load ptr, ptr %167, align 8, !tbaa !64
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %171, !prof !184

170:                                              ; preds = %160
  store ptr %164, ptr %167, align 8, !tbaa !64
  br label %172

171:                                              ; preds = %160
  call void @free(ptr noundef %164)
  br label %172

172:                                              ; preds = %171, %170
  %173 = load ptr, ptr %167, align 8, !tbaa !64
  %174 = getelementptr inbounds %struct.equiv_hash_elt, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !64
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177, !prof !184

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.VEC_tree_base, ptr %175, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !185
  %180 = load i32, ptr %175, align 8, !tbaa !187
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184, !prof !188

182:                                              ; preds = %177, %172
  %183 = call ptr @vec_heap_p_reserve(ptr noundef %175, i32 noundef 1) #15
  store ptr %183, ptr %174, align 8, !tbaa !64
  br label %184

184:                                              ; preds = %177, %182
  %185 = load ptr, ptr %174, align 8, !tbaa !64
  %186 = load i32, ptr %185, align 8, !tbaa !187
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 8, !tbaa !187
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds %struct.VEC_tree_base, ptr %185, i64 0, i32 2, i64 %188
  store ptr %163, ptr %189, align 8, !tbaa !64
  br label %190

190:                                              ; preds = %184, %156
  br i1 %148, label %193, label %191, !prof !202

191:                                              ; preds = %190
  %192 = load ptr, ptr %147, align 8, !tbaa !199, !noalias !203
  br label %193

193:                                              ; preds = %191, %190
  %194 = phi ptr [ %192, %191 ], [ null, %190 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %286, label %196, !prof !206

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 6
  br label %198

198:                                              ; preds = %196, %282
  %199 = phi ptr [ %194, %196 ], [ %284, %282 ]
  %200 = load ptr, ptr %199, align 8, !tbaa !105
  %201 = load i32, ptr %197, align 4, !tbaa !207
  %202 = getelementptr inbounds %struct.gimple_statement_phi, ptr %200, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !75
  %204 = icmp ult i32 %203, %201
  br i1 %204, label %205, label %206, !prof !208

205:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #15
  br label %206

206:                                              ; preds = %205, %198
  %207 = zext i32 %201 to i64
  %208 = getelementptr inbounds %struct.gimple_statement_phi, ptr %200, i64 0, i32 4, i64 %207, i32 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !209
  %210 = load ptr, ptr %209, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %211 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %210) #15
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %221, !prof !211

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.tree_ssa_name, ptr %210, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !75
  %216 = getelementptr inbounds %struct.gimple_statement_phi, ptr %200, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !64
  %218 = getelementptr inbounds %struct.tree_ssa_name, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !75
  %220 = icmp eq ptr %215, %219
  br i1 %220, label %221, label %282, !prof !212

221:                                              ; preds = %213, %206
  store ptr %210, ptr %4, align 8, !tbaa !163
  store ptr null, ptr %115, align 8, !tbaa !183
  %222 = load ptr, ptr @equiv, align 8, !tbaa !64
  %223 = call ptr @htab_find_slot(ptr noundef %222, ptr noundef nonnull %4, i32 noundef 0) #15
  %224 = icmp eq ptr %223, null
  br i1 %224, label %282, label %225, !prof !213

225:                                              ; preds = %221
  %226 = load ptr, ptr %223, align 8, !tbaa !64
  %227 = getelementptr inbounds %struct.equiv_hash_elt, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !183
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230, !prof !214

230:                                              ; preds = %225
  %231 = load i32, ptr %228, align 8, !tbaa !187
  br label %232

232:                                              ; preds = %230, %225
  %233 = phi i32 [ %231, %230 ], [ 0, %225 ]
  %234 = zext i32 %233 to i64
  br label %235

235:                                              ; preds = %240, %232
  %236 = phi i64 [ %237, %240 ], [ %234, %232 ]
  %237 = add nsw i64 %236, -1
  %238 = and i64 %237, 2147483648
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %282, !prof !215

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.gimple_statement_phi, ptr %200, i64 0, i32 3
  %242 = load ptr, ptr %227, align 8, !tbaa !183
  %243 = and i64 %237, 2147483647
  %244 = getelementptr inbounds %struct.VEC_tree_base, ptr %242, i64 0, i32 2, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !64
  %246 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !75
  %248 = load ptr, ptr %241, align 8, !tbaa !64
  %249 = getelementptr inbounds %struct.tree_ssa_name, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !75
  %251 = icmp eq ptr %247, %250
  br i1 %251, label %252, label %235, !prof !216

252:                                              ; preds = %240
  %253 = load i32, ptr %197, align 4, !tbaa !207
  %254 = load i32, ptr %202, align 8, !tbaa !75
  %255 = icmp ult i32 %254, %253
  br i1 %255, label %256, label %257, !prof !217

256:                                              ; preds = %252
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #15
  br label %257

257:                                              ; preds = %256, %252
  %258 = zext i32 %253 to i64
  %259 = getelementptr inbounds %struct.gimple_statement_phi, ptr %200, i64 0, i32 4, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !218
  %261 = icmp eq ptr %260, null
  br i1 %261, label %267, label %262, !prof !219

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %259, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !220
  %265 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %260, i64 0, i32 1
  store ptr %264, ptr %265, align 8, !tbaa !220
  %266 = load ptr, ptr %263, align 8, !tbaa !220
  store ptr %260, ptr %266, align 8, !tbaa !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %259, i8 0, i64 16, i1 false)
  br label %267

267:                                              ; preds = %262, %257
  %268 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %259, i64 0, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !209
  store ptr %245, ptr %269, align 8, !tbaa !64
  %270 = icmp eq ptr %245, null
  br i1 %270, label %275, label %271, !prof !217

271:                                              ; preds = %267
  %272 = load i64, ptr %245, align 8
  %273 = and i64 %272, 65535
  %274 = icmp eq i64 %273, 141
  br i1 %274, label %276, label %275, !prof !219

275:                                              ; preds = %271, %267
  store ptr null, ptr %259, align 8, !tbaa !218
  br label %282

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 5
  store ptr %277, ptr %259, align 8, !tbaa !218
  %278 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 5, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !220
  %280 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %259, i64 0, i32 1
  store ptr %279, ptr %280, align 8, !tbaa !220
  %281 = load ptr, ptr %278, align 8, !tbaa !220
  store ptr %259, ptr %281, align 8, !tbaa !218
  store ptr %259, ptr %278, align 8, !tbaa !220
  br label %282

282:                                              ; preds = %235, %276, %275, %221, %213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %283 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %199, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !221
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %198, !prof !222, !llvm.loop !223

286:                                              ; preds = %282, %193
  %287 = load ptr, ptr %157, align 8, !tbaa !118
  %288 = icmp eq ptr %287, null
  br i1 %288, label %299, label %289, !prof !201

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.equiv_hash_elt, ptr %3, i64 0, i32 1
  %291 = load ptr, ptr %287, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  store ptr %291, ptr %3, align 8, !tbaa !163
  store ptr null, ptr %290, align 8, !tbaa !183
  %292 = load ptr, ptr @equiv, align 8, !tbaa !64
  %293 = call ptr @htab_find_slot(ptr noundef %292, ptr noundef nonnull %3, i32 noundef 0) #15
  %294 = load ptr, ptr %293, align 8, !tbaa !64
  %295 = getelementptr inbounds %struct.equiv_hash_elt, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !183
  %297 = load i32, ptr %296, align 8, !tbaa !187
  %298 = add i32 %297, -1
  store i32 %298, ptr %296, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %299

299:                                              ; preds = %289, %286, %153
  %300 = load ptr, ptr %114, align 8, !tbaa !64
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302, !prof !224

302:                                              ; preds = %299
  %303 = load i32, ptr %300, align 8, !tbaa !154
  br label %304

304:                                              ; preds = %302, %299
  %305 = phi i32 [ %303, %302 ], [ 0, %299 ]
  %306 = icmp ult i32 %117, %305
  br i1 %306, label %308, label %307, !prof !195

307:                                              ; preds = %304
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %308

308:                                              ; preds = %307, %304
  %309 = add i32 %117, 1
  br label %116, !llvm.loop !225

310:                                              ; preds = %129
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @uncprop_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #11 !prof !170 !PGOFuncName !226 {
  %3 = alloca %struct.equiv_hash_elt, align 8
  %4 = load ptr, ptr @equiv_stack, align 8
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !187
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11, !prof !227

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  store ptr %9, ptr %3, align 8, !tbaa !163
  %12 = getelementptr inbounds %struct.equiv_hash_elt, ptr %3, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !183
  %13 = load ptr, ptr @equiv, align 8, !tbaa !64
  %14 = call ptr @htab_find_slot(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 0) #15
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.equiv_hash_elt, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !183
  %18 = load i32, ptr %17, align 8, !tbaa !187
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %20

20:                                               ; preds = %11, %2
  ret void
}

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

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
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

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
!35 = !{ptr @tree_ssa_uncprop, ptr @extract_true_false_edges_from_block, i64 140170}
!36 = !{ptr @tree_ssa_uncprop, ptr @is_gimple_min_invariant, i64 139949}
!37 = !{ptr @tree_ssa_uncprop, ptr @xmalloc, i64 150680}
!38 = !{ptr @tree_ssa_uncprop, ptr @integer_zerop, i64 19066}
!39 = !{ptr @tree_ssa_uncprop, ptr @xcalloc, i64 40}
!40 = !{ptr @tree_ssa_uncprop, ptr @label_to_block_fn, i64 9249}
!41 = !{ptr @tree_ssa_uncprop, ptr @fold_convert_loc, i64 1198}
!42 = !{ptr @tree_ssa_uncprop, ptr @find_edge, i64 1198}
!43 = !{ptr @tree_ssa_uncprop, ptr @free, i64 150758}
!44 = !{ptr @tree_ssa_uncprop, ptr @htab_create, i64 38}
!45 = !{ptr @tree_ssa_uncprop, ptr @vec_heap_p_reserve_exact, i64 38}
!46 = !{ptr @tree_ssa_uncprop, ptr @calculate_dominance_info, i64 38}
!47 = !{ptr @tree_ssa_uncprop, ptr @init_walk_dominator_tree, i64 38}
!48 = !{ptr @tree_ssa_uncprop, ptr @walk_dominator_tree, i64 38}
!49 = !{ptr @tree_ssa_uncprop, ptr @fini_walk_dominator_tree, i64 38}
!50 = !{ptr @tree_ssa_uncprop, ptr @htab_delete, i64 38}
!51 = !{ptr @equiv_hash, ptr @iterative_hash_expr, i64 467041}
!52 = !{ptr @equiv_eq, ptr @operand_equal_p, i64 322331}
!53 = !{ptr @equiv_free, ptr @free, i64 3818}
!54 = !{ptr @uncprop_enter_block, ptr @get_immediate_dominator, i64 154098}
!55 = !{ptr @uncprop_enter_block, ptr @dominated_by_p, i64 206217}
!56 = !{ptr @uncprop_enter_block, ptr @xmalloc, i64 141760}
!57 = !{ptr @uncprop_enter_block, ptr @htab_find_slot, i64 406509}
!58 = !{ptr @uncprop_enter_block, ptr @free, i64 139851}
!59 = !{ptr @uncprop_enter_block, ptr @vec_heap_p_reserve, i64 2255}
!60 = !{ptr @uncprop_enter_block, ptr @is_gimple_min_invariant, i64 183521}
!61 = !{ptr @uncprop_leave_block, ptr @htab_find_slot, i64 60532}
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
!83 = !{!"function_entry_count", i64 38}
!84 = !{!"tree-ssa-uncprop.c;gate_uncprop"}
!85 = !{!"tree-ssa-uncprop.c;tree_ssa_uncprop"}
!86 = !{!87, !65, i64 8}
!87 = !{!"function", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !70, i64 104, !70, i64 108, !70, i64 112, !70, i64 116, !70, i64 120, !70, i64 124, !65, i64 128, !70, i64 136, !70, i64 137, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139}
!88 = !{!89, !65, i64 0}
!89 = !{!"control_flow_graph", !65, i64 0, !65, i64 8, !65, i64 16, !70, i64 24, !70, i64 28, !70, i64 32, !65, i64 40, !70, i64 48, !66, i64 52, !66, i64 60, !70, i64 68, !70, i64 72}
!90 = !{!91, !65, i64 56}
!91 = !{!"basic_block_def", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !66, i64 32, !65, i64 48, !65, i64 56, !66, i64 64, !71, i64 72, !70, i64 80, !70, i64 84, !70, i64 88, !70, i64 92, !70, i64 96}
!92 = !{!89, !65, i64 8}
!93 = !{!"branch_weights", i32 1, i32 151}
!94 = !{!91, !70, i64 96}
!95 = !{!96}
!96 = distinct !{!96, !97, !"gsi_last_bb: argument 0"}
!97 = distinct !{!97, !"gsi_last_bb"}
!98 = !{!"branch_weights", i32 154060, i32 0}
!99 = !{!"branch_weights", i32 0, i32 154060}
!100 = !{!101, !65, i64 0}
!101 = !{!"gimple_bb_info", !65, i64 0, !65, i64 8}
!102 = !{!103, !65, i64 8}
!103 = !{!"gimple_seq_d", !65, i64 0, !65, i64 8, !65, i64 16}
!104 = !{!"branch_weights", i32 11521, i32 142539}
!105 = !{!106, !65, i64 0}
!106 = !{!"gimple_seq_node_d", !65, i64 0, !65, i64 8, !65, i64 16}
!107 = !{!"branch_weights", i32 0, i32 142539}
!108 = !{!"branch_weights", i32 2329, i32 140170, i32 40}
!109 = !{!"branch_weights", i32 139949, i32 221}
!110 = !{!"branch_weights", i32 0, i32 139949}
!111 = !{!71, !71, i64 0}
!112 = !{!"branch_weights", i32 139949, i32 0}
!113 = !{!"branch_weights", i32 9533, i32 130416}
!114 = !{!"branch_weights", i32 0, i32 9533}
!115 = !{!116, !65, i64 8}
!116 = !{!"edge_equivalency", !65, i64 0, !65, i64 8}
!117 = !{!116, !65, i64 0}
!118 = !{!119, !65, i64 24}
!119 = !{!"edge_def", !65, i64 0, !65, i64 8, !66, i64 16, !65, i64 24, !65, i64 32, !70, i64 40, !70, i64 44, !70, i64 48, !70, i64 52, !71, i64 56}
!120 = !{!"branch_weights", i32 130416, i32 0}
!121 = !{!"branch_weights", i32 0, i32 130416}
!122 = !{!123, !66, i64 49}
!123 = !{!"real_format", !65, i64 0, !65, i64 8, !70, i64 16, !70, i64 20, !70, i64 24, !70, i64 28, !70, i64 32, !70, i64 36, !70, i64 40, !66, i64 44, !66, i64 45, !66, i64 46, !66, i64 47, !66, i64 48, !66, i64 49, !66, i64 50, !66, i64 51}
!124 = !{!"branch_weights", i32 106517, i32 23899}
!125 = !{!"branch_weights", i32 0, i32 40}
!126 = !{!"branch_weights", i32 40, i32 0}
!127 = !{!89, !70, i64 32}
!128 = !{!"branch_weights", i32 159, i32 1}
!129 = !{!89, !70, i64 24}
!130 = !{!"branch_weights", i32 9249, i32 0}
!131 = !{!"branch_weights", i32 0, i32 9249}
!132 = !{!"branch_weights", i32 5529, i32 3720}
!133 = !{!"branch_weights", i32 40, i32 5489}
!134 = !{!91, !70, i64 80}
!135 = !{!"branch_weights", i32 1999, i32 3490}
!136 = !{!"branch_weights", i32 159, i32 36837}
!137 = distinct !{!137, !81, !82}
!138 = !{!"branch_weights", i32 151419, i32 2943}
!139 = !{!"branch_weights", i32 153164, i32 1198}
!140 = !{!89, !65, i64 16}
!141 = !{!"branch_weights", i32 617289, i32 159}
!142 = distinct !{!142, !81, !82}
!143 = !{!"branch_weights", i32 151, i32 616089}
!144 = distinct !{!144, !81, !82}
!145 = !{!146, !65, i64 8}
!146 = !{!"dom_walk_data", !70, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !71, i64 48, !65, i64 56}
!147 = !{!146, !65, i64 16}
!148 = !{!146, !65, i64 24}
!149 = !{!146, !65, i64 32}
!150 = !{!146, !71, i64 48}
!151 = !{!"branch_weights", i32 0, i32 38}
!152 = distinct !{!152, !81, !82}
!153 = !{!"branch_weights", i32 0, i32 451130}
!154 = !{!155, !70, i64 0}
!155 = !{!"VEC_edge_base", !70, i64 0, !70, i64 4, !66, i64 8}
!156 = !{!"branch_weights", i32 154060, i32 297070}
!157 = !{!"branch_weights", i32 146390, i32 150680}
!158 = !{!"branch_weights", i32 0, i32 297070}
!159 = !{!"branch_weights", i32 297070, i32 0}
!160 = distinct !{!160, !81, !82}
!161 = !{!"function_entry_count", i64 467041}
!162 = !{!"tree-ssa-uncprop.c;equiv_hash"}
!163 = !{!164, !65, i64 0}
!164 = !{!"equiv_hash_elt", !65, i64 0, !65, i64 8}
!165 = !{!"function_entry_count", i64 322331}
!166 = !{!"tree-ssa-uncprop.c;equiv_eq"}
!167 = !{!"function_entry_count", i64 1909}
!168 = !{!"tree-ssa-uncprop.c;equiv_free"}
!169 = !{!"branch_weights", i32 0, i32 1909}
!170 = !{!"function_entry_count", i64 154098}
!171 = !{!"tree-ssa-uncprop.c;uncprop_enter_block"}
!172 = !{!"branch_weights", i32 38, i32 154060}
!173 = !{!"branch_weights", i32 0, i32 308120}
!174 = !{!"branch_weights", i32 101903, i32 206217}
!175 = !{!119, !65, i64 0}
!176 = !{!119, !65, i64 8}
!177 = !{!"branch_weights", i32 206217, i32 0}
!178 = !{!"branch_weights", i32 154060, i32 52157}
!179 = distinct !{!179, !81, !82}
!180 = !{!"branch_weights", i32 52157, i32 101903}
!181 = !{!"branch_weights", i32 101903, i32 0}
!182 = !{!"branch_weights", i32 41371, i32 60532}
!183 = !{!164, !65, i64 8}
!184 = !{!"branch_weights", i32 1909, i32 139851}
!185 = !{!186, !70, i64 4}
!186 = !{!"VEC_tree_base", !70, i64 0, !70, i64 4, !66, i64 8}
!187 = !{!186, !70, i64 0}
!188 = !{!"branch_weights", i32 182, i32 139669}
!189 = !{!"branch_weights", i32 0, i32 60532}
!190 = !{!"branch_weights", i32 72, i32 60460}
!191 = !{!"branch_weights", i32 0, i32 93566}
!192 = !{!"branch_weights", i32 92, i32 93474}
!193 = !{!"branch_weights", i32 0, i32 451206}
!194 = !{!"branch_weights", i32 154098, i32 297108}
!195 = !{!"branch_weights", i32 297108, i32 0}
!196 = !{!"branch_weights", i32 38, i32 297070}
!197 = !{!101, !65, i64 8}
!198 = !{!"branch_weights", i32 96205, i32 200903}
!199 = !{!103, !65, i64 0}
!200 = !{!"branch_weights", i32 179264, i32 117844}
!201 = !{!"branch_weights", i32 98036, i32 81228}
!202 = !{!"branch_weights", i32 0, i32 179264}
!203 = !{!204}
!204 = distinct !{!204, !205, !"gsi_start: argument 0"}
!205 = distinct !{!205, !"gsi_start"}
!206 = !{!"branch_weights", i32 1, i32 179263}
!207 = !{!119, !70, i64 44}
!208 = !{!"branch_weights", i32 0, i32 183521}
!209 = !{!210, !65, i64 24}
!210 = !{!"ssa_use_operand_d", !65, i64 0, !65, i64 8, !66, i64 16, !65, i64 24}
!211 = !{!"branch_weights", i32 118004, i32 65517}
!212 = !{!"branch_weights", i32 118004, i32 0}
!213 = !{!"branch_weights", i32 147759, i32 35762}
!214 = !{!"branch_weights", i32 0, i32 35762}
!215 = !{!"branch_weights", i32 15615, i32 35011}
!216 = !{!"branch_weights", i32 751, i32 14864}
!217 = !{!"branch_weights", i32 0, i32 751}
!218 = !{!210, !65, i64 0}
!219 = !{!"branch_weights", i32 751, i32 0}
!220 = !{!210, !65, i64 8}
!221 = !{!106, !65, i64 16}
!222 = !{!"branch_weights", i32 179263, i32 4258}
!223 = distinct !{!223, !81, !82}
!224 = !{!"branch_weights", i32 0, i32 297108}
!225 = distinct !{!225, !81, !82}
!226 = !{!"tree-ssa-uncprop.c;uncprop_leave_block"}
!227 = !{!"branch_weights", i32 93566, i32 60532}
