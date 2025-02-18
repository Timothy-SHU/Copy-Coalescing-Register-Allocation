; ModuleID = 'tree-ssa-loop-ivcanon.c'
source_filename = "tree-ssa-loop-ivcanon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_tree_loop_ivcanon = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Loop %d iterates \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" times.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  Loop size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"  Estimated size after unrolling: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Not unrolling loop %d (--param max-completely-peeled-insns limit reached).\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Not unrolling loop %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"tree-ssa-loop-ivcanon.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unrolled loop %d completely.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Estimating sizes for loop %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" BB: %i, after_exit: %i\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"  size: %3i \00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"   Exit condition will be eliminated.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"   Induction variable computation will be folded away.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"   Constant expression will be folded away.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"   Constant conditional.\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"size: %i-%i, last_iteration: %i-%i\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.18 = private unnamed_addr constant [32 x i8] c"Added canonical iv to loop %d, \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" iterations.\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
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
  %5 = tail call ptr @__ctype_tolower_loc() #14
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
  %5 = tail call ptr @__ctype_toupper_loc() #14
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
define dso_local i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %2, %39
  %8 = phi i64 [ %41, %39 ], [ 0, %2 ]
  %9 = phi i32 [ %40, %39 ], [ 0, %2 ]
  %10 = getelementptr inbounds ptr, ptr %3, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !58, !noalias !60
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !46, !noalias !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !63, !noalias !60
  br label %22

22:                                               ; preds = %20, %16, %7
  %23 = phi ptr [ %21, %20 ], [ null, %16 ], [ null, %7 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !65, !noalias !60
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi ptr [ %26, %25 ], [ null, %22 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %35, %30 ], [ %9, %27 ]
  %32 = phi ptr [ %37, %30 ], [ %28, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  %34 = tail call i32 @estimate_num_insns(ptr noundef %33, ptr noundef %1) #14
  %35 = add i32 %34, %31
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !70

39:                                               ; preds = %30, %27
  %40 = phi i32 [ %9, %27 ], [ %35, %30 ]
  %41 = add nuw nsw i64 %8, 1
  %42 = load i32, ptr %4, align 4, !tbaa !54
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %7, label %45, !llvm.loop !71

45:                                               ; preds = %39, %2
  %46 = phi i32 [ 0, %2 ], [ %40, %39 ]
  tail call void @free(ptr noundef %3)
  ret i32 %46
}

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local i32 @canonicalize_induction_variables() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !76
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %12, i64 noundef 8, i64 noundef 4) #14
  %14 = load ptr, ptr @cfun, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  br label %19

19:                                               ; preds = %32, %11
  %20 = phi ptr [ %18, %11 ], [ %33, %32 ]
  %21 = load i32, ptr %20, align 8, !tbaa !79
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %13, align 4, !tbaa !80
  %25 = add i32 %24, 1
  store i32 %25, ptr %13, align 4, !tbaa !80
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %26
  store i32 %21, ptr %27, align 4, !tbaa !50
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.loop, ptr %20, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %37, %28
  %33 = phi ptr [ %30, %28 ], [ %40, %37 ]
  br label %19, !llvm.loop !83

34:                                               ; preds = %56
  %35 = icmp eq ptr %13, null
  %36 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 1
  br label %59

37:                                               ; preds = %28, %56
  %38 = phi ptr [ %57, %56 ], [ %20, %28 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %32, !llvm.loop !83

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 8, !tbaa !76
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = add i32 %49, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %44, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi ptr [ %55, %51 ], [ null, %48 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %34, label %37, !llvm.loop !86

59:                                               ; preds = %34, %71
  %60 = phi i32 [ %72, %71 ], [ 0, %34 ]
  br i1 %35, label %68, label %61

61:                                               ; preds = %59
  %62 = load i32, ptr %13, align 4, !tbaa !80
  %63 = icmp ugt i32 %62, %60
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !50
  br label %68

68:                                               ; preds = %64, %61, %59
  %69 = phi i32 [ %67, %64 ], [ 0, %61 ], [ 0, %59 ]
  %70 = phi i1 [ false, %64 ], [ true, %61 ], [ true, %59 ]
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = add i32 %60, 1
  %73 = load ptr, ptr %36, align 8, !tbaa !74
  %74 = zext i32 %69 to i64
  %75 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %73, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %59, label %80, !llvm.loop !87

78:                                               ; preds = %68
  br i1 %35, label %80, label %79

79:                                               ; preds = %78
  tail call void @free(ptr noundef %13)
  br label %80

80:                                               ; preds = %71, %78, %79, %0
  %81 = phi i32 [ 0, %0 ], [ %60, %79 ], [ %60, %78 ], [ %72, %71 ]
  %82 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %13, %71 ]
  %83 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %76, %71 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %126, label %85

85:                                               ; preds = %80, %118
  %86 = phi i8 [ %91, %118 ], [ 0, %80 ]
  %87 = phi ptr [ %121, %118 ], [ %83, %80 ]
  %88 = phi ptr [ %120, %118 ], [ %82, %80 ]
  %89 = phi i32 [ %119, %118 ], [ %81, %80 ]
  %90 = tail call fastcc zeroext i8 @canonicalize_loop_induction_variables(ptr noundef nonnull %87, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1), !range !88
  %91 = or i8 %90, %86
  %92 = icmp eq ptr %88, null
  %93 = load ptr, ptr @cfun, align 8
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 4
  br label %95

95:                                               ; preds = %107, %85
  %96 = phi i32 [ %89, %85 ], [ %108, %107 ]
  br i1 %92, label %104, label %97

97:                                               ; preds = %95
  %98 = load i32, ptr %88, align 4, !tbaa !80
  %99 = icmp ugt i32 %98, %96
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = zext i32 %96 to i64
  %102 = getelementptr inbounds %struct.VEC_int_base, ptr %88, i64 0, i32 2, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !50
  br label %104

104:                                              ; preds = %100, %97, %95
  %105 = phi i32 [ %103, %100 ], [ 0, %97 ], [ 0, %95 ]
  %106 = phi i1 [ false, %100 ], [ true, %97 ], [ true, %95 ]
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  %108 = add i32 %96, 1
  %109 = load ptr, ptr %94, align 8, !tbaa !72
  %110 = getelementptr inbounds %struct.loops, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !74
  %112 = zext i32 %105 to i64
  %113 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %111, i64 0, i32 2, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = icmp eq ptr %114, null
  br i1 %115, label %95, label %118, !llvm.loop !87

116:                                              ; preds = %104
  br i1 %92, label %118, label %117

117:                                              ; preds = %116
  tail call void @free(ptr noundef %88)
  br label %118

118:                                              ; preds = %107, %116, %117
  %119 = phi i32 [ %96, %117 ], [ %96, %116 ], [ %108, %107 ]
  %120 = phi ptr [ null, %117 ], [ null, %116 ], [ %88, %107 ]
  %121 = phi ptr [ null, %117 ], [ null, %116 ], [ %114, %107 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %85, !llvm.loop !89

123:                                              ; preds = %118
  %124 = icmp eq i8 %91, 0
  %125 = select i1 %124, i32 0, i32 32
  br label %126

126:                                              ; preds = %123, %80
  %127 = phi i32 [ 0, %80 ], [ %125, %123 ]
  tail call void @scev_reset() #14
  ret i32 %127
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @canonicalize_loop_induction_variables(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !35
  %9 = tail call ptr @number_of_latch_executions(ptr noundef %0) #14
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 23
  %13 = tail call ptr @single_exit(ptr noundef %0) #14
  br i1 %12, label %14, label %18

14:                                               ; preds = %4
  store ptr %13, ptr %8, align 8, !tbaa !35
  %15 = load ptr, ptr %13, align 8, !tbaa !90
  %16 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %15) #14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %730, label %42

18:                                               ; preds = %4
  %19 = icmp eq ptr %13, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = call ptr @find_loop_niter(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %9, %18 ], [ %21, %20 ]
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %23) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, ptr %23, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 23
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %25
  %33 = call ptr @find_loop_niter_by_eval(ptr noundef %0, ptr noundef nonnull %8) #14
  br label %34

34:                                               ; preds = %32, %28, %22
  %35 = phi ptr [ %33, %32 ], [ %23, %28 ], [ %23, %22 ]
  %36 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %35) #14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %730

