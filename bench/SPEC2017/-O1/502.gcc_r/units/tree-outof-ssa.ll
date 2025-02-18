; ModuleID = 'tree-outof-ssa.c'
source_filename = "tree-outof-ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssaexpand = type { ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct._elim_graph = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_source_location_base = type { i32, i32, [1 x i32] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_tree_ter = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"tree-outof-ssa.c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Inserting a temp copy on edge BB%d->BB%d : \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"= PART.%d\0A\00", align 1
@SA = external local_unnamed_addr global %struct.ssaexpand, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"Inserting a temp copy on edge BB%d->BB%d : PART.%d = \00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Inserting a partition copy on edge BB%d->BB%d :PART.%d = PART.%d\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Inserting a value copy on edge BB%d->BB%d : PART.%d = \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Removing Dead PHI definition: \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"After Coalescing:\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !64 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !65
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !64 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !64 {
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
  br i1 %23, label %7, label %24, !llvm.loop !81

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @expand_phi_nodes(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !84 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct._var_map, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !87
  %8 = tail call ptr @xmalloc(i64 noundef 88) #15
  %9 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 30, i64 noundef 8, i64 noundef 4) #15
  %10 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !89
  %11 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 20, i64 noundef 8, i64 noundef 4) #15
  %12 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 8
  store ptr %11, ptr %12, align 8, !tbaa !91
  %13 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #15
  %14 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 9
  store ptr %13, ptr %14, align 8, !tbaa !92
  %15 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 10, i64 noundef 8, i64 noundef 4) #15
  %16 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 10
  store ptr %15, ptr %16, align 8, !tbaa !93
  %17 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 20, i64 noundef 8, i64 noundef 4) #15
  %18 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !94
  %19 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 10, i64 noundef 8, i64 noundef 4) #15
  %20 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !95
  %21 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 30, i64 noundef 8, i64 noundef 4) #15
  %22 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !96
  %23 = tail call ptr @sbitmap_alloc(i32 noundef %7) #15
  %24 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !97
  %25 = load ptr, ptr %0, align 8, !tbaa !85
  %26 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !98
  %27 = load ptr, ptr @cfun, align 8, !tbaa !65
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %930, label %36, !prof !106

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct._elim_graph, ptr %8, i64 0, i32 7
  br label %38

38:                                               ; preds = %36, %921
  %39 = phi ptr [ %32, %36 ], [ %923, %921 ]
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !107
  %42 = and i32 %41, 512
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !108

44:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.1) #15
  br label %45

45:                                               ; preds = %44, %38
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !109

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gimple_bb_info, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !110
  br label %52

52:                                               ; preds = %45, %49
  %53 = phi ptr [ %51, %49 ], [ null, %45 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55, !prof !112

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 8, !tbaa !113
  %57 = icmp eq ptr %56, null
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %52, %55
  %60 = phi i8 [ 1, %52 ], [ %58, %55 ]
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %921, !prof !115

62:                                               ; preds = %59
  %63 = icmp eq ptr %39, null
  br label %64

64:                                               ; preds = %62, %850
  %65 = phi i32 [ %851, %850 ], [ 0, %62 ]
  br i1 %63, label %66, label %67, !prof !116

66:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %67

67:                                               ; preds = %66, %64
  %68 = load ptr, ptr %39, align 8, !tbaa !65
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !116

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 8, !tbaa !117
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %71, %70 ], [ 0, %67 ]
  %74 = icmp eq i32 %73, %65
  br i1 %74, label %79, label %75, !prof !119

75:                                               ; preds = %72
  %76 = zext i32 %65 to i64
  %77 = getelementptr inbounds %struct.VEC_edge_base, ptr %68, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  br label %79

79:                                               ; preds = %72, %75
  %80 = phi ptr [ %78, %75 ], [ null, %72 ]
  br i1 %74, label %852, label %81, !prof !119

81:                                               ; preds = %79
  %82 = load ptr, ptr %14, align 8, !tbaa !92
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84, !prof !120

84:                                               ; preds = %81
  %85 = load i32, ptr %82, align 8, !tbaa !121
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %85, %84 ], [ 0, %81 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89, !prof !123

89:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 656, ptr noundef nonnull @.str.1) #15
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr %16, align 8, !tbaa !93
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !120

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 4, !tbaa !124
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i32 [ %94, %93 ], [ 0, %90 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !123

98:                                               ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 657, ptr noundef nonnull @.str.1) #15
  br label %99

99:                                               ; preds = %98, %95
  %100 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !126
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %841, !prof !123

104:                                              ; preds = %99
  store ptr %80, ptr %37, align 8, !tbaa !128
  %105 = load ptr, ptr %10, align 8, !tbaa !89
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107, !prof !120

107:                                              ; preds = %104
  store i32 0, ptr %105, align 4, !tbaa !129
  br label %108

108:                                              ; preds = %107, %104
  %109 = load ptr, ptr %18, align 8, !tbaa !94
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !120

111:                                              ; preds = %108
  store i32 0, ptr %109, align 4, !tbaa !129
  br label %112

112:                                              ; preds = %111, %108
  %113 = load ptr, ptr %20, align 8, !tbaa !95
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !120

115:                                              ; preds = %112
  store i32 0, ptr %113, align 4, !tbaa !124
  br label %116

116:                                              ; preds = %115, %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %117 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !131
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %118) #15
  %119 = load ptr, ptr %4, align 8, !tbaa.struct !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %120 = icmp eq ptr %119, null
  br i1 %120, label %358, label %121, !prof !133

121:                                              ; preds = %116, %354
  %122 = phi ptr [ %356, %354 ], [ %119, %116 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !134
  %124 = load ptr, ptr %26, align 8, !tbaa !98
  %125 = getelementptr inbounds %struct.gimple_statement_phi, ptr %123, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !76
  %127 = load i64, ptr %126, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 141
  br i1 %129, label %131, label %130, !prof !136

130:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 147, ptr noundef nonnull @.str.1) #15
  br label %131

131:                                              ; preds = %130, %121
  %132 = load ptr, ptr %124, align 8, !tbaa !137
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %126, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !76
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.partition_def, ptr %132, i64 0, i32 1, i64 %135
  %137 = load i32, ptr %136, align 8, !tbaa !138
  %138 = getelementptr inbounds %struct._var_map, ptr %124, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !140
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141, !prof !141

141:                                              ; preds = %131
  %142 = sext i32 %137 to i64
  %143 = getelementptr inbounds i32, ptr %139, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !80
  br label %145

145:                                              ; preds = %141, %131
  %146 = phi i32 [ %144, %141 ], [ %137, %131 ]
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %354, label %148, !prof !141

148:                                              ; preds = %145
  %149 = load ptr, ptr %37, align 8, !tbaa !128
  %150 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 6
  %151 = load i32, ptr %150, align 4, !tbaa !142
  %152 = getelementptr inbounds %struct.gimple_statement_phi, ptr %123, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !76
  %154 = icmp ult i32 %153, %151
  br i1 %154, label %155, label %156, !prof !141

155:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %156

156:                                              ; preds = %155, %148
  %157 = zext i32 %151 to i64
  %158 = getelementptr inbounds %struct.gimple_statement_phi, ptr %123, i64 0, i32 4, i64 %157, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !143
  %160 = load ptr, ptr %159, align 8, !tbaa !65
  %161 = load ptr, ptr %37, align 8, !tbaa !128
  %162 = getelementptr inbounds %struct.edge_def, ptr %161, i64 0, i32 6
  %163 = load i32, ptr %162, align 4, !tbaa !142
  %164 = load i32, ptr %152, align 8, !tbaa !76
  %165 = icmp ult i32 %164, %163
  br i1 %165, label %166, label %167, !prof !141

166:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %167

167:                                              ; preds = %166, %156
  %168 = zext i32 %163 to i64
  %169 = getelementptr inbounds %struct.gimple_statement_phi, ptr %123, i64 0, i32 4, i64 %168, i32 2
  %170 = load i32, ptr %169, align 8, !tbaa !145
  %171 = load i64, ptr %160, align 8
  %172 = and i64 %171, 65535
  %173 = icmp eq i64 %172, 141
  br i1 %173, label %174, label %192, !prof !147

174:                                              ; preds = %167
  %175 = load ptr, ptr %26, align 8, !tbaa !98
  %176 = load ptr, ptr %175, align 8, !tbaa !137
  %177 = getelementptr inbounds %struct.tree_ssa_name, ptr %160, i64 0, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !76
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.partition_def, ptr %176, i64 0, i32 1, i64 %179
  %181 = load i32, ptr %180, align 8, !tbaa !138
  %182 = getelementptr inbounds %struct._var_map, ptr %175, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !140
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185, !prof !148

185:                                              ; preds = %174
  %186 = sext i32 %181 to i64
  %187 = getelementptr inbounds i32, ptr %183, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !80
  br label %189

189:                                              ; preds = %185, %174
  %190 = phi i32 [ %188, %185 ], [ %181, %174 ]
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %232, !prof !148

192:                                              ; preds = %189, %167
  %193 = load ptr, ptr %12, align 8, !tbaa !65
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195, !prof !149

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.VEC_int_base, ptr %193, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !150
  %198 = load i32, ptr %193, align 4, !tbaa !129
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %202, !prof !149

