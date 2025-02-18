; ModuleID = 'tree-loop-distribution.c'
source_filename = "tree-loop-distribution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_bitmap_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.rdg_vertex = type { ptr, i8, i8 }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.rdg_component = type { i32, ptr }
%struct.VEC_rdgc_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"ldist\00", align 1
@pass_loop_distribution = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_loop_distribution, ptr @tree_loop_distribution, ptr null, ptr null, i32 0, i32 95, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@flag_tree_loop_distribution = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Loop %d distributed: split to %d loops.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Loop %d is the same.\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"FIXME: Loop %d not distributed: it has more than two basic blocks.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"FIXME: Loop %d not distributed: failed to build the RDG.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ldist asked to generate code for vertex %d\0A\00", align 1
@remaining_stmts = internal unnamed_addr global ptr null, align 8
@upstream_mem_writes = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"ldist useful partition:\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.11 = private unnamed_addr constant [23 x i8] c"generated memset zero\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"tree-loop-distribution.c\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
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
  %5 = tail call ptr @__ctype_tolower_loc() #16
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
  %5 = tail call ptr @__ctype_toupper_loc() #16
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

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rdg_partitions(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = icmp eq ptr %0, null
  br label %4

4:                                                ; preds = %16, %1
  %5 = phi i64 [ %17, %16 ], [ 0, %1 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8, !tbaa !54
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %5
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %10, %6, %4
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %10 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @debug_bitmap_file(ptr noundef %2, ptr noundef %14) #16
  %17 = add nuw i64 %5, 1
  br label %4, !llvm.loop !56

18:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_loop_distribution() #10 !prof !57 !PGOFuncName !58 {
  %1 = load i32, ptr @flag_tree_loop_distribution, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @tree_loop_distribution() #9 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.immediate_use_iterator_d, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = load ptr, ptr @cfun, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %98, label %23

23:                                               ; preds = %0
  %24 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %31 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %30, i64 noundef 8, i64 noundef 4) #16
  %32 = load ptr, ptr @cfun, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.loops, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  br label %37

37:                                               ; preds = %50, %29
  %38 = phi ptr [ %36, %29 ], [ %51, %50 ]
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, ptr %31, align 4, !tbaa !70
  %43 = add i32 %42, 1
  store i32 %43, ptr %31, align 4, !tbaa !70
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds %struct.VEC_int_base, ptr %31, i64 0, i32 2, i64 %44
  store i32 %39, ptr %45, align 4, !tbaa !50
  br label %46

46:                                               ; preds = %41, %37
  %47 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %55, %46
  %51 = phi ptr [ %48, %46 ], [ %58, %55 ]
  br label %37, !llvm.loop !73

52:                                               ; preds = %74
  %53 = icmp eq ptr %31, null
  %54 = getelementptr inbounds %struct.loops, ptr %34, i64 0, i32 1
  br label %77

55:                                               ; preds = %46, %74
  %56 = phi ptr [ %75, %74 ], [ %38, %46 ]
  %57 = getelementptr inbounds %struct.loop, ptr %56, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !73

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.loop, ptr %56, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %62, align 8, !tbaa !63
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %65, %64 ], [ 0, %60 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = add i32 %67, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %62, i64 0, i32 2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ %73, %69 ], [ null, %66 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %52, label %55, !llvm.loop !76

77:                                               ; preds = %52, %89
  %78 = phi i32 [ %90, %89 ], [ 0, %52 ]
  br i1 %53, label %86, label %79

79:                                               ; preds = %77
  %80 = load i32, ptr %31, align 4, !tbaa !70
  %81 = icmp ugt i32 %80, %78
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = zext i32 %78 to i64
  %84 = getelementptr inbounds %struct.VEC_int_base, ptr %31, i64 0, i32 2, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !50
  br label %86

86:                                               ; preds = %82, %79, %77
  %87 = phi i32 [ %85, %82 ], [ 0, %79 ], [ 0, %77 ]
  %88 = phi i1 [ false, %82 ], [ true, %79 ], [ true, %77 ]
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = add i32 %78, 1
  %91 = load ptr, ptr %54, align 8, !tbaa !61
  %92 = zext i32 %87 to i64
  %93 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %91, i64 0, i32 2, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  %95 = icmp eq ptr %94, null
  br i1 %95, label %77, label %98, !llvm.loop !77

96:                                               ; preds = %86
  br i1 %53, label %98, label %97

97:                                               ; preds = %96
  tail call void @free(ptr noundef %31)
  br label %98

98:                                               ; preds = %89, %96, %97, %0
  %99 = phi ptr [ null, %0 ], [ null, %97 ], [ null, %96 ], [ %94, %89 ]
  %100 = phi i32 [ 0, %0 ], [ %78, %97 ], [ %78, %96 ], [ %90, %89 ]
  %101 = phi ptr [ null, %0 ], [ null, %97 ], [ null, %96 ], [ %31, %89 ]
  %102 = icmp eq ptr %99, null
  br i1 %102, label %1259, label %103

103:                                              ; preds = %98, %1254
  %104 = phi ptr [ %1257, %1254 ], [ %101, %98 ]
  %105 = phi i32 [ %1256, %1254 ], [ %100, %98 ]
  %106 = phi ptr [ %1255, %1254 ], [ %99, %98 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  %107 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #16
  store ptr %107, ptr %18, align 8, !tbaa !35
  call void @stores_from_loop(ptr noundef nonnull %106, ptr noundef nonnull %18) #16
  call void @remove_similar_memory_refs(ptr noundef nonnull %18) #16
  %108 = load ptr, ptr %18, align 8, !tbaa !35
  %109 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 6
  %110 = load i32, ptr %109, align 4, !tbaa !78
  %111 = icmp ugt i32 %110, 2
  br i1 %111, label %112, label %122

112:                                              ; preds = %103
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %1208, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %1208, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %106, align 8, !tbaa !66
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %113, ptr noundef nonnull @.str.3, i32 noundef %120)
  br label %1208

122:                                              ; preds = %103
  %123 = call ptr @build_rdg(ptr noundef nonnull %106) #16
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %127 = icmp eq ptr %126, null
  br i1 %127, label %1208, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %1208, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %106, align 8, !tbaa !66
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %126, ptr noundef nonnull @.str.4, i32 noundef %133)
  br label %1208

135:                                              ; preds = %122
  %136 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 3, i64 noundef 8, i64 noundef 4) #16
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call void @dump_rdg(ptr noundef nonnull %137, ptr noundef nonnull %123) #16
  br label %144

144:                                              ; preds = %143, %139, %135
  %145 = icmp eq ptr %108, null
  br label %146

146:                                              ; preds = %185, %144
  %147 = phi ptr [ %136, %144 ], [ %186, %185 ]
  %148 = phi i32 [ 0, %144 ], [ %187, %185 ]
  br i1 %145, label %156, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %108, align 8, !tbaa !79
  %151 = icmp ugt i32 %150, %148
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = zext i32 %148 to i64
  %154 = getelementptr inbounds %struct.VEC_gimple_base, ptr %108, i64 0, i32 2, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !35
  br label %156

156:                                              ; preds = %152, %149, %146
  %157 = phi ptr [ %155, %152 ], [ null, %149 ], [ null, %146 ]
  %158 = phi i1 [ false, %152 ], [ true, %149 ], [ true, %146 ]
  br i1 %158, label %188, label %159

159:                                              ; preds = %156
  %160 = call i32 @rdg_vertex_for_stmt(ptr noundef nonnull %123, ptr noundef %157) #16
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = icmp eq ptr %147, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.VEC_int_base, ptr %147, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !81
  %167 = load i32, ptr %147, align 4, !tbaa !70
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %164, %162
  %170 = call ptr @vec_heap_o_reserve(ptr noundef %147, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  br label %171

171:                                              ; preds = %169, %164
  %172 = phi ptr [ %170, %169 ], [ %147, %164 ]
  %173 = load i32, ptr %172, align 4, !tbaa !70
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4, !tbaa !70
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds %struct.VEC_int_base, ptr %172, i64 0, i32 2, i64 %175
  store i32 %160, ptr %176, align 4, !tbaa !50
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %178 = icmp eq ptr %177, null
  br i1 %178, label %185, label %179

179:                                              ; preds = %171
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %177, ptr noundef nonnull @.str.5, i32 noundef %160)
  br label %185

185:                                              ; preds = %183, %179, %171, %159
  %186 = phi ptr [ %172, %171 ], [ %172, %179 ], [ %172, %183 ], [ %147, %159 ]
  %187 = add i32 %148, 1
  br label %146, !llvm.loop !82

188:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  %189 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #16
  store ptr %189, ptr %15, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  %190 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #16
  store ptr %190, ptr %16, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  %191 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 3, i64 noundef 8, i64 noundef 4) #16
  store ptr %191, ptr %17, align 8, !tbaa !35
  %192 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %193 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %193, ptr @remaining_stmts, align 8, !tbaa !35
  %194 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %194, ptr @upstream_mem_writes, align 8, !tbaa !35
  %195 = load i32, ptr %123, align 8, !tbaa !83
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %250

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.graph, ptr %123, i64 0, i32 1
  %199 = icmp eq ptr %147, null
  br label %200

200:                                              ; preds = %197, %244
  %201 = phi i64 [ 0, %197 ], [ %246, %244 ]
  %202 = phi ptr [ %191, %197 ], [ %245, %244 ]
  %203 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %204 = trunc i64 %201 to i32
  %205 = call zeroext i8 @bitmap_set_bit(ptr noundef %203, i32 noundef %204) #16
  %206 = load ptr, ptr %198, align 8, !tbaa !85
  %207 = getelementptr inbounds %struct.vertex, ptr %206, i64 %201, i32 4
  %208 = load ptr, ptr %207, align 8, !tbaa !86
  %209 = getelementptr inbounds %struct.rdg_vertex, ptr %208, i64 0, i32 1
  %210 = load i8, ptr %209, align 8, !tbaa !88
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %244, label %212

212:                                              ; preds = %200, %224
  %213 = phi i32 [ %227, %224 ], [ 0, %200 ]
  br i1 %199, label %221, label %214

214:                                              ; preds = %212
  %215 = load i32, ptr %147, align 4, !tbaa !70
  %216 = icmp ugt i32 %215, %213
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = zext i32 %213 to i64
  %219 = getelementptr inbounds %struct.VEC_int_base, ptr %147, i64 0, i32 2, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !50
  br label %221

221:                                              ; preds = %217, %214, %212
  %222 = phi i32 [ %220, %217 ], [ 0, %214 ], [ 0, %212 ]
  %223 = phi i1 [ false, %217 ], [ true, %214 ], [ true, %212 ]
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = zext i32 %222 to i64
  %226 = icmp eq i64 %201, %225
  %227 = add i32 %213, 1
  br i1 %226, label %244, label %212, !llvm.loop !90

228:                                              ; preds = %221
  %229 = icmp eq ptr %202, null
  br i1 %229, label %235, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.VEC_int_base, ptr %202, i64 0, i32 1
  %232 = load i32, ptr %231, align 4, !tbaa !81
  %233 = load i32, ptr %202, align 4, !tbaa !70
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %230, %228
  %236 = call ptr @vec_heap_o_reserve(ptr noundef %202, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi ptr [ %236, %235 ], [ %202, %230 ]
  %239 = load i32, ptr %238, align 4, !tbaa !70
  %240 = add i32 %239, 1
  store i32 %240, ptr %238, align 4, !tbaa !70
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds %struct.VEC_int_base, ptr %238, i64 0, i32 2, i64 %241
  %243 = trunc i64 %201 to i32
  store i32 %243, ptr %242, align 4, !tbaa !50
  br label %244

244:                                              ; preds = %224, %237, %200
  %245 = phi ptr [ %238, %237 ], [ %202, %200 ], [ %202, %224 ]
  %246 = add nuw nsw i64 %201, 1
  %247 = load i32, ptr %123, align 8, !tbaa !83
  %248 = sext i32 %247 to i64
  %249 = icmp slt i64 %246, %248
  br i1 %249, label %200, label %250, !llvm.loop !91

250:                                              ; preds = %244, %188
  %251 = phi ptr [ %191, %188 ], [ %245, %244 ]
  store ptr %251, ptr %17, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  %252 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %253 = load i32, ptr %123, align 4, !tbaa !50
  %254 = add nsw i32 %253, -1
  store i32 %254, ptr %13, align 4, !tbaa !50
  %255 = icmp sgt i32 %253, 0
  br i1 %255, label %256, label %341

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.graph, ptr %123, i64 0, i32 1
  br label %258

258:                                              ; preds = %256, %337
  %259 = phi i32 [ %254, %256 ], [ %339, %337 ]
  %260 = call i32 @bitmap_bit_p(ptr noundef %252, i32 noundef %259) #16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %337

262:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %263 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 3, i64 noundef 8, i64 noundef 4) #16
  store ptr %263, ptr %14, align 8, !tbaa !35
  %264 = call i32 @graphds_dfs(ptr noundef nonnull %123, ptr noundef nonnull %13, i32 noundef 1, ptr noundef nonnull %14, i8 noundef zeroext 0, ptr noundef null) #16
  br label %265

265:                                              ; preds = %332, %262
  %266 = phi i32 [ 0, %262 ], [ %333, %332 ]
  %267 = load ptr, ptr %14, align 8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %276, label %269

269:                                              ; preds = %265
  %270 = load i32, ptr %267, align 4, !tbaa !70
  %271 = icmp ugt i32 %270, %266
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = zext i32 %266 to i64
  %274 = getelementptr inbounds %struct.VEC_int_base, ptr %267, i64 0, i32 2, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !50
  br label %276

276:                                              ; preds = %272, %269, %265
  %277 = phi i32 [ %275, %272 ], [ 0, %269 ], [ 0, %265 ]
  %278 = phi i1 [ false, %272 ], [ true, %269 ], [ true, %265 ]
  br i1 %278, label %334, label %279

279:                                              ; preds = %276
  %280 = call i32 @bitmap_bit_p(ptr noundef %252, i32 noundef %277) #16
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %332

282:                                              ; preds = %279
  %283 = call zeroext i8 @bitmap_set_bit(ptr noundef %252, i32 noundef %277) #16
  %284 = load ptr, ptr %257, align 8, !tbaa !85
  %285 = sext i32 %277 to i64
  %286 = getelementptr inbounds %struct.vertex, ptr %284, i64 %285, i32 4
  %287 = load ptr, ptr %286, align 8, !tbaa !86
  %288 = getelementptr inbounds %struct.rdg_vertex, ptr %287, i64 0, i32 1
  %289 = load i8, ptr %288, align 8, !tbaa !88
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %329

291:                                              ; preds = %282
  %292 = getelementptr inbounds %struct.vertex, ptr %284, i64 %285
  %293 = load ptr, ptr %292, align 8, !tbaa !92
  %294 = icmp eq ptr %293, null
  br i1 %294, label %314, label %295

295:                                              ; preds = %291, %310
  %296 = phi ptr [ %312, %310 ], [ %293, %291 ]
  %297 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !35
  %298 = load i32, ptr %296, align 8, !tbaa !93
  %299 = call i32 @bitmap_bit_p(ptr noundef %297, i32 noundef %298) #16
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %257, align 8, !tbaa !85
  %303 = load i32, ptr %296, align 8, !tbaa !93
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.vertex, ptr %302, i64 %304, i32 4
  %306 = load ptr, ptr %305, align 8, !tbaa !86
  %307 = getelementptr inbounds %struct.rdg_vertex, ptr %306, i64 0, i32 1
  %308 = load i8, ptr %307, align 8, !tbaa !88
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %329, label %310

310:                                              ; preds = %301, %295
  %311 = getelementptr inbounds %struct.graph_edge, ptr %296, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !95
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %295, !llvm.loop !96

314:                                              ; preds = %310, %291
  %315 = load ptr, ptr %257, align 8, !tbaa !85
  %316 = getelementptr inbounds %struct.vertex, ptr %315, i64 %285, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !97
  %318 = icmp eq ptr %317, null
  br i1 %318, label %332, label %319

319:                                              ; preds = %314, %325
  %320 = phi ptr [ %327, %325 ], [ %317, %314 ]
  %321 = getelementptr inbounds %struct.graph_edge, ptr %320, i64 0, i32 4
  %322 = load ptr, ptr %321, align 8, !tbaa !98
  %323 = load i32, ptr %322, align 8, !tbaa !99
  %324 = icmp eq i32 %323, 97
  br i1 %324, label %329, label %325

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.graph_edge, ptr %320, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !101
  %328 = icmp eq ptr %327, null
  br i1 %328, label %332, label %319, !llvm.loop !102