38:                                               ; preds = %34
  %39 = load i64, ptr %35, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %730

42:                                               ; preds = %38, %14
  %43 = phi ptr [ %9, %14 ], [ %35, %38 ]
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %0, align 8, !tbaa !79
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str, i32 noundef %51)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %53, ptr noundef nonnull %43, i32 noundef 2) #14
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %55 = call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %54)
  br label %56

56:                                               ; preds = %42, %50, %46
  %57 = load ptr, ptr %8, align 8, !tbaa !35
  %58 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !82
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %614

61:                                               ; preds = %56
  %62 = call i32 @host_integerp(ptr noundef nonnull %43, i32 noundef 1) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %614, label %64

64:                                               ; preds = %61
  %65 = call i64 @tree_low_cst(ptr noundef nonnull %43, i32 noundef 1) #14
  %66 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.param_info, ptr %66, i64 32, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !92
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %65, %69
  br i1 %70, label %614, label %71

71:                                               ; preds = %64
  %72 = icmp eq i64 %65, 0
  br i1 %72, label %499, label %73

73:                                               ; preds = %71
  %74 = icmp eq i32 %2, 0
  br i1 %74, label %614, label %75

75:                                               ; preds = %73
  %76 = call ptr @get_loop_body(ptr noundef %0) #14
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %0, align 8, !tbaa !79
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.9, i32 noundef %84)
  br label %86

86:                                               ; preds = %83, %79, %75
  %87 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !54
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %387, label %90

90:                                               ; preds = %86
  %91 = icmp eq ptr %57, null
  br label %92

92:                                               ; preds = %90, %378
  %93 = phi i64 [ 0, %90 ], [ %383, %378 ]
  %94 = phi i32 [ 0, %90 ], [ %382, %378 ]
  %95 = phi i32 [ 0, %90 ], [ %381, %378 ]
  %96 = phi i32 [ 0, %90 ], [ %380, %378 ]
  %97 = phi i32 [ 0, %90 ], [ %379, %378 ]
  br i1 %91, label %106, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds ptr, ptr %76, i64 %93
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = load ptr, ptr %57, align 8, !tbaa !90
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %100, ptr noundef %101) #14
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %98, %92
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i1 [ true, %106 ], [ false, %103 ]
  %109 = phi i32 [ 0, %106 ], [ 1, %103 ]
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %111 = icmp eq ptr %110, null
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds ptr, ptr %76, i64 %93
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 9
  %120 = load i32, ptr %119, align 8, !tbaa !94
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.10, i32 noundef %120, i32 noundef %109)
  br label %122

122:                                              ; preds = %116, %112, %107
  %123 = getelementptr inbounds ptr, ptr %76, i64 %93
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 13
  %126 = load i32, ptr %125, align 8, !tbaa !58, !noalias !95
  %127 = and i32 %126, 512
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !46, !noalias !95
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %131, align 8, !tbaa !63, !noalias !95
  br label %135