200:                                              ; preds = %195, %192
  %201 = call ptr @vec_heap_o_reserve(ptr noundef %193, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %201, ptr %12, align 8, !tbaa !65
  br label %202

202:                                              ; preds = %200, %195
  %203 = load ptr, ptr %12, align 8, !tbaa !65
  %204 = load i32, ptr %203, align 4, !tbaa !129
  %205 = add i32 %204, 1
  store i32 %205, ptr %203, align 4, !tbaa !129
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds %struct.VEC_int_base, ptr %203, i64 0, i32 2, i64 %206
  store i32 %146, ptr %207, align 4, !tbaa !80
  %208 = load ptr, ptr %14, align 8, !tbaa !65
  %209 = icmp eq ptr %208, null
  br i1 %209, label %215, label %210, !prof !149

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.VEC_tree_base, ptr %208, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !151
  %213 = load i32, ptr %208, align 8, !tbaa !121
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217, !prof !149

215:                                              ; preds = %210, %202
  %216 = call ptr @vec_heap_p_reserve(ptr noundef %208, i32 noundef 1) #15
  store ptr %216, ptr %14, align 8, !tbaa !65
  br label %217

217:                                              ; preds = %215, %210
  %218 = load ptr, ptr %14, align 8, !tbaa !65
  %219 = load i32, ptr %218, align 8, !tbaa !121
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8, !tbaa !121
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds %struct.VEC_tree_base, ptr %218, i64 0, i32 2, i64 %221
  store ptr %160, ptr %222, align 8, !tbaa !65
  %223 = load ptr, ptr %16, align 8, !tbaa !65
  %224 = icmp eq ptr %223, null
  br i1 %224, label %230, label %225, !prof !149

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.VEC_source_location_base, ptr %223, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !152
  %228 = load i32, ptr %223, align 4, !tbaa !124
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %347, !prof !149

230:                                              ; preds = %225, %217
  %231 = call ptr @vec_heap_o_reserve(ptr noundef %223, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %231, ptr %16, align 8, !tbaa !65
  br label %347

232:                                              ; preds = %189
  %233 = load ptr, ptr %175, align 8, !tbaa !137
  %234 = load i32, ptr %177, align 8, !tbaa !76
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.partition_def, ptr %233, i64 0, i32 1, i64 %235
  %237 = load i32, ptr %236, align 8, !tbaa !138
  %238 = load ptr, ptr %182, align 8, !tbaa !140
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240, !prof !148

240:                                              ; preds = %232
  %241 = sext i32 %237 to i64
  %242 = getelementptr inbounds i32, ptr %238, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !80
  br label %244

244:                                              ; preds = %240, %232
  %245 = phi i32 [ %243, %240 ], [ %237, %232 ]
  %246 = icmp eq i32 %146, %245
  br i1 %246, label %354, label %247, !prof !153

247:                                              ; preds = %244
  %248 = load ptr, ptr %10, align 8, !tbaa !65
  %249 = icmp eq ptr %248, null
  br label %250

250:                                              ; preds = %262, %247
  %251 = phi i64 [ %264, %262 ], [ 0, %247 ]
  br i1 %249, label %259, label %252

252:                                              ; preds = %250
  %253 = load i32, ptr %248, align 4, !tbaa !129
  %254 = zext i32 %253 to i64
  %255 = icmp ult i64 %251, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.VEC_int_base, ptr %248, i64 0, i32 2, i64 %251
  %258 = load i32, ptr %257, align 4, !tbaa !80
  br label %259

259:                                              ; preds = %256, %252, %250
  %260 = phi i32 [ %258, %256 ], [ 0, %252 ], [ 0, %250 ]
  %261 = phi i1 [ false, %256 ], [ true, %252 ], [ true, %250 ]
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = icmp eq i32 %260, %146
  %264 = add nuw i64 %251, 1
  br i1 %263, label %279, label %250, !llvm.loop !154

265:                                              ; preds = %259
  br i1 %249, label %271, label %266

266:                                              ; preds = %265
  %267 = getelementptr inbounds %struct.VEC_int_base, ptr %248, i64 0, i32 1
  %268 = load i32, ptr %267, align 4, !tbaa !150
  %269 = load i32, ptr %248, align 4, !tbaa !129
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %266, %265
  %272 = call ptr @vec_heap_o_reserve(ptr noundef %248, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %272, ptr %10, align 8, !tbaa !65
  br label %273

273:                                              ; preds = %271, %266
  %274 = load ptr, ptr %10, align 8, !tbaa !65
  %275 = load i32, ptr %274, align 4, !tbaa !129
  %276 = add i32 %275, 1
  store i32 %276, ptr %274, align 4, !tbaa !129
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds %struct.VEC_int_base, ptr %274, i64 0, i32 2, i64 %277
  store i32 %146, ptr %278, align 4, !tbaa !80
  br label %279

279:                                              ; preds = %262, %273
  %280 = load ptr, ptr %10, align 8, !tbaa !65
  %281 = icmp eq ptr %280, null
  br label %282

282:                                              ; preds = %294, %279
  %283 = phi i64 [ %296, %294 ], [ 0, %279 ]
  br i1 %281, label %291, label %284

284:                                              ; preds = %282
  %285 = load i32, ptr %280, align 4, !tbaa !129
  %286 = zext i32 %285 to i64
  %287 = icmp ult i64 %283, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.VEC_int_base, ptr %280, i64 0, i32 2, i64 %283
  %290 = load i32, ptr %289, align 4, !tbaa !80
  br label %291

291:                                              ; preds = %288, %284, %282
  %292 = phi i32 [ %290, %288 ], [ 0, %284 ], [ 0, %282 ]
  %293 = phi i1 [ false, %288 ], [ true, %284 ], [ true, %282 ]
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = icmp eq i32 %292, %245
  %296 = add nuw i64 %283, 1
  br i1 %295, label %311, label %282, !llvm.loop !154

297:                                              ; preds = %291
  br i1 %281, label %303, label %298

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.VEC_int_base, ptr %280, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !150
  %301 = load i32, ptr %280, align 4, !tbaa !129
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %298, %297
  %304 = call ptr @vec_heap_o_reserve(ptr noundef %280, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %304, ptr %10, align 8, !tbaa !65
  br label %305

305:                                              ; preds = %303, %298
  %306 = load ptr, ptr %10, align 8, !tbaa !65
  %307 = load i32, ptr %306, align 4, !tbaa !129
  %308 = add i32 %307, 1
  store i32 %308, ptr %306, align 4, !tbaa !129
  %309 = zext i32 %307 to i64
  %310 = getelementptr inbounds %struct.VEC_int_base, ptr %306, i64 0, i32 2, i64 %309
  store i32 %245, ptr %310, align 4, !tbaa !80
  br label %311

311:                                              ; preds = %294, %305
  %312 = load ptr, ptr %18, align 8, !tbaa !65
  %313 = icmp eq ptr %312, null
  br i1 %313, label %319, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.VEC_int_base, ptr %312, i64 0, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !150
  %317 = load i32, ptr %312, align 4, !tbaa !129
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %314, %311
  %320 = call ptr @vec_heap_o_reserve(ptr noundef %312, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %320, ptr %18, align 8, !tbaa !65
  br label %321

321:                                              ; preds = %319, %314
  %322 = load ptr, ptr %18, align 8, !tbaa !65
  %323 = load i32, ptr %322, align 4, !tbaa !129
  %324 = add i32 %323, 1
  store i32 %324, ptr %322, align 4, !tbaa !129
  %325 = zext i32 %323 to i64
  %326 = getelementptr inbounds %struct.VEC_int_base, ptr %322, i64 0, i32 2, i64 %325
  store i32 %146, ptr %326, align 4, !tbaa !80
  %327 = getelementptr inbounds %struct.VEC_int_base, ptr %322, i64 0, i32 1
  %328 = load i32, ptr %327, align 4, !tbaa !150
  %329 = icmp eq i32 %328, %324
  br i1 %329, label %330, label %332

330:                                              ; preds = %321
  %331 = call ptr @vec_heap_o_reserve(ptr noundef nonnull %322, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %331, ptr %18, align 8, !tbaa !65
  br label %332

332:                                              ; preds = %330, %321
  %333 = load ptr, ptr %18, align 8, !tbaa !65
  %334 = load i32, ptr %333, align 4, !tbaa !129
  %335 = add i32 %334, 1
  store i32 %335, ptr %333, align 4, !tbaa !129
  %336 = zext i32 %334 to i64
  %337 = getelementptr inbounds %struct.VEC_int_base, ptr %333, i64 0, i32 2, i64 %336
  store i32 %245, ptr %337, align 4, !tbaa !80
  %338 = load ptr, ptr %20, align 8, !tbaa !65
  %339 = icmp eq ptr %338, null
  br i1 %339, label %345, label %340

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.VEC_source_location_base, ptr %338, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !152
  %343 = load i32, ptr %338, align 4, !tbaa !124
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %340, %332
  %346 = call ptr @vec_heap_o_reserve(ptr noundef %338, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %346, ptr %20, align 8, !tbaa !65
  br label %347

347:                                              ; preds = %340, %345, %225, %230
  %348 = phi ptr [ %16, %230 ], [ %16, %225 ], [ %20, %345 ], [ %20, %340 ]
  %349 = load ptr, ptr %348, align 8, !tbaa !65
  %350 = load i32, ptr %349, align 4, !tbaa !124
  %351 = add i32 %350, 1
  store i32 %351, ptr %349, align 4, !tbaa !124
  %352 = zext i32 %350 to i64
  %353 = getelementptr inbounds %struct.VEC_source_location_base, ptr %349, i64 0, i32 2, i64 %352
  store i32 %170, ptr %353, align 4, !tbaa !80
  br label %354

354:                                              ; preds = %347, %244, %145
  %355 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %122, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !155
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %121, !prof !156, !llvm.loop !157

358:                                              ; preds = %354, %116
  %359 = load ptr, ptr %10, align 8, !tbaa !89
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361, !prof !120

361:                                              ; preds = %358
  %362 = load i32, ptr %359, align 4, !tbaa !129
  br label %363

363:                                              ; preds = %361, %358
  %364 = phi i32 [ %362, %361 ], [ 0, %358 ]
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %367, !prof !123

366:                                              ; preds = %407, %363
  br label %699

367:                                              ; preds = %363
  %368 = load ptr, ptr %24, align 8, !tbaa !97
  call void @sbitmap_zero(ptr noundef %368) #15
  %369 = load ptr, ptr %22, align 8, !tbaa !96
  %370 = icmp eq ptr %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %367
  store i32 0, ptr %369, align 4, !tbaa !129
  br label %372

372:                                              ; preds = %371, %367
  br label %373

373:                                              ; preds = %372, %399
  %374 = phi i64 [ %400, %399 ], [ 0, %372 ]
  %375 = load ptr, ptr %10, align 8, !tbaa !89
  %376 = icmp eq ptr %375, null
  br i1 %376, label %384, label %377

377:                                              ; preds = %373
  %378 = load i32, ptr %375, align 4, !tbaa !129
  %379 = zext i32 %378 to i64
  %380 = icmp ult i64 %374, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.VEC_int_base, ptr %375, i64 0, i32 2, i64 %374
  %383 = load i32, ptr %382, align 4, !tbaa !80
  br label %384

384:                                              ; preds = %381, %377, %373
  %385 = phi i32 [ %383, %381 ], [ 0, %377 ], [ 0, %373 ]
  %386 = phi i1 [ false, %381 ], [ true, %377 ], [ true, %373 ]
  %387 = load ptr, ptr %24, align 8, !tbaa !97
  br i1 %386, label %401, label %388

388:                                              ; preds = %384
  %389 = lshr i32 %385, 6
  %390 = zext nneg i32 %389 to i64
  %391 = getelementptr inbounds %struct.simple_bitmap_def, ptr %387, i64 0, i32 3, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !158
  %393 = and i32 %385, 63
  %394 = zext nneg i32 %393 to i64
  %395 = shl nuw i64 1, %394
  %396 = and i64 %392, %395
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %388
  call fastcc void @elim_forward(ptr noundef %8, i32 noundef %385)
  br label %399

399:                                              ; preds = %398, %388
  %400 = add nuw i64 %374, 1
  br label %373, !llvm.loop !159

401:                                              ; preds = %384
  call void @sbitmap_zero(ptr noundef %387) #15
  br label %402

402:                                              ; preds = %686, %401
  %403 = load ptr, ptr %22, align 8, !tbaa !96
  %404 = icmp eq ptr %403, null
  br i1 %404, label %407, label %405

405:                                              ; preds = %402
  %406 = load i32, ptr %403, align 4, !tbaa !129
  br label %407

407:                                              ; preds = %405, %402
  %408 = phi i32 [ %406, %405 ], [ 0, %402 ]
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %366, label %410

410:                                              ; preds = %407
  %411 = load i32, ptr %403, align 4, !tbaa !129
  %412 = add i32 %411, -1
  store i32 %412, ptr %403, align 4, !tbaa !129
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct.VEC_int_base, ptr %403, i64 0, i32 2, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !80
  %416 = load ptr, ptr %24, align 8, !tbaa !97
  %417 = lshr i32 %415, 6
  %418 = zext nneg i32 %417 to i64
  %419 = getelementptr inbounds %struct.simple_bitmap_def, ptr %416, i64 0, i32 3, i64 %418
  %420 = load i64, ptr %419, align 8, !tbaa !158
  %421 = and i32 %415, 63
  %422 = zext nneg i32 %421 to i64
  %423 = shl nuw i64 1, %422
  %424 = and i64 %423, %420
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %686, label %426

426:                                              ; preds = %410
  %427 = load ptr, ptr %18, align 8, !tbaa !94
  %428 = icmp eq ptr %427, null
  br label %429

429:                                              ; preds = %426, %455
  %430 = phi i32 [ %456, %455 ], [ 0, %426 ]
  br i1 %428, label %433, label %431

431:                                              ; preds = %429
  %432 = load i32, ptr %427, align 4, !tbaa !129
  br label %433

433:                                              ; preds = %431, %429
  %434 = phi i32 [ %432, %431 ], [ 0, %429 ]
  %435 = icmp ult i32 %430, %434
  br i1 %435, label %436, label %657

436:                                              ; preds = %433
  %437 = or disjoint i32 %430, 1
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.VEC_int_base, ptr %427, i64 0, i32 2, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !80
  %441 = icmp eq i32 %440, %415
  br i1 %441, label %442, label %455

442:                                              ; preds = %436
  %443 = zext i32 %430 to i64
  %444 = getelementptr inbounds %struct.VEC_int_base, ptr %427, i64 0, i32 2, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !80
  %446 = lshr i32 %445, 6
  %447 = zext nneg i32 %446 to i64
  %448 = getelementptr inbounds %struct.simple_bitmap_def, ptr %416, i64 0, i32 3, i64 %447
  %449 = load i64, ptr %448, align 8, !tbaa !158
  %450 = and i32 %445, 63
  %451 = zext nneg i32 %450 to i64
  %452 = shl nuw i64 1, %451
  %453 = and i64 %452, %449
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %457, label %455

455:                                              ; preds = %442, %436
  %456 = add i32 %430, 2
  br label %429, !llvm.loop !160

457:                                              ; preds = %442
  %458 = load ptr, ptr %26, align 8, !tbaa !98
  %459 = getelementptr inbounds %struct._var_map, ptr %458, i64 0, i32 2
  %460 = load ptr, ptr %459, align 8, !tbaa !161
  %461 = icmp eq ptr %460, null
  br i1 %461, label %466, label %462

462:                                              ; preds = %457
  %463 = sext i32 %415 to i64
  %464 = getelementptr inbounds i32, ptr %460, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !80
  br label %466

466:                                              ; preds = %462, %457
  %467 = phi i32 [ %465, %462 ], [ %415, %457 ]
  %468 = load ptr, ptr %458, align 8, !tbaa !137
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds %struct.partition_def, ptr %468, i64 0, i32 1, i64 %469
  %471 = load i32, ptr %470, align 8, !tbaa !138
  %472 = load ptr, ptr @cfun, align 8, !tbaa !65
  %473 = getelementptr inbounds %struct.function, ptr %472, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !162
  %475 = getelementptr inbounds %struct.gimple_df, ptr %474, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !163
  %477 = zext i32 %471 to i64
  %478 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !65
  %480 = load i64, ptr %479, align 8
  %481 = and i64 %480, 65535
  %482 = icmp eq i64 %481, 141
  br i1 %482, label %483, label %486

483:                                              ; preds = %466
  %484 = getelementptr inbounds %struct.tree_ssa_name, ptr %479, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !76
  br label %486

486:                                              ; preds = %483, %466
  %487 = phi ptr [ %485, %483 ], [ %479, %466 ]
  %488 = getelementptr inbounds %struct.tree_common, ptr %487, i64 0, i32 2
  %489 = load ptr, ptr %488, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %490 = call i32 @promote_decl_mode(ptr noundef %487, ptr noundef nonnull %3) #15
  %491 = call ptr @gen_reg_rtx(i32 noundef %490) #15
  %492 = load i64, ptr %489, align 8
  %493 = trunc i64 %492 to i16
  switch i16 %493, label %500 [
    i16 10, label %494
    i16 12, label %494
  ]

494:                                              ; preds = %486, %486
  %495 = load ptr, ptr %488, align 8, !tbaa !76
  %496 = getelementptr inbounds %struct.tree_common, ptr %495, i64 0, i32 2
  %497 = load ptr, ptr %496, align 8, !tbaa !76
  %498 = getelementptr inbounds %struct.tree_type, ptr %497, i64 0, i32 7
  %499 = load i32, ptr %498, align 8, !tbaa !76
  call void @mark_reg_pointer(ptr noundef %491, i32 noundef %499) #15
  br label %500

500:                                              ; preds = %494, %486
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %501 = getelementptr inbounds %struct.tree_common, ptr %479, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !76
  %503 = load i64, ptr %502, align 8
  %504 = trunc i64 %503 to i32
  %505 = lshr i32 %504, 21
  %506 = and i32 %505, 1
  %507 = load ptr, ptr %37, align 8, !tbaa !128
  %508 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %509 = icmp eq ptr %508, null
  br i1 %509, label %526, label %510

510:                                              ; preds = %500
  %511 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %512 = and i32 %511, 8
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %526, label %514

514:                                              ; preds = %510
  %515 = load ptr, ptr %507, align 8, !tbaa !167
  %516 = getelementptr inbounds %struct.basic_block_def, ptr %515, i64 0, i32 9
  %517 = load i32, ptr %516, align 8, !tbaa !168
  %518 = getelementptr inbounds %struct.edge_def, ptr %507, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !131
  %520 = getelementptr inbounds %struct.basic_block_def, ptr %519, i64 0, i32 9
  %521 = load i32, ptr %520, align 8, !tbaa !168
  %522 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %508, ptr noundef nonnull @.str.6, i32 noundef %517, i32 noundef %521)
  %523 = load ptr, ptr @dump_file, align 8, !tbaa !65
  call void @print_simple_rtl(ptr noundef %523, ptr noundef %491) #15
  %524 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %525 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %524, ptr noundef nonnull @.str.7, i32 noundef %415)
  br label %526

526:                                              ; preds = %514, %510, %500
  %527 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %528 = sext i32 %415 to i64
  %529 = getelementptr inbounds ptr, ptr %527, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !65
  %531 = icmp eq ptr %530, null
  br i1 %531, label %532, label %533

532:                                              ; preds = %526
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 316, ptr noundef nonnull @.str.1) #15
  br label %533

533:                                              ; preds = %532, %526
  call fastcc void @set_location_for_edge(ptr noundef %507)
  %534 = load ptr, ptr @SA, align 8, !tbaa !85
  %535 = getelementptr inbounds %struct._var_map, ptr %534, i64 0, i32 2
  %536 = load ptr, ptr %535, align 8, !tbaa !161
  %537 = icmp eq ptr %536, null
  br i1 %537, label %541, label %538

538:                                              ; preds = %533
  %539 = getelementptr inbounds i32, ptr %536, i64 %528
  %540 = load i32, ptr %539, align 4, !tbaa !80
  br label %541

541:                                              ; preds = %538, %533
  %542 = phi i32 [ %540, %538 ], [ %415, %533 ]
  %543 = load ptr, ptr %534, align 8, !tbaa !137
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds %struct.partition_def, ptr %543, i64 0, i32 1, i64 %544
  %546 = load i32, ptr %545, align 8, !tbaa !138
  %547 = load ptr, ptr @cfun, align 8, !tbaa !65
  %548 = getelementptr inbounds %struct.function, ptr %547, i64 0, i32 3
  %549 = load ptr, ptr %548, align 8, !tbaa !162
  %550 = getelementptr inbounds %struct.gimple_df, ptr %549, i64 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !163
  %552 = zext i32 %546 to i64
  %553 = getelementptr inbounds %struct.VEC_tree_base, ptr %551, i64 0, i32 2, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !65
  %555 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %556 = getelementptr inbounds ptr, ptr %555, i64 %528
  %557 = load ptr, ptr %556, align 8, !tbaa !65
  %558 = getelementptr inbounds %struct.tree_common, ptr %554, i64 0, i32 2
  %559 = load ptr, ptr %558, align 8, !tbaa !76
  %560 = load i64, ptr %559, align 8
  %561 = trunc i64 %560 to i32
  %562 = lshr i32 %561, 21
  %563 = and i32 %562, 1
  %564 = call fastcc ptr @emit_partition_copy(ptr noundef %491, ptr noundef %557, i32 noundef %563, ptr noundef %554)
  call void @insert_insn_on_edge(ptr noundef %564, ptr noundef %507) #15
  br label %565

565:                                              ; preds = %655, %541
  %566 = phi i32 [ 0, %541 ], [ %656, %655 ]
  %567 = load ptr, ptr %18, align 8, !tbaa !94
  %568 = icmp eq ptr %567, null
  br i1 %568, label %571, label %569

569:                                              ; preds = %565
  %570 = load i32, ptr %567, align 4, !tbaa !129
  br label %571

571:                                              ; preds = %569, %565
  %572 = phi i32 [ %570, %569 ], [ 0, %565 ]
  %573 = icmp ult i32 %566, %572
  br i1 %573, label %574, label %686, !llvm.loop !170

574:                                              ; preds = %571
  %575 = or disjoint i32 %566, 1
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds %struct.VEC_int_base, ptr %567, i64 0, i32 2, i64 %576
  %578 = load i32, ptr %577, align 4, !tbaa !80
  %579 = icmp eq i32 %578, %415
  br i1 %579, label %580, label %655

580:                                              ; preds = %574
  %581 = zext i32 %566 to i64
  %582 = getelementptr inbounds %struct.VEC_int_base, ptr %567, i64 0, i32 2, i64 %581
  %583 = load i32, ptr %582, align 4, !tbaa !80
  %584 = load ptr, ptr %20, align 8, !tbaa !95
  %585 = lshr exact i32 %566, 1
  %586 = zext nneg i32 %585 to i64
  %587 = getelementptr inbounds %struct.VEC_source_location_base, ptr %584, i64 0, i32 2, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !80
  %589 = load ptr, ptr %24, align 8, !tbaa !97
  %590 = lshr i32 %583, 6
  %591 = zext nneg i32 %590 to i64
  %592 = getelementptr inbounds %struct.simple_bitmap_def, ptr %589, i64 0, i32 3, i64 %591
  %593 = load i64, ptr %592, align 8, !tbaa !158
  %594 = and i32 %583, 63
  %595 = zext nneg i32 %594 to i64
  %596 = shl nuw i64 1, %595
  %597 = and i64 %593, %596
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %655

599:                                              ; preds = %580
  call fastcc void @elim_backward(ptr noundef %8, i32 noundef %583)
  %600 = load ptr, ptr %37, align 8, !tbaa !128
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %602 = icmp eq ptr %601, null
  br i1 %602, label %619, label %603

603:                                              ; preds = %599
  %604 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %605 = and i32 %604, 8
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %619, label %607

607:                                              ; preds = %603
  %608 = load ptr, ptr %600, align 8, !tbaa !167
  %609 = getelementptr inbounds %struct.basic_block_def, ptr %608, i64 0, i32 9
  %610 = load i32, ptr %609, align 8, !tbaa !168
  %611 = getelementptr inbounds %struct.edge_def, ptr %600, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !131
  %613 = getelementptr inbounds %struct.basic_block_def, ptr %612, i64 0, i32 9
  %614 = load i32, ptr %613, align 8, !tbaa !168
  %615 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %601, ptr noundef nonnull @.str.8, i32 noundef %610, i32 noundef %614, i32 noundef %583)
  %616 = load ptr, ptr @dump_file, align 8, !tbaa !65
  call void @print_simple_rtl(ptr noundef %616, ptr noundef %491) #15
  %617 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %618 = call i32 @fputc(i32 10, ptr %617)
  br label %619

619:                                              ; preds = %607, %603, %599
  %620 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %621 = sext i32 %583 to i64
  %622 = getelementptr inbounds ptr, ptr %620, i64 %621
  %623 = load ptr, ptr %622, align 8, !tbaa !65
  %624 = icmp eq ptr %623, null
  br i1 %624, label %625, label %626

625:                                              ; preds = %619
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 280, ptr noundef nonnull @.str.1) #15
  br label %626

626:                                              ; preds = %625, %619
  call fastcc void @set_location_for_edge(ptr noundef %600)
  %627 = icmp eq i32 %588, 0
  br i1 %627, label %629, label %628

628:                                              ; preds = %626
  call void @set_curr_insn_source_location(i32 noundef %588) #15
  br label %629

629:                                              ; preds = %628, %626
  %630 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %631 = getelementptr inbounds ptr, ptr %630, i64 %621
  %632 = load ptr, ptr %631, align 8, !tbaa !65
  %633 = load ptr, ptr @SA, align 8, !tbaa !85
  %634 = getelementptr inbounds %struct._var_map, ptr %633, i64 0, i32 2
  %635 = load ptr, ptr %634, align 8, !tbaa !161
  %636 = icmp eq ptr %635, null
  br i1 %636, label %640, label %637

637:                                              ; preds = %629
  %638 = getelementptr inbounds i32, ptr %635, i64 %621
  %639 = load i32, ptr %638, align 4, !tbaa !80
  br label %640

640:                                              ; preds = %637, %629
  %641 = phi i32 [ %639, %637 ], [ %583, %629 ]
  %642 = load ptr, ptr %633, align 8, !tbaa !137
  %643 = sext i32 %641 to i64
  %644 = getelementptr inbounds %struct.partition_def, ptr %642, i64 0, i32 1, i64 %643
  %645 = load i32, ptr %644, align 8, !tbaa !138
  %646 = load ptr, ptr @cfun, align 8, !tbaa !65
  %647 = getelementptr inbounds %struct.function, ptr %646, i64 0, i32 3
  %648 = load ptr, ptr %647, align 8, !tbaa !162
  %649 = getelementptr inbounds %struct.gimple_df, ptr %648, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !163
  %651 = zext i32 %645 to i64
  %652 = getelementptr inbounds %struct.VEC_tree_base, ptr %650, i64 0, i32 2, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !65
  %654 = call fastcc ptr @emit_partition_copy(ptr noundef %632, ptr noundef %491, i32 noundef %506, ptr noundef %653)
  call void @insert_insn_on_edge(ptr noundef %654, ptr noundef %600) #15
  br label %655

655:                                              ; preds = %640, %580, %574
  %656 = add i32 %566, 2
  br label %565, !llvm.loop !171

657:                                              ; preds = %433, %680
  %658 = phi i32 [ %681, %680 ], [ 0, %433 ]
  br i1 %428, label %661, label %659

659:                                              ; preds = %657
  %660 = load i32, ptr %427, align 4, !tbaa !129
  br label %661

661:                                              ; preds = %659, %657
  %662 = phi i32 [ %660, %659 ], [ 0, %657 ]
  %663 = icmp ult i32 %658, %662
  br i1 %663, label %664, label %682

664:                                              ; preds = %661
  %665 = zext i32 %658 to i64
  %666 = getelementptr inbounds %struct.VEC_int_base, ptr %427, i64 0, i32 2, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !80
  %668 = icmp eq i32 %667, %415
  br i1 %668, label %669, label %680

669:                                              ; preds = %664
  %670 = getelementptr inbounds %struct.VEC_int_base, ptr %427, i64 0, i32 2, i64 %665
  store i32 -1, ptr %670, align 4, !tbaa !80
  %671 = or disjoint i32 %658, 1
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds %struct.VEC_int_base, ptr %427, i64 0, i32 2, i64 %672
  %674 = load i32, ptr %673, align 4, !tbaa !80
  store i32 -1, ptr %673, align 4, !tbaa !80
  %675 = load ptr, ptr %20, align 8, !tbaa !95
  %676 = lshr exact i32 %658, 1
  %677 = zext nneg i32 %676 to i64
  %678 = getelementptr inbounds %struct.VEC_source_location_base, ptr %675, i64 0, i32 2, i64 %677
  %679 = load i32, ptr %678, align 4, !tbaa !80
  store i32 0, ptr %678, align 4, !tbaa !80
  br label %682

680:                                              ; preds = %664
  %681 = add i32 %658, 2
  br label %657, !llvm.loop !172

682:                                              ; preds = %661, %669
  %683 = phi i32 [ %679, %669 ], [ 0, %661 ]
  %684 = phi i32 [ %674, %669 ], [ -1, %661 ]
  %685 = icmp eq i32 %684, -1
  br i1 %685, label %686, label %687

686:                                              ; preds = %571, %682, %695, %410
  br label %402, !llvm.loop !170

687:                                              ; preds = %682
  %688 = load ptr, ptr %416, align 8, !tbaa !173
  %689 = icmp eq ptr %688, null
  %690 = or i1 %425, %689
  br i1 %690, label %695, label %691

691:                                              ; preds = %687
  %692 = getelementptr inbounds i8, ptr %688, i64 %418
  %693 = load i8, ptr %692, align 1, !tbaa !76
  %694 = add i8 %693, 1
  store i8 %694, ptr %692, align 1, !tbaa !76
  br label %695

695:                                              ; preds = %687, %691
  %696 = load i64, ptr %419, align 8, !tbaa !158
  %697 = or i64 %696, %423
  store i64 %697, ptr %419, align 8, !tbaa !158
  %698 = load ptr, ptr %37, align 8, !tbaa !128
  call fastcc void @insert_partition_copy_on_edge(ptr noundef %698, i32 noundef %415, i32 noundef %684, i32 noundef %683)
  br label %686

699:                                              ; preds = %366, %839
  %700 = load ptr, ptr %14, align 8, !tbaa !92
  %701 = icmp eq ptr %700, null
  br i1 %701, label %704, label %702, !prof !175

702:                                              ; preds = %699
  %703 = load i32, ptr %700, align 8, !tbaa !121
  br label %704

704:                                              ; preds = %702, %699
  %705 = phi i32 [ %703, %702 ], [ 0, %699 ]
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %841, label %707, !prof !176

707:                                              ; preds = %704
  %708 = load i32, ptr %700, align 8, !tbaa !121
  %709 = add i32 %708, -1
  store i32 %709, ptr %700, align 8, !tbaa !121
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds %struct.VEC_tree_base, ptr %700, i64 0, i32 2, i64 %710
  %712 = load ptr, ptr %711, align 8, !tbaa !65
  %713 = load ptr, ptr %12, align 8, !tbaa !91
  %714 = load i32, ptr %713, align 4, !tbaa !129
  %715 = add i32 %714, -1
  store i32 %715, ptr %713, align 4, !tbaa !129
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds %struct.VEC_int_base, ptr %713, i64 0, i32 2, i64 %716
  %718 = load i32, ptr %717, align 4, !tbaa !80
  %719 = load ptr, ptr %16, align 8, !tbaa !93
  %720 = load i32, ptr %719, align 4, !tbaa !124
  %721 = add i32 %720, -1
  store i32 %721, ptr %719, align 4, !tbaa !124
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds %struct.VEC_source_location_base, ptr %719, i64 0, i32 2, i64 %722
  %724 = load i32, ptr %723, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %725 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %726 = icmp eq ptr %725, null
  br i1 %726, label %742, label %727, !prof !177

727:                                              ; preds = %707
  %728 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %729 = and i32 %728, 8
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %742, label %731

731:                                              ; preds = %727
  %732 = load ptr, ptr %80, align 8, !tbaa !167
  %733 = getelementptr inbounds %struct.basic_block_def, ptr %732, i64 0, i32 9
  %734 = load i32, ptr %733, align 8, !tbaa !168
  %735 = load ptr, ptr %117, align 8, !tbaa !131
  %736 = getelementptr inbounds %struct.basic_block_def, ptr %735, i64 0, i32 9
  %737 = load i32, ptr %736, align 8, !tbaa !168
  %738 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %725, ptr noundef nonnull @.str.11, i32 noundef %734, i32 noundef %737, i32 noundef %718)
  %739 = load ptr, ptr @dump_file, align 8, !tbaa !65
  call void @print_generic_expr(ptr noundef %739, ptr noundef %712, i32 noundef 2) #15
  %740 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %741 = call i32 @fputc(i32 10, ptr %740)
  br label %742

742:                                              ; preds = %731, %727, %707
  %743 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %744 = sext i32 %718 to i64
  %745 = getelementptr inbounds ptr, ptr %743, i64 %744
  %746 = load ptr, ptr %745, align 8, !tbaa !65
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %749, !prof !149

748:                                              ; preds = %742
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 225, ptr noundef nonnull @.str.1) #15
  br label %749