329:                                              ; preds = %301, %319, %282
  %330 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !35
  %331 = call zeroext i8 @bitmap_set_bit(ptr noundef %330, i32 noundef %277) #16
  br label %332

332:                                              ; preds = %325, %329, %314, %279
  %333 = add i32 %266, 1
  br label %265, !llvm.loop !103

334:                                              ; preds = %276
  br i1 %268, label %336, label %335

335:                                              ; preds = %334
  call void @free(ptr noundef %267)
  br label %336

336:                                              ; preds = %335, %334
  store ptr null, ptr %14, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %337

337:                                              ; preds = %336, %258
  %338 = load i32, ptr %13, align 4, !tbaa !50
  %339 = add nsw i32 %338, -1
  store i32 %339, ptr %13, align 4, !tbaa !50
  %340 = icmp sgt i32 %338, 0
  br i1 %340, label %258, label %341, !llvm.loop !104

341:                                              ; preds = %337, %250
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call fastcc void @rdg_build_components(ptr noundef nonnull %123, ptr noundef %147, ptr noundef nonnull %15)
  %342 = load ptr, ptr %15, align 8, !tbaa !35
  call fastcc void @rdg_build_partitions(ptr noundef nonnull %123, ptr noundef %342, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef %192)
  call void @bitmap_obstack_free(ptr noundef %192) #16
  %343 = load ptr, ptr %16, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = load i32, ptr %343, align 8, !tbaa !54
  br label %347

347:                                              ; preds = %345, %341
  %348 = phi i32 [ %346, %345 ], [ 0, %341 ]
  %349 = icmp slt i32 %348, 2
  br i1 %349, label %1178, label %350

350:                                              ; preds = %347
  %351 = load i32, ptr %123, align 8, !tbaa !83
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.graph, ptr %123, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !85
  %356 = zext nneg i32 %351 to i64
  br label %360

357:                                              ; preds = %360, %350
  %358 = phi i32 [ 0, %350 ], [ %374, %360 ]
  %359 = getelementptr inbounds %struct.graph, ptr %123, i64 0, i32 1
  br label %377

360:                                              ; preds = %353, %360
  %361 = phi i64 [ 0, %353 ], [ %375, %360 ]
  %362 = phi i32 [ 0, %353 ], [ %374, %360 ]
  %363 = getelementptr inbounds %struct.vertex, ptr %355, i64 %361, i32 4
  %364 = load ptr, ptr %363, align 8, !tbaa !86
  %365 = getelementptr inbounds %struct.rdg_vertex, ptr %364, i64 0, i32 1
  %366 = load i8, ptr %365, align 8, !tbaa !88
  %367 = icmp ne i8 %366, 0
  %368 = zext i1 %367 to i32
  %369 = add nsw i32 %362, %368
  %370 = getelementptr inbounds %struct.rdg_vertex, ptr %364, i64 0, i32 2
  %371 = load i8, ptr %370, align 1, !tbaa !105
  %372 = icmp ne i8 %371, 0
  %373 = zext i1 %372 to i32
  %374 = add nsw i32 %369, %373
  %375 = add nuw nsw i64 %361, 1
  %376 = icmp eq i64 %375, %356
  br i1 %376, label %357, label %360, !llvm.loop !106

377:                                              ; preds = %480, %357
  %378 = phi i64 [ %482, %480 ], [ 0, %357 ]
  br i1 %344, label %386, label %379

379:                                              ; preds = %377
  %380 = load i32, ptr %343, align 8, !tbaa !54
  %381 = zext i32 %380 to i64
  %382 = icmp ult i64 %378, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %343, i64 0, i32 2, i64 %378
  %385 = load ptr, ptr %384, align 8, !tbaa !35
  br label %386

386:                                              ; preds = %383, %379, %377
  %387 = phi ptr [ %385, %383 ], [ null, %379 ], [ null, %377 ]
  %388 = phi i1 [ false, %383 ], [ true, %379 ], [ true, %377 ]
  br i1 %388, label %484, label %389

389:                                              ; preds = %386
  %390 = load ptr, ptr %387, align 8, !tbaa !107
  %391 = icmp eq ptr %390, null
  %392 = select i1 %391, ptr @bitmap_zero_bits, ptr %390
  %393 = getelementptr inbounds %struct.bitmap_element_def, ptr %392, i64 0, i32 2
  %394 = load i32, ptr %393, align 8, !tbaa !109
  %395 = shl i32 %394, 7
  %396 = getelementptr inbounds %struct.bitmap_element_def, ptr %392, i64 0, i32 3
  %397 = load i64, ptr %396, align 8, !tbaa !111
  %398 = icmp eq i64 %397, 0
  %399 = zext i1 %398 to i32
  %400 = or disjoint i32 %395, %399
  br label %401

401:                                              ; preds = %463, %389
  %402 = phi i64 [ %397, %389 ], [ %478, %463 ]
  %403 = phi i32 [ 0, %389 ], [ %459, %463 ]
  %404 = phi i32 [ %400, %389 ], [ %479, %463 ]
  %405 = phi ptr [ %392, %389 ], [ %461, %463 ]
  %406 = phi i32 [ 0, %389 ], [ %477, %463 ]
  %407 = icmp eq i64 %402, 0
  br i1 %407, label %422, label %408

408:                                              ; preds = %436, %401
  %409 = phi i64 [ %402, %401 ], [ %441, %436 ]
  %410 = phi i32 [ %403, %401 ], [ %437, %436 ]
  %411 = phi i32 [ %404, %401 ], [ %438, %436 ]
  %412 = phi ptr [ %405, %401 ], [ %429, %436 ]
  %413 = and i64 %409, 1
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %457

415:                                              ; preds = %408, %415
  %416 = phi i32 [ %419, %415 ], [ %411, %408 ]
  %417 = phi i64 [ %418, %415 ], [ %409, %408 ]
  %418 = lshr exact i64 %417, 1
  %419 = add i32 %416, 1
  %420 = and i64 %417, 2
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %415, label %457, !llvm.loop !112

422:                                              ; preds = %401
  %423 = add i32 %404, 63
  %424 = and i32 %423, -64
  %425 = add i32 %403, 1
  br label %426

426:                                              ; preds = %453, %422
  %427 = phi i64 [ %402, %422 ], [ %448, %453 ]
  %428 = phi i32 [ %424, %422 ], [ %456, %453 ]
  %429 = phi ptr [ %405, %422 ], [ %451, %453 ]
  %430 = phi i32 [ %425, %422 ], [ 0, %453 ]
  %431 = icmp eq i32 %430, 2
  br i1 %431, label %447, label %432

432:                                              ; preds = %426
  %433 = add i32 %428, 128
  %434 = shl i32 %430, 6
  %435 = sub i32 %433, %434
  br label %436

436:                                              ; preds = %432, %443
  %437 = phi i32 [ %445, %443 ], [ %430, %432 ]
  %438 = phi i32 [ %444, %443 ], [ %428, %432 ]
  %439 = zext i32 %437 to i64
  %440 = getelementptr inbounds %struct.bitmap_element_def, ptr %429, i64 0, i32 3, i64 %439
  %441 = load i64, ptr %440, align 8, !tbaa !111
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %408

443:                                              ; preds = %436
  %444 = add i32 %438, 64
  %445 = add i32 %437, 1
  %446 = icmp eq i32 %445, 2
  br i1 %446, label %447, label %436, !llvm.loop !113

447:                                              ; preds = %443, %426
  %448 = phi i64 [ %427, %426 ], [ %441, %443 ]
  %449 = phi i32 [ %428, %426 ], [ %435, %443 ]
  %450 = phi i32 [ %430, %426 ], [ 2, %443 ]
  %451 = load ptr, ptr %429, align 8, !tbaa !114
  %452 = icmp eq ptr %451, null
  br i1 %452, label %457, label %453

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.bitmap_element_def, ptr %451, i64 0, i32 2
  %455 = load i32, ptr %454, align 8, !tbaa !109
  %456 = shl i32 %455, 7
  br label %426, !llvm.loop !115

457:                                              ; preds = %447, %415, %408
  %458 = phi i64 [ %409, %408 ], [ %418, %415 ], [ %448, %447 ]
  %459 = phi i32 [ %410, %408 ], [ %410, %415 ], [ %450, %447 ]
  %460 = phi i32 [ %411, %408 ], [ %419, %415 ], [ %449, %447 ]
  %461 = phi ptr [ %412, %408 ], [ %412, %415 ], [ %451, %447 ]
  %462 = phi i1 [ false, %408 ], [ false, %415 ], [ true, %447 ]
  br i1 %462, label %480, label %463

463:                                              ; preds = %457
  %464 = load ptr, ptr %359, align 8, !tbaa !85
  %465 = zext i32 %460 to i64
  %466 = getelementptr inbounds %struct.vertex, ptr %464, i64 %465, i32 4
  %467 = load ptr, ptr %466, align 8, !tbaa !86
  %468 = getelementptr inbounds %struct.rdg_vertex, ptr %467, i64 0, i32 1
  %469 = load i8, ptr %468, align 8, !tbaa !88
  %470 = icmp ne i8 %469, 0
  %471 = zext i1 %470 to i32
  %472 = add nsw i32 %406, %471
  %473 = getelementptr inbounds %struct.rdg_vertex, ptr %467, i64 0, i32 2
  %474 = load i8, ptr %473, align 1, !tbaa !105
  %475 = icmp ne i8 %474, 0
  %476 = zext i1 %475 to i32
  %477 = add nsw i32 %472, %476
  %478 = lshr i64 %458, 1
  %479 = add i32 %460, 1
  br label %401, !llvm.loop !116

480:                                              ; preds = %457
  %481 = icmp eq i32 %358, %406
  %482 = add nuw i64 %378, 1
  br i1 %481, label %483, label %377, !llvm.loop !117

483:                                              ; preds = %480
  br i1 %388, label %484, label %1178

484:                                              ; preds = %386, %483
  %485 = getelementptr inbounds i8, ptr %11, i64 8
  %486 = getelementptr inbounds i8, ptr %11, i64 16
  %487 = getelementptr inbounds i8, ptr %5, i64 8
  %488 = getelementptr inbounds i8, ptr %5, i64 16
  %489 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %6, i64 0, i32 1
  %490 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %6, i64 0, i32 3
  %491 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %6, i64 0, i32 2
  %492 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %6, i64 0, i32 2, i32 1
  %493 = getelementptr inbounds i8, ptr %3, i64 8
  %494 = getelementptr inbounds i8, ptr %3, i64 16
  %495 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %496 = icmp eq ptr %495, null
  br i1 %496, label %515, label %497

497:                                              ; preds = %484
  %498 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %499 = and i32 %498, 8
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %515, label %501

501:                                              ; preds = %497, %513
  %502 = phi i64 [ %514, %513 ], [ 0, %497 ]
  br i1 %344, label %510, label %503

503:                                              ; preds = %501
  %504 = load i32, ptr %343, align 8, !tbaa !54
  %505 = zext i32 %504 to i64
  %506 = icmp ult i64 %502, %505
  br i1 %506, label %507, label %510

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %343, i64 0, i32 2, i64 %502
  %509 = load ptr, ptr %508, align 8, !tbaa !35
  br label %510

510:                                              ; preds = %507, %503, %501
  %511 = phi ptr [ %509, %507 ], [ null, %503 ], [ null, %501 ]
  %512 = phi i1 [ false, %507 ], [ true, %503 ], [ true, %501 ]
  br i1 %512, label %515, label %513

513:                                              ; preds = %510
  call void @debug_bitmap_file(ptr noundef nonnull %495, ptr noundef %511) #16
  %514 = add nuw i64 %502, 1
  br label %501, !llvm.loop !56

515:                                              ; preds = %510, %497, %484
  %516 = add nsw i32 %348, -1
  %517 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 3
  %518 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 2
  %519 = sext i32 %516 to i64
  br label %520

520:                                              ; preds = %1173, %515
  %521 = phi i64 [ %1176, %1173 ], [ 0, %515 ]
  %522 = load ptr, ptr %16, align 8
  %523 = icmp eq ptr %522, null
  br i1 %523, label %531, label %524

524:                                              ; preds = %520
  %525 = load i32, ptr %522, align 8, !tbaa !54
  %526 = zext i32 %525 to i64
  %527 = icmp ult i64 %521, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %522, i64 0, i32 2, i64 %521
  %530 = load ptr, ptr %529, align 8, !tbaa !35
  br label %531

531:                                              ; preds = %528, %524, %520
  %532 = phi ptr [ %530, %528 ], [ null, %524 ], [ null, %520 ]
  %533 = phi i1 [ false, %528 ], [ true, %524 ], [ true, %520 ]
  br i1 %533, label %1177, label %534

534:                                              ; preds = %531
  %535 = icmp slt i64 %521, %519
  %536 = call ptr @number_of_exit_cond_executions(ptr noundef nonnull %106) #16
  %537 = icmp eq ptr %536, null
  %538 = load ptr, ptr @chrec_dont_know, align 8
  %539 = icmp eq ptr %536, %538
  %540 = select i1 %537, i1 true, i1 %539
  br i1 %540, label %1004, label %541

541:                                              ; preds = %534
  %542 = call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %106) #16
  %543 = load i32, ptr %109, align 4, !tbaa !78
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %634, label %545

545:                                              ; preds = %541, %629
  %546 = phi i64 [ %630, %629 ], [ 0, %541 ]
  %547 = phi i32 [ %628, %629 ], [ 0, %541 ]
  %548 = phi ptr [ %627, %629 ], [ null, %541 ]
  %549 = phi ptr [ %625, %629 ], [ %536, %541 ]
  %550 = getelementptr inbounds ptr, ptr %542, i64 %546
  %551 = load ptr, ptr %550, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %551) #16
  %552 = load ptr, ptr %12, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  %553 = icmp eq ptr %552, null
  br i1 %553, label %561, label %554

554:                                              ; preds = %545, %554
  %555 = phi i32 [ %557, %554 ], [ %547, %545 ]
  %556 = phi ptr [ %559, %554 ], [ %552, %545 ]
  %557 = add i32 %555, 1
  %558 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %556, i64 0, i32 2
  %559 = load ptr, ptr %558, align 8, !tbaa !119
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %554, !llvm.loop !121

561:                                              ; preds = %554, %545
  %562 = phi i32 [ %547, %545 ], [ %557, %554 ]
  %563 = getelementptr inbounds %struct.basic_block_def, ptr %551, i64 0, i32 13
  %564 = load i32, ptr %563, align 8, !tbaa !122, !noalias !124
  %565 = and i32 %564, 512
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %573

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.basic_block_def, ptr %551, i64 0, i32 7
  %569 = load ptr, ptr %568, align 8, !tbaa !46, !noalias !124
  %570 = icmp eq ptr %569, null
  br i1 %570, label %573, label %571

571:                                              ; preds = %567
  %572 = load ptr, ptr %569, align 8, !tbaa !127, !noalias !124
  br label %573

573:                                              ; preds = %571, %567, %561
  %574 = phi ptr [ %572, %571 ], [ null, %567 ], [ null, %561 ]
  %575 = icmp eq ptr %574, null
  br i1 %575, label %578, label %576

576:                                              ; preds = %573
  %577 = load ptr, ptr %574, align 8, !tbaa !129, !noalias !124
  br label %578

578:                                              ; preds = %576, %573
  %579 = phi ptr [ %577, %576 ], [ null, %573 ]
  %580 = icmp eq ptr %579, null
  br i1 %580, label %624, label %581

581:                                              ; preds = %578, %620
  %582 = phi i32 [ %587, %620 ], [ %562, %578 ]
  %583 = phi ptr [ %619, %620 ], [ %548, %578 ]
  %584 = phi ptr [ %616, %620 ], [ %549, %578 ]
  %585 = phi ptr [ %622, %620 ], [ %579, %578 ]
  %586 = load ptr, ptr %585, align 8, !tbaa !131
  %587 = add i32 %582, 1
  %588 = call i32 @bitmap_bit_p(ptr noundef %532, i32 noundef %582) #16
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %615, label %590

590:                                              ; preds = %581
  %591 = load i32, ptr %586, align 8
  %592 = and i32 %591, 255
  %593 = icmp eq i32 %592, 6
  br i1 %593, label %594, label %615

594:                                              ; preds = %590
  %595 = zext nneg i32 %592 to i64
  %596 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !50
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %598
  %600 = load i64, ptr %599, align 8, !tbaa !111
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %594
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.10) #16
  br label %603