135:                                              ; preds = %133, %129, %122
  %136 = phi ptr [ %134, %133 ], [ null, %129 ], [ null, %122 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %136, align 8, !tbaa !65, !noalias !95
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi ptr [ %139, %138 ], [ null, %135 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %378, label %143

143:                                              ; preds = %140, %367
  %144 = phi ptr [ %376, %367 ], [ %141, %140 ]
  %145 = phi i32 [ %374, %367 ], [ %94, %140 ]
  %146 = phi i32 [ %369, %367 ], [ %95, %140 ]
  %147 = phi i32 [ %370, %367 ], [ %96, %140 ]
  %148 = phi i32 [ %372, %367 ], [ %97, %140 ]
  %149 = load ptr, ptr %144, align 8, !tbaa !67
  %150 = call i32 @estimate_num_insns(ptr noundef %149, ptr noundef nonnull @eni_size_weights) #14
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %152, label %161, label %153

153:                                              ; preds = %143
  %154 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %155 = and i32 %154, 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %151, ptr noundef nonnull @.str.11, i32 noundef %150)
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %160 = load ptr, ptr %144, align 8, !tbaa !67
  call void @print_gimple_stmt(ptr noundef %159, ptr noundef %160, i32 noundef 0, i32 noundef 0) #14
  br label %161

161:                                              ; preds = %157, %153, %143
  %162 = load ptr, ptr %123, align 8, !tbaa !35
  %163 = load ptr, ptr %57, align 8, !tbaa !90
  %164 = icmp eq ptr %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = call ptr @last_stmt(ptr noundef %163) #14
  %167 = icmp eq ptr %149, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %170 = icmp eq ptr %169, null
  br i1 %170, label %367, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %173 = and i32 %172, 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %367, label %175

175:                                              ; preds = %171
  %176 = call i64 @fwrite(ptr nonnull @.str.12, i64 38, i64 1, ptr nonnull %169)
  br label %367

177:                                              ; preds = %165, %161
  %178 = load i32, ptr %149, align 8
  %179 = and i32 %178, 255
  %180 = icmp eq i32 %179, 6
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = zext nneg i32 %179 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !50
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !98
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %190

190:                                              ; preds = %189, %181
  %191 = getelementptr inbounds i8, ptr %149, i64 %187
  %192 = load ptr, ptr %191, align 8, !tbaa !35
  %193 = call fastcc zeroext i8 @constant_after_peeling(ptr noundef %192, ptr noundef nonnull %149, ptr noundef %0), !range !88
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %190
  %196 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %197 = icmp eq ptr %196, null
  br i1 %197, label %367, label %198

198:                                              ; preds = %195
  %199 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %200 = and i32 %199, 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %367, label %202

202:                                              ; preds = %198
  %203 = call i64 @fwrite(ptr nonnull @.str.13, i64 55, i64 1, ptr nonnull %196)
  br label %367

204:                                              ; preds = %190, %177
  %205 = load i32, ptr %149, align 8
  %206 = and i32 %205, 255
  %207 = icmp eq i32 %206, 6
  br i1 %207, label %208, label %318

208:                                              ; preds = %204
  %209 = zext nneg i32 %206 to i64
  %210 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !50
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %212
  %214 = load i64, ptr %213, align 8, !tbaa !98
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %217

217:                                              ; preds = %216, %208
  %218 = getelementptr inbounds i8, ptr %149, i64 %214
  %219 = load ptr, ptr %218, align 8, !tbaa !35
  %220 = load i64, ptr %219, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 141
  br i1 %222, label %223, label %318

223:                                              ; preds = %217
  %224 = load i32, ptr %149, align 8
  %225 = and i32 %224, 255
  %226 = add nsw i32 %225, -10
  %227 = icmp ult i32 %226, -9
  br i1 %227, label %241, label %228

228:                                              ; preds = %223
  %229 = zext nneg i32 %225 to i64
  %230 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !50
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !98
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %237

237:                                              ; preds = %236, %228
  %238 = getelementptr inbounds i8, ptr %149, i64 %234
  %239 = getelementptr inbounds ptr, ptr %238, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !35
  br label %241

241:                                              ; preds = %237, %223
  %242 = phi ptr [ %240, %237 ], [ null, %223 ]
  %243 = call fastcc zeroext i8 @constant_after_peeling(ptr noundef %242, ptr noundef nonnull %149, ptr noundef %0), !range !88
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %318, label %245

245:                                              ; preds = %241
  %246 = load i32, ptr %149, align 8
  %247 = trunc i32 %246 to i8
  switch i8 %247, label %250 [
    i8 6, label %248
    i8 1, label %248
    i8 8, label %251
  ]

248:                                              ; preds = %245, %245
  %249 = lshr i32 %246, 16
  br label %251

250:                                              ; preds = %245
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1446, ptr noundef nonnull @.str.7) #14
  br label %251

251:                                              ; preds = %250, %248, %245
  %252 = phi i32 [ %249, %248 ], [ 0, %250 ], [ 59, %245 ]
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !46
  %256 = icmp eq i8 %255, 3
  br i1 %256, label %257, label %277

257:                                              ; preds = %251
  %258 = load i32, ptr %149, align 8
  %259 = and i32 %258, 255
  %260 = add nsw i32 %259, -1
  %261 = icmp ult i32 %260, 9
  call void @llvm.assume(i1 %261)
  %262 = zext nneg i32 %259 to i64
  %263 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !50
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %265
  %267 = load i64, ptr %266, align 8, !tbaa !98
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %270

270:                                              ; preds = %269, %257
  %271 = getelementptr inbounds i8, ptr %149, i64 %267
  %272 = getelementptr inbounds ptr, ptr %271, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !35
  %274 = load i64, ptr %273, align 8
  %275 = trunc i64 %274 to i32
  %276 = and i32 %275, 65535
  br label %277

277:                                              ; preds = %270, %251
  %278 = phi i32 [ %276, %270 ], [ %252, %251 ]
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !46
  %282 = icmp eq i8 %281, 1
  br i1 %282, label %283, label %309

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.gimple_statement_base, ptr %149, i64 0, i32 3
  %285 = load i32, ptr %284, align 4, !tbaa !46
  %286 = icmp ugt i32 %285, 2
  br i1 %286, label %287, label %305

287:                                              ; preds = %283
  %288 = load i32, ptr %149, align 8
  %289 = and i32 %288, 255
  %290 = add nsw i32 %289, -10
  %291 = icmp ult i32 %290, -9
  br i1 %291, label %305, label %292

292:                                              ; preds = %287
  %293 = zext nneg i32 %289 to i64
  %294 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !50
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %296
  %298 = load i64, ptr %297, align 8, !tbaa !98
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %301

301:                                              ; preds = %300, %292
  %302 = getelementptr inbounds i8, ptr %149, i64 %298
  %303 = getelementptr inbounds ptr, ptr %302, i64 2
  %304 = load ptr, ptr %303, align 8, !tbaa !35
  br label %305

305:                                              ; preds = %301, %287, %283
  %306 = phi ptr [ null, %283 ], [ %304, %301 ], [ null, %287 ]
  %307 = call fastcc zeroext i8 @constant_after_peeling(ptr noundef %306, ptr noundef nonnull %149, ptr noundef %0), !range !88
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %305, %277
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %311 = icmp eq ptr %310, null
  br i1 %311, label %367, label %312

312:                                              ; preds = %309
  %313 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %314 = and i32 %313, 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %367, label %316

316:                                              ; preds = %312
  %317 = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr nonnull %310)
  br label %367

318:                                              ; preds = %305, %241, %217, %204
  %319 = load i32, ptr %149, align 8
  %320 = and i32 %319, 255
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %367

322:                                              ; preds = %318
  %323 = zext nneg i32 %320 to i64
  %324 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !50
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %326
  %328 = load i64, ptr %327, align 8, !tbaa !98
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %331

331:                                              ; preds = %330, %322
  %332 = getelementptr inbounds i8, ptr %149, i64 %328
  %333 = load ptr, ptr %332, align 8, !tbaa !35
  %334 = call fastcc zeroext i8 @constant_after_peeling(ptr noundef %333, ptr noundef nonnull %149, ptr noundef %0), !range !88
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %367, label %336

336:                                              ; preds = %331
  %337 = load i32, ptr %149, align 8
  %338 = and i32 %337, 255
  %339 = add nsw i32 %338, -10
  %340 = icmp ult i32 %339, -9
  br i1 %340, label %354, label %341

341:                                              ; preds = %336
  %342 = zext nneg i32 %338 to i64
  %343 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !50
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !98
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %341
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %350

350:                                              ; preds = %349, %341
  %351 = getelementptr inbounds i8, ptr %149, i64 %347
  %352 = getelementptr inbounds ptr, ptr %351, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  br label %354

354:                                              ; preds = %350, %336
  %355 = phi ptr [ %353, %350 ], [ null, %336 ]
  %356 = call fastcc zeroext i8 @constant_after_peeling(ptr noundef %355, ptr noundef nonnull %149, ptr noundef %0), !range !88
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %367, label %358