749:                                              ; preds = %748, %742
  call fastcc void @set_location_for_edge(ptr noundef %80)
  %750 = icmp eq i32 %724, 0
  br i1 %750, label %752, label %751, !prof !178

751:                                              ; preds = %749
  call void @set_curr_insn_source_location(i32 noundef %724) #15
  br label %752

752:                                              ; preds = %751, %749
  call void @start_sequence() #15
  %753 = load ptr, ptr @SA, align 8, !tbaa !85
  %754 = getelementptr inbounds %struct._var_map, ptr %753, i64 0, i32 2
  %755 = load ptr, ptr %754, align 8, !tbaa !161
  %756 = icmp eq ptr %755, null
  br i1 %756, label %760, label %757, !prof !149

757:                                              ; preds = %752
  %758 = getelementptr inbounds i32, ptr %755, i64 %744
  %759 = load i32, ptr %758, align 4, !tbaa !80
  br label %760

760:                                              ; preds = %757, %752
  %761 = phi i32 [ %759, %757 ], [ %718, %752 ]
  %762 = load ptr, ptr %753, align 8, !tbaa !137
  %763 = sext i32 %761 to i64
  %764 = getelementptr inbounds %struct.partition_def, ptr %762, i64 0, i32 1, i64 %763
  %765 = load i32, ptr %764, align 8, !tbaa !138
  %766 = load ptr, ptr @cfun, align 8, !tbaa !65
  %767 = getelementptr inbounds %struct.function, ptr %766, i64 0, i32 3
  %768 = load ptr, ptr %767, align 8, !tbaa !162
  %769 = getelementptr inbounds %struct.gimple_df, ptr %768, i64 0, i32 2
  %770 = load ptr, ptr %769, align 8, !tbaa !163
  %771 = zext i32 %765 to i64
  %772 = getelementptr inbounds %struct.VEC_tree_base, ptr %770, i64 0, i32 2, i64 %771
  %773 = load ptr, ptr %772, align 8, !tbaa !65
  %774 = getelementptr inbounds %struct.tree_ssa_name, ptr %773, i64 0, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !76
  %776 = getelementptr inbounds %struct.tree_common, ptr %712, i64 0, i32 2
  %777 = load ptr, ptr %776, align 8, !tbaa !76
  %778 = load i64, ptr %777, align 8
  %779 = and i64 %778, 65535
  %780 = icmp eq i64 %779, 14
  br i1 %780, label %781, label %783, !prof !149