603:                                              ; preds = %602, %594
  %604 = getelementptr inbounds i8, ptr %586, i64 %600
  %605 = load ptr, ptr %604, align 8, !tbaa !35
  %606 = call zeroext i8 @is_gimple_reg(ptr noundef %605) #16
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %608, label %615

608:                                              ; preds = %603
  %609 = icmp eq ptr %583, null
  br i1 %609, label %610, label %615

610:                                              ; preds = %608
  %611 = load ptr, ptr %517, align 8, !tbaa !132
  %612 = icmp eq ptr %551, %611
  br i1 %612, label %613, label %615

613:                                              ; preds = %610
  %614 = call ptr @number_of_latch_executions(ptr noundef nonnull %106) #16
  br label %615

615:                                              ; preds = %613, %610, %608, %603, %590, %581
  %616 = phi ptr [ %584, %608 ], [ %584, %603 ], [ %614, %613 ], [ %584, %610 ], [ %584, %590 ], [ %584, %581 ]
  %617 = phi i1 [ false, %608 ], [ true, %603 ], [ true, %613 ], [ true, %610 ], [ true, %590 ], [ true, %581 ]
  %618 = phi i32 [ 11, %608 ], [ 0, %603 ], [ 0, %613 ], [ 0, %610 ], [ 0, %590 ], [ 0, %581 ]
  %619 = phi ptr [ %583, %608 ], [ %583, %603 ], [ %586, %613 ], [ %586, %610 ], [ %583, %590 ], [ %583, %581 ]
  br i1 %617, label %620, label %624

620:                                              ; preds = %615
  %621 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %585, i64 0, i32 2
  %622 = load ptr, ptr %621, align 8, !tbaa !119
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %581, !llvm.loop !133

624:                                              ; preds = %620, %615, %578
  %625 = phi ptr [ %549, %578 ], [ %616, %615 ], [ %616, %620 ]
  %626 = phi i32 [ 0, %578 ], [ 0, %620 ], [ %618, %615 ]
  %627 = phi ptr [ %548, %578 ], [ %619, %615 ], [ %619, %620 ]
  %628 = phi i32 [ %562, %578 ], [ %587, %615 ], [ %587, %620 ]
  switch i32 %626, label %1004 [
    i32 0, label %629
    i32 11, label %1002
  ]

629:                                              ; preds = %624
  %630 = add nuw nsw i64 %546, 1
  %631 = load i32, ptr %109, align 4, !tbaa !78
  %632 = zext i32 %631 to i64
  %633 = icmp ult i64 %630, %632
  br i1 %633, label %545, label %634, !llvm.loop !134

634:                                              ; preds = %629, %541
  %635 = phi ptr [ %536, %541 ], [ %625, %629 ]
  %636 = phi ptr [ null, %541 ], [ %627, %629 ]
  %637 = icmp eq ptr %636, null
  br i1 %637, label %1002, label %638

638:                                              ; preds = %634
  %639 = load i32, ptr %636, align 8
  %640 = and i32 %639, 255
  %641 = add nsw i32 %640, -10
  %642 = icmp ult i32 %641, -9
  br i1 %642, label %655, label %643

643:                                              ; preds = %638
  %644 = zext nneg i32 %640 to i64
  %645 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !50
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %647
  %649 = load i64, ptr %648, align 8, !tbaa !111
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %643
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.10) #16
  br label %652

652:                                              ; preds = %651, %643
  %653 = getelementptr inbounds i8, ptr %636, i64 %649
  %654 = load ptr, ptr %653, align 8, !tbaa !35
  br label %655

655:                                              ; preds = %652, %638
  %656 = phi ptr [ %654, %652 ], [ null, %638 ]
  %657 = load i32, ptr %636, align 8
  %658 = and i32 %657, 255
  %659 = add nsw i32 %658, -10
  %660 = icmp ult i32 %659, -9
  br i1 %660, label %674, label %661

661:                                              ; preds = %655
  %662 = zext nneg i32 %658 to i64
  %663 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %662
  %664 = load i32, ptr %663, align 4, !tbaa !50
  %665 = zext i32 %664 to i64
  %666 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %665
  %667 = load i64, ptr %666, align 8, !tbaa !111
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %669, label %670

669:                                              ; preds = %661
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.10) #16
  br label %670

670:                                              ; preds = %669, %661
  %671 = getelementptr inbounds i8, ptr %636, i64 %667
  %672 = getelementptr inbounds ptr, ptr %671, i64 1
  %673 = load ptr, ptr %672, align 8, !tbaa !35
  br label %674

674:                                              ; preds = %670, %655
  %675 = phi ptr [ %673, %670 ], [ null, %655 ]
  %676 = load i64, ptr %656, align 8
  %677 = trunc i64 %676 to i16
  switch i16 %677, label %1002 [
    i16 45, label %678
    i16 47, label %678
  ]

678:                                              ; preds = %674, %674
  %679 = call ptr @loop_preheader_edge(ptr noundef nonnull %106) #16
  %680 = load ptr, ptr %679, align 8, !tbaa !135
  %681 = getelementptr inbounds %struct.basic_block_def, ptr %680, i64 0, i32 13
  %682 = load i32, ptr %681, align 8, !tbaa !122, !noalias !137
  %683 = and i32 %682, 512
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %691

685:                                              ; preds = %678
  %686 = getelementptr inbounds %struct.basic_block_def, ptr %680, i64 0, i32 7
  %687 = load ptr, ptr %686, align 8, !tbaa !46, !noalias !137
  %688 = icmp eq ptr %687, null
  br i1 %688, label %691, label %689

689:                                              ; preds = %685
  %690 = load ptr, ptr %687, align 8, !tbaa !127, !noalias !137
  br label %691

691:                                              ; preds = %689, %685, %678
  %692 = phi ptr [ %690, %689 ], [ null, %685 ], [ null, %678 ]
  %693 = icmp eq ptr %692, null
  br i1 %693, label %697, label %694

694:                                              ; preds = %691
  %695 = getelementptr inbounds %struct.gimple_seq_d, ptr %692, i64 0, i32 1
  %696 = load ptr, ptr %695, align 8, !tbaa !140, !noalias !137
  br label %697

697:                                              ; preds = %694, %691
  %698 = phi ptr [ %696, %694 ], [ null, %691 ]
  %699 = load i32, ptr %636, align 8
  %700 = trunc i32 %699 to i8
  switch i8 %700, label %703 [
    i8 6, label %701
    i8 1, label %701
    i8 8, label %704
  ]

701:                                              ; preds = %697, %697
  %702 = lshr i32 %699, 16
  br label %704

703:                                              ; preds = %697
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.10) #16
  br label %704

704:                                              ; preds = %697, %703, %701
  %705 = phi i32 [ %702, %701 ], [ 0, %703 ], [ 59, %697 ]
  %706 = zext nneg i32 %705 to i64
  %707 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !46
  %709 = icmp eq i8 %708, 3
  br i1 %709, label %710, label %730

710:                                              ; preds = %704
  %711 = load i32, ptr %636, align 8
  %712 = and i32 %711, 255
  %713 = add nsw i32 %712, -1
  %714 = icmp ult i32 %713, 9
  call void @llvm.assume(i1 %714)
  %715 = zext nneg i32 %712 to i64
  %716 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %715
  %717 = load i32, ptr %716, align 4, !tbaa !50
  %718 = zext i32 %717 to i64
  %719 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %718
  %720 = load i64, ptr %719, align 8, !tbaa !111
  %721 = icmp eq i64 %720, 0
  br i1 %721, label %722, label %723

722:                                              ; preds = %710
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.10) #16
  br label %723

723:                                              ; preds = %722, %710
  %724 = getelementptr inbounds i8, ptr %636, i64 %720
  %725 = getelementptr inbounds ptr, ptr %724, i64 1
  %726 = load ptr, ptr %725, align 8, !tbaa !35
  %727 = load i64, ptr %726, align 8
  %728 = trunc i64 %727 to i32
  %729 = and i32 %728, 65535
  br label %730

730:                                              ; preds = %723, %704
  %731 = phi i32 [ %729, %723 ], [ %705, %704 ]
  %732 = icmp eq i32 %731, 23
  br i1 %732, label %733, label %863

733:                                              ; preds = %730
  %734 = call i32 @integer_zerop(ptr noundef %675) #16
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %739

736:                                              ; preds = %733
  %737 = call i32 @real_zerop(ptr noundef %675) #16
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %863, label %739

739:                                              ; preds = %736, %733
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11)
  store ptr %698, ptr %11, align 8
  store ptr %692, ptr %485, align 8
  store ptr %680, ptr %486, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %740 = call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #16
  %741 = getelementptr inbounds %struct.gimple_statement_base, ptr %636, i64 0, i32 2
  %742 = load i32, ptr %741, align 8, !tbaa !46
  store ptr %636, ptr %740, align 8, !tbaa !141
  %743 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 1
  store ptr %656, ptr %743, align 8, !tbaa !146
  %744 = call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %740) #16
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %861, label %746

746:                                              ; preds = %739
  %747 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %748 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 4
  %749 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 4, i32 3
  %750 = load ptr, ptr %749, align 8, !tbaa !147
  %751 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %747, ptr noundef %750) #16
  %752 = getelementptr inbounds %struct.tree_common, ptr %656, i64 0, i32 2
  %753 = load ptr, ptr %752, align 8, !tbaa !46
  %754 = getelementptr inbounds %struct.tree_type, ptr %753, i64 0, i32 3
  %755 = load ptr, ptr %754, align 8, !tbaa !46
  %756 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %751, ptr noundef %755) #16
  %757 = call i32 @integer_zerop(ptr noundef %756) #16
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %781, label %759

759:                                              ; preds = %746
  %760 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %761 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 4, i32 1
  %762 = load ptr, ptr %761, align 8, !tbaa !148
  %763 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 4, i32 2
  %764 = load ptr, ptr %763, align 8, !tbaa !149
  %765 = call ptr @size_binop_loc(i32 noundef %742, i32 noundef 63, ptr noundef %762, ptr noundef %764) #16
  %766 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %760, ptr noundef %765) #16
  %767 = load ptr, ptr %748, align 8, !tbaa !150
  %768 = getelementptr inbounds %struct.tree_common, ptr %767, i64 0, i32 2
  %769 = load ptr, ptr %768, align 8, !tbaa !46
  %770 = call ptr @fold_build2_stat_loc(i32 noundef %742, i32 noundef 66, ptr noundef %769, ptr noundef %767, ptr noundef %766) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %771 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %772 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %771, ptr noundef %635) #16
  %773 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %774 = load ptr, ptr %752, align 8, !tbaa !46
  %775 = getelementptr inbounds %struct.tree_type, ptr %774, i64 0, i32 3
  %776 = load ptr, ptr %775, align 8, !tbaa !46
  %777 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %773, ptr noundef %776) #16
  %778 = call ptr @fold_build2_stat_loc(i32 noundef %742, i32 noundef 65, ptr noundef %771, ptr noundef %772, ptr noundef %777) #16
  %779 = call ptr @force_gimple_operand(ptr noundef %778, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #16
  %780 = load ptr, ptr %8, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %780) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %820

781:                                              ; preds = %746
  %782 = load ptr, ptr %752, align 8, !tbaa !46
  %783 = getelementptr inbounds %struct.tree_type, ptr %782, i64 0, i32 3
  %784 = load ptr, ptr %783, align 8, !tbaa !46
  %785 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %786 = load ptr, ptr %749, align 8, !tbaa !147
  %787 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %785, ptr noundef %786) #16
  %788 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %784, ptr noundef %787) #16
  %789 = call i32 @integer_zerop(ptr noundef %788) #16
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %861, label %791

791:                                              ; preds = %781
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %792 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %793 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %792, ptr noundef %635) #16
  %794 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %795 = load ptr, ptr %752, align 8, !tbaa !46
  %796 = getelementptr inbounds %struct.tree_type, ptr %795, i64 0, i32 3
  %797 = load ptr, ptr %796, align 8, !tbaa !46
  %798 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %794, ptr noundef %797) #16
  %799 = call ptr @fold_build2_stat_loc(i32 noundef %742, i32 noundef 65, ptr noundef %792, ptr noundef %793, ptr noundef %798) #16
  %800 = call ptr @force_gimple_operand(ptr noundef %799, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #16
  %801 = load ptr, ptr %7, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %801) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %802 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 4, i32 1
  %803 = load ptr, ptr %802, align 8, !tbaa !148
  %804 = getelementptr inbounds %struct.data_reference, ptr %740, i64 0, i32 4, i32 2
  %805 = load ptr, ptr %804, align 8, !tbaa !149
  %806 = call ptr @size_binop_loc(i32 noundef %742, i32 noundef 63, ptr noundef %803, ptr noundef %805) #16
  %807 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %808 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %807, ptr noundef %806) #16
  %809 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %810 = call ptr @fold_convert_loc(i32 noundef %742, ptr noundef %809, ptr noundef %800) #16
  %811 = call ptr @size_binop_loc(i32 noundef %742, i32 noundef 64, ptr noundef %808, ptr noundef %810) #16
  %812 = load ptr, ptr %752, align 8, !tbaa !46
  %813 = getelementptr inbounds %struct.tree_type, ptr %812, i64 0, i32 3
  %814 = load ptr, ptr %813, align 8, !tbaa !46
  %815 = call ptr @size_binop_loc(i32 noundef %742, i32 noundef 63, ptr noundef %811, ptr noundef %814) #16
  %816 = load ptr, ptr %748, align 8, !tbaa !150
  %817 = getelementptr inbounds %struct.tree_common, ptr %816, i64 0, i32 2
  %818 = load ptr, ptr %817, align 8, !tbaa !46
  %819 = call ptr @fold_build2_stat_loc(i32 noundef %742, i32 noundef 66, ptr noundef %818, ptr noundef %816, ptr noundef %815) #16
  br label %820

820:                                              ; preds = %791, %759
  %821 = phi ptr [ %779, %759 ], [ %800, %791 ]
  %822 = phi ptr [ %770, %759 ], [ %819, %791 ]
  %823 = call ptr @force_gimple_operand(ptr noundef %822, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #16
  %824 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %824) #16
  %825 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 333), align 8, !tbaa !35
  %826 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %825) #16
  %827 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %828 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %826, i32 noundef 3, ptr noundef %823, ptr noundef %827, ptr noundef %821) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %828) #16
  %829 = load ptr, ptr %9, align 8, !tbaa !35
  %830 = icmp eq ptr %829, null
  br i1 %830, label %833, label %831

831:                                              ; preds = %820
  %832 = load ptr, ptr %829, align 8, !tbaa !129, !noalias !151
  br label %833

833:                                              ; preds = %831, %820
  %834 = phi ptr [ %832, %831 ], [ null, %820 ]
  %835 = icmp eq ptr %834, null
  br i1 %835, label %851, label %836

836:                                              ; preds = %833, %847
  %837 = phi ptr [ %849, %847 ], [ %834, %833 ]
  %838 = load ptr, ptr %837, align 8, !tbaa !131
  %839 = load i32, ptr %838, align 8
  %840 = and i32 %839, 255
  %841 = add nsw i32 %840, -10
  %842 = icmp ult i32 %841, -9
  %843 = and i32 %839, 8192
  %844 = icmp eq i32 %843, 0
  %845 = or i1 %844, %842
  br i1 %845, label %847, label %846

846:                                              ; preds = %836
  call void @update_stmt_operands(ptr noundef nonnull %838) #16
  br label %847

847:                                              ; preds = %846, %836
  %848 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %837, i64 0, i32 2
  %849 = load ptr, ptr %848, align 8, !tbaa !119
  %850 = icmp eq ptr %849, null
  br i1 %850, label %851, label %836, !llvm.loop !154

851:                                              ; preds = %847, %833
  %852 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gsi_insert_seq_after(ptr noundef nonnull %11, ptr noundef %852, i32 noundef 2) #16
  %853 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %854 = icmp eq ptr %853, null
  br i1 %854, label %861, label %855

855:                                              ; preds = %851
  %856 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %857 = and i32 %856, 8
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %861, label %859

859:                                              ; preds = %855
  %860 = call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr nonnull %853)
  br label %861

861:                                              ; preds = %859, %855, %851, %781, %739
  %862 = phi i8 [ 1, %859 ], [ 1, %855 ], [ 1, %851 ], [ 0, %781 ], [ 0, %739 ]
  call void @free_data_ref(ptr noundef nonnull %740) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11)
  br label %863