358:                                              ; preds = %354
  %359 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %358
  %362 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %363 = and i32 %362, 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = call i64 @fwrite(ptr nonnull @.str.15, i64 25, i64 1, ptr nonnull %359)
  br label %367

367:                                              ; preds = %365, %361, %358, %354, %331, %318, %316, %312, %309, %202, %198, %195, %175, %171, %168
  %368 = phi i32 [ 0, %354 ], [ 0, %331 ], [ 0, %318 ], [ %150, %175 ], [ %150, %171 ], [ %150, %168 ], [ %150, %202 ], [ %150, %198 ], [ %150, %195 ], [ %150, %316 ], [ %150, %312 ], [ %150, %309 ], [ %150, %365 ], [ %150, %361 ], [ %150, %358 ]
  %369 = add nsw i32 %150, %146
  %370 = add nsw i32 %368, %147
  %371 = select i1 %108, i32 %150, i32 0
  %372 = add nsw i32 %371, %148
  %373 = select i1 %108, i32 %368, i32 0
  %374 = add nsw i32 %373, %145
  %375 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %144, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !69
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %143, !llvm.loop !99

378:                                              ; preds = %367, %140
  %379 = phi i32 [ %97, %140 ], [ %372, %367 ]
  %380 = phi i32 [ %96, %140 ], [ %370, %367 ]
  %381 = phi i32 [ %95, %140 ], [ %369, %367 ]
  %382 = phi i32 [ %94, %140 ], [ %374, %367 ]
  %383 = add nuw nsw i64 %93, 1
  %384 = load i32, ptr %87, align 4, !tbaa !54
  %385 = zext i32 %384 to i64
  %386 = icmp ult i64 %383, %385
  br i1 %386, label %92, label %387, !llvm.loop !100

387:                                              ; preds = %378, %86
  %388 = phi i32 [ 0, %86 ], [ %379, %378 ]
  %389 = phi i32 [ 0, %86 ], [ %380, %378 ]
  %390 = phi i32 [ 0, %86 ], [ %381, %378 ]
  %391 = phi i32 [ 0, %86 ], [ %382, %378 ]
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %393 = icmp eq ptr %392, null
  br i1 %393, label %400, label %394

394:                                              ; preds = %387
  %395 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %396 = and i32 %395, 8
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %394
  %399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %392, ptr noundef nonnull @.str.16, i32 noundef %390, i32 noundef %389, i32 noundef %388, i32 noundef %391)
  br label %400

400:                                              ; preds = %398, %394, %387
  call void @free(ptr noundef %76)
  %401 = sext i32 %390 to i64
  %402 = sub nsw i32 %390, %389
  %403 = sext i32 %402 to i64
  %404 = mul i64 %65, %403
  %405 = sub nsw i32 %388, %391
  %406 = sext i32 %405 to i64
  %407 = add nsw i64 %404, %406
  %408 = shl nsw i64 %407, 1
  %409 = sdiv i64 %408, 3
  %410 = call i64 @llvm.smax.i64(i64 %409, i64 1)
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %412 = icmp eq ptr %411, null
  br i1 %412, label %422, label %413

413:                                              ; preds = %400
  %414 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %415 = and i32 %414, 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %422, label %417

417:                                              ; preds = %413
  %418 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %411, ptr noundef nonnull @.str.2, i32 noundef %390)
  %419 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %420 = trunc i64 %410 to i32
  %421 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.3, i32 noundef %420)
  br label %422

422:                                              ; preds = %417, %413, %400
  %423 = icmp ule i64 %410, %401
  br i1 %423, label %440, label %424

424:                                              ; preds = %422
  %425 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %426 = getelementptr inbounds %struct.param_info, ptr %425, i64 31, i32 1
  %427 = load i32, ptr %426, align 8, !tbaa !92
  %428 = zext i32 %427 to i64
  %429 = icmp ugt i64 %410, %428
  br i1 %429, label %430, label %440

430:                                              ; preds = %424
  %431 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %432 = icmp eq ptr %431, null
  br i1 %432, label %614, label %433

433:                                              ; preds = %430
  %434 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %435 = and i32 %434, 8
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %614, label %437

437:                                              ; preds = %433
  %438 = load i32, ptr %0, align 8, !tbaa !79
  %439 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %431, ptr noundef nonnull @.str.4, i32 noundef %438)
  br label %614

440:                                              ; preds = %424, %422
  %441 = icmp ne i32 %2, 1
  %442 = or i1 %441, %423
  br i1 %442, label %453, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %445 = icmp eq ptr %444, null
  br i1 %445, label %614, label %446

446:                                              ; preds = %443
  %447 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %448 = and i32 %447, 8
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %614, label %450

450:                                              ; preds = %446
  %451 = load i32, ptr %0, align 8, !tbaa !79
  %452 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %444, ptr noundef nonnull @.str.5, i32 noundef %451)
  br label %614

453:                                              ; preds = %440
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store ptr null, ptr %7, align 8, !tbaa !35
  call void @initialize_original_copy_tables() #14
  %454 = trunc i64 %65 to i32
  %455 = add i32 %454, 1
  %456 = call ptr @sbitmap_alloc(i32 noundef %455) #14
  call void @sbitmap_ones(ptr noundef %456) #14
  %457 = load ptr, ptr %456, align 8, !tbaa !101
  %458 = icmp eq ptr %457, null
  br i1 %458, label %467, label %459

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.simple_bitmap_def, ptr %456, i64 0, i32 3
  %461 = load i64, ptr %460, align 8, !tbaa !98
  %462 = and i64 %461, 1
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %459
  %465 = load i8, ptr %457, align 1, !tbaa !46
  %466 = add i8 %465, -1
  store i8 %466, ptr %457, align 1, !tbaa !46
  br label %467

467:                                              ; preds = %464, %459, %453
  %468 = getelementptr inbounds %struct.simple_bitmap_def, ptr %456, i64 0, i32 3
  %469 = load i64, ptr %468, align 8, !tbaa !98
  %470 = and i64 %469, -2
  store i64 %470, ptr %468, align 8, !tbaa !98
  %471 = call ptr @loop_preheader_edge(ptr noundef %0) #14
  %472 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %471, i32 noundef %454, ptr noundef nonnull %456, ptr noundef %57, ptr noundef nonnull %7, i32 noundef 5) #14
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %467
  call void @free_original_copy_tables() #14
  call void @free(ptr noundef %456)
  br label %498

475:                                              ; preds = %467, %493
  %476 = phi i32 [ %494, %493 ], [ 0, %467 ]
  %477 = load ptr, ptr %7, align 8
  %478 = icmp eq ptr %477, null
  br i1 %478, label %486, label %479