781:                                              ; preds = %760
  %782 = call i32 @vector_type_mode(ptr noundef nonnull %777) #15
  br label %788

783:                                              ; preds = %760
  %784 = getelementptr inbounds %struct.tree_type, ptr %777, i64 0, i32 6
  %785 = load i32, ptr %784, align 4
  %786 = lshr i32 %785, 16
  %787 = and i32 %786, 255
  br label %788

788:                                              ; preds = %783, %781
  %789 = phi i32 [ %782, %781 ], [ %787, %783 ]
  %790 = call i32 @promote_decl_mode(ptr noundef %775, ptr noundef nonnull %2) #15
  %791 = getelementptr inbounds %struct.tree_common, ptr %775, i64 0, i32 2
  %792 = load ptr, ptr %791, align 8, !tbaa !76
  %793 = load i64, ptr %792, align 8
  %794 = and i64 %793, 65535
  %795 = icmp eq i64 %794, 14
  br i1 %795, label %796, label %798, !prof !149

796:                                              ; preds = %788
  %797 = call i32 @vector_type_mode(ptr noundef nonnull %792) #15
  br label %803

798:                                              ; preds = %788
  %799 = getelementptr inbounds %struct.tree_type, ptr %792, i64 0, i32 6
  %800 = load i32, ptr %799, align 4
  %801 = lshr i32 %800, 16
  %802 = and i32 %801, 255
  br label %803

803:                                              ; preds = %798, %796
  %804 = phi i32 [ %797, %796 ], [ %802, %798 ]
  %805 = icmp eq i32 %789, %804
  br i1 %805, label %807, label %806, !prof !177

806:                                              ; preds = %803
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 237, ptr noundef nonnull @.str.1) #15
  br label %807

807:                                              ; preds = %806, %803
  %808 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %809 = getelementptr inbounds ptr, ptr %808, i64 %744
  %810 = load ptr, ptr %809, align 8, !tbaa !65
  %811 = load i32, ptr %810, align 8
  %812 = lshr i32 %811, 16
  %813 = and i32 %812, 255
  %814 = icmp eq i32 %790, %813
  br i1 %814, label %816, label %815, !prof !177

815:                                              ; preds = %807
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 238, ptr noundef nonnull @.str.1) #15
  br label %816

816:                                              ; preds = %815, %807
  %817 = icmp eq i32 %789, %790
  br i1 %817, label %822, label %818, !prof !177

818:                                              ; preds = %816
  %819 = call ptr @expand_expr_real(ptr noundef %712, ptr noundef null, i32 noundef %789, i32 noundef 0, ptr noundef null) #15
  %820 = load i32, ptr %2, align 4, !tbaa !80
  %821 = call ptr @convert_modes(i32 noundef %790, i32 noundef %789, ptr noundef %819, i32 noundef %820) #15
  br label %831

822:                                              ; preds = %816
  %823 = icmp eq i32 %789, 1
  %824 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %825 = getelementptr inbounds ptr, ptr %824, i64 %744
  %826 = load ptr, ptr %825, align 8, !tbaa !65
  br i1 %823, label %827, label %829, !prof !149

827:                                              ; preds = %822
  %828 = call ptr @store_expr(ptr noundef %712, ptr noundef %826, i32 noundef 0, i8 noundef zeroext 0) #15
  br label %831

829:                                              ; preds = %822
  %830 = call ptr @expand_expr_real(ptr noundef %712, ptr noundef %826, i32 noundef %790, i32 noundef 0, ptr noundef null) #15
  br label %831

831:                                              ; preds = %829, %827, %818
  %832 = phi ptr [ %821, %818 ], [ %826, %827 ], [ %830, %829 ]
  %833 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %834 = getelementptr inbounds ptr, ptr %833, i64 %744
  %835 = load ptr, ptr %834, align 8, !tbaa !65
  %836 = icmp eq ptr %832, %835
  br i1 %836, label %839, label %837, !prof !149

837:                                              ; preds = %831
  %838 = call ptr @emit_move_insn(ptr noundef %835, ptr noundef %832) #15
  br label %839

839:                                              ; preds = %837, %831
  %840 = call ptr @get_insns() #15
  call void @end_sequence() #15
  call void @insert_insn_on_edge(ptr noundef %840, ptr noundef %80) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %699, !llvm.loop !179

841:                                              ; preds = %704, %99
  %842 = load ptr, ptr %39, align 8, !tbaa !65
  %843 = icmp eq ptr %842, null
  br i1 %843, label %846, label %844, !prof !120

844:                                              ; preds = %841
  %845 = load i32, ptr %842, align 8, !tbaa !117
  br label %846

846:                                              ; preds = %844, %841
  %847 = phi i32 [ %845, %844 ], [ 0, %841 ]
  %848 = icmp ult i32 %65, %847
  br i1 %848, label %850, label %849, !prof !123

849:                                              ; preds = %846
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %850

850:                                              ; preds = %846, %849
  %851 = add i32 %65, 1
  br label %64, !llvm.loop !180

852:                                              ; preds = %79
  %853 = load i32, ptr %40, align 8, !tbaa !107
  %854 = and i32 %853, 512
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %857, label %856, !prof !181

856:                                              ; preds = %852
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #15
  br label %857

857:                                              ; preds = %852, %856
  %858 = load ptr, ptr %46, align 8, !tbaa !76
  %859 = getelementptr inbounds %struct.gimple_bb_info, ptr %858, i64 0, i32 1
  store ptr null, ptr %859, align 8, !tbaa !110
  br label %860

860:                                              ; preds = %919, %857
  %861 = phi i32 [ %920, %919 ], [ 0, %857 ]
  br label %862

862:                                              ; preds = %860, %906
  %863 = load ptr, ptr %39, align 8, !tbaa !65
  %864 = icmp eq ptr %863, null
  br i1 %864, label %867, label %865, !prof !116

865:                                              ; preds = %862
  %866 = load i32, ptr %863, align 8, !tbaa !117
  br label %867

867:                                              ; preds = %865, %862
  %868 = phi i32 [ %866, %865 ], [ 0, %862 ]
  %869 = icmp eq i32 %868, %861
  br i1 %869, label %874, label %870, !prof !119

870:                                              ; preds = %867
  %871 = zext i32 %861 to i64
  %872 = getelementptr inbounds %struct.VEC_edge_base, ptr %863, i64 0, i32 2, i64 %871
  %873 = load ptr, ptr %872, align 8, !tbaa !65
  br label %874

874:                                              ; preds = %867, %870
  %875 = phi ptr [ %873, %870 ], [ null, %867 ]
  %876 = icmp eq ptr %875, null
  br i1 %876, label %921, label %877, !prof !119

877:                                              ; preds = %874
  %878 = getelementptr inbounds %struct.edge_def, ptr %875, i64 0, i32 2
  %879 = load ptr, ptr %878, align 8, !tbaa !76
  %880 = icmp eq ptr %879, null
  br i1 %880, label %911, label %881, !prof !182

881:                                              ; preds = %877
  %882 = getelementptr inbounds %struct.edge_def, ptr %875, i64 0, i32 7
  %883 = load i32, ptr %882, align 8, !tbaa !126
  %884 = and i32 %883, 8
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %911, label %886, !prof !177

886:                                              ; preds = %881
  %887 = getelementptr inbounds %struct.edge_def, ptr %875, i64 0, i32 1
  %888 = load ptr, ptr %887, align 8, !tbaa !131
  %889 = load ptr, ptr %888, align 8, !tbaa !183
  %890 = icmp eq ptr %889, null
  br i1 %890, label %895, label %891