863:                                              ; preds = %861, %736, %730
  %864 = phi i8 [ %862, %861 ], [ 0, %736 ], [ 0, %730 ]
  %865 = icmp eq i8 %864, 0
  %866 = or i1 %535, %865
  br i1 %866, label %1002, label %867

867:                                              ; preds = %863
  %868 = load i32, ptr %109, align 4, !tbaa !78
  %869 = call ptr @loop_preheader_edge(ptr noundef nonnull %106) #16
  %870 = load ptr, ptr %869, align 8, !tbaa !135
  %871 = call ptr @single_exit(ptr noundef nonnull %106) #16
  %872 = getelementptr inbounds %struct.edge_def, ptr %871, i64 0, i32 1
  %873 = load ptr, ptr %872, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %874 = getelementptr inbounds %struct.basic_block_def, ptr %873, i64 0, i32 13
  %875 = load i32, ptr %874, align 8, !tbaa !122
  %876 = and i32 %875, 512
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %879, label %878

878:                                              ; preds = %867
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 510, ptr noundef nonnull @.str.10) #16
  br label %879

879:                                              ; preds = %878, %867
  %880 = getelementptr inbounds %struct.basic_block_def, ptr %873, i64 0, i32 7
  %881 = load ptr, ptr %880, align 8, !tbaa !46
  %882 = icmp eq ptr %881, null
  br i1 %882, label %886, label %883

883:                                              ; preds = %879
  %884 = getelementptr inbounds %struct.gimple_bb_info, ptr %881, i64 0, i32 1
  %885 = load ptr, ptr %884, align 8, !tbaa !156
  br label %886

886:                                              ; preds = %883, %879
  %887 = phi ptr [ %885, %883 ], [ null, %879 ]
  %888 = icmp eq ptr %887, null
  br i1 %888, label %891, label %889

889:                                              ; preds = %886
  %890 = load ptr, ptr %887, align 8, !tbaa !129, !noalias !157
  br label %891

891:                                              ; preds = %889, %886
  %892 = phi ptr [ %890, %889 ], [ null, %886 ]
  %893 = icmp eq ptr %892, null
  br i1 %893, label %900, label %894

894:                                              ; preds = %891
  %895 = load ptr, ptr %892, align 8, !tbaa !131, !noalias !157
  %896 = icmp eq ptr %895, null
  br i1 %896, label %900, label %897

897:                                              ; preds = %894
  %898 = getelementptr inbounds %struct.gimple_statement_base, ptr %895, i64 0, i32 4
  %899 = load ptr, ptr %898, align 8, !tbaa !46, !noalias !157
  br label %900

900:                                              ; preds = %897, %894, %891
  %901 = phi ptr [ %899, %897 ], [ null, %894 ], [ null, %891 ]
  store ptr %892, ptr %5, align 8, !tbaa.struct !118
  store ptr %887, ptr %487, align 8, !tbaa.struct !160
  store ptr %901, ptr %488, align 8, !tbaa.struct !161
  %902 = icmp eq ptr %892, null
  br i1 %902, label %989, label %903

903:                                              ; preds = %900, %986
  %904 = phi ptr [ %987, %986 ], [ %892, %900 ]
  %905 = load ptr, ptr %904, align 8, !tbaa !131
  %906 = getelementptr inbounds %struct.gimple_statement_phi, ptr %905, i64 0, i32 3
  %907 = load ptr, ptr %906, align 8, !tbaa !46
  %908 = getelementptr inbounds %struct.gimple_statement_phi, ptr %905, i64 0, i32 4, i64 0, i32 0, i32 3
  %909 = load ptr, ptr %908, align 8, !tbaa !162
  %910 = load ptr, ptr %909, align 8, !tbaa !35
  %911 = getelementptr inbounds %struct.gimple_statement_phi, ptr %905, i64 0, i32 2
  %912 = load i32, ptr %911, align 4, !tbaa !46
  %913 = icmp eq i32 %912, 1
  br i1 %913, label %915, label %914

914:                                              ; preds = %903
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 335, ptr noundef nonnull @.str.10) #16
  br label %915

915:                                              ; preds = %914, %903
  %916 = call zeroext i8 @is_gimple_reg(ptr noundef %907) #16
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %918, label %985

918:                                              ; preds = %915
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %919 = getelementptr inbounds %struct.tree_ssa_name, ptr %907, i64 0, i32 5
  store ptr %919, ptr %489, align 8, !tbaa !164
  %920 = getelementptr inbounds %struct.tree_ssa_name, ptr %907, i64 0, i32 5, i32 1
  %921 = load ptr, ptr %920, align 8, !tbaa !166
  store ptr %921, ptr %6, align 8, !tbaa !167
  %922 = icmp eq ptr %921, %919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %491, i8 0, i64 40, i1 false)
  br i1 %922, label %924, label %923

923:                                              ; preds = %918
  call fastcc void @link_use_stmts_after(ptr noundef %921, ptr noundef nonnull %6)
  br label %924

924:                                              ; preds = %923, %918
  %925 = load ptr, ptr %6, align 8, !tbaa !167
  %926 = load ptr, ptr %489, align 8, !tbaa !164
  %927 = icmp eq ptr %925, %926
  br i1 %927, label %984, label %928

928:                                              ; preds = %924
  %929 = icmp eq ptr %910, null
  %930 = getelementptr inbounds %struct.tree_ssa_name, ptr %910, i64 0, i32 5
  %931 = getelementptr inbounds %struct.tree_ssa_name, ptr %910, i64 0, i32 5, i32 1
  br label %932

932:                                              ; preds = %928, %980
  %933 = phi ptr [ %925, %928 ], [ %981, %980 ]
  %934 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %933, i64 0, i32 1
  %935 = load ptr, ptr %934, align 8, !tbaa !166
  store ptr %935, ptr %490, align 8, !tbaa !168
  %936 = load ptr, ptr %6, align 8, !tbaa !167
  %937 = icmp eq ptr %936, %491
  br i1 %937, label %969, label %938

938:                                              ; preds = %932, %965
  %939 = phi ptr [ %966, %965 ], [ %933, %932 ]
  %940 = load ptr, ptr %939, align 8, !tbaa !169
  %941 = icmp eq ptr %940, null
  br i1 %941, label %947, label %942

942:                                              ; preds = %938
  %943 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %939, i64 0, i32 1
  %944 = load ptr, ptr %943, align 8, !tbaa !166
  %945 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %940, i64 0, i32 1
  store ptr %944, ptr %945, align 8, !tbaa !166
  %946 = load ptr, ptr %943, align 8, !tbaa !166
  store ptr %940, ptr %946, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %939, i8 0, i64 16, i1 false)
  br label %947

947:                                              ; preds = %942, %938
  %948 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %939, i64 0, i32 3
  %949 = load ptr, ptr %948, align 8, !tbaa !162
  store ptr %910, ptr %949, align 8, !tbaa !35
  br i1 %929, label %954, label %950

950:                                              ; preds = %947
  %951 = load i64, ptr %910, align 8
  %952 = and i64 %951, 65535
  %953 = icmp eq i64 %952, 141
  br i1 %953, label %955, label %954

954:                                              ; preds = %950, %947
  store ptr null, ptr %939, align 8, !tbaa !169
  br label %959

955:                                              ; preds = %950
  store ptr %930, ptr %939, align 8, !tbaa !169
  %956 = load ptr, ptr %931, align 8, !tbaa !166
  %957 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %939, i64 0, i32 1
  store ptr %956, ptr %957, align 8, !tbaa !166
  %958 = load ptr, ptr %931, align 8, !tbaa !166
  store ptr %939, ptr %958, align 8, !tbaa !169
  store ptr %939, ptr %931, align 8, !tbaa !166
  br label %959

959:                                              ; preds = %955, %954
  %960 = load ptr, ptr %490, align 8, !tbaa !168
  store ptr %960, ptr %6, align 8, !tbaa !167
  %961 = icmp eq ptr %960, %491
  br i1 %961, label %965, label %962

962:                                              ; preds = %959
  %963 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %960, i64 0, i32 1
  %964 = load ptr, ptr %963, align 8, !tbaa !166
  store ptr %964, ptr %490, align 8, !tbaa !168
  br label %965

965:                                              ; preds = %962, %959
  %966 = phi ptr [ %960, %962 ], [ null, %959 ]
  %967 = load ptr, ptr %6, align 8, !tbaa !167
  %968 = icmp eq ptr %967, %491
  br i1 %968, label %969, label %938, !llvm.loop !170

969:                                              ; preds = %965, %932
  %970 = load ptr, ptr %492, align 8, !tbaa !166
  store ptr %970, ptr %6, align 8, !tbaa !167
  %971 = load ptr, ptr %489, align 8, !tbaa !164
  %972 = icmp eq ptr %970, %971
  br i1 %972, label %973, label %979

973:                                              ; preds = %969
  %974 = load ptr, ptr %491, align 8, !tbaa !169
  %975 = icmp eq ptr %974, null
  br i1 %975, label %980, label %976

976:                                              ; preds = %973
  %977 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %974, i64 0, i32 1
  store ptr %970, ptr %977, align 8, !tbaa !166
  %978 = load ptr, ptr %492, align 8, !tbaa !166
  store ptr %974, ptr %978, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %491, i8 0, i64 16, i1 false)
  br label %980

979:                                              ; preds = %969
  call fastcc void @link_use_stmts_after(ptr noundef %970, ptr noundef nonnull %6)
  br label %980

980:                                              ; preds = %979, %976, %973
  %981 = load ptr, ptr %6, align 8, !tbaa !167
  %982 = load ptr, ptr %489, align 8, !tbaa !164
  %983 = icmp eq ptr %981, %982
  br i1 %983, label %984, label %932, !llvm.loop !171

984:                                              ; preds = %980, %924
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  br label %986

985:                                              ; preds = %915
  call void @replace_uses_by(ptr noundef %907, ptr noundef %910) #16
  br label %986

986:                                              ; preds = %985, %984
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext 1) #16
  %987 = load ptr, ptr %5, align 8
  %988 = icmp eq ptr %987, null
  br i1 %988, label %989, label %903, !llvm.loop !172

989:                                              ; preds = %986, %900
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %990 = call ptr @make_edge(ptr noundef %870, ptr noundef %873, i32 noundef 1) #16
  call void @cancel_loop_tree(ptr noundef nonnull %106) #16
  %991 = icmp eq i32 %868, 0
  br i1 %991, label %1000, label %992

992:                                              ; preds = %989
  %993 = zext i32 %868 to i64
  br label %994

994:                                              ; preds = %992, %994
  %995 = phi i64 [ 0, %992 ], [ %998, %994 ]
  %996 = getelementptr inbounds ptr, ptr %542, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !35
  call void @delete_basic_block(ptr noundef %997) #16
  %998 = add nuw nsw i64 %995, 1
  %999 = icmp eq i64 %998, %993
  br i1 %999, label %1000, label %994, !llvm.loop !173

1000:                                             ; preds = %994, %989
  %1001 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %873) #16
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %873, ptr noundef %1001) #16
  br label %1002

1002:                                             ; preds = %624, %1000, %863, %674, %634
  %1003 = phi i8 [ %864, %863 ], [ %864, %1000 ], [ 0, %634 ], [ 0, %674 ], [ 0, %624 ]
  call void @free(ptr noundef %542)
  br label %1004

1004:                                             ; preds = %624, %1002, %534
  %1005 = phi i8 [ %1003, %1002 ], [ 0, %534 ], [ undef, %624 ]
  %1006 = icmp eq i8 %1005, 0
  br i1 %1006, label %1007, label %1173

1007:                                             ; preds = %1004
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  br i1 %535, label %1008, label %1095

1008:                                             ; preds = %1007
  %1009 = call ptr @loop_preheader_edge(ptr noundef nonnull %106) #16
  %1010 = call ptr @single_exit(ptr noundef nonnull %106) #16
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1088, label %1012

1012:                                             ; preds = %1008
  call void @initialize_original_copy_tables() #16
  %1013 = call ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef nonnull %106, ptr noundef %1009) #16
  call void @free_original_copy_tables() #16
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1088, label %1015

1015:                                             ; preds = %1012
  %1016 = call ptr @loop_latch_edge(ptr noundef nonnull %106) #16
  %1017 = call ptr @loop_preheader_edge(ptr noundef nonnull %106) #16
  %1018 = call ptr @loop_preheader_edge(ptr noundef nonnull %1013) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  %1019 = getelementptr inbounds %struct.loop, ptr %1013, i64 0, i32 2
  %1020 = load ptr, ptr %1019, align 8, !tbaa !174
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %1020) #16
  %1021 = load ptr, ptr %1, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %1022 = load ptr, ptr %518, align 8, !tbaa !174
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %1022) #16
  %1023 = load ptr, ptr %2, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %1024 = icmp eq ptr %1021, null
  %1025 = icmp eq ptr %1023, null
  %1026 = select i1 %1024, i1 true, i1 %1025
  br i1 %1026, label %1087, label %1027

1027:                                             ; preds = %1015
  %1028 = getelementptr inbounds %struct.edge_def, ptr %1017, i64 0, i32 6
  %1029 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 6
  br label %1030

1030:                                             ; preds = %1027, %1077
  %1031 = phi ptr [ %1023, %1027 ], [ %1083, %1077 ]
  %1032 = phi ptr [ %1021, %1027 ], [ %1081, %1077 ]
  %1033 = load ptr, ptr %1032, align 8, !tbaa !131
  %1034 = load ptr, ptr %1031, align 8, !tbaa !131
  %1035 = load i32, ptr %1028, align 4, !tbaa !175
  %1036 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1034, i64 0, i32 1
  %1037 = load i32, ptr %1036, align 8, !tbaa !46
  %1038 = icmp ult i32 %1037, %1035
  br i1 %1038, label %1039, label %1040

1039:                                             ; preds = %1030
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.10) #16
  br label %1040

1040:                                             ; preds = %1039, %1030
  %1041 = zext i32 %1035 to i64
  %1042 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1034, i64 0, i32 4, i64 %1041, i32 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !162
  %1044 = load ptr, ptr %1043, align 8, !tbaa !35
  %1045 = load i32, ptr %1028, align 4, !tbaa !175
  %1046 = load i32, ptr %1036, align 8, !tbaa !46
  %1047 = icmp ult i32 %1046, %1045
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1040
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.10) #16
  br label %1049

1049:                                             ; preds = %1048, %1040
  %1050 = zext i32 %1045 to i64
  %1051 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1034, i64 0, i32 4, i64 %1050, i32 2
  %1052 = load i32, ptr %1051, align 8, !tbaa !176
  call void @add_phi_arg(ptr noundef %1033, ptr noundef %1044, ptr noundef %1018, i32 noundef %1052) #16
  %1053 = load i32, ptr %1029, align 4, !tbaa !175
  %1054 = load i32, ptr %1036, align 8, !tbaa !46
  %1055 = icmp ult i32 %1054, %1053
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1049
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.10) #16
  br label %1057

1057:                                             ; preds = %1056, %1049
  %1058 = zext i32 %1053 to i64
  %1059 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1034, i64 0, i32 4, i64 %1058, i32 0, i32 3
  %1060 = load ptr, ptr %1059, align 8, !tbaa !162
  %1061 = load ptr, ptr %1060, align 8, !tbaa !35
  %1062 = load i32, ptr %1029, align 4, !tbaa !175
  %1063 = load i32, ptr %1036, align 8, !tbaa !46
  %1064 = icmp ult i32 %1063, %1062
  br i1 %1064, label %1065, label %1066

1065:                                             ; preds = %1057
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.10) #16
  br label %1066

1066:                                             ; preds = %1065, %1057
  %1067 = zext i32 %1062 to i64
  %1068 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1034, i64 0, i32 4, i64 %1067, i32 2
  %1069 = load i32, ptr %1068, align 8, !tbaa !176
  %1070 = load i64, ptr %1061, align 8
  %1071 = and i64 %1070, 65535
  %1072 = icmp eq i64 %1071, 141
  br i1 %1072, label %1073, label %1077

1073:                                             ; preds = %1066
  %1074 = call ptr @get_current_def(ptr noundef nonnull %1061) #16
  %1075 = icmp eq ptr %1074, null
  %1076 = select i1 %1075, ptr %1061, ptr %1074
  br label %1077