479:                                              ; preds = %475
  %480 = load i32, ptr %477, align 8, !tbaa !103
  %481 = icmp ugt i32 %480, %476
  br i1 %481, label %482, label %486

482:                                              ; preds = %479
  %483 = zext i32 %476 to i64
  %484 = getelementptr inbounds %struct.VEC_edge_base, ptr %477, i64 0, i32 2, i64 %483
  %485 = load ptr, ptr %484, align 8, !tbaa !35
  br label %486

486:                                              ; preds = %482, %479, %475
  %487 = phi ptr [ %485, %482 ], [ null, %479 ], [ null, %475 ]
  %488 = phi i1 [ false, %482 ], [ true, %479 ], [ true, %475 ]
  br i1 %488, label %495, label %489

489:                                              ; preds = %486
  %490 = call zeroext i8 @remove_path(ptr noundef %487) #14
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 412, ptr noundef nonnull @.str.7) #14
  br label %493

493:                                              ; preds = %492, %489
  %494 = add i32 %476, 1
  br label %475, !llvm.loop !105

495:                                              ; preds = %486
  br i1 %478, label %497, label %496

496:                                              ; preds = %495
  call void @free(ptr noundef %477)
  br label %497

497:                                              ; preds = %496, %495
  store ptr null, ptr %7, align 8, !tbaa !35
  call void @free(ptr noundef %456)
  call void @free_original_copy_tables() #14
  br label %498

498:                                              ; preds = %497, %474
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br i1 %473, label %614, label %499

499:                                              ; preds = %498, %71
  %500 = load ptr, ptr %57, align 8, !tbaa !90
  %501 = call ptr @last_stmt(ptr noundef %500) #14
  %502 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 7
  %503 = load i32, ptr %502, align 8, !tbaa !106
  %504 = and i32 %503, 1024
  %505 = icmp eq i32 %504, 0
  %506 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  %507 = load i32, ptr %501, align 8
  %508 = and i32 %507, 255
  %509 = add nsw i32 %508, -10
  %510 = icmp ult i32 %509, -9
  br i1 %505, label %550, label %511

511:                                              ; preds = %499
  br i1 %510, label %516, label %512

512:                                              ; preds = %511
  %513 = getelementptr inbounds %struct.gimple_statement_base, ptr %501, i64 0, i32 3
  %514 = load i32, ptr %513, align 4, !tbaa !46
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %512, %511
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %517

517:                                              ; preds = %516, %512
  %518 = load i32, ptr %501, align 8
  %519 = and i32 %518, 255
  %520 = zext nneg i32 %519 to i64
  %521 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !50
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %523
  %525 = load i64, ptr %524, align 8, !tbaa !98
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %527, label %528

527:                                              ; preds = %517
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %528

528:                                              ; preds = %527, %517
  %529 = getelementptr inbounds i8, ptr %501, i64 %525
  store ptr %506, ptr %529, align 8, !tbaa !35
  %530 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  %531 = load i32, ptr %501, align 8
  %532 = and i32 %531, 255
  %533 = add nsw i32 %532, -10
  %534 = icmp ult i32 %533, -9
  br i1 %534, label %539, label %535

535:                                              ; preds = %528
  %536 = getelementptr inbounds %struct.gimple_statement_base, ptr %501, i64 0, i32 3
  %537 = load i32, ptr %536, align 4, !tbaa !46
  %538 = icmp ugt i32 %537, 1
  br i1 %538, label %540, label %539

539:                                              ; preds = %535, %528
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %540

540:                                              ; preds = %539, %535
  %541 = load i32, ptr %501, align 8
  %542 = and i32 %541, 255
  %543 = zext nneg i32 %542 to i64
  %544 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %543
  %545 = load i32, ptr %544, align 4, !tbaa !50
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %546
  %548 = load i64, ptr %547, align 8, !tbaa !98
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %589, label %592

550:                                              ; preds = %499
  br i1 %510, label %555, label %551

551:                                              ; preds = %550
  %552 = getelementptr inbounds %struct.gimple_statement_base, ptr %501, i64 0, i32 3
  %553 = load i32, ptr %552, align 4, !tbaa !46
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %551, %550
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %556

556:                                              ; preds = %555, %551
  %557 = load i32, ptr %501, align 8
  %558 = and i32 %557, 255
  %559 = zext nneg i32 %558 to i64
  %560 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !50
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %562
  %564 = load i64, ptr %563, align 8, !tbaa !98
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %556
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %567

567:                                              ; preds = %566, %556
  %568 = getelementptr inbounds i8, ptr %501, i64 %564
  store ptr %506, ptr %568, align 8, !tbaa !35
  %569 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !35
  %570 = load i32, ptr %501, align 8
  %571 = and i32 %570, 255
  %572 = add nsw i32 %571, -10
  %573 = icmp ult i32 %572, -9
  br i1 %573, label %578, label %574

574:                                              ; preds = %567
  %575 = getelementptr inbounds %struct.gimple_statement_base, ptr %501, i64 0, i32 3
  %576 = load i32, ptr %575, align 4, !tbaa !46
  %577 = icmp ugt i32 %576, 1
  br i1 %577, label %579, label %578

578:                                              ; preds = %574, %567
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %579

579:                                              ; preds = %578, %574
  %580 = load i32, ptr %501, align 8
  %581 = and i32 %580, 255
  %582 = zext nneg i32 %581 to i64
  %583 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %582
  %584 = load i32, ptr %583, align 4, !tbaa !50
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %585
  %587 = load i64, ptr %586, align 8, !tbaa !98
  %588 = icmp eq i64 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %579, %540
  %590 = phi i64 [ %548, %540 ], [ %587, %579 ]
  %591 = phi ptr [ %530, %540 ], [ %569, %579 ]
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %592

592:                                              ; preds = %589, %579, %540
  %593 = phi i64 [ %548, %540 ], [ %587, %579 ], [ %590, %589 ]
  %594 = phi ptr [ %530, %540 ], [ %569, %579 ], [ %591, %589 ]
  %595 = getelementptr inbounds i8, ptr %501, i64 %593
  %596 = getelementptr inbounds ptr, ptr %595, i64 1
  store ptr %594, ptr %596, align 8, !tbaa !35
  %597 = load i32, ptr %501, align 8
  %598 = and i32 %597, 65535
  %599 = or disjoint i32 %598, 6619136
  store i32 %599, ptr %501, align 8
  %600 = and i32 %597, 255
  %601 = add nsw i32 %600, -10
  %602 = icmp ult i32 %601, -9
  br i1 %602, label %604, label %603

603:                                              ; preds = %592
  call void @gimple_set_modified(ptr noundef nonnull %501, i8 noundef zeroext 1) #14
  call void @update_stmt_operands(ptr noundef nonnull %501) #14
  br label %604