891:                                              ; preds = %886
  %892 = load i32, ptr %889, align 8, !tbaa !117
  %893 = icmp eq i32 %892, 1
  %894 = zext i1 %893 to i8
  br label %895

895:                                              ; preds = %886, %891
  %896 = phi i8 [ %894, %891 ], [ 0, %886 ]
  %897 = icmp eq i8 %896, 0
  br i1 %897, label %898, label %911

898:                                              ; preds = %895
  store ptr null, ptr %878, align 8, !tbaa !76
  %899 = call ptr @split_edge(ptr noundef nonnull %875) #15
  %900 = load ptr, ptr %899, align 8, !tbaa !183
  %901 = icmp eq ptr %900, null
  br i1 %901, label %905, label %902

902:                                              ; preds = %898
  %903 = load i32, ptr %900, align 8, !tbaa !117
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %906, label %905

905:                                              ; preds = %898, %902
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %906

906:                                              ; preds = %902, %905
  %907 = load ptr, ptr %899, align 8, !tbaa !183
  %908 = getelementptr inbounds %struct.VEC_edge_base, ptr %907, i64 0, i32 2, i64 0
  %909 = load ptr, ptr %908, align 8, !tbaa !65
  %910 = getelementptr inbounds %struct.edge_def, ptr %909, i64 0, i32 2
  store ptr %879, ptr %910, align 8, !tbaa !76
  br label %862, !llvm.loop !184

911:                                              ; preds = %877, %881, %895
  %912 = icmp eq ptr %863, null
  br i1 %912, label %915, label %913, !prof !120

913:                                              ; preds = %911
  %914 = load i32, ptr %863, align 8, !tbaa !117
  br label %915

915:                                              ; preds = %913, %911
  %916 = phi i32 [ %914, %913 ], [ 0, %911 ]
  %917 = icmp ult i32 %861, %916
  br i1 %917, label %919, label %918, !prof !123

918:                                              ; preds = %915
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %919

919:                                              ; preds = %915, %918
  %920 = add i32 %861, 1
  br label %860, !llvm.loop !184

921:                                              ; preds = %874, %59
  %922 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %923 = load ptr, ptr %922, align 8, !tbaa !103
  %924 = load ptr, ptr @cfun, align 8, !tbaa !65
  %925 = getelementptr inbounds %struct.function, ptr %924, i64 0, i32 1
  %926 = load ptr, ptr %925, align 8, !tbaa !99
  %927 = getelementptr inbounds %struct.control_flow_graph, ptr %926, i64 0, i32 1
  %928 = load ptr, ptr %927, align 8, !tbaa !105
  %929 = icmp eq ptr %923, %928
  br i1 %929, label %930, label %38, !prof !185, !llvm.loop !186

930:                                              ; preds = %921, %1
  %931 = load ptr, ptr %24, align 8, !tbaa !97
  %932 = load ptr, ptr %931, align 8, !tbaa !173
  call void @free(ptr noundef %932)
  %933 = load ptr, ptr %24, align 8, !tbaa !97
  call void @free(ptr noundef %933)
  %934 = load ptr, ptr %22, align 8, !tbaa !65
  %935 = icmp eq ptr %934, null
  br i1 %935, label %937, label %936, !prof !187

936:                                              ; preds = %930
  call void @free(ptr noundef %934)
  br label %937

937:                                              ; preds = %936, %930
  store ptr null, ptr %22, align 8, !tbaa !65
  %938 = load ptr, ptr %18, align 8, !tbaa !65
  %939 = icmp eq ptr %938, null
  br i1 %939, label %941, label %940, !prof !187

940:                                              ; preds = %937
  call void @free(ptr noundef %938)
  br label %941

941:                                              ; preds = %940, %937
  store ptr null, ptr %18, align 8, !tbaa !65
  %942 = load ptr, ptr %14, align 8, !tbaa !65
  %943 = icmp eq ptr %942, null
  br i1 %943, label %945, label %944, !prof !187

944:                                              ; preds = %941
  call void @free(ptr noundef %942)
  br label %945

945:                                              ; preds = %944, %941
  store ptr null, ptr %14, align 8, !tbaa !65
  %946 = load ptr, ptr %12, align 8, !tbaa !65
  %947 = icmp eq ptr %946, null
  br i1 %947, label %949, label %948, !prof !187

948:                                              ; preds = %945
  call void @free(ptr noundef %946)
  br label %949

949:                                              ; preds = %948, %945
  store ptr null, ptr %12, align 8, !tbaa !65
  %950 = load ptr, ptr %10, align 8, !tbaa !65
  %951 = icmp eq ptr %950, null
  br i1 %951, label %953, label %952, !prof !187

952:                                              ; preds = %949
  call void @free(ptr noundef %950)
  br label %953

953:                                              ; preds = %952, %949
  store ptr null, ptr %10, align 8, !tbaa !65
  %954 = load ptr, ptr %16, align 8, !tbaa !65
  %955 = icmp eq ptr %954, null
  br i1 %955, label %957, label %956, !prof !187

956:                                              ; preds = %953
  call void @free(ptr noundef %954)
  br label %957

957:                                              ; preds = %956, %953
  store ptr null, ptr %16, align 8, !tbaa !65
  %958 = load ptr, ptr %20, align 8, !tbaa !65
  %959 = icmp eq ptr %958, null
  br i1 %959, label %961, label %960, !prof !187

960:                                              ; preds = %957
  call void @free(ptr noundef %958)
  br label %961