1077:                                             ; preds = %1073, %1066
  %1078 = phi ptr [ %1076, %1073 ], [ %1061, %1066 ]
  %1079 = call ptr @loop_latch_edge(ptr noundef nonnull %1013) #16
  call void @add_phi_arg(ptr noundef %1033, ptr noundef nonnull %1078, ptr noundef %1079, i32 noundef %1069) #16
  %1080 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1032, i64 0, i32 2
  %1081 = load ptr, ptr %1080, align 8, !tbaa !119
  %1082 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1031, i64 0, i32 2
  %1083 = load ptr, ptr %1082, align 8, !tbaa !119
  %1084 = icmp eq ptr %1081, null
  %1085 = icmp eq ptr %1083, null
  %1086 = select i1 %1084, i1 true, i1 %1085
  br i1 %1086, label %1087, label %1030, !llvm.loop !178

1087:                                             ; preds = %1077, %1015
  call void @rename_variables_in_loop(ptr noundef nonnull %1013) #16
  br label %1088

1088:                                             ; preds = %1087, %1012, %1008
  %1089 = phi ptr [ %1013, %1087 ], [ null, %1008 ], [ null, %1012 ]
  %1090 = call ptr @create_preheader(ptr noundef %1089, i32 noundef 1) #16
  %1091 = call ptr @single_exit(ptr noundef %1089) #16
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1095, label %1093

1093:                                             ; preds = %1088
  %1094 = call ptr @split_edge(ptr noundef nonnull %1091) #16
  br label %1095

1095:                                             ; preds = %1093, %1088, %1007
  %1096 = phi ptr [ %106, %1007 ], [ %1089, %1088 ], [ %1089, %1093 ]
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %1171, label %1098

1098:                                             ; preds = %1095
  %1099 = call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %1096) #16
  %1100 = getelementptr inbounds %struct.loop, ptr %1096, i64 0, i32 6
  %1101 = load i32, ptr %1100, align 4, !tbaa !78
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1170, label %1103

1103:                                             ; preds = %1098, %1164
  %1104 = phi i64 [ %1166, %1164 ], [ 0, %1098 ]
  %1105 = phi i32 [ %1165, %1164 ], [ 0, %1098 ]
  %1106 = getelementptr inbounds ptr, ptr %1099, i64 %1104
  %1107 = load ptr, ptr %1106, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1107) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %1108 = load ptr, ptr %3, align 8
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1123, label %1110

1110:                                             ; preds = %1103, %1120
  %1111 = phi i32 [ %1112, %1120 ], [ %1105, %1103 ]
  %1112 = add i32 %1111, 1
  %1113 = call i32 @bitmap_bit_p(ptr noundef %532, i32 noundef %1111) #16
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1115, label %1116

1115:                                             ; preds = %1110
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #16
  br label %1120

1116:                                             ; preds = %1110
  %1117 = load ptr, ptr %3, align 8, !tbaa !179
  %1118 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1117, i64 0, i32 2
  %1119 = load ptr, ptr %1118, align 8, !tbaa !119
  store ptr %1119, ptr %3, align 8, !tbaa !179
  br label %1120

1120:                                             ; preds = %1116, %1115
  %1121 = load ptr, ptr %3, align 8
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1123, label %1110, !llvm.loop !181

1123:                                             ; preds = %1120, %1103
  %1124 = phi i32 [ %1105, %1103 ], [ %1112, %1120 ]
  %1125 = getelementptr inbounds %struct.basic_block_def, ptr %1107, i64 0, i32 13
  %1126 = load i32, ptr %1125, align 8, !tbaa !122, !noalias !182
  %1127 = and i32 %1126, 512
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1135

1129:                                             ; preds = %1123
  %1130 = getelementptr inbounds %struct.basic_block_def, ptr %1107, i64 0, i32 7
  %1131 = load ptr, ptr %1130, align 8, !tbaa !46, !noalias !182
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1135, label %1133

1133:                                             ; preds = %1129
  %1134 = load ptr, ptr %1131, align 8, !tbaa !127, !noalias !182
  br label %1135

1135:                                             ; preds = %1133, %1129, %1123
  %1136 = phi ptr [ %1134, %1133 ], [ null, %1129 ], [ null, %1123 ]
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1140, label %1138

1138:                                             ; preds = %1135
  %1139 = load ptr, ptr %1136, align 8, !tbaa !129, !noalias !182
  br label %1140

1140:                                             ; preds = %1138, %1135
  %1141 = phi ptr [ %1139, %1138 ], [ null, %1135 ]
  store ptr %1141, ptr %3, align 8, !tbaa.struct !118
  store ptr %1136, ptr %493, align 8, !tbaa.struct !160
  store ptr %1107, ptr %494, align 8, !tbaa.struct !161
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1164, label %1143

1143:                                             ; preds = %1140, %1160
  %1144 = phi ptr [ %1162, %1160 ], [ %1141, %1140 ]
  %1145 = phi i32 [ %1161, %1160 ], [ %1124, %1140 ]
  %1146 = load ptr, ptr %1144, align 8, !tbaa !131
  %1147 = load i32, ptr %1146, align 8
  %1148 = and i32 %1147, 255
  %1149 = icmp eq i32 %1148, 4
  br i1 %1149, label %1155, label %1150

1150:                                             ; preds = %1143
  %1151 = add i32 %1145, 1
  %1152 = call i32 @bitmap_bit_p(ptr noundef %532, i32 noundef %1145) #16
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1150
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #16
  br label %1160

1155:                                             ; preds = %1150, %1143
  %1156 = phi i32 [ %1151, %1150 ], [ %1145, %1143 ]
  %1157 = load ptr, ptr %3, align 8, !tbaa !179
  %1158 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1157, i64 0, i32 2
  %1159 = load ptr, ptr %1158, align 8, !tbaa !119
  store ptr %1159, ptr %3, align 8, !tbaa !179
  br label %1160

1160:                                             ; preds = %1155, %1154
  %1161 = phi i32 [ %1156, %1155 ], [ %1151, %1154 ]
  %1162 = load ptr, ptr %3, align 8
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1143, !llvm.loop !185

1164:                                             ; preds = %1160, %1140
  %1165 = phi i32 [ %1124, %1140 ], [ %1161, %1160 ]
  call void @mark_virtual_ops_in_bb(ptr noundef %1107) #16
  %1166 = add nuw nsw i64 %1104, 1
  %1167 = load i32, ptr %1100, align 4, !tbaa !78
  %1168 = zext i32 %1167 to i64
  %1169 = icmp ult i64 %1166, %1168
  br i1 %1169, label %1103, label %1170, !llvm.loop !186

1170:                                             ; preds = %1164, %1098
  call void @free(ptr noundef %1099)
  br label %1171

1171:                                             ; preds = %1170, %1095
  %1172 = phi i8 [ 1, %1170 ], [ 0, %1095 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %1173

1173:                                             ; preds = %1171, %1004
  %1174 = phi i8 [ %1172, %1171 ], [ 1, %1004 ]
  %1175 = icmp eq i8 %1174, 0
  %1176 = add nuw i64 %521, 1
  br i1 %1175, label %1178, label %520, !llvm.loop !187

1177:                                             ; preds = %531
  call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #16
  call void @update_ssa(i32 noundef 18432) #16
  br label %1178

1178:                                             ; preds = %1173, %1177, %483, %347
  %1179 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  call void @bitmap_obstack_free(ptr noundef %1179) #16
  store ptr null, ptr @remaining_stmts, align 8, !tbaa !35
  %1180 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !35
  call void @bitmap_obstack_free(ptr noundef %1180) #16
  store ptr null, ptr @upstream_mem_writes, align 8, !tbaa !35
  %1181 = load ptr, ptr %16, align 8
  %1182 = icmp eq ptr %1181, null
  br label %1183

1183:                                             ; preds = %1195, %1178
  %1184 = phi i64 [ %1196, %1195 ], [ 0, %1178 ]
  br i1 %1182, label %1192, label %1185

1185:                                             ; preds = %1183
  %1186 = load i32, ptr %1181, align 8, !tbaa !54
  %1187 = zext i32 %1186 to i64
  %1188 = icmp ult i64 %1184, %1187
  br i1 %1188, label %1189, label %1192

1189:                                             ; preds = %1185
  %1190 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %1181, i64 0, i32 2, i64 %1184
  %1191 = load ptr, ptr %1190, align 8, !tbaa !35
  br label %1192

1192:                                             ; preds = %1189, %1185, %1183
  %1193 = phi ptr [ %1191, %1189 ], [ null, %1185 ], [ null, %1183 ]
  %1194 = phi i1 [ false, %1189 ], [ true, %1185 ], [ true, %1183 ]
  br i1 %1194, label %1197, label %1195

1195:                                             ; preds = %1192
  call void @bitmap_obstack_free(ptr noundef %1193) #16
  %1196 = add nuw i64 %1184, 1
  br label %1183, !llvm.loop !188

1197:                                             ; preds = %1192
  %1198 = load ptr, ptr %17, align 8, !tbaa !35
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1201, label %1200

1200:                                             ; preds = %1197
  call void @free(ptr noundef %1198)
  br label %1201

1201:                                             ; preds = %1200, %1197
  store ptr null, ptr %17, align 8, !tbaa !35
  br i1 %1182, label %1203, label %1202

1202:                                             ; preds = %1201
  call void @free(ptr noundef %1181)
  br label %1203

1203:                                             ; preds = %1202, %1201
  store ptr null, ptr %16, align 8, !tbaa !35
  %1204 = load ptr, ptr %15, align 8, !tbaa !35
  call fastcc void @free_rdg_components(ptr noundef %1204)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  %1205 = icmp eq ptr %147, null
  br i1 %1205, label %1207, label %1206

1206:                                             ; preds = %1203
  call void @free(ptr noundef %147)
  br label %1207

1207:                                             ; preds = %1206, %1203
  call void @free_rdg(ptr noundef nonnull %123) #16
  br label %1208

1208:                                             ; preds = %112, %115, %119, %125, %128, %132, %1207
  %1209 = phi i32 [ %348, %1207 ], [ 0, %119 ], [ 0, %115 ], [ 0, %112 ], [ 0, %132 ], [ 0, %128 ], [ 0, %125 ]
  %1210 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1223, label %1212

1212:                                             ; preds = %1208
  %1213 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1214 = and i32 %1213, 8
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1223, label %1216

1216:                                             ; preds = %1212
  %1217 = icmp sgt i32 %1209, 1
  %1218 = load i32, ptr %106, align 8, !tbaa !66
  br i1 %1217, label %1219, label %1221

1219:                                             ; preds = %1216
  %1220 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1210, ptr noundef nonnull @.str.1, i32 noundef %1218, i32 noundef %1209)
  br label %1223

1221:                                             ; preds = %1216
  %1222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1210, ptr noundef nonnull @.str.2, i32 noundef %1218)
  br label %1223

1223:                                             ; preds = %1219, %1221, %1212, %1208
  call void @verify_loop_structure() #16
  %1224 = load ptr, ptr %18, align 8, !tbaa !35
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1227, label %1226

1226:                                             ; preds = %1223
  call void @free(ptr noundef %1224)
  br label %1227

1227:                                             ; preds = %1223, %1226
  store ptr null, ptr %18, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  %1228 = icmp eq ptr %104, null
  %1229 = load ptr, ptr @cfun, align 8
  %1230 = getelementptr inbounds %struct.function, ptr %1229, i64 0, i32 4
  br label %1231

1231:                                             ; preds = %1243, %1227
  %1232 = phi i32 [ %105, %1227 ], [ %1244, %1243 ]
  br i1 %1228, label %1240, label %1233

1233:                                             ; preds = %1231
  %1234 = load i32, ptr %104, align 4, !tbaa !70
  %1235 = icmp ugt i32 %1234, %1232
  br i1 %1235, label %1236, label %1240

1236:                                             ; preds = %1233
  %1237 = zext i32 %1232 to i64
  %1238 = getelementptr inbounds %struct.VEC_int_base, ptr %104, i64 0, i32 2, i64 %1237
  %1239 = load i32, ptr %1238, align 4, !tbaa !50
  br label %1240

1240:                                             ; preds = %1236, %1233, %1231
  %1241 = phi i32 [ %1239, %1236 ], [ 0, %1233 ], [ 0, %1231 ]
  %1242 = phi i1 [ false, %1236 ], [ true, %1233 ], [ true, %1231 ]
  br i1 %1242, label %1252, label %1243

1243:                                             ; preds = %1240
  %1244 = add i32 %1232, 1
  %1245 = load ptr, ptr %1230, align 8, !tbaa !59
  %1246 = getelementptr inbounds %struct.loops, ptr %1245, i64 0, i32 1
  %1247 = load ptr, ptr %1246, align 8, !tbaa !61
  %1248 = zext i32 %1241 to i64
  %1249 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1247, i64 0, i32 2, i64 %1248
  %1250 = load ptr, ptr %1249, align 8, !tbaa !35
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1231, label %1254, !llvm.loop !77

1252:                                             ; preds = %1240
  br i1 %1228, label %1254, label %1253

1253:                                             ; preds = %1252
  call void @free(ptr noundef %104)
  br label %1254

1254:                                             ; preds = %1243, %1252, %1253
  %1255 = phi ptr [ null, %1253 ], [ null, %1252 ], [ %1250, %1243 ]
  %1256 = phi i32 [ %1232, %1253 ], [ %1232, %1252 ], [ %1244, %1243 ]
  %1257 = phi ptr [ null, %1253 ], [ null, %1252 ], [ %104, %1243 ]
  %1258 = icmp eq ptr %1255, null
  br i1 %1258, label %1259, label %103, !llvm.loop !189

1259:                                             ; preds = %1254, %98
  ret i32 0
}

declare void @debug_bitmap_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @stores_from_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_similar_memory_refs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @verify_loop_structure() local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_rdg(ptr noundef) local_unnamed_addr #3

declare void @dump_rdg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rdg_vertex_for_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_rdg(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @rdg_build_components(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %5 = tail call i32 @graphds_scc(ptr noundef %0, ptr noundef null) #16
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @xmalloc(i64 noundef %7) #16
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = zext nneg i32 %5 to i64
  br label %17

12:                                               ; preds = %17, %3
  %13 = load i32, ptr %0, align 8, !tbaa !83
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %26

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %21, %17 ]
  %19 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 3, i64 noundef 8, i64 noundef 4) #16
  %20 = getelementptr inbounds ptr, ptr %8, i64 %18
  store ptr %19, ptr %20, align 8, !tbaa !35
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %11
  br i1 %22, label %12, label %17, !llvm.loop !190

23:                                               ; preds = %42, %12
  %24 = icmp eq ptr %1, null
  %25 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %53

26:                                               ; preds = %15, %42
  %27 = phi i64 [ 0, %15 ], [ %49, %42 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.vertex, ptr %28, i64 %27, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !191
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %8, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.VEC_int_base, ptr %33, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !81
  %38 = load i32, ptr %33, align 4, !tbaa !70
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26, %35
  %41 = tail call ptr @vec_heap_o_reserve(ptr noundef %33, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %41, ptr %32, align 8, !tbaa !35
  br label %42

42:                                               ; preds = %35, %40
  %43 = load ptr, ptr %32, align 8, !tbaa !35
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !70
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds %struct.VEC_int_base, ptr %43, i64 0, i32 2, i64 %46
  %48 = trunc i64 %27 to i32
  store i32 %48, ptr %47, align 4, !tbaa !50
  %49 = add nuw nsw i64 %27, 1
  %50 = load i32, ptr %0, align 8, !tbaa !83
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %26, label %23, !llvm.loop !192

53:                                               ; preds = %23, %98
  %54 = phi i64 [ 0, %23 ], [ %99, %98 ]
  br i1 %24, label %62, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %1, align 4, !tbaa !70
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.VEC_int_base, ptr %1, i64 0, i32 2, i64 %54
  %61 = load i32, ptr %60, align 4, !tbaa !50
  br label %62

62:                                               ; preds = %53, %55, %59
  %63 = phi i32 [ %61, %59 ], [ 0, %55 ], [ 0, %53 ]
  %64 = phi i1 [ false, %59 ], [ true, %55 ], [ true, %53 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = icmp sgt i32 %5, 0
  br i1 %66, label %67, label %114

67:                                               ; preds = %65
  %68 = zext nneg i32 %5 to i64
  br label %100

69:                                               ; preds = %62
  %70 = load ptr, ptr %25, align 8, !tbaa !85
  %71 = sext i32 %63 to i64
  %72 = getelementptr inbounds %struct.vertex, ptr %70, i64 %71, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !191
  %74 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %73) #16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %69
  %77 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #16
  store i32 %73, ptr %77, align 8, !tbaa !193
  %78 = sext i32 %73 to i64
  %79 = getelementptr inbounds ptr, ptr %8, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  %81 = getelementptr inbounds %struct.rdg_component, ptr %77, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !195
  %82 = load ptr, ptr %2, align 8, !tbaa !35
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %82, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !196
  %87 = load i32, ptr %82, align 8, !tbaa !198
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %76, %84
  %90 = tail call ptr @vec_heap_p_reserve(ptr noundef %82, i32 noundef 1) #16
  store ptr %90, ptr %2, align 8, !tbaa !35
  br label %91

91:                                               ; preds = %84, %89
  %92 = load ptr, ptr %2, align 8, !tbaa !35
  %93 = load i32, ptr %92, align 8, !tbaa !198
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !198
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %92, i64 0, i32 2, i64 %95
  store ptr %77, ptr %96, align 8, !tbaa !35
  %97 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %73) #16
  br label %98

98:                                               ; preds = %91, %69
  %99 = add nuw i64 %54, 1
  br label %53, !llvm.loop !199

100:                                              ; preds = %67, %111
  %101 = phi i64 [ 0, %67 ], [ %112, %111 ]
  %102 = trunc i64 %101 to i32
  %103 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %102) #16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = getelementptr inbounds ptr, ptr %8, i64 %101
  %107 = load ptr, ptr %106, align 8, !tbaa !35
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @free(ptr noundef %107)
  br label %110