604:                                              ; preds = %603, %592
  call void @update_ssa(i32 noundef 2048) #14
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %606 = icmp eq ptr %605, null
  br i1 %606, label %730, label %607

607:                                              ; preds = %604
  %608 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %609 = and i32 %608, 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %730, label %611

611:                                              ; preds = %607
  %612 = load i32, ptr %0, align 8, !tbaa !79
  %613 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %605, ptr noundef nonnull @.str.8, i32 noundef %612)
  br label %730

614:                                              ; preds = %443, %446, %450, %430, %433, %437, %73, %64, %61, %56, %498
  %615 = icmp eq i8 %1, 0
  br i1 %615, label %730, label %616

616:                                              ; preds = %614
  %617 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %618 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %619 = icmp eq ptr %618, null
  br i1 %619, label %630, label %620

620:                                              ; preds = %616
  %621 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %622 = and i32 %621, 8
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %630, label %624

624:                                              ; preds = %620
  %625 = load i32, ptr %0, align 8, !tbaa !79
  %626 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %618, ptr noundef nonnull @.str.18, i32 noundef %625)
  %627 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %627, ptr noundef nonnull %43, i32 noundef 2) #14
  %628 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %629 = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %628)
  br label %630

630:                                              ; preds = %624, %620, %616
  %631 = load ptr, ptr %617, align 8, !tbaa !90
  %632 = call ptr @last_stmt(ptr noundef %631) #14
  %633 = load ptr, ptr %617, align 8, !tbaa !90
  %634 = getelementptr inbounds %struct.basic_block_def, ptr %633, i64 0, i32 1
  %635 = load ptr, ptr %634, align 8, !tbaa !107
  %636 = getelementptr inbounds %struct.VEC_edge_base, ptr %635, i64 0, i32 2, i64 0
  %637 = load ptr, ptr %636, align 8, !tbaa !35
  %638 = icmp eq ptr %637, %617
  br i1 %638, label %639, label %642

639:                                              ; preds = %630
  %640 = getelementptr inbounds %struct.VEC_edge_base, ptr %635, i64 0, i32 2, i64 1
  %641 = load ptr, ptr %640, align 8, !tbaa !35
  br label %642

642:                                              ; preds = %639, %630
  %643 = phi ptr [ %641, %639 ], [ %637, %630 ]
  %644 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %645 = load ptr, ptr %644, align 8, !tbaa !46
  %646 = call ptr @build_int_cst(ptr noundef %645, i64 noundef 1) #14
  %647 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %645, ptr noundef nonnull %43, ptr noundef %646) #14
  %648 = load ptr, ptr %643, align 8, !tbaa !90
  %649 = getelementptr inbounds %struct.basic_block_def, ptr %648, i64 0, i32 13
  %650 = load i32, ptr %649, align 8, !tbaa !58, !noalias !108
  %651 = and i32 %650, 512
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %659

653:                                              ; preds = %642
  %654 = getelementptr inbounds %struct.basic_block_def, ptr %648, i64 0, i32 7
  %655 = load ptr, ptr %654, align 8, !tbaa !46, !noalias !108
  %656 = icmp eq ptr %655, null
  br i1 %656, label %659, label %657

657:                                              ; preds = %653
  %658 = load ptr, ptr %655, align 8, !tbaa !63, !noalias !108
  br label %659

659:                                              ; preds = %657, %653, %642
  %660 = phi ptr [ %658, %657 ], [ null, %653 ], [ null, %642 ]
  %661 = icmp eq ptr %660, null
  br i1 %661, label %665, label %662

662:                                              ; preds = %659
  %663 = getelementptr inbounds %struct.gimple_seq_d, ptr %660, i64 0, i32 1
  %664 = load ptr, ptr %663, align 8, !tbaa !111, !noalias !108
  br label %665

665:                                              ; preds = %662, %659
  %666 = phi ptr [ %664, %662 ], [ null, %659 ]
  store ptr %666, ptr %6, align 8, !tbaa.struct !112
  %667 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %660, ptr %667, align 8, !tbaa.struct !113
  %668 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %648, ptr %668, align 8, !tbaa.struct !114
  %669 = call ptr @build_int_cst(ptr noundef %645, i64 noundef -1) #14
  call void @create_iv(ptr noundef %647, ptr noundef %669, ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %5) #14
  %670 = getelementptr inbounds %struct.edge_def, ptr %617, i64 0, i32 7
  %671 = load i32, ptr %670, align 8, !tbaa !106
  %672 = and i32 %671, 1024
  %673 = icmp eq i32 %672, 0
  %674 = select i1 %673, i32 6684672, i32 6619136
  %675 = load i32, ptr %632, align 8
  %676 = and i32 %675, 65535
  %677 = or disjoint i32 %674, %676
  store i32 %677, ptr %632, align 8
  %678 = load ptr, ptr %5, align 8, !tbaa !35
  %679 = and i32 %675, 255
  %680 = add nsw i32 %679, -10
  %681 = icmp ult i32 %680, -9
  br i1 %681, label %686, label %682

682:                                              ; preds = %665
  %683 = getelementptr inbounds %struct.gimple_statement_base, ptr %632, i64 0, i32 3
  %684 = load i32, ptr %683, align 4, !tbaa !46
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %687

686:                                              ; preds = %682, %665
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %687

687:                                              ; preds = %686, %682
  %688 = load i32, ptr %632, align 8
  %689 = and i32 %688, 255
  %690 = zext nneg i32 %689 to i64
  %691 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %690
  %692 = load i32, ptr %691, align 4, !tbaa !50
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %693
  %695 = load i64, ptr %694, align 8, !tbaa !98
  %696 = icmp eq i64 %695, 0
  br i1 %696, label %697, label %698

697:                                              ; preds = %687
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %698

698:                                              ; preds = %697, %687
  %699 = getelementptr inbounds i8, ptr %632, i64 %695
  store ptr %678, ptr %699, align 8, !tbaa !35
  %700 = call ptr @build_int_cst(ptr noundef %645, i64 noundef 0) #14
  %701 = load i32, ptr %632, align 8
  %702 = and i32 %701, 255
  %703 = add nsw i32 %702, -10
  %704 = icmp ult i32 %703, -9
  br i1 %704, label %709, label %705

705:                                              ; preds = %698
  %706 = getelementptr inbounds %struct.gimple_statement_base, ptr %632, i64 0, i32 3
  %707 = load i32, ptr %706, align 4, !tbaa !46
  %708 = icmp ugt i32 %707, 1
  br i1 %708, label %710, label %709

709:                                              ; preds = %705, %698
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %710

710:                                              ; preds = %709, %705
  %711 = load i32, ptr %632, align 8
  %712 = and i32 %711, 255
  %713 = zext nneg i32 %712 to i64
  %714 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !50
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %716
  %718 = load i64, ptr %717, align 8, !tbaa !98
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %721