961:                                              ; preds = %957, %960
  store ptr null, ptr %20, align 8, !tbaa !65
  call void @free(ptr noundef %8)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @finish_out_of_ssa(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  tail call void @free(ptr noundef %3)
  %4 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !187

7:                                                ; preds = %1
  tail call void @bitmap_obstack_free(ptr noundef nonnull %5) #15
  store ptr null, ptr %4, align 8, !tbaa !188
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !85
  tail call void @delete_var_map(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  tail call void @bitmap_obstack_free(ptr noundef %11) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @delete_var_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rewrite_out_of_ssa(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %288, label %15, !prof !106

15:                                               ; preds = %1, %279
  %16 = phi ptr [ %281, %279 ], [ %11, %1 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  store ptr %17, ptr %17, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %16) #15
  %18 = load ptr, ptr %4, align 8, !tbaa.struct !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %279, label %20, !prof !191

20:                                               ; preds = %15, %275
  %21 = phi ptr [ %277, %275 ], [ %18, %15 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = call zeroext i8 @is_gimple_reg(ptr noundef %24) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %275, label %27, !prof !192

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = getelementptr inbounds %struct.gimple_statement_phi, ptr %22, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !76
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %275, label %33, !prof !193

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %22, i64 0, i32 1
  %35 = getelementptr inbounds %struct.gimple_statement_base, ptr %22, i64 0, i32 4
  br label %36

36:                                               ; preds = %33, %270
  %37 = phi i64 [ 0, %33 ], [ %271, %270 ]
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr %34, align 8, !tbaa !76
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %41, label %42, !prof !141

41:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %42

42:                                               ; preds = %41, %36
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %22, i64 0, i32 4, i64 %37, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !143
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = load ptr, ptr %35, align 8, !tbaa !76
  %47 = load ptr, ptr %46, align 8, !tbaa !183, !nonnull !194, !noundef !194
  %48 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 %37
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !126
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %270, label %54, !prof !136

54:                                               ; preds = %42
  %55 = load i64, ptr %45, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %58, label %138

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = icmp eq ptr %60, %29
  br i1 %61, label %62, label %138

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !76
  %65 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  %67 = icmp eq ptr %66, %16
  br i1 %67, label %68, label %270

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 5
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 5, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !195
  %72 = icmp eq ptr %71, %69
  br i1 %72, label %270, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 1
  br label %75

75:                                               ; preds = %73, %132
  %76 = phi ptr [ %71, %73 ], [ %136, %132 ]
  %77 = phi ptr [ %71, %73 ], [ %134, %132 ]
  %78 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %76, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !76
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %130, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.gimple_statement_base, ptr %79, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !76
  %86 = icmp eq ptr %85, %16
  br i1 %86, label %87, label %130

87:                                               ; preds = %83
  %88 = icmp eq i32 %81, 16
  br i1 %88, label %130, label %89

89:                                               ; preds = %87
  %90 = load i32, ptr %64, align 8
  %91 = and i32 %90, 255
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %130, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %17, align 8, !tbaa !190
  %95 = icmp eq ptr %94, null
  br i1 %95, label %124, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  store ptr null, ptr %17, align 8, !tbaa !190
  %98 = load i32, ptr %97, align 8, !tbaa !107, !noalias !196
  %99 = and i32 %98, 512
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !76, !noalias !196
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %103, align 8, !tbaa !199, !noalias !196
  br label %107

107:                                              ; preds = %105, %101, %96
  %108 = phi ptr [ %106, %105 ], [ null, %101 ], [ null, %96 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %108, align 8, !tbaa !113, !noalias !196
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi ptr [ %111, %110 ], [ null, %107 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %112, %115
  %116 = phi i32 [ %120, %115 ], [ 0, %112 ]
  %117 = phi ptr [ %122, %115 ], [ %113, %112 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !134
  %119 = getelementptr inbounds %struct.gimple_statement_base, ptr %118, i64 0, i32 1
  store i32 %116, ptr %119, align 4, !tbaa !76
  %120 = add i32 %116, 1
  %121 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %117, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !155
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %115, !llvm.loop !200

124:                                              ; preds = %115, %112, %93
  %125 = load i32, ptr %74, align 4, !tbaa !76
  %126 = getelementptr inbounds %struct.gimple_statement_base, ptr %79, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !76
  %128 = icmp ult i32 %125, %127
  %129 = zext i1 %128 to i32
  br label %130

130:                                              ; preds = %124, %89, %87, %83, %75
  %131 = phi i32 [ 4, %75 ], [ 1, %83 ], [ 4, %87 ], [ 1, %89 ], [ %129, %124 ]
  switch i32 %131, label %138 [
    i32 0, label %132
    i32 4, label %132
  ]

132:                                              ; preds = %130, %130
  %133 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %77, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !195
  %135 = icmp eq ptr %134, %69
  %136 = select i1 %135, ptr null, ptr %134
  %137 = icmp eq ptr %134, %69
  br i1 %137, label %270, label %75, !llvm.loop !201

138:                                              ; preds = %130, %58, %54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %139 = load ptr, ptr %35, align 8, !tbaa !76
  %140 = load ptr, ptr %139, align 8, !tbaa !183, !nonnull !194, !noundef !194
  %141 = getelementptr inbounds %struct.VEC_edge_base, ptr %140, i64 0, i32 2, i64 %37
  %142 = load ptr, ptr %141, align 8, !tbaa !65
  %143 = load ptr, ptr %142, align 8, !tbaa !167
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 13
  %145 = load i32, ptr %144, align 8, !tbaa !107, !noalias !202
  %146 = and i32 %145, 512
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !76, !noalias !202
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %150, align 8, !tbaa !199, !noalias !202
  br label %154

154:                                              ; preds = %152, %148, %138
  %155 = phi ptr [ %153, %152 ], [ null, %148 ], [ null, %138 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.gimple_seq_d, ptr %155, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !205, !noalias !202
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi ptr [ %159, %157 ], [ null, %154 ]
  %162 = getelementptr inbounds i8, ptr %5, i64 8
  %163 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %161, ptr %5, align 8, !tbaa.struct !132
  store ptr %155, ptr %162, align 8, !tbaa.struct !206
  store ptr %143, ptr %163, align 8, !tbaa.struct !207
  %164 = icmp eq ptr %161, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %161, align 8, !tbaa !134
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi ptr [ null, %160 ], [ %166, %165 ]
  %169 = icmp eq ptr %168, null
  br i1 %169, label %181, label %170

170:                                              ; preds = %167
  %171 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %168) #15
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %170
  %174 = load i64, ptr %45, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 141
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !76
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %269, label %181

181:                                              ; preds = %177, %173, %170, %167
  %182 = load i32, ptr %34, align 8, !tbaa !76
  %183 = icmp ult i32 %182, %38
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %185

185:                                              ; preds = %184, %181
  %186 = load ptr, ptr %43, align 8, !tbaa !143
  %187 = load ptr, ptr %186, align 8, !tbaa !65
  %188 = call ptr @gimple_build_assign_stat(ptr noundef %29, ptr noundef %187) #15
  %189 = load ptr, ptr @cfun, align 8, !tbaa !65
  %190 = call ptr @make_ssa_name_fn(ptr noundef %189, ptr noundef %29, ptr noundef %188) #15
  %191 = load i32, ptr %188, align 8
  %192 = and i32 %191, 255
  %193 = add nsw i32 %192, -10
  %194 = icmp ult i32 %193, -9
  br i1 %194, label %199, label %195

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.gimple_statement_base, ptr %188, i64 0, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !76
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195, %185
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.1) #15
  br label %200

200:                                              ; preds = %199, %195
  %201 = load i32, ptr %188, align 8
  %202 = and i32 %201, 255
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !80
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !158
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #15
  br label %211

211:                                              ; preds = %210, %200
  %212 = getelementptr inbounds i8, ptr %188, i64 %208
  store ptr %190, ptr %212, align 8, !tbaa !65
  %213 = icmp eq ptr %190, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = load i64, ptr %190, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 141
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.tree_ssa_name, ptr %190, i64 0, i32 2
  store ptr %188, ptr %219, align 8, !tbaa !76
  br label %220

220:                                              ; preds = %218, %214, %211
  %221 = load i32, ptr %34, align 8, !tbaa !76
  %222 = icmp ult i32 %221, %38
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %224

224:                                              ; preds = %223, %220
  %225 = getelementptr inbounds %struct.gimple_statement_phi, ptr %22, i64 0, i32 4, i64 %37, i32 2
  %226 = load i32, ptr %225, align 8, !tbaa !145
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = load i32, ptr %34, align 8, !tbaa !76
  %230 = icmp ult i32 %229, %38
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %232

232:                                              ; preds = %231, %228
  %233 = load i32, ptr %225, align 8, !tbaa !145
  %234 = getelementptr inbounds %struct.gimple_statement_base, ptr %188, i64 0, i32 2
  store i32 %233, ptr %234, align 8, !tbaa !76
  br label %235

235:                                              ; preds = %232, %224
  br i1 %169, label %240, label %236

236:                                              ; preds = %235
  %237 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %168) #15
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef nonnull %188, i32 noundef 0) #15
  br label %241

240:                                              ; preds = %236, %235
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef nonnull %188, i32 noundef 0) #15
  br label %241

241:                                              ; preds = %240, %239
  %242 = load i32, ptr %34, align 8, !tbaa !76
  %243 = icmp ult i32 %242, %38
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %245

245:                                              ; preds = %244, %241
  %246 = getelementptr inbounds %struct.gimple_statement_phi, ptr %22, i64 0, i32 4, i64 %37
  %247 = load ptr, ptr %246, align 8, !tbaa !208
  %248 = icmp eq ptr %247, null
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %246, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !195
  %252 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %247, i64 0, i32 1
  store ptr %251, ptr %252, align 8, !tbaa !195
  %253 = load ptr, ptr %250, align 8, !tbaa !195
  store ptr %247, ptr %253, align 8, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %246, i8 0, i64 16, i1 false)
  br label %254

254:                                              ; preds = %249, %245
  %255 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %246, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !143
  store ptr %190, ptr %256, align 8, !tbaa !65
  br i1 %213, label %261, label %257

257:                                              ; preds = %254
  %258 = load i64, ptr %190, align 8
  %259 = and i64 %258, 65535
  %260 = icmp eq i64 %259, 141
  br i1 %260, label %262, label %261

261:                                              ; preds = %257, %254
  store ptr null, ptr %246, align 8, !tbaa !208
  br label %268

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.tree_ssa_name, ptr %190, i64 0, i32 5
  store ptr %263, ptr %246, align 8, !tbaa !208
  %264 = getelementptr inbounds %struct.tree_ssa_name, ptr %190, i64 0, i32 5, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !195
  %266 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %246, i64 0, i32 1
  store ptr %265, ptr %266, align 8, !tbaa !195
  %267 = load ptr, ptr %264, align 8, !tbaa !195
  store ptr %246, ptr %267, align 8, !tbaa !208
  store ptr %246, ptr %264, align 8, !tbaa !195
  br label %268

268:                                              ; preds = %262, %261
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %270

269:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %270

270:                                              ; preds = %132, %68, %62, %269, %268, %42
  %271 = add nuw nsw i64 %37, 1
  %272 = load i32, ptr %30, align 4, !tbaa !76
  %273 = zext i32 %272 to i64
  %274 = icmp ult i64 %271, %273
  br i1 %274, label %36, label %275, !prof !209, !llvm.loop !210

275:                                              ; preds = %270, %27, %20
  %276 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !155
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %20, !prof !211, !llvm.loop !212

279:                                              ; preds = %275, %15
  store ptr null, ptr %17, align 8, !tbaa !190
  %280 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %281 = load ptr, ptr %280, align 8, !tbaa !103
  %282 = load ptr, ptr @cfun, align 8, !tbaa !65
  %283 = getelementptr inbounds %struct.function, ptr %282, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !99
  %285 = getelementptr inbounds %struct.control_flow_graph, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !105
  %287 = icmp eq ptr %281, %286
  br i1 %287, label %288, label %15, !prof !185, !llvm.loop !213

288:                                              ; preds = %279, %1
  %289 = phi ptr [ %6, %1 ], [ %282, %279 ]
  %290 = getelementptr inbounds %struct.function, ptr %289, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %291 = load ptr, ptr %290, align 8, !tbaa !99
  %292 = load ptr, ptr %291, align 8, !tbaa !101
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !103
  %295 = load ptr, ptr @cfun, align 8, !tbaa !65
  %296 = getelementptr inbounds %struct.function, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !99
  %298 = getelementptr inbounds %struct.control_flow_graph, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !105
  %300 = icmp eq ptr %294, %299
  br i1 %300, label %345, label %310, !prof !106

301:                                              ; preds = %342, %310
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %311, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !103
  %304 = load ptr, ptr @cfun, align 8, !tbaa !65
  %305 = getelementptr inbounds %struct.function, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !99
  %307 = getelementptr inbounds %struct.control_flow_graph, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !105
  %309 = icmp eq ptr %303, %308
  br i1 %309, label %345, label %310, !prof !185, !llvm.loop !214

310:                                              ; preds = %288, %301
  %311 = phi ptr [ %303, %301 ], [ %294, %288 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %311) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %312 = load ptr, ptr %2, align 8
  %313 = icmp eq ptr %312, null
  br i1 %313, label %301, label %314, !prof !191

314:                                              ; preds = %310, %342
  %315 = phi ptr [ %343, %342 ], [ %312, %310 ]
  %316 = load ptr, ptr %315, align 8, !tbaa !134
  %317 = getelementptr inbounds %struct.gimple_statement_phi, ptr %316, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !76
  %319 = getelementptr inbounds %struct.tree_ssa_name, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !76
  %321 = call zeroext i8 @is_gimple_reg(ptr noundef %320) #15
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %324, !prof !192

323:                                              ; preds = %314
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  br label %342

324:                                              ; preds = %314
  %325 = getelementptr inbounds %struct.tree_ssa_name, ptr %318, i64 0, i32 5
  %326 = getelementptr inbounds %struct.tree_ssa_name, ptr %318, i64 0, i32 5, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !195
  %328 = icmp eq ptr %325, %327
  br i1 %328, label %334, label %329, !prof !215

329:                                              ; preds = %324
  %330 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !80
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332, !prof !216

332:                                              ; preds = %329
  %333 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %325) #15
  br label %334

334:                                              ; preds = %332, %329, %324
  %335 = phi i8 [ %333, %332 ], [ 1, %324 ], [ 0, %329 ]
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %338, label %337, !prof !216

337:                                              ; preds = %334
  call fastcc void @remove_gimple_phi_args(ptr noundef %316)
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  br label %342

338:                                              ; preds = %334
  %339 = load ptr, ptr %2, align 8, !tbaa !217
  %340 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !155
  store ptr %341, ptr %2, align 8, !tbaa !217
  br label %342

342:                                              ; preds = %338, %337, %323
  %343 = load ptr, ptr %2, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %301, label %314, !prof !211, !llvm.loop !219

345:                                              ; preds = %301, %288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %347 = icmp eq ptr %346, null
  br i1 %347, label %354, label %348, !prof !220

348:                                              ; preds = %345
  %349 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %350 = and i32 %349, 8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %348
  %353 = and i32 %349, -9
  call void @gimple_dump_cfg(ptr noundef nonnull %346, i32 noundef %353) #15
  br label %354

354:                                              ; preds = %352, %348, %345
  %355 = load i32, ptr @flag_tree_ter, align 4, !tbaa !80
  %356 = call ptr @coalesce_ssa_name() #15
  call void @partition_view_normal(ptr noundef %356, i8 noundef zeroext 0) #15
  %357 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %358 = icmp eq ptr %357, null
  br i1 %358, label %366, label %359, !prof !220

359:                                              ; preds = %354
  %360 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %361 = and i32 %360, 8
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %359
  %364 = call i64 @fwrite(ptr nonnull @.str.13, i64 18, i64 1, ptr nonnull %357)
  %365 = load ptr, ptr @dump_file, align 8, !tbaa !65
  call void @dump_var_map(ptr noundef %365, ptr noundef %356) #15
  br label %366

366:                                              ; preds = %363, %359, %354
  %367 = and i32 %355, 255
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %380, label %369, !prof !187

369:                                              ; preds = %366
  %370 = call ptr @find_replaceable_exprs(ptr noundef %356) #15
  %371 = icmp ne ptr %370, null
  %372 = load ptr, ptr @dump_file, align 8
  %373 = icmp ne ptr %372, null
  %374 = select i1 %371, i1 %373, i1 false, !prof !220
  br i1 %374, label %375, label %380, !prof !187

375:                                              ; preds = %369
  %376 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %377 = and i32 %376, 8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %375
  call void @dump_replaceable_exprs(ptr noundef nonnull %372, ptr noundef nonnull %370) #15
  br label %380

380:                                              ; preds = %379, %375, %369, %366
  %381 = phi ptr [ %370, %379 ], [ %370, %375 ], [ %370, %369 ], [ null, %366 ]
  store ptr %356, ptr %0, align 8, !tbaa !85
  %382 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 1
  store ptr %381, ptr %382, align 8, !tbaa !188
  %383 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %384 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 3
  store ptr %383, ptr %384, align 8, !tbaa !189
  %385 = getelementptr inbounds %struct._var_map, ptr %356, i64 0, i32 1
  br label %386

386:                                              ; preds = %431, %380
  %387 = phi i64 [ %432, %431 ], [ 1, %380 ]
  %388 = load ptr, ptr @cfun, align 8, !tbaa !65
  %389 = getelementptr inbounds %struct.function, ptr %388, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !162
  %391 = getelementptr inbounds %struct.gimple_df, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !163
  %393 = icmp eq ptr %392, null
  br i1 %393, label %396, label %394, !prof !221

394:                                              ; preds = %386
  %395 = load i32, ptr %392, align 8, !tbaa !121
  br label %396

396:                                              ; preds = %394, %386
  %397 = phi i32 [ %395, %394 ], [ 0, %386 ]
  %398 = zext i32 %397 to i64
  %399 = icmp ult i64 %387, %398
  br i1 %399, label %400, label %433, !prof !222

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.VEC_tree_base, ptr %392, i64 0, i32 2, i64 %387
  %402 = load ptr, ptr %401, align 8, !tbaa !65
  %403 = icmp eq ptr %402, null
  br i1 %403, label %431, label %404, !prof !223

404:                                              ; preds = %400
  %405 = load i64, ptr %402, align 8
  %406 = and i64 %405, 4294967296
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %431, label %408, !prof !224

408:                                              ; preds = %404
  %409 = and i64 %405, 65535
  %410 = icmp eq i64 %409, 141
  br i1 %410, label %412, label %411, !prof !225

411:                                              ; preds = %408
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 147, ptr noundef nonnull @.str.1) #15
  br label %412

412:                                              ; preds = %411, %408
  %413 = load ptr, ptr %356, align 8, !tbaa !137
  %414 = getelementptr inbounds %struct.tree_ssa_name, ptr %402, i64 0, i32 3
  %415 = load i32, ptr %414, align 8, !tbaa !76
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.partition_def, ptr %413, i64 0, i32 1, i64 %416
  %418 = load i32, ptr %417, align 8, !tbaa !138
  %419 = load ptr, ptr %385, align 8, !tbaa !140
  %420 = icmp eq ptr %419, null
  br i1 %420, label %425, label %421, !prof !226

421:                                              ; preds = %412
  %422 = sext i32 %418 to i64
  %423 = getelementptr inbounds i32, ptr %419, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !80
  br label %425

425:                                              ; preds = %421, %412
  %426 = phi i32 [ %424, %421 ], [ %418, %412 ]
  %427 = icmp eq i32 %426, -1
  br i1 %427, label %431, label %428, !prof !227

428:                                              ; preds = %425
  %429 = load ptr, ptr %384, align 8, !tbaa !189
  %430 = call zeroext i8 @bitmap_set_bit(ptr noundef %429, i32 noundef %426) #15
  br label %431

431:                                              ; preds = %428, %425, %404, %400
  %432 = add nuw nsw i64 %387, 1
  br label %386, !llvm.loop !228

433:                                              ; preds = %396
  %434 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %435 = icmp eq ptr %434, null
  br i1 %435, label %442, label %436, !prof !220

436:                                              ; preds = %433
  %437 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %438 = and i32 %437, 8
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %436
  %441 = and i32 %437, -9
  call void @gimple_dump_cfg(ptr noundef nonnull %434, i32 noundef %441) #15
  br label %442

442:                                              ; preds = %440, %436, %433
  ret i32 0
}

declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @elim_forward(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !64 {
  %3 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = lshr i32 %1, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !158
  %12 = and i32 %1, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %5, i64 %9
  %19 = load i8, ptr %18, align 1, !tbaa !76
  %20 = add i8 %19, 1
  store i8 %20, ptr %18, align 1, !tbaa !76
  br label %21

21:                                               ; preds = %2, %7, %17
  %22 = and i32 %1, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = lshr i32 %1, 6
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !158
  %29 = or i64 %28, %24
  store i64 %29, ptr %27, align 8, !tbaa !158
  %30 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  br label %31

31:                                               ; preds = %61, %21
  %32 = phi i32 [ 0, %21 ], [ %62, %61 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !94
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 4, !tbaa !129
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  %39 = icmp ult i32 %32, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = zext i32 %32 to i64
  %42 = getelementptr inbounds %struct.VEC_int_base, ptr %33, i64 0, i32 2, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !80
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = or disjoint i32 %32, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_int_base, ptr %33, i64 0, i32 2, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !80
  %50 = load ptr, ptr %3, align 8, !tbaa !97
  %51 = lshr i32 %49, 6
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %50, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !158
  %55 = and i32 %49, 63
  %56 = zext nneg i32 %55 to i64
  %57 = shl nuw i64 1, %56
  %58 = and i64 %57, %54
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  tail call fastcc void @elim_forward(ptr noundef %0, i32 noundef %49)
  br label %61

61:                                               ; preds = %45, %60, %40
  %62 = add i32 %32, 2
  br label %31, !llvm.loop !229

63:                                               ; preds = %37
  %64 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !65
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.VEC_int_base, ptr %65, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !150
  %70 = load i32, ptr %65, align 4, !tbaa !129
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63, %67
  %73 = tail call ptr @vec_heap_o_reserve(ptr noundef %65, i32 noundef 1, i64 noundef 8, i64 noundef 4) #15
  store ptr %73, ptr %64, align 8, !tbaa !65
  br label %74

74:                                               ; preds = %67, %72
  %75 = load ptr, ptr %64, align 8, !tbaa !65
  %76 = load i32, ptr %75, align 4, !tbaa !129
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4, !tbaa !129
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds %struct.VEC_int_base, ptr %75, i64 0, i32 2, i64 %78
  store i32 %1, ptr %79, align 4, !tbaa !80
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @elim_backward(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !64 {
  %3 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = lshr i32 %1, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !158
  %12 = and i32 %1, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %5, i64 %9
  %19 = load i8, ptr %18, align 1, !tbaa !76
  %20 = add i8 %19, 1
  store i8 %20, ptr %18, align 1, !tbaa !76
  br label %21

21:                                               ; preds = %2, %7, %17
  %22 = and i32 %1, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = lshr i32 %1, 6
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !158
  %29 = or i64 %28, %24
  store i64 %29, ptr %27, align 8, !tbaa !158
  %30 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  br label %31

31:                                               ; preds = %69, %21
  %32 = phi i32 [ 0, %21 ], [ %70, %69 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !94
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 4, !tbaa !129
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  %39 = icmp ult i32 %32, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = or disjoint i32 %32, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_int_base, ptr %33, i64 0, i32 2, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !80
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %69

46:                                               ; preds = %40
  %47 = zext i32 %32 to i64
  %48 = getelementptr inbounds %struct.VEC_int_base, ptr %33, i64 0, i32 2, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !80
  %50 = load ptr, ptr %3, align 8, !tbaa !97
  %51 = lshr i32 %49, 6
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %50, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !158
  %55 = and i32 %49, 63
  %56 = zext nneg i32 %55 to i64
  %57 = shl nuw i64 1, %56
  %58 = and i64 %57, %54
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  %62 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %61, align 8, !tbaa !95
  %64 = lshr exact i32 %32, 1
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_source_location_base, ptr %63, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !80
  tail call fastcc void @elim_backward(ptr noundef %0, i32 noundef %49)
  %68 = load ptr, ptr %62, align 8, !tbaa !128
  tail call fastcc void @insert_partition_copy_on_edge(ptr noundef %68, i32 noundef %49, i32 noundef %1, i32 noundef %67)
  br label %69

69:                                               ; preds = %46, %60, %40
  %70 = add i32 %32, 2
  br label %31, !llvm.loop !230

71:                                               ; preds = %37
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_partition_copy_on_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 !prof !64 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !167
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !168
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !168
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, i32 noundef %14, i32 noundef %18, i32 noundef %1, i32 noundef %2)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  br label %22

22:                                               ; preds = %11, %7, %4
  %23 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 187, ptr noundef nonnull @.str.1) #15
  br label %29

29:                                               ; preds = %22, %28
  %30 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 188, ptr noundef nonnull @.str.1) #15
  br label %36

36:                                               ; preds = %29, %35
  tail call fastcc void @set_location_for_edge(ptr noundef %0)
  %37 = icmp eq i32 %3, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @set_curr_insn_source_location(i32 noundef %3) #15
  br label %39

39:                                               ; preds = %38, %36
  %40 = load ptr, ptr @SA, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct._var_map, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !161
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i32, ptr %42, i64 %31
  %46 = load i32, ptr %45, align 4, !tbaa !80
  br label %47

47:                                               ; preds = %39, %44
  %48 = phi i32 [ %46, %44 ], [ %2, %39 ]
  %49 = load ptr, ptr %40, align 8, !tbaa !137
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.partition_def, ptr %49, i64 0, i32 1, i64 %50
  %52 = load i32, ptr %51, align 8, !tbaa !138
  %53 = load ptr, ptr @cfun, align 8, !tbaa !65
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !162
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !163
  %58 = zext i32 %52 to i64
  %59 = getelementptr inbounds %struct.VEC_tree_base, ptr %57, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !65
  %61 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !169
  %62 = getelementptr inbounds ptr, ptr %61, i64 %24
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = getelementptr inbounds ptr, ptr %61, i64 %31
  %65 = load ptr, ptr %64, align 8, !tbaa !65
  %66 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = lshr i32 %69, 21
  %71 = and i32 %70, 1
  %72 = tail call fastcc ptr @emit_partition_copy(ptr noundef %63, ptr noundef %65, i32 noundef %71, ptr noundef %60)
  tail call void @insert_insn_on_edge(ptr noundef %72, ptr noundef %0) #15
  ret void
}

declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_simple_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @set_location_for_edge(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !231 !PGOFuncName !232 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !233
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !234

5:                                                ; preds = %1
  tail call void @set_curr_insn_source_location(i32 noundef %3) #15
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !235
  tail call void @set_curr_insn_block(ptr noundef %7) #15
  br label %78

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !167
  br label %10

10:                                               ; preds = %73, %8
  %11 = phi ptr [ %9, %8 ], [ %75, %73 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !107, !noalias !236
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !239

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !76, !noalias !236
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !240

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !199, !noalias !236
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = phi ptr [ %21, %20 ], [ null, %16 ], [ null, %10 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !240

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.gimple_seq_d, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !205, !noalias !236
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi ptr [ %27, %25 ], [ null, %22 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31, !prof !241

31:                                               ; preds = %28, %50
  %32 = phi ptr [ %52, %50 ], [ %29, %28 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !134
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %48, label %37, !prof !242

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !76
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !243

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !244

45:                                               ; preds = %41, %37
  tail call void @set_curr_insn_source_location(i32 noundef %39) #15
  %46 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  tail call void @set_curr_insn_block(ptr noundef %47) #15
  br label %48

48:                                               ; preds = %41, %31, %45
  %49 = phi i32 [ 1, %45 ], [ 6, %31 ], [ 0, %41 ]
  switch i32 %49, label %78 [
    i32 0, label %50
    i32 6, label %50
  ], !prof !245

50:                                               ; preds = %48, %48
  %51 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %32, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !246
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %31, !prof !247, !llvm.loop !248

54:                                               ; preds = %50, %28
  %55 = load ptr, ptr %11, align 8, !tbaa !183
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !249

57:                                               ; preds = %54
  %58 = load i32, ptr %55, align 8, !tbaa !117
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %54, %57
  %62 = phi i8 [ %60, %57 ], [ 0, %54 ]
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %73, label %64, !prof !250

64:                                               ; preds = %61
  br i1 %56, label %68, label %65, !prof !251

65:                                               ; preds = %64
  %66 = load i32, ptr %55, align 8, !tbaa !117
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %69, label %68, !prof !252

68:                                               ; preds = %65, %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %69

69:                                               ; preds = %65, %68
  %70 = load ptr, ptr %11, align 8, !tbaa !183
  %71 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 0
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  br label %73

73:                                               ; preds = %61, %69
  %74 = phi ptr [ %72, %69 ], [ %0, %61 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !167
  %76 = load ptr, ptr %0, align 8, !tbaa !167
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %10, !prof !250, !llvm.loop !253

78:                                               ; preds = %73, %48, %5
  ret void
}

declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @emit_partition_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 !prof !64 {
  tail call void @start_sequence() #15
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @convert_to_mode(i32 noundef %12, ptr noundef nonnull %1, i32 noundef %2) #15
  br label %16

16:                                               ; preds = %14, %9, %4
  %17 = phi ptr [ %15, %14 ], [ %1, %9 ], [ %1, %4 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 16711680
  %20 = icmp eq i32 %19, 65536
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 16711680
  %24 = icmp eq i32 %23, 65536
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 158, ptr noundef nonnull @.str.1) #15
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call ptr @expr_size(ptr noundef %3) #15
  %28 = tail call ptr @emit_block_move(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef %27, i32 noundef 0) #15
  br label %31

29:                                               ; preds = %16
  %30 = tail call ptr @emit_move_insn(ptr noundef %0, ptr noundef nonnull %17) #15
  br label %31

31:                                               ; preds = %29, %26
  %32 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  ret ptr %32
}

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_curr_insn_block(ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expr_size(ptr noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @store_expr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_gimple_phi_args(ptr noundef %0) unnamed_addr #13 !prof !64 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !80
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !65
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef 2) #15
  br label %13

13:                                               ; preds = %10, %6, %1
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 0
  br label %24

24:                                               ; preds = %18, %13, %22
  %25 = phi i32 [ 1, %22 ], [ 0, %13 ], [ 0, %18 ]
  %26 = phi i32 [ %20, %22 ], [ 0, %13 ], [ %20, %18 ]
  %27 = phi ptr [ %0, %22 ], [ null, %13 ], [ %0, %18 ]
  %28 = phi i1 [ true, %22 ], [ false, %13 ], [ false, %18 ]
  %29 = phi i8 [ 0, %22 ], [ 1, %13 ], [ 1, %18 ]
  %30 = phi ptr [ %23, %22 ], [ null, %13 ], [ null, %18 ]
  br i1 %28, label %31, label %87

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %27, i64 0, i32 1
  br label %33

33:                                               ; preds = %31, %82
  %34 = phi ptr [ %30, %31 ], [ %85, %82 ]
  %35 = phi i8 [ %29, %31 ], [ %84, %82 ]
  %36 = phi i32 [ %25, %31 ], [ %83, %82 ]
  %37 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !143
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 141
  br i1 %42, label %43, label %72

43:                                               ; preds = %33
  %44 = load ptr, ptr %34, align 8, !tbaa !208
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %34, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !195
  %49 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %44, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !195
  %50 = load ptr, ptr %47, align 8, !tbaa !195
  store ptr %44, ptr %50, align 8, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %51

51:                                               ; preds = %43, %46
  store ptr null, ptr %38, align 8, !tbaa !65
  store ptr null, ptr %34, align 8, !tbaa !208
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 5
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 5, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !195
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !80
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %52) #15
  br label %61

61:                                               ; preds = %51, %56, %59
  %62 = phi i8 [ %60, %59 ], [ 1, %51 ], [ 0, %56 ]
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 16
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  call fastcc void @remove_gimple_phi_args(ptr noundef nonnull %66)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %66) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  br label %71

71:                                               ; preds = %70, %64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %72

72:                                               ; preds = %33, %71, %61
  %73 = icmp slt i32 %36, %26
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = add nsw i32 %36, 1
  %76 = load i32, ptr %32, align 8, !tbaa !76
  %77 = icmp ult i32 %76, %36
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %79

79:                                               ; preds = %78, %74
  %80 = zext i32 %36 to i64
  %81 = getelementptr inbounds %struct.gimple_statement_phi, ptr %27, i64 0, i32 4, i64 %80
  br label %82

82:                                               ; preds = %72, %79
  %83 = phi i32 [ %75, %79 ], [ %36, %72 ]
  %84 = phi i8 [ %35, %79 ], [ 1, %72 ]
  %85 = phi ptr [ %81, %79 ], [ null, %72 ]
  %86 = icmp eq i8 %84, 0
  br i1 %86, label %33, label %87, !llvm.loop !254

87:                                               ; preds = %82, %24
  ret void
}

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @coalesce_ssa_name() local_unnamed_addr #3

declare void @partition_view_normal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @dump_var_map(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_replaceable_exprs(ptr noundef) local_unnamed_addr #3

declare void @dump_replaceable_exprs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @expand_phi_nodes, ptr @xmalloc, i64 38}
!36 = !{ptr @expand_phi_nodes, ptr @vec_heap_o_reserve_exact, i64 228}
!37 = !{ptr @expand_phi_nodes, ptr @vec_heap_p_reserve_exact, i64 38}
!38 = !{ptr @expand_phi_nodes, ptr @sbitmap_alloc, i64 38}
!39 = !{ptr @expand_phi_nodes, ptr @gsi_start_phis, i64 70531}
!40 = !{ptr @expand_phi_nodes, ptr @set_location_for_edge, i64 64766}
!41 = !{ptr @expand_phi_nodes, ptr @set_curr_insn_source_location, i64 64663}
!42 = !{ptr @expand_phi_nodes, ptr @start_sequence, i64 64766}
!43 = !{ptr @expand_phi_nodes, ptr @promote_decl_mode, i64 64766}
!44 = !{ptr @expand_phi_nodes, ptr @expand_expr_real, i64 64766}
!45 = !{ptr @expand_phi_nodes, ptr @emit_move_insn, i64 64766}
!46 = !{ptr @expand_phi_nodes, ptr @get_insns, i64 64766}
!47 = !{ptr @expand_phi_nodes, ptr @end_sequence, i64 64766}
!48 = !{ptr @expand_phi_nodes, ptr @insert_insn_on_edge, i64 64766}
!49 = !{ptr @expand_phi_nodes, ptr @free, i64 380}
!50 = !{ptr @finish_out_of_ssa, ptr @free, i64 38}
!51 = !{ptr @finish_out_of_ssa, ptr @bitmap_obstack_free, i64 76}
!52 = !{ptr @finish_out_of_ssa, ptr @delete_var_map, i64 38}
!53 = !{ptr @rewrite_out_of_ssa, ptr @gsi_start_phis, i64 308120}
!54 = !{ptr @rewrite_out_of_ssa, ptr @is_gimple_reg, i64 94046}
!55 = !{ptr @rewrite_out_of_ssa, ptr @remove_phi_node, i64 44736}
!56 = !{ptr @rewrite_out_of_ssa, ptr @coalesce_ssa_name, i64 38}
!57 = !{ptr @rewrite_out_of_ssa, ptr @partition_view_normal, i64 38}
!58 = !{ptr @rewrite_out_of_ssa, ptr @find_replaceable_exprs, i64 38}
!59 = !{ptr @rewrite_out_of_ssa, ptr @bitmap_obstack_alloc_stat, i64 38}
!60 = !{ptr @rewrite_out_of_ssa, ptr @bitmap_set_bit, i64 38}
!61 = !{ptr @set_location_for_edge, ptr @set_curr_insn_source_location, i64 64759}
!62 = !{ptr @set_location_for_edge, ptr @set_curr_insn_block, i64 64759}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !66, i64 8}
!70 = !{!"_IO_FILE", !71, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !71, i64 112, !71, i64 116, !72, i64 120, !73, i64 128, !67, i64 130, !67, i64 131, !66, i64 136, !72, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !72, i64 184, !71, i64 192, !67, i64 196}
!71 = !{!"int", !67, i64 0}
!72 = !{!"long", !67, i64 0}
!73 = !{!"short", !67, i64 0}
!74 = !{!70, !66, i64 16}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!67, !67, i64 0}
!77 = !{!70, !66, i64 40}
!78 = !{!70, !66, i64 48}
!79 = !{!70, !71, i64 0}
!80 = !{!71, !71, i64 0}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"function_entry_count", i64 38}
!85 = !{!86, !66, i64 0}
!86 = !{!"ssaexpand", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24}
!87 = !{!88, !71, i64 24}
!88 = !{!"_var_map", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !66, i64 40, !66, i64 48}
!89 = !{!90, !66, i64 8}
!90 = !{!"_elim_graph", !71, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80}
!91 = !{!90, !66, i64 64}
!92 = !{!90, !66, i64 72}
!93 = !{!90, !66, i64 80}
!94 = !{!90, !66, i64 16}
!95 = !{!90, !66, i64 24}
!96 = !{!90, !66, i64 40}
!97 = !{!90, !66, i64 32}
!98 = !{!90, !66, i64 48}
!99 = !{!100, !66, i64 8}
!100 = !{!"function", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !71, i64 104, !71, i64 108, !71, i64 112, !71, i64 116, !71, i64 120, !71, i64 124, !66, i64 128, !71, i64 136, !71, i64 137, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139}
!101 = !{!102, !66, i64 0}
!102 = !{!"control_flow_graph", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !66, i64 40, !71, i64 48, !67, i64 52, !67, i64 60, !71, i64 68, !71, i64 72}
!103 = !{!104, !66, i64 56}
!104 = !{!"basic_block_def", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !67, i64 32, !66, i64 48, !66, i64 56, !67, i64 64, !72, i64 72, !71, i64 80, !71, i64 84, !71, i64 88, !71, i64 92, !71, i64 96}
!105 = !{!102, !66, i64 8}
!106 = !{!"branch_weights", i32 1, i32 151}
!107 = !{!104, !71, i64 96}
!108 = !{!"branch_weights", i32 154060, i32 0}
!109 = !{!"branch_weights", i32 0, i32 154060}
!110 = !{!111, !66, i64 8}
!111 = !{!"gimple_bb_info", !66, i64 0, !66, i64 8}
!112 = !{!"branch_weights", i32 91626, i32 62434}
!113 = !{!114, !66, i64 0}
!114 = !{!"gimple_seq_d", !66, i64 0, !66, i64 8, !66, i64 16}
!115 = !{!"branch_weights", i32 2196, i32 151864}
!116 = !{!"branch_weights", i32 0, i32 72727}
!117 = !{!118, !71, i64 0}
!118 = !{!"VEC_edge_base", !71, i64 0, !71, i64 4, !67, i64 8}
!119 = !{!"branch_weights", i32 2196, i32 70531}
!120 = !{!"branch_weights", i32 0, i32 70531}
!121 = !{!122, !71, i64 0}
!122 = !{!"VEC_tree_base", !71, i64 0, !71, i64 4, !67, i64 8}
!123 = !{!"branch_weights", i32 70531, i32 0}
!124 = !{!125, !71, i64 0}
!125 = !{!"VEC_source_location_base", !71, i64 0, !71, i64 4, !67, i64 8}
!126 = !{!127, !71, i64 48}
!127 = !{!"edge_def", !66, i64 0, !66, i64 8, !67, i64 16, !66, i64 24, !66, i64 32, !71, i64 40, !71, i64 44, !71, i64 48, !71, i64 52, !72, i64 56}
!128 = !{!90, !66, i64 56}
!129 = !{!130, !71, i64 0}
!130 = !{!"VEC_int_base", !71, i64 0, !71, i64 4, !67, i64 8}
!131 = !{!127, !66, i64 8}
!132 = !{i64 0, i64 8, !65, i64 8, i64 8, !65, i64 16, i64 8, !65}
!133 = !{!"branch_weights", i32 1, i32 70530}
!134 = !{!135, !66, i64 0}
!135 = !{!"gimple_seq_node_d", !66, i64 0, !66, i64 8, !66, i64 16}
!136 = !{!"branch_weights", i32 70786, i32 0}
!137 = !{!88, !66, i64 0}
!138 = !{!139, !71, i64 0}
!139 = !{!"partition_elem", !71, i64 0, !66, i64 8, !71, i64 16}
!140 = !{!88, !66, i64 8}
!141 = !{!"branch_weights", i32 0, i32 70786}
!142 = !{!127, !71, i64 44}
!143 = !{!144, !66, i64 24}
!144 = !{!"ssa_use_operand_d", !66, i64 0, !66, i64 8, !67, i64 16, !66, i64 24}
!145 = !{!146, !71, i64 40}
!146 = !{!"phi_arg_d", !144, i64 0, !66, i64 32, !71, i64 40}
!147 = !{!"branch_weights", i32 6020, i32 64766}
!148 = !{!"branch_weights", i32 0, i32 6020}
!149 = !{!"branch_weights", i32 0, i32 64766}
!150 = !{!130, !71, i64 4}
!151 = !{!122, !71, i64 4}
!152 = !{!125, !71, i64 4}
!153 = !{!"branch_weights", i32 6020, i32 0}
!154 = distinct !{!154, !82, !83}
!155 = !{!135, !66, i64 16}
!156 = !{!"branch_weights", i32 70530, i32 256}
!157 = distinct !{!157, !82, !83}
!158 = !{!72, !72, i64 0}
!159 = distinct !{!159, !82, !83}
!160 = distinct !{!160, !82, !83}
!161 = !{!88, !66, i64 16}
!162 = !{!100, !66, i64 24}
!163 = !{!164, !66, i64 16}
!164 = !{!"gimple_df", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !165, i64 32, !165, i64 48, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !71, i64 96, !166, i64 104}
!165 = !{!"pt_solution", !71, i64 0, !71, i64 0, !71, i64 0, !71, i64 0, !71, i64 0, !71, i64 0, !66, i64 8}
!166 = !{!"ssa_operands", !66, i64 0, !71, i64 8, !71, i64 12, !67, i64 16, !66, i64 24, !66, i64 32}
!167 = !{!127, !66, i64 0}
!168 = !{!104, !71, i64 80}
!169 = !{!86, !66, i64 16}
!170 = distinct !{!170, !82, !83}
!171 = distinct !{!171, !82, !83}
!172 = distinct !{!172, !82, !83}
!173 = !{!174, !66, i64 0}
!174 = !{!"simple_bitmap_def", !66, i64 0, !71, i64 8, !71, i64 12, !67, i64 16}
!175 = !{!"branch_weights", i32 0, i32 135297}
!176 = !{!"branch_weights", i32 70531, i32 64766}
!177 = !{!"branch_weights", i32 64766, i32 0}
!178 = !{!"branch_weights", i32 103, i32 64663}
!179 = distinct !{!179, !82, !83}
!180 = distinct !{!180, !82, !83}
!181 = !{!"branch_weights", i32 2196, i32 0}
!182 = !{!"branch_weights", i32 5765, i32 64766}
!183 = !{!104, !66, i64 0}
!184 = distinct !{!184, !82, !83}
!185 = !{!"branch_weights", i32 151, i32 616089}
!186 = distinct !{!186, !82, !83}
!187 = !{!"branch_weights", i32 0, i32 38}
!188 = !{!86, !66, i64 8}
!189 = !{!86, !66, i64 24}
!190 = !{!104, !66, i64 16}
!191 = !{!"branch_weights", i32 107037, i32 47023}
!192 = !{!"branch_weights", i32 44736, i32 2287}
!193 = !{!"branch_weights", i32 1, i32 2286}
!194 = !{}
!195 = !{!144, !66, i64 8}
!196 = !{!197}
!197 = distinct !{!197, !198, !"gsi_start_bb: argument 0"}
!198 = distinct !{!198, !"gsi_start_bb"}
!199 = !{!111, !66, i64 0}
!200 = distinct !{!200, !82, !83}
!201 = distinct !{!201, !82, !83}
!202 = !{!203}
!203 = distinct !{!203, !204, !"gsi_last_bb: argument 0"}
!204 = distinct !{!204, !"gsi_last_bb"}
!205 = !{!114, !66, i64 8}
!206 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!207 = !{i64 0, i64 8, !65}
!208 = !{!144, !66, i64 0}
!209 = !{!"branch_weights", i32 68500, i32 2286}
!210 = distinct !{!210, !82, !83}
!211 = !{!"branch_weights", i32 47023, i32 0}
!212 = distinct !{!212, !82, !83}
!213 = distinct !{!213, !82, !83}
!214 = distinct !{!214, !82, !83}
!215 = !{!"branch_weights", i32 0, i32 2287}
!216 = !{!"branch_weights", i32 2287, i32 0}
!217 = !{!218, !66, i64 0}
!218 = !{!"", !66, i64 0, !66, i64 8, !66, i64 16}
!219 = distinct !{!219, !82, !83}
!220 = !{!"branch_weights", i32 38, i32 0}
!221 = !{!"branch_weights", i32 0, i32 426477}
!222 = !{!"branch_weights", i32 426439, i32 38}
!223 = !{!"branch_weights", i32 162404, i32 264035}
!224 = !{!"branch_weights", i32 263959, i32 76}
!225 = !{!"branch_weights", i32 76, i32 0}
!226 = !{!"branch_weights", i32 0, i32 76}
!227 = !{!"branch_weights", i32 38, i32 38}
!228 = distinct !{!228, !82, !83}
!229 = distinct !{!229, !82, !83}
!230 = distinct !{!230, !82, !83}
!231 = !{!"function_entry_count", i64 64766}
!232 = !{!"tree-outof-ssa.c;set_location_for_edge"}
!233 = !{!127, !71, i64 40}
!234 = !{!"branch_weights", i32 64621, i32 145}
!235 = !{!127, !66, i64 32}
!236 = !{!237}
!237 = distinct !{!237, !238, !"gsi_last_bb: argument 0"}
!238 = distinct !{!238, !"gsi_last_bb"}
!239 = !{!"branch_weights", i32 66529, i32 0}
!240 = !{!"branch_weights", i32 0, i32 66529}
!241 = !{!"branch_weights", i32 1, i32 2623}
!242 = !{!"branch_weights", i32 0, i32 63937}
!243 = !{!"branch_weights", i32 32, i32 63905}
!244 = !{!"branch_weights", i32 32, i32 0}
!245 = !{!"branch_weights", i32 63905, i32 32, i32 0}
!246 = !{!135, !66, i64 8}
!247 = !{!"branch_weights", i32 2623, i32 61314}
!248 = distinct !{!248, !82, !83}
!249 = !{!"branch_weights", i32 0, i32 2624}
!250 = !{!"branch_weights", i32 716, i32 1908}
!251 = !{!"branch_weights", i32 0, i32 1908}
!252 = !{!"branch_weights", i32 1908, i32 0}
!253 = distinct !{!253, !82, !83}
!254 = distinct !{!254, !82, !83}