110:                                              ; preds = %105, %109
  store ptr null, ptr %106, align 8, !tbaa !35
  br label %111

111:                                              ; preds = %100, %110
  %112 = add nuw nsw i64 %101, 1
  %113 = icmp eq i64 %112, %68
  br i1 %113, label %114, label %100, !llvm.loop !200

114:                                              ; preds = %111, %65
  tail call void @free(ptr noundef %8)
  tail call void @bitmap_obstack_free(ptr noundef %4) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @rdg_build_partitions(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %477, %5
  %15 = phi i64 [ %479, %477 ], [ 0, %5 ]
  %16 = phi ptr [ %478, %477 ], [ %11, %5 ]
  br i1 %12, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 8, !tbaa !198
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %1, i64 0, i32 2, i64 %15
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %14, %17, %21
  %25 = phi ptr [ %23, %21 ], [ null, %17 ], [ null, %14 ]
  %26 = phi i1 [ false, %21 ], [ true, %17 ], [ true, %14 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, ptr %0, align 8, !tbaa !83
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %480, label %507

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  store i8 0, ptr %8, align 1, !tbaa !46
  %31 = getelementptr inbounds %struct.rdg_component, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !195
  %33 = getelementptr inbounds %struct.VEC_int_base, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %477

37:                                               ; preds = %30
  %38 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %39 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %40 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  br label %41

41:                                               ; preds = %67, %37
  %42 = phi i64 [ %68, %67 ], [ 0, %37 ]
  %43 = load ptr, ptr %31, align 8, !tbaa !195
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 4, !tbaa !70
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.VEC_int_base, ptr %43, i64 0, i32 2, i64 %42
  %51 = load i32, ptr %50, align 4, !tbaa !50
  br label %52

52:                                               ; preds = %49, %45, %41
  %53 = phi i32 [ %51, %49 ], [ 0, %45 ], [ 0, %41 ]
  %54 = phi i1 [ false, %49 ], [ true, %45 ], [ true, %41 ]
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %53) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %60 = call i32 @bitmap_bit_p(ptr noundef %59, i32 noundef %53) #16
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i8
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i8 [ 1, %55 ], [ %62, %58 ]
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %53, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %8)
  br label %67

67:                                               ; preds = %66, %63
  %68 = add nuw i64 %42, 1
  br label %41, !llvm.loop !201

69:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  %70 = load ptr, ptr %38, align 8, !tbaa !107
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr @bitmap_zero_bits, ptr %70
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !109
  %75 = shl i32 %74, 7
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !111
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = or disjoint i32 %75, %79
  br label %81

81:                                               ; preds = %240, %69
  %82 = phi i64 [ %77, %69 ], [ %241, %240 ]
  %83 = phi i32 [ 0, %69 ], [ %138, %240 ]
  %84 = phi i32 [ %80, %69 ], [ %242, %240 ]
  %85 = phi ptr [ %72, %69 ], [ %140, %240 ]
  %86 = icmp eq i64 %82, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %115, %81
  %88 = phi i64 [ %82, %81 ], [ %120, %115 ]
  %89 = phi i32 [ %83, %81 ], [ %116, %115 ]
  %90 = phi i32 [ %84, %81 ], [ %117, %115 ]
  %91 = phi ptr [ %85, %81 ], [ %108, %115 ]
  %92 = and i64 %88, 1
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %136

94:                                               ; preds = %87, %94
  %95 = phi i32 [ %98, %94 ], [ %90, %87 ]
  %96 = phi i64 [ %97, %94 ], [ %88, %87 ]
  %97 = lshr exact i64 %96, 1
  %98 = add i32 %95, 1
  %99 = and i64 %96, 2
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %94, label %136, !llvm.loop !112

101:                                              ; preds = %81
  %102 = add i32 %84, 63
  %103 = and i32 %102, -64
  %104 = add i32 %83, 1
  br label %105

105:                                              ; preds = %132, %101
  %106 = phi i64 [ %82, %101 ], [ %127, %132 ]
  %107 = phi i32 [ %103, %101 ], [ %135, %132 ]
  %108 = phi ptr [ %85, %101 ], [ %130, %132 ]
  %109 = phi i32 [ %104, %101 ], [ 0, %132 ]
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %126, label %111

111:                                              ; preds = %105
  %112 = add i32 %107, 128
  %113 = shl i32 %109, 6
  %114 = sub i32 %112, %113
  br label %115

115:                                              ; preds = %111, %122
  %116 = phi i32 [ %124, %122 ], [ %109, %111 ]
  %117 = phi i32 [ %123, %122 ], [ %107, %111 ]
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds %struct.bitmap_element_def, ptr %108, i64 0, i32 3, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !111
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %87

122:                                              ; preds = %115
  %123 = add i32 %117, 64
  %124 = add i32 %116, 1
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %115, !llvm.loop !113

126:                                              ; preds = %122, %105
  %127 = phi i64 [ %106, %105 ], [ %120, %122 ]
  %128 = phi i32 [ %107, %105 ], [ %114, %122 ]
  %129 = phi i32 [ %109, %105 ], [ 2, %122 ]
  %130 = load ptr, ptr %108, align 8, !tbaa !114
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %130, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !109
  %135 = shl i32 %134, 7
  br label %105, !llvm.loop !115

136:                                              ; preds = %126, %94, %87
  %137 = phi i64 [ %88, %87 ], [ %97, %94 ], [ %127, %126 ]
  %138 = phi i32 [ %89, %87 ], [ %89, %94 ], [ %129, %126 ]
  %139 = phi i32 [ %90, %87 ], [ %98, %94 ], [ %128, %126 ]
  %140 = phi ptr [ %91, %87 ], [ %91, %94 ], [ %130, %126 ]
  %141 = phi i1 [ false, %87 ], [ false, %94 ], [ true, %126 ]
  br i1 %141, label %243, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr %13, align 8, !tbaa !85
  %144 = zext i32 %139 to i64
  %145 = getelementptr inbounds %struct.vertex, ptr %143, i64 %144, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !86
  %147 = getelementptr inbounds %struct.rdg_vertex, ptr %146, i64 0, i32 1
  %148 = load i8, ptr %147, align 8, !tbaa !88
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.rdg_vertex, ptr %146, i64 0, i32 2
  %152 = load i8, ptr %151, align 1, !tbaa !105
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %240, label %154

154:                                              ; preds = %150, %142
  %155 = load i32, ptr %0, align 8, !tbaa !83
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %224

157:                                              ; preds = %154
  %158 = sext i32 %139 to i64
  br label %159

159:                                              ; preds = %157, %219
  %160 = phi i64 [ 0, %157 ], [ %220, %219 ]
  %161 = trunc i64 %160 to i32
  %162 = call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %161) #16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %219

164:                                              ; preds = %159
  %165 = load ptr, ptr %13, align 8, !tbaa !85
  %166 = getelementptr inbounds %struct.vertex, ptr %165, i64 %160, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !86
  %168 = getelementptr inbounds %struct.rdg_vertex, ptr %167, i64 0, i32 1
  %169 = load i8, ptr %168, align 8, !tbaa !88
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.rdg_vertex, ptr %167, i64 0, i32 2
  %173 = load i8, ptr %172, align 1, !tbaa !105
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %219, label %175

175:                                              ; preds = %171, %164
  %176 = getelementptr inbounds %struct.vertex, ptr %165, i64 %158, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !86
  %178 = load ptr, ptr %177, align 8, !tbaa !202
  %179 = load ptr, ptr %167, align 8, !tbaa !202
  %180 = call zeroext i8 @have_similar_memory_accesses(ptr noundef %178, ptr noundef %179) #16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %219, label %182

182:                                              ; preds = %175
  %183 = trunc i64 %160 to i32
  call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef nonnull %0, i32 noundef %183, ptr noundef nonnull %38, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %7)
  %184 = trunc i64 %160 to i32
  call fastcc void @rdg_flag_all_uses(ptr noundef nonnull %0, i32 noundef %184, ptr noundef nonnull %38, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %7)
  %185 = load ptr, ptr %13, align 8, !tbaa !85
  %186 = getelementptr inbounds %struct.vertex, ptr %185, i64 %160, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !86
  %188 = getelementptr inbounds %struct.rdg_vertex, ptr %187, i64 0, i32 1
  %189 = load i8, ptr %188, align 8, !tbaa !88
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %219, label %191

191:                                              ; preds = %182
  %192 = load ptr, ptr %2, align 8, !tbaa !35
  %193 = icmp eq ptr %192, null
  br label %194

194:                                              ; preds = %191, %217
  %195 = phi i64 [ 0, %191 ], [ %218, %217 ]
  br i1 %193, label %203, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr %192, align 4, !tbaa !70
  %198 = zext i32 %197 to i64
  %199 = icmp ult i64 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.VEC_int_base, ptr %192, i64 0, i32 2, i64 %195
  %202 = load i32, ptr %201, align 4, !tbaa !50
  br label %203

203:                                              ; preds = %200, %196, %194
  %204 = phi i32 [ %202, %200 ], [ 0, %196 ], [ 0, %194 ]
  %205 = phi i1 [ false, %200 ], [ true, %196 ], [ true, %194 ]
  br i1 %205, label %219, label %206

206:                                              ; preds = %203
  %207 = zext i32 %204 to i64
  %208 = icmp eq i64 %160, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32, ptr %192, align 4, !tbaa !70
  %211 = and i64 %195, 4294967295
  %212 = getelementptr inbounds %struct.VEC_int_base, ptr %192, i64 0, i32 2, i64 %211
  %213 = add i32 %210, -1
  store i32 %213, ptr %192, align 4, !tbaa !70
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.VEC_int_base, ptr %192, i64 0, i32 2, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !50
  store i32 %216, ptr %212, align 4, !tbaa !50
  br label %219

217:                                              ; preds = %206
  %218 = add nuw i64 %195, 1
  br label %194, !llvm.loop !203

219:                                              ; preds = %203, %171, %209, %182, %175, %159
  %220 = add nuw nsw i64 %160, 1
  %221 = load i32, ptr %0, align 8, !tbaa !83
  %222 = sext i32 %221 to i64
  %223 = icmp slt i64 %220, %222
  br i1 %223, label %159, label %224, !llvm.loop !204

224:                                              ; preds = %219, %154
  %225 = load ptr, ptr %13, align 8, !tbaa !85
  %226 = getelementptr inbounds %struct.vertex, ptr %225, i64 %144, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %224, %229
  %230 = phi ptr [ %234, %229 ], [ %227, %224 ]
  %231 = phi i32 [ %233, %229 ], [ 0, %224 ]
  %232 = getelementptr inbounds %struct.graph_edge, ptr %230, i64 0, i32 3
  %233 = add i32 %231, 1
  %234 = load ptr, ptr %232, align 8, !tbaa !35
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %229, !llvm.loop !205

236:                                              ; preds = %229, %224
  %237 = phi i32 [ 0, %224 ], [ %233, %229 ]
  %238 = icmp ugt i32 %237, 1
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  call fastcc void @rdg_flag_all_uses(ptr noundef nonnull %0, i32 noundef %139, ptr noundef nonnull %38, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %7)
  br label %240

240:                                              ; preds = %239, %236, %150
  %241 = lshr i64 %137, 1
  %242 = add i32 %139, 1
  br label %81, !llvm.loop !206

243:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %244 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #16
  store ptr %244, ptr %6, align 8, !tbaa !35
  %245 = load ptr, ptr %39, align 8, !tbaa !107
  %246 = icmp eq ptr %245, null
  %247 = select i1 %246, ptr @bitmap_zero_bits, ptr %245
  %248 = getelementptr inbounds %struct.bitmap_element_def, ptr %247, i64 0, i32 2
  %249 = load i32, ptr %248, align 8, !tbaa !109
  %250 = shl i32 %249, 7
  %251 = getelementptr inbounds %struct.bitmap_element_def, ptr %247, i64 0, i32 3
  %252 = load i64, ptr %251, align 8, !tbaa !111
  %253 = icmp eq i64 %252, 0
  %254 = zext i1 %253 to i32
  %255 = or disjoint i32 %250, %254
  br label %256

256:                                              ; preds = %317, %243
  %257 = phi i64 [ %252, %243 ], [ %326, %317 ]
  %258 = phi i32 [ %255, %243 ], [ %327, %317 ]
  %259 = phi i32 [ 0, %243 ], [ %314, %317 ]
  %260 = phi ptr [ %247, %243 ], [ %315, %317 ]
  %261 = icmp eq i64 %257, 0
  br i1 %261, label %276, label %262

262:                                              ; preds = %290, %256
  %263 = phi i64 [ %257, %256 ], [ %295, %290 ]
  %264 = phi i32 [ %258, %256 ], [ %292, %290 ]
  %265 = phi i32 [ %259, %256 ], [ %291, %290 ]
  %266 = phi ptr [ %260, %256 ], [ %283, %290 ]
  %267 = and i64 %263, 1
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %311

269:                                              ; preds = %262, %269
  %270 = phi i32 [ %273, %269 ], [ %264, %262 ]
  %271 = phi i64 [ %272, %269 ], [ %263, %262 ]
  %272 = lshr exact i64 %271, 1
  %273 = add i32 %270, 1
  %274 = and i64 %271, 2
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %269, label %311, !llvm.loop !112

276:                                              ; preds = %256
  %277 = add i32 %258, 63
  %278 = and i32 %277, -64
  %279 = add i32 %259, 1
  br label %280

280:                                              ; preds = %307, %276
  %281 = phi i64 [ %257, %276 ], [ %302, %307 ]
  %282 = phi i32 [ %278, %276 ], [ %310, %307 ]
  %283 = phi ptr [ %260, %276 ], [ %305, %307 ]
  %284 = phi i32 [ %279, %276 ], [ 0, %307 ]
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %301, label %286

286:                                              ; preds = %280
  %287 = add i32 %282, 128
  %288 = shl i32 %284, 6
  %289 = sub i32 %287, %288
  br label %290

290:                                              ; preds = %286, %297
  %291 = phi i32 [ %299, %297 ], [ %284, %286 ]
  %292 = phi i32 [ %298, %297 ], [ %282, %286 ]
  %293 = zext i32 %291 to i64
  %294 = getelementptr inbounds %struct.bitmap_element_def, ptr %283, i64 0, i32 3, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !111
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %262

297:                                              ; preds = %290
  %298 = add i32 %292, 64
  %299 = add i32 %291, 1
  %300 = icmp eq i32 %299, 2
  br i1 %300, label %301, label %290, !llvm.loop !113

301:                                              ; preds = %297, %280
  %302 = phi i64 [ %281, %280 ], [ %295, %297 ]
  %303 = phi i32 [ %282, %280 ], [ %289, %297 ]
  %304 = phi i32 [ %284, %280 ], [ 2, %297 ]
  %305 = load ptr, ptr %283, align 8, !tbaa !114
  %306 = icmp eq ptr %305, null
  br i1 %306, label %311, label %307

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.bitmap_element_def, ptr %305, i64 0, i32 2
  %309 = load i32, ptr %308, align 8, !tbaa !109
  %310 = shl i32 %309, 7
  br label %280, !llvm.loop !115