720:                                              ; preds = %710
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %721

721:                                              ; preds = %720, %710
  %722 = getelementptr inbounds i8, ptr %632, i64 %718
  %723 = getelementptr inbounds ptr, ptr %722, i64 1
  store ptr %700, ptr %723, align 8, !tbaa !35
  %724 = load i32, ptr %632, align 8
  %725 = and i32 %724, 255
  %726 = add nsw i32 %725, -10
  %727 = icmp ult i32 %726, -9
  br i1 %727, label %729, label %728

728:                                              ; preds = %721
  call void @gimple_set_modified(ptr noundef nonnull %632, i8 noundef zeroext 1) #14
  call void @update_stmt_operands(ptr noundef nonnull %632) #14
  br label %729

729:                                              ; preds = %721, %728
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %730

730:                                              ; preds = %611, %607, %604, %38, %614, %729, %34, %14
  %731 = phi i8 [ 0, %14 ], [ 0, %34 ], [ 0, %729 ], [ 0, %614 ], [ 0, %38 ], [ 1, %604 ], [ 1, %607 ], [ 1, %611 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  ret i8 %731
}

declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @tree_unroll_loops_completely(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq i8 %0, 0
  %4 = icmp eq i8 %1, 0
  br label %5

5:                                                ; preds = %165, %2
  %6 = phi i32 [ 0, %2 ], [ %166, %165 ]
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %76, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.loops, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !76
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ]
  %19 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %18, i64 noundef 8, i64 noundef 4) #14
  %20 = load ptr, ptr @cfun, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.loops, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br label %26

26:                                               ; preds = %54, %17
  %27 = phi i32 [ %55, %54 ], [ 0, %17 ]
  br i1 %25, label %35, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %24, align 8, !tbaa !76
  %30 = icmp ugt i32 %29, %27
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = zext i32 %27 to i64
  %33 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %24, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %31, %28, %26
  %36 = phi ptr [ %34, %31 ], [ null, %28 ], [ null, %26 ]
  %37 = phi i1 [ false, %31 ], [ true, %28 ], [ true, %26 ]
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = icmp eq ptr %19, null
  br label %56

40:                                               ; preds = %35
  %41 = icmp eq ptr %36, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.loop, ptr %36, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !82
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, ptr %36, align 8, !tbaa !79
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %19, align 4, !tbaa !80
  %51 = add i32 %50, 1
  store i32 %51, ptr %19, align 4, !tbaa !80
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.VEC_int_base, ptr %19, i64 0, i32 2, i64 %52
  store i32 %47, ptr %53, align 4, !tbaa !50
  br label %54

54:                                               ; preds = %49, %46, %42, %40
  %55 = add i32 %27, 1
  br label %26, !llvm.loop !115

56:                                               ; preds = %38, %68
  %57 = phi i32 [ %69, %68 ], [ 0, %38 ]
  br i1 %39, label %65, label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %19, align 4, !tbaa !80
  %60 = icmp ugt i32 %59, %57
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = zext i32 %57 to i64
  %63 = getelementptr inbounds %struct.VEC_int_base, ptr %19, i64 0, i32 2, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !50
  br label %65

65:                                               ; preds = %61, %58, %56
  %66 = phi i32 [ %64, %61 ], [ 0, %58 ], [ 0, %56 ]
  %67 = phi i1 [ false, %61 ], [ true, %58 ], [ true, %56 ]
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = add i32 %57, 1
  %70 = zext i32 %66 to i64
  %71 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %24, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = icmp eq ptr %72, null
  br i1 %73, label %56, label %76, !llvm.loop !87

74:                                               ; preds = %65
  br i1 %39, label %76, label %75

75:                                               ; preds = %74
  tail call void @free(ptr noundef %19)
  br label %76

76:                                               ; preds = %68, %74, %75, %5
  %77 = phi i32 [ 0, %5 ], [ %57, %75 ], [ %57, %74 ], [ %69, %68 ]
  %78 = phi ptr [ null, %5 ], [ null, %75 ], [ null, %74 ], [ %19, %68 ]
  %79 = phi ptr [ null, %5 ], [ null, %75 ], [ null, %74 ], [ %72, %68 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %158, label %81

81:                                               ; preds = %76, %153
  %82 = phi i8 [ %126, %153 ], [ 0, %76 ]
  %83 = phi ptr [ %156, %153 ], [ %79, %76 ]
  %84 = phi ptr [ %155, %153 ], [ %78, %76 ]
  %85 = phi i32 [ %154, %153 ], [ %77, %76 ]
  br i1 %3, label %119, label %86

86:                                               ; preds = %81
  %87 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %83) #14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %86
  br i1 %4, label %90, label %120

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.loop, ptr %83, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !85
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %92, align 8, !tbaa !76
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %95, %94 ], [ 0, %90 ]
  %98 = icmp ne i32 %97, 0
  tail call void @llvm.assume(i1 %98)
  %99 = add i32 %97, -1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %92, i64 0, i32 2, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !85
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %96
  %107 = load i32, ptr %104, align 8, !tbaa !76
  br label %108