311:                                              ; preds = %301, %269, %262
  %312 = phi i64 [ %263, %262 ], [ %272, %269 ], [ %302, %301 ]
  %313 = phi i32 [ %264, %262 ], [ %273, %269 ], [ %303, %301 ]
  %314 = phi i32 [ %265, %262 ], [ %265, %269 ], [ %304, %301 ]
  %315 = phi ptr [ %266, %262 ], [ %266, %269 ], [ %305, %301 ]
  %316 = phi i1 [ false, %262 ], [ false, %269 ], [ true, %301 ]
  br i1 %316, label %328, label %317

317:                                              ; preds = %311
  %318 = load ptr, ptr @cfun, align 8, !tbaa !35
  %319 = getelementptr inbounds %struct.function, ptr %318, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !59
  %321 = getelementptr inbounds %struct.loops, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !61
  %323 = zext i32 %313 to i64
  %324 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %322, i64 0, i32 2, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !35
  call fastcc void @collect_condition_stmts(ptr noundef %325, ptr noundef nonnull %6)
  %326 = lshr i64 %312, 1
  %327 = add i32 %313, 1
  br label %256, !llvm.loop !207

328:                                              ; preds = %311, %444
  %329 = load ptr, ptr %6, align 8
  %330 = icmp eq ptr %329, null
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr %329, align 8, !tbaa !79
  br label %333

333:                                              ; preds = %331, %328
  %334 = phi i32 [ %332, %331 ], [ 0, %328 ]
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %445, label %336

336:                                              ; preds = %333
  %337 = load i32, ptr %329, align 8, !tbaa !79
  %338 = add i32 %337, -1
  store i32 %338, ptr %329, align 8, !tbaa !79
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.VEC_gimple_base, ptr %329, i64 0, i32 2, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !35
  %342 = call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %341) #16
  %343 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %344 = call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %342) #16
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %336
  %347 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %348 = call i32 @bitmap_bit_p(ptr noundef %347, i32 noundef %342) #16
  %349 = icmp eq i32 %348, 0
  %350 = zext i1 %349 to i8
  br label %351

351:                                              ; preds = %346, %336
  %352 = phi i8 [ 1, %336 ], [ %350, %346 ]
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %342, ptr noundef nonnull %38, ptr noundef %343, ptr noundef %40, ptr noundef nonnull %8)
  br label %355

355:                                              ; preds = %354, %351
  %356 = load ptr, ptr %343, align 8, !tbaa !107
  %357 = icmp eq ptr %356, null
  %358 = select i1 %357, ptr @bitmap_zero_bits, ptr %356
  %359 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 2
  %360 = load i32, ptr %359, align 8, !tbaa !109
  %361 = shl i32 %360, 7
  %362 = getelementptr inbounds %struct.bitmap_element_def, ptr %358, i64 0, i32 3
  %363 = load i64, ptr %362, align 8, !tbaa !111
  %364 = icmp eq i64 %363, 0
  %365 = zext i1 %364 to i32
  %366 = or disjoint i32 %361, %365
  br label %367

367:                                              ; preds = %441, %355
  %368 = phi i64 [ %363, %355 ], [ %442, %441 ]
  %369 = phi i32 [ %366, %355 ], [ %443, %441 ]
  %370 = phi i32 [ 0, %355 ], [ %425, %441 ]
  %371 = phi ptr [ %358, %355 ], [ %426, %441 ]
  %372 = icmp eq i64 %368, 0
  br i1 %372, label %387, label %373

373:                                              ; preds = %401, %367
  %374 = phi i64 [ %368, %367 ], [ %406, %401 ]
  %375 = phi i32 [ %369, %367 ], [ %403, %401 ]
  %376 = phi i32 [ %370, %367 ], [ %402, %401 ]
  %377 = phi ptr [ %371, %367 ], [ %394, %401 ]
  %378 = and i64 %374, 1
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %422

380:                                              ; preds = %373, %380
  %381 = phi i32 [ %384, %380 ], [ %375, %373 ]
  %382 = phi i64 [ %383, %380 ], [ %374, %373 ]
  %383 = lshr exact i64 %382, 1
  %384 = add i32 %381, 1
  %385 = and i64 %382, 2
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %380, label %422, !llvm.loop !112

387:                                              ; preds = %367
  %388 = add i32 %369, 63
  %389 = and i32 %388, -64
  %390 = add i32 %370, 1
  br label %391

391:                                              ; preds = %418, %387
  %392 = phi i64 [ %368, %387 ], [ %413, %418 ]
  %393 = phi i32 [ %389, %387 ], [ %421, %418 ]
  %394 = phi ptr [ %371, %387 ], [ %416, %418 ]
  %395 = phi i32 [ %390, %387 ], [ 0, %418 ]
  %396 = icmp eq i32 %395, 2
  br i1 %396, label %412, label %397

397:                                              ; preds = %391
  %398 = add i32 %393, 128
  %399 = shl i32 %395, 6
  %400 = sub i32 %398, %399
  br label %401

401:                                              ; preds = %397, %408
  %402 = phi i32 [ %410, %408 ], [ %395, %397 ]
  %403 = phi i32 [ %409, %408 ], [ %393, %397 ]
  %404 = zext i32 %402 to i64
  %405 = getelementptr inbounds %struct.bitmap_element_def, ptr %394, i64 0, i32 3, i64 %404
  %406 = load i64, ptr %405, align 8, !tbaa !111
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %373

408:                                              ; preds = %401
  %409 = add i32 %403, 64
  %410 = add i32 %402, 1
  %411 = icmp eq i32 %410, 2
  br i1 %411, label %412, label %401, !llvm.loop !113

412:                                              ; preds = %408, %391
  %413 = phi i64 [ %392, %391 ], [ %406, %408 ]
  %414 = phi i32 [ %393, %391 ], [ %400, %408 ]
  %415 = phi i32 [ %395, %391 ], [ 2, %408 ]
  %416 = load ptr, ptr %394, align 8, !tbaa !114
  %417 = icmp eq ptr %416, null
  br i1 %417, label %422, label %418

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.bitmap_element_def, ptr %416, i64 0, i32 2
  %420 = load i32, ptr %419, align 8, !tbaa !109
  %421 = shl i32 %420, 7
  br label %391, !llvm.loop !115

422:                                              ; preds = %412, %380, %373
  %423 = phi i64 [ %374, %373 ], [ %383, %380 ], [ %413, %412 ]
  %424 = phi i32 [ %375, %373 ], [ %384, %380 ], [ %414, %412 ]
  %425 = phi i32 [ %376, %373 ], [ %376, %380 ], [ %415, %412 ]
  %426 = phi ptr [ %377, %373 ], [ %377, %380 ], [ %416, %412 ]
  %427 = phi i1 [ false, %373 ], [ false, %380 ], [ true, %412 ]
  br i1 %427, label %444, label %428

428:                                              ; preds = %422
  %429 = call i32 @bitmap_bit_p(ptr noundef nonnull %39, i32 noundef %424) #16
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %441

431:                                              ; preds = %428
  %432 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %39, i32 noundef %424) #16
  %433 = load ptr, ptr @cfun, align 8, !tbaa !35
  %434 = getelementptr inbounds %struct.function, ptr %433, i64 0, i32 4
  %435 = load ptr, ptr %434, align 8, !tbaa !59
  %436 = getelementptr inbounds %struct.loops, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !61
  %438 = zext i32 %424 to i64
  %439 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %437, i64 0, i32 2, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !35
  call fastcc void @collect_condition_stmts(ptr noundef %440, ptr noundef nonnull %6)
  br label %441

441:                                              ; preds = %431, %428
  %442 = lshr i64 %423, 1
  %443 = add i32 %424, 1
  br label %367, !llvm.loop !208

444:                                              ; preds = %422
  call void @bitmap_obstack_free(ptr noundef nonnull %343) #16
  br label %328, !llvm.loop !209

445:                                              ; preds = %333
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @bitmap_obstack_free(ptr noundef %40) #16
  call void @bitmap_obstack_free(ptr noundef nonnull %39) #16
  %446 = call zeroext i8 @bitmap_ior_into(ptr noundef %16, ptr noundef nonnull %38) #16
  %447 = call zeroext i8 @bitmap_ior_into(ptr noundef %4, ptr noundef nonnull %38) #16
  call void @bitmap_obstack_free(ptr noundef nonnull %38) #16
  %448 = load i8, ptr %8, align 1, !tbaa !46
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %477, label %450

450:                                              ; preds = %445
  %451 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %452 = icmp eq ptr %451, null
  br i1 %452, label %460, label %453

453:                                              ; preds = %450
  %454 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %455 = and i32 %454, 8
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %453
  %458 = call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr nonnull %451)
  %459 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @bitmap_print(ptr noundef %459, ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %460

460:                                              ; preds = %457, %453, %450
  %461 = load ptr, ptr %3, align 8, !tbaa !35
  %462 = icmp eq ptr %461, null
  br i1 %462, label %468, label %463

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %461, i64 0, i32 1
  %465 = load i32, ptr %464, align 4, !tbaa !210
  %466 = load i32, ptr %461, align 8, !tbaa !54
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %470

468:                                              ; preds = %460, %463
  %469 = call ptr @vec_heap_p_reserve(ptr noundef %461, i32 noundef 1) #16
  store ptr %469, ptr %3, align 8, !tbaa !35
  br label %470

470:                                              ; preds = %463, %468
  %471 = load ptr, ptr %3, align 8, !tbaa !35
  %472 = load i32, ptr %471, align 8, !tbaa !54
  %473 = add i32 %472, 1
  store i32 %473, ptr %471, align 8, !tbaa !54
  %474 = zext i32 %472 to i64
  %475 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %471, i64 0, i32 2, i64 %474
  store ptr %16, ptr %475, align 8, !tbaa !35
  %476 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  br label %477

477:                                              ; preds = %445, %470, %30
  %478 = phi ptr [ %16, %30 ], [ %476, %470 ], [ %16, %445 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  %479 = add nuw i64 %15, 1
  br label %14, !llvm.loop !211

480:                                              ; preds = %27, %503
  %481 = phi i32 [ %504, %503 ], [ 0, %27 ]
  %482 = call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %481) #16
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %503

484:                                              ; preds = %480
  %485 = call zeroext i8 @rdg_defs_used_in_other_loops_p(ptr noundef nonnull %0, i32 noundef %481) #16
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %503, label %487

487:                                              ; preds = %484
  %488 = load ptr, ptr %2, align 8, !tbaa !35
  %489 = icmp eq ptr %488, null
  br i1 %489, label %495, label %490

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.VEC_int_base, ptr %488, i64 0, i32 1
  %492 = load i32, ptr %491, align 4, !tbaa !81
  %493 = load i32, ptr %488, align 4, !tbaa !70
  %494 = icmp eq i32 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %487, %490
  %496 = call ptr @vec_heap_o_reserve(ptr noundef %488, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %496, ptr %2, align 8, !tbaa !35
  br label %497

497:                                              ; preds = %490, %495
  %498 = load ptr, ptr %2, align 8, !tbaa !35
  %499 = load i32, ptr %498, align 4, !tbaa !70
  %500 = add i32 %499, 1
  store i32 %500, ptr %498, align 4, !tbaa !70
  %501 = zext i32 %499 to i64
  %502 = getelementptr inbounds %struct.VEC_int_base, ptr %498, i64 0, i32 2, i64 %501
  store i32 %481, ptr %502, align 4, !tbaa !50
  br label %503

503:                                              ; preds = %480, %484, %497
  %504 = add nuw nsw i32 %481, 1
  %505 = load i32, ptr %0, align 8, !tbaa !83
  %506 = icmp slt i32 %504, %505
  br i1 %506, label %480, label %507, !llvm.loop !212

507:                                              ; preds = %503, %27
  %508 = load ptr, ptr %2, align 8, !tbaa !35
  %509 = icmp eq ptr %508, null
  br i1 %509, label %522, label %510

510:                                              ; preds = %507
  %511 = load i32, ptr %508, align 4, !tbaa !70
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %522, label %513

513:                                              ; preds = %510
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %514 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #16
  store ptr %514, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %515 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 3, i64 noundef 8, i64 noundef 4) #16
  store ptr %515, ptr %10, align 8, !tbaa !35
  %516 = load ptr, ptr %2, align 8, !tbaa !35
  call fastcc void @rdg_build_components(ptr noundef nonnull %0, ptr noundef %516, ptr noundef nonnull %9)
  %517 = load ptr, ptr %9, align 8, !tbaa !35
  call fastcc void @rdg_build_partitions(ptr noundef nonnull %0, ptr noundef %517, ptr noundef nonnull %10, ptr noundef %3, ptr noundef %4)
  %518 = load ptr, ptr %10, align 8, !tbaa !35
  %519 = icmp eq ptr %518, null
  br i1 %519, label %521, label %520

520:                                              ; preds = %513
  call void @free(ptr noundef %518)
  br label %521

521:                                              ; preds = %513, %520
  store ptr null, ptr %10, align 8, !tbaa !35
  call fastcc void @free_rdg_components(ptr noundef %517)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %522

522:                                              ; preds = %507, %521, %510
  %523 = call i64 @bitmap_count_bits(ptr noundef %16) #16
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %541, label %525

525:                                              ; preds = %522
  %526 = load ptr, ptr %3, align 8, !tbaa !35
  %527 = icmp eq ptr %526, null
  br i1 %527, label %533, label %528

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %526, i64 0, i32 1
  %530 = load i32, ptr %529, align 4, !tbaa !210
  %531 = load i32, ptr %526, align 8, !tbaa !54
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %525, %528
  %534 = call ptr @vec_heap_p_reserve(ptr noundef %526, i32 noundef 1) #16
  store ptr %534, ptr %3, align 8, !tbaa !35
  br label %535

535:                                              ; preds = %528, %533
  %536 = load ptr, ptr %3, align 8, !tbaa !35
  %537 = load i32, ptr %536, align 8, !tbaa !54
  %538 = add i32 %537, 1
  store i32 %538, ptr %536, align 8, !tbaa !54
  %539 = zext i32 %537 to i64
  %540 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %536, i64 0, i32 2, i64 %539
  store ptr %16, ptr %540, align 8, !tbaa !35
  br label %542

541:                                              ; preds = %522
  call void @bitmap_obstack_free(ptr noundef %16) #16
  br label %542

542:                                              ; preds = %541, %535
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_rdg_components(ptr noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %20, %1
  %4 = phi i64 [ %21, %20 ], [ 0, %1 ]
  br i1 %2, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !198
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %0, i64 0, i32 2, i64 %4
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i1 [ false, %9 ], [ true, %5 ], [ true, %3 ]
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rdg_component, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @free(ptr noundef %17)
  br label %20

20:                                               ; preds = %15, %19
  store ptr null, ptr %16, align 8, !tbaa !35
  tail call void @free(ptr noundef %13)
  %21 = add nuw i64 %4, 1
  br label %3, !llvm.loop !213

22:                                               ; preds = %12
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @graphds_dfs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rdg_defs_used_in_other_loops_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !34 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store i32 %1, ptr %7, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %9 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 3, i64 noundef 8, i64 noundef 4) #16
  store ptr %9, ptr %8, align 8, !tbaa !35
  %10 = load i32, ptr %7, align 4, !tbaa !50
  %11 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %10) #16
  %12 = load i32, ptr %7, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.vertex, ptr %14, i64 %15, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = getelementptr inbounds %struct.vertex, ptr %14, i64 %15, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %6, %28
  %23 = phi ptr [ %30, %28 ], [ %20, %6 ]
  %24 = getelementptr inbounds %struct.graph_edge, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = load i32, ptr %25, align 8, !tbaa !99
  %27 = icmp eq i32 %26, 97
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.graph_edge, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !102

32:                                               ; preds = %28, %22, %6
  %33 = phi ptr [ null, %6 ], [ %23, %22 ], [ null, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.graph_edge, ptr %33, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !214
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %37) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %42 = tail call i32 @bitmap_bit_p(ptr noundef %41, i32 noundef %37) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %37, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %45

45:                                               ; preds = %35, %44, %40, %32
  %46 = load i32, ptr %18, align 8
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %87, label %49

49:                                               ; preds = %45
  %50 = and i32 %46, 254
  %51 = add nsw i32 %50, -10
  %52 = icmp ult i32 %51, -4
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %18, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.use_optype_d, ptr %55, i64 0, i32 1, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !215
  %60 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %18, i64 0, i32 2
  %61 = icmp eq ptr %59, %60
  %62 = getelementptr inbounds %struct.use_optype_d, ptr %55, i64 0, i32 1
  %63 = select i1 %61, ptr %62, ptr null
  br label %64

64:                                               ; preds = %49, %53, %57
  %65 = phi ptr [ null, %49 ], [ null, %53 ], [ %63, %57 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %87, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %65, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !162
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 141
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %76) #16
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %77) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %84 = tail call i32 @bitmap_bit_p(ptr noundef %83, i32 noundef %77) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %77, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %87

87:                                               ; preds = %79, %86, %82, %74, %67, %64, %45
  %88 = load i32, ptr %18, align 8
  %89 = and i32 %88, 255
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %91, label %145

91:                                               ; preds = %87
  %92 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !35
  %93 = tail call i32 @bitmap_bit_p(ptr noundef %92, i32 noundef %12) #16
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %145, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %18, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -10
  %100 = icmp ult i32 %99, -9
  br i1 %100, label %113, label %101

101:                                              ; preds = %96
  %102 = zext nneg i32 %98 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !50
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !111
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.10) #16
  br label %110

110:                                              ; preds = %109, %101
  %111 = getelementptr inbounds i8, ptr %18, i64 %107
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  br label %113

113:                                              ; preds = %96, %110
  %114 = phi ptr [ %112, %110 ], [ null, %96 ]
  %115 = tail call zeroext i8 @is_gimple_reg(ptr noundef %114) #16
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %145, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.tree_ssa_name, ptr %114, i64 0, i32 5
  %119 = getelementptr inbounds %struct.tree_ssa_name, ptr %114, i64 0, i32 5, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !166
  %121 = icmp eq ptr %120, %118
  br i1 %121, label %145, label %122

122:                                              ; preds = %117, %139
  %123 = phi ptr [ %143, %139 ], [ %120, %117 ]
  %124 = phi ptr [ %141, %139 ], [ %120, %117 ]
  %125 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %123, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  %127 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %126) #16
  %128 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %127) #16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %132 = tail call i32 @bitmap_bit_p(ptr noundef %131, i32 noundef %127) #16
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i8
  br label %135

135:                                              ; preds = %122, %130
  %136 = phi i8 [ 1, %122 ], [ %134, %130 ]
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %127, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %139

139:                                              ; preds = %138, %135
  %140 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %124, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !166
  %142 = icmp eq ptr %141, %118
  %143 = select i1 %142, ptr null, ptr %141
  %144 = icmp eq ptr %141, %118
  br i1 %144, label %145, label %122, !llvm.loop !217

145:                                              ; preds = %139, %117, %87, %91, %113
  %146 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %147 = call i32 @graphds_dfs(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %146) #16
  %148 = load i32, ptr %7, align 4, !tbaa !50
  %149 = call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %148) #16
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %145
  %152 = load ptr, ptr %13, align 8, !tbaa !85
  %153 = sext i32 %148 to i64
  %154 = getelementptr inbounds %struct.vertex, ptr %152, i64 %153, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !86
  %156 = load ptr, ptr %155, align 8, !tbaa !202
  %157 = getelementptr inbounds %struct.gimple_statement_base, ptr %156, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !46, !nonnull !218, !noundef !218
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !219
  %161 = load i32, ptr %160, align 8, !tbaa !66
  %162 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %161) #16
  %163 = call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %148) #16
  %164 = load ptr, ptr %13, align 8, !tbaa !85
  %165 = getelementptr inbounds %struct.vertex, ptr %164, i64 %153, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !86
  %167 = getelementptr inbounds %struct.rdg_vertex, ptr %166, i64 0, i32 1
  %168 = load i8, ptr %167, align 8, !tbaa !88
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %151
  store i8 1, ptr %5, align 1, !tbaa !46
  %171 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %172 = call zeroext i8 @bitmap_clear_bit(ptr noundef %171, i32 noundef %148) #16
  br label %173

173:                                              ; preds = %145, %151, %170
  br label %174

174:                                              ; preds = %173, %200
  %175 = phi i32 [ %201, %200 ], [ 0, %173 ]
  %176 = load ptr, ptr %8, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %176, align 4, !tbaa !70
  %180 = icmp ugt i32 %179, %175
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = zext i32 %175 to i64
  %183 = getelementptr inbounds %struct.VEC_int_base, ptr %176, i64 0, i32 2, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !50
  br label %185

185:                                              ; preds = %174, %178, %181
  %186 = phi i32 [ %184, %181 ], [ 0, %178 ], [ 0, %174 ]
  %187 = phi i1 [ false, %181 ], [ true, %178 ], [ true, %174 ]
  br i1 %187, label %202, label %188

188:                                              ; preds = %185
  %189 = call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %186) #16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load ptr, ptr @remaining_stmts, align 8, !tbaa !35
  %193 = call i32 @bitmap_bit_p(ptr noundef %192, i32 noundef %186) #16
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i8
  br label %196

196:                                              ; preds = %188, %191
  %197 = phi i8 [ 1, %188 ], [ %195, %191 ]
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %186, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %200

200:                                              ; preds = %196, %199
  %201 = add i32 %175, 1
  br label %174, !llvm.loop !220

202:                                              ; preds = %185
  br i1 %177, label %204, label %203

203:                                              ; preds = %202
  call void @free(ptr noundef %176)
  br label %204

204:                                              ; preds = %202, %203
  store ptr null, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @rdg_flag_all_uses(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !34 {
  %7 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.vertex, ptr %8, i64 %9, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %6, %22
  %14 = phi ptr [ %24, %22 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.graph_edge, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !214
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, ptr %15, align 4, !tbaa !214
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %20, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %21 = load i32, ptr %15, align 4, !tbaa !214
  tail call fastcc void @rdg_flag_all_uses(ptr noundef %0, i32 noundef %21, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %22

22:                                               ; preds = %13, %19
  %23 = getelementptr inbounds %struct.graph_edge, ptr %14, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %13, !llvm.loop !221

26:                                               ; preds = %22, %6
  ret void
}

declare zeroext i8 @have_similar_memory_accesses(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @collect_condition_stmts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br label %5

5:                                                ; preds = %37, %2
  %6 = phi i32 [ 0, %2 ], [ %38, %37 ]
  br i1 %4, label %14, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8, !tbaa !222
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds %struct.VEC_edge_base, ptr %3, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %5, %7, %10
  %15 = phi ptr [ %13, %10 ], [ null, %7 ], [ null, %5 ]
  %16 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %5 ]
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !135
  %19 = tail call ptr @last_stmt(ptr noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.VEC_gimple_base, ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !224
  %27 = load i32, ptr %22, align 8, !tbaa !79
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %24
  %30 = tail call ptr @vec_heap_p_reserve(ptr noundef %22, i32 noundef 1) #16
  store ptr %30, ptr %1, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %24, %29
  %32 = load ptr, ptr %1, align 8, !tbaa !35
  %33 = load i32, ptr %32, align 8, !tbaa !79
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !79
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds %struct.VEC_gimple_base, ptr %32, i64 0, i32 2, i64 %35
  store ptr %19, ptr %36, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %31, %17
  %38 = add i32 %6, 1
  br label %5, !llvm.loop !225

39:                                               ; preds = %14
  br i1 %4, label %41, label %40

40:                                               ; preds = %39
  tail call void @free(ptr noundef %3)
  br label %41

41:                                               ; preds = %39, %40
  ret void
}

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @number_of_exit_cond_executions(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare ptr @number_of_latch_executions(ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @real_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @recompute_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dr_analyze_innermost(ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_data_ref(ptr noundef) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #16
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #16
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !46
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
  %40 = load ptr, ptr %39, align 8, !tbaa !162
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !166
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !169
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !166
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !166
  %56 = load ptr, ptr %53, align 8, !tbaa !166
  store ptr %50, ptr %56, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !169
  %58 = load ptr, ptr %46, align 8, !tbaa !166
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !166
  %60 = load ptr, ptr %46, align 8, !tbaa !166
  store ptr %35, ptr %60, align 8, !tbaa !169
  store ptr %35, ptr %46, align 8, !tbaa !166
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !46
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.10) #16
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
  br i1 %76, label %34, label %188, !llvm.loop !226

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
  %85 = load ptr, ptr %84, align 8, !tbaa !46
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
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !227
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !227
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
  %115 = load ptr, ptr %114, align 8, !tbaa !162
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !166
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !169
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !166
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !166
  %131 = load ptr, ptr %128, align 8, !tbaa !166
  store ptr %125, ptr %131, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !169
  %133 = load ptr, ptr %121, align 8, !tbaa !166
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !166
  %135 = load ptr, ptr %121, align 8, !tbaa !166
  store ptr %110, ptr %135, align 8, !tbaa !169
  store ptr %110, ptr %121, align 8, !tbaa !166
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !227
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !228

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !215
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
  %167 = load ptr, ptr %166, align 8, !tbaa !162
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !166
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !169
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !166
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !166
  %183 = load ptr, ptr %180, align 8, !tbaa !166
  store ptr %177, ptr %183, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !169
  %185 = load ptr, ptr %173, align 8, !tbaa !166
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !166
  %187 = load ptr, ptr %173, align 8, !tbaa !166
  store ptr %163, ptr %187, align 8, !tbaa !169
  store ptr %163, ptr %173, align 8, !tbaa !166
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !169
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !166
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !166
  %197 = load ptr, ptr %194, align 8, !tbaa !166
  store ptr %191, ptr %197, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !169
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !166
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !166
  %202 = load ptr, ptr %199, align 8, !tbaa !166
  store ptr %190, ptr %202, align 8, !tbaa !169
  store ptr %190, ptr %199, align 8, !tbaa !166
  ret void
}

declare ptr @create_preheader(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @mark_virtual_ops_in_bb(ptr noundef) local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare void @rename_variables_in_loop(ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_current_def(ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }

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
!54 = !{!55, !41, i64 0}
!55 = !{!"VEC_bitmap_base", !41, i64 0, !41, i64 4, !37, i64 8}
!56 = distinct !{!56, !52, !53}
!57 = !{!"function_entry_count", i64 38}
!58 = !{!"tree-loop-distribution.c;gate_tree_loop_distribution"}
!59 = !{!60, !36, i64 32}
!60 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!61 = !{!62, !36, i64 8}
!62 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!63 = !{!64, !41, i64 0}
!64 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!65 = !{!62, !36, i64 24}
!66 = !{!67, !41, i64 0}
!67 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !68, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !69, i64 80, !69, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!68 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!69 = !{!"", !42, i64 0, !42, i64 8}
!70 = !{!71, !41, i64 0}
!71 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!72 = !{!67, !36, i64 48}
!73 = distinct !{!73, !53}
!74 = !{!67, !36, i64 56}
!75 = !{!67, !36, i64 40}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = !{!67, !41, i64 36}
!79 = !{!80, !41, i64 0}
!80 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !37, i64 8}
!81 = !{!71, !41, i64 4}
!82 = distinct !{!82, !52, !53}
!83 = !{!84, !41, i64 0}
!84 = !{!"graph", !41, i64 0, !36, i64 8, !36, i64 16}
!85 = !{!84, !36, i64 8}
!86 = !{!87, !36, i64 24}
!87 = !{!"vertex", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !36, i64 24}
!88 = !{!89, !37, i64 8}
!89 = !{!"rdg_vertex", !36, i64 0, !37, i64 8, !37, i64 9}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = !{!87, !36, i64 0}
!93 = !{!94, !41, i64 0}
!94 = !{!"graph_edge", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24}
!95 = !{!94, !36, i64 8}
!96 = distinct !{!96, !52, !53}
!97 = !{!87, !36, i64 8}
!98 = !{!94, !36, i64 24}
!99 = !{!100, !41, i64 0}
!100 = !{!"rdg_edge", !41, i64 0, !41, i64 4, !36, i64 8}
!101 = !{!94, !36, i64 16}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = !{!89, !37, i64 9}
!106 = distinct !{!106, !52, !53}
!107 = !{!108, !36, i64 0}
!108 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!109 = !{!110, !41, i64 16}
!110 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!111 = !{!42, !42, i64 0}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = !{!110, !36, i64 0}
!115 = distinct !{!115, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!119 = !{!120, !36, i64 16}
!120 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!121 = distinct !{!121, !52, !53}
!122 = !{!123, !41, i64 96}
!123 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!124 = !{!125}
!125 = distinct !{!125, !126, !"gsi_start_bb: argument 0"}
!126 = distinct !{!126, !"gsi_start_bb"}
!127 = !{!128, !36, i64 0}
!128 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!129 = !{!130, !36, i64 0}
!130 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!131 = !{!120, !36, i64 0}
!132 = !{!67, !36, i64 16}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = !{!136, !36, i64 0}
!136 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!137 = !{!138}
!138 = distinct !{!138, !139, !"gsi_last_bb: argument 0"}
!139 = distinct !{!139, !"gsi_last_bb"}
!140 = !{!130, !36, i64 8}
!141 = !{!142, !36, i64 0}
!142 = !{!"data_reference", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !143, i64 32, !144, i64 72, !145, i64 88, !36, i64 104}
!143 = !{!"innermost_loop_behavior", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!144 = !{!"indices", !36, i64 0, !36, i64 8}
!145 = !{!"dr_alias", !36, i64 0, !36, i64 8}
!146 = !{!142, !36, i64 8}
!147 = !{!142, !36, i64 56}
!148 = !{!142, !36, i64 40}
!149 = !{!142, !36, i64 48}
!150 = !{!142, !36, i64 32}
!151 = !{!152}
!152 = distinct !{!152, !153, !"gsi_start: argument 0"}
!153 = distinct !{!153, !"gsi_start"}
!154 = distinct !{!154, !52, !53}
!155 = !{!136, !36, i64 8}
!156 = !{!128, !36, i64 8}
!157 = !{!158}
!158 = distinct !{!158, !159, !"gsi_start: argument 0"}
!159 = distinct !{!159, !"gsi_start"}
!160 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!161 = !{i64 0, i64 8, !35}
!162 = !{!163, !36, i64 24}
!163 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!164 = !{!165, !36, i64 8}
!165 = !{!"immediate_use_iterator_d", !36, i64 0, !36, i64 8, !163, i64 16, !36, i64 48}
!166 = !{!163, !36, i64 8}
!167 = !{!165, !36, i64 0}
!168 = !{!165, !36, i64 48}
!169 = !{!163, !36, i64 0}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = !{!67, !36, i64 8}
!175 = !{!136, !41, i64 44}
!176 = !{!177, !41, i64 40}
!177 = !{!"phi_arg_d", !163, i64 0, !36, i64 32, !41, i64 40}
!178 = distinct !{!178, !52, !53}
!179 = !{!180, !36, i64 0}
!180 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!181 = distinct !{!181, !52, !53}
!182 = !{!183}
!183 = distinct !{!183, !184, !"gsi_start_bb: argument 0"}
!184 = distinct !{!184, !"gsi_start_bb"}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = !{!87, !41, i64 16}
!192 = distinct !{!192, !52, !53}
!193 = !{!194, !41, i64 0}
!194 = !{!"rdg_component", !41, i64 0, !36, i64 8}
!195 = !{!194, !36, i64 8}
!196 = !{!197, !41, i64 4}
!197 = !{!"VEC_rdgc_base", !41, i64 0, !41, i64 4, !37, i64 8}
!198 = !{!197, !41, i64 0}
!199 = distinct !{!199, !52, !53}
!200 = distinct !{!200, !52, !53}
!201 = distinct !{!201, !52, !53}
!202 = !{!89, !36, i64 0}
!203 = distinct !{!203, !52, !53}
!204 = distinct !{!204, !52, !53}
!205 = distinct !{!205, !52, !53}
!206 = distinct !{!206, !52, !53}
!207 = distinct !{!207, !52, !53}
!208 = distinct !{!208, !52, !53}
!209 = distinct !{!209, !52, !53}
!210 = !{!55, !41, i64 4}
!211 = distinct !{!211, !52, !53}
!212 = distinct !{!212, !52, !53}
!213 = distinct !{!213, !52, !53}
!214 = !{!94, !41, i64 4}
!215 = !{!216, !36, i64 32}
!216 = !{!"use_optype_d", !36, i64 0, !163, i64 8}
!217 = distinct !{!217, !52, !53}
!218 = !{}
!219 = !{!123, !36, i64 24}
!220 = distinct !{!220, !52, !53}
!221 = distinct !{!221, !52, !53}
!222 = !{!223, !41, i64 0}
!223 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!224 = !{!80, !41, i64 4}
!225 = distinct !{!225, !52, !53}
!226 = distinct !{!226, !52, !53}
!227 = !{!216, !36, i64 0}
!228 = distinct !{!228, !52, !53}