108:                                              ; preds = %106, %96
  %109 = phi i32 [ %107, %106 ], [ 0, %96 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = add i32 %109, -1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %104, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  br label %116

116:                                              ; preds = %108, %111
  %117 = phi ptr [ %115, %111 ], [ null, %108 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %86, %81
  br label %120

120:                                              ; preds = %89, %116, %119
  %121 = phi i32 [ 1, %119 ], [ 2, %116 ], [ 2, %89 ]
  %122 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !50
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i8
  %125 = tail call fastcc zeroext i8 @canonicalize_loop_induction_variables(ptr noundef nonnull %83, i8 noundef zeroext 0, i32 noundef %121, i8 noundef zeroext %124), !range !88
  %126 = or i8 %125, %82
  %127 = icmp eq ptr %84, null
  %128 = load ptr, ptr @cfun, align 8
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 4
  br label %130

130:                                              ; preds = %142, %120
  %131 = phi i32 [ %85, %120 ], [ %143, %142 ]
  br i1 %127, label %139, label %132

132:                                              ; preds = %130
  %133 = load i32, ptr %84, align 4, !tbaa !80
  %134 = icmp ugt i32 %133, %131
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = zext i32 %131 to i64
  %137 = getelementptr inbounds %struct.VEC_int_base, ptr %84, i64 0, i32 2, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !50
  br label %139

139:                                              ; preds = %135, %132, %130
  %140 = phi i32 [ %138, %135 ], [ 0, %132 ], [ 0, %130 ]
  %141 = phi i1 [ false, %135 ], [ true, %132 ], [ true, %130 ]
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = add i32 %131, 1
  %144 = load ptr, ptr %129, align 8, !tbaa !72
  %145 = getelementptr inbounds %struct.loops, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !74
  %147 = zext i32 %140 to i64
  %148 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %146, i64 0, i32 2, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = icmp eq ptr %149, null
  br i1 %150, label %130, label %153, !llvm.loop !87

151:                                              ; preds = %139
  br i1 %127, label %153, label %152

152:                                              ; preds = %151
  tail call void @free(ptr noundef %84)
  br label %153

153:                                              ; preds = %142, %151, %152
  %154 = phi i32 [ %131, %152 ], [ %131, %151 ], [ %143, %142 ]
  %155 = phi ptr [ null, %152 ], [ null, %151 ], [ %84, %142 ]
  %156 = phi ptr [ null, %152 ], [ null, %151 ], [ %149, %142 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %81, !llvm.loop !116

158:                                              ; preds = %153, %76
  %159 = phi i8 [ 0, %76 ], [ %126, %153 ]
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %158
  %162 = tail call zeroext i8 @cleanup_tree_cfg() #14
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  tail call void @update_ssa(i32 noundef 16384) #14
  br label %165

165:                                              ; preds = %164, %161
  tail call void @scev_reset() #14
  %166 = add nuw nsw i32 %6, 1
  %167 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %168 = getelementptr inbounds %struct.param_info, ptr %167, i64 34, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !92
  %170 = icmp slt i32 %6, %169
  br i1 %170, label %5, label %171, !llvm.loop !117

171:                                              ; preds = %158, %165
  ret i32 0
}

declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @number_of_latch_executions(ptr noundef) local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_loop_niter(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #3

declare ptr @find_loop_niter_by_eval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @constant_after_peeling(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %61, label %11

11:                                               ; preds = %7, %23
  %12 = phi ptr [ %25, %23 ], [ %0, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %15 [
    i16 42, label %23
    i16 41, label %23
    i16 45, label %23
    i16 46, label %23
    i16 118, label %23
    i16 43, label %23
    i16 44, label %23
  ]

15:                                               ; preds = %11
  %16 = and i64 %13, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = icmp ne i32 %18, 3
  %20 = and i64 %13, 68157440
  %21 = icmp ne i64 %20, 68157440
  %22 = or i1 %21, %19
  br i1 %22, label %39, label %26

23:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  %24 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  br label %11, !llvm.loop !118

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 33554432
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !119
  %37 = tail call zeroext i8 %36(ptr noundef nonnull %12) #14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %30, %15
  %40 = load i64, ptr %12, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %82

45:                                               ; preds = %39, %35, %26
  br label %46

46:                                               ; preds = %45, %58
  %47 = phi ptr [ %60, %58 ], [ %0, %45 ]
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %82 [
    i16 42, label %50
    i16 41, label %50
    i16 45, label %50
    i16 46, label %50
    i16 118, label %50
    i16 43, label %50
    i16 44, label %50
  ]

50:                                               ; preds = %46, %46, %46, %46, %46, %46, %46
  %51 = and i64 %48, 65535
  %52 = icmp eq i64 %51, 45
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %55, ptr noundef %1, ptr noundef %2), !range !88
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %53, %50
  %59 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  br label %46, !llvm.loop !131

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !132
  br label %68

68:                                               ; preds = %61, %65
  %69 = phi ptr [ %67, %65 ], [ null, %61 ]
  %70 = call zeroext i8 @simple_iv(ptr noundef %2, ptr noundef %69, ptr noundef nonnull %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %4, align 8, !tbaa !133
  %74 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %73) #14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !135
  %79 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %78) #14
  %80 = icmp ne i8 %79, 0
  %81 = zext i1 %80 to i8
  br label %82

82:                                               ; preds = %46, %53, %76, %72, %68, %39, %3
  %83 = phi i8 [ 1, %3 ], [ 0, %39 ], [ 0, %68 ], [ 0, %72 ], [ %81, %76 ], [ 0, %53 ], [ 1, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i8 %83
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

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
!54 = !{!55, !41, i64 36}
!55 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !56, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !57, i64 80, !57, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!56 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!57 = !{!"", !42, i64 0, !42, i64 8}
!58 = !{!59, !41, i64 96}
!59 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!60 = !{!61}
!61 = distinct !{!61, !62, !"gsi_start_bb: argument 0"}
!62 = distinct !{!62, !"gsi_start_bb"}
!63 = !{!64, !36, i64 0}
!64 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!65 = !{!66, !36, i64 0}
!66 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!67 = !{!68, !36, i64 0}
!68 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!69 = !{!68, !36, i64 16}
!70 = distinct !{!70, !52, !53}
!71 = distinct !{!71, !52, !53}
!72 = !{!73, !36, i64 32}
!73 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!74 = !{!75, !36, i64 8}
!75 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!76 = !{!77, !41, i64 0}
!77 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!78 = !{!75, !36, i64 24}
!79 = !{!55, !41, i64 0}
!80 = !{!81, !41, i64 0}
!81 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = !{!55, !36, i64 48}
!83 = distinct !{!83, !53}
!84 = !{!55, !36, i64 56}
!85 = !{!55, !36, i64 40}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{i8 0, i8 2}
!89 = distinct !{!89, !52, !53}
!90 = !{!91, !36, i64 0}
!91 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!92 = !{!93, !41, i64 8}
!93 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!94 = !{!59, !41, i64 80}
!95 = !{!96}
!96 = distinct !{!96, !97, !"gsi_start_bb: argument 0"}
!97 = distinct !{!97, !"gsi_start_bb"}
!98 = !{!42, !42, i64 0}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = !{!102, !36, i64 0}
!102 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!103 = !{!104, !41, i64 0}
!104 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!105 = distinct !{!105, !52, !53}
!106 = !{!91, !41, i64 48}
!107 = !{!59, !36, i64 8}
!108 = !{!109}
!109 = distinct !{!109, !110, !"gsi_last_bb: argument 0"}
!110 = distinct !{!110, !"gsi_last_bb"}
!111 = !{!66, !36, i64 8}
!112 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!113 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!114 = !{i64 0, i64 8, !35}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!120, !36, i64 1112}
!120 = !{!"gcc_target", !121, i64 0, !123, i64 368, !124, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !125, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !126, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !127, i64 1784, !128, i64 1792, !129, i64 1896, !130, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!121 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !122, i64 24, !122, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!122 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!123 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!124 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!125 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!126 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!127 = !{!"c", !36, i64 0}
!128 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!129 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!130 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!131 = distinct !{!131, !52, !53}
!132 = !{!59, !36, i64 24}
!133 = !{!134, !36, i64 0}
!134 = !{!"", !36, i64 0, !36, i64 8, !37, i64 16}
!135 = !{!134, !36, i64 8}
