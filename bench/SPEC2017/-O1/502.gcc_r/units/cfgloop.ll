; ModuleID = 'cfgloop.c'
source_filename = "cfgloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"cfgloop.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c";;\0A;; Loop %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c";;  header %d, \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"latch %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"multiple latches:\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c";;  depth %d, outer %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c";;  nodes:\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c";; %d loops found\0A\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [37 x i8] c"size of loop %d should be %d, not %d\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"bb %d do not belong to loop %d\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"loop %d's header does not have exactly 2 entries\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"loop %d's latch does not have exactly 1 successor\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"loop %d's latch does not have header as successor\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"loop %d's latch does not belong directly to it\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"loop %d's header does not belong directly to it\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"loop %d's latch is marked as part of irreducible region\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"basic block %d should be marked irreducible\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"basic block %d should not be marked irreducible\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"edge from %d to %d should be marked irreducible\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"edge from %d to %d should not be marked irreducible\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"corrupted head of the exits list of loop %d\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"corrupted exits list of loop %d\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"nonempty exits list of loop %d, but exits are not recorded\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Exit %d->%d not recorded\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Wrong list of exited loops for edge  %d->%d\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Too many loop exits recorded\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"%d exits recorded for loop %d (having %d exits)\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c";; %d succs { \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [46 x i8] c"Disambiguating loop %d with multiple latches\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"Found latch edge %d -> %d using profile information.\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Found latch edge %d -> %d using iv structure.\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@mfb_reis_set = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [31 x i8] c"Merged latch edges of loop %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Edge %d->%d exits %u loops\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !51 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !52
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #23
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !51 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #23
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !51 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #23
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
  br i1 %23, label %7, label %24, !llvm.loop !68

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @flow_loop_nested_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !75
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !75
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = icmp ugt i32 %16, %9
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = zext i32 %9 to i64
  %20 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, %0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i8 [ 0, %15 ], [ %23, %18 ]
  ret i8 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @superloop_at_depth(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !75
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %8, %11
  %13 = icmp eq i32 %9, %1
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !tbaa !71
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %15, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %12, %14
  %20 = phi ptr [ %18, %14 ], [ %0, %12 ]
  ret ptr %20
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @flow_loop_dump(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #10 !prof !51 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %104, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !78
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %11)
  %13 = load ptr, ptr %7, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !79
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %15)
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %22)
  br label %50

24:                                               ; preds = %10
  %25 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %1)
  %26 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef nonnull %0)
  %27 = icmp eq ptr %26, null
  br label %28

28:                                               ; preds = %40, %24
  %29 = phi i32 [ 0, %24 ], [ %45, %40 ]
  br i1 %27, label %37, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %26, align 8, !tbaa !82
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = zext i32 %29 to i64
  %35 = getelementptr inbounds %struct.VEC_edge_base, ptr %26, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  br label %37

37:                                               ; preds = %28, %30, %33
  %38 = phi ptr [ %36, %33 ], [ null, %30 ], [ null, %28 ]
  %39 = phi i1 [ false, %33 ], [ true, %30 ], [ true, %28 ]
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !79
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %43)
  %45 = add i32 %29, 1
  br label %28, !llvm.loop !86

46:                                               ; preds = %37
  br i1 %27, label %48, label %47

47:                                               ; preds = %46
  tail call void @free(ptr noundef %26)
  br label %48

48:                                               ; preds = %46, %47
  %49 = tail call i32 @fputc(i32 10, ptr %1)
  br label %50

50:                                               ; preds = %48, %20
  %51 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %52, align 8, !tbaa !75
  br label %56

56:                                               ; preds = %50, %54
  %57 = phi i32 [ %55, %54 ], [ 0, %50 ]
  br i1 %53, label %60, label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %52, align 8, !tbaa !75
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %59, %58 ], [ 0, %56 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = add i32 %61, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %52, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  br i1 %53, label %72, label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %52, align 8, !tbaa !75
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ %71, %70 ], [ 0, %69 ]
  %74 = icmp ne i32 %73, 0
  tail call void @llvm.assume(i1 %74)
  %75 = add i32 %73, -1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %52, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = load i32, ptr %78, align 8, !tbaa !78
  %80 = sext i32 %79 to i64
  br label %81

81:                                               ; preds = %60, %63, %72
  %82 = phi i64 [ %80, %72 ], [ -1, %63 ], [ -1, %60 ]
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %57, i64 noundef %82)
  %84 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %1)
  %85 = tail call ptr @get_loop_body(ptr noundef nonnull %0)
  %86 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %87 = load i32, ptr %86, align 4, !tbaa !87
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %81, %89
  %90 = phi i64 [ %96, %89 ], [ 0, %81 ]
  %91 = getelementptr inbounds ptr, ptr %85, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !52
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !79
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %94)
  %96 = add nuw nsw i64 %90, 1
  %97 = load i32, ptr %86, align 4, !tbaa !87
  %98 = zext i32 %97 to i64
  %99 = icmp ult i64 %96, %98
  br i1 %99, label %89, label %100, !llvm.loop !88

100:                                              ; preds = %89, %81
  tail call void @free(ptr noundef %85)
  %101 = tail call i32 @fputc(i32 10, ptr %1)
  %102 = icmp eq ptr %2, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void %2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3) #23
  br label %104

104:                                              ; preds = %100, %103, %4, %6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_loop_latch_edges(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br label %5

5:                                                ; preds = %53, %1
  %6 = phi i32 [ 0, %1 ], [ %54, %53 ]
  %7 = phi ptr [ null, %1 ], [ %44, %53 ]
  br i1 %4, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr %3, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = zext i32 %6 to i64
  %19 = getelementptr inbounds %struct.VEC_edge_base, ptr %10, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi ptr [ %20, %17 ], [ null, %14 ]
  br i1 %16, label %55, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %22, align 8, !tbaa !84
  %25 = load ptr, ptr %2, align 8, !tbaa !77
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %24, ptr noundef %25) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = icmp eq ptr %7, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !89
  %33 = load i32, ptr %7, align 8, !tbaa !82
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %30
  %36 = tail call ptr @vec_heap_p_reserve(ptr noundef %7, i32 noundef 1) #23
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %36, %35 ], [ %7, %30 ]
  %39 = load i32, ptr %38, align 8, !tbaa !82
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !82
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 %41
  store ptr %22, ptr %42, align 8, !tbaa !52
  br label %43

43:                                               ; preds = %37, %23
  %44 = phi ptr [ %7, %23 ], [ %38, %37 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !52
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !82
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = icmp ult i32 %6, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %49, %52
  %54 = add i32 %6, 1
  br label %5, !llvm.loop !90

55:                                               ; preds = %21
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_loop_body(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %2, align 4, !tbaa !87
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #23
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = load ptr, ptr @cfun, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %11, %16
  %18 = load i32, ptr %2, align 4, !tbaa !87
  br i1 %17, label %19, label %57

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !95
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  store ptr %26, ptr %9, align 8, !tbaa !52
  %27 = load ptr, ptr @cfun, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !52
  %33 = load ptr, ptr %28, align 8, !tbaa !91
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = load ptr, ptr @cfun, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !91
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !93
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %61, label %43

43:                                               ; preds = %24, %43
  %44 = phi ptr [ %50, %43 ], [ %36, %24 ]
  %45 = phi i32 [ %46, %43 ], [ 2, %24 ]
  %46 = add i32 %45, 1
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %9, i64 %47
  store ptr %44, ptr %48, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = load ptr, ptr @cfun, align 8, !tbaa !52
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  %56 = icmp eq ptr %50, %55
  br i1 %56, label %61, label %43, !llvm.loop !98

57:                                               ; preds = %6
  %58 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !77
  %60 = tail call i32 @dfs_enumerate_from(ptr noundef %59, i32 noundef 1, ptr noundef nonnull @glb_enum_p, ptr noundef %9, i32 noundef %18, ptr noundef %0) #23
  br label %61

61:                                               ; preds = %43, %24, %57
  %62 = phi i32 [ %60, %57 ], [ 2, %24 ], [ %46, %43 ]
  %63 = load i32, ptr %2, align 4, !tbaa !87
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.1) #23
  br label %66

66:                                               ; preds = %61, %65
  ret ptr %9
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @flow_loops_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !99 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %0, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %197, !prof !101

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8, !tbaa !75
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ]
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i32 noundef %17)
  %19 = load ptr, ptr @cfun, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, null
  br i1 %22, label %98, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 8, !tbaa !75
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %31 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %30, i64 noundef 8, i64 noundef 4) #23
  %32 = load ptr, ptr @cfun, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !100
  %35 = getelementptr inbounds %struct.loops, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  br label %37

37:                                               ; preds = %50, %29
  %38 = phi ptr [ %36, %29 ], [ %51, %50 ]
  %39 = load i32, ptr %38, align 8, !tbaa !78
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %31, align 4, !tbaa !105
  %43 = add i32 %42, 1
  store i32 %43, ptr %31, align 4, !tbaa !105
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds %struct.VEC_int_base, ptr %31, i64 0, i32 2, i64 %44
  store i32 %39, ptr %45, align 4, !tbaa !67
  br label %46

46:                                               ; preds = %41, %37
  %47 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %55, %46
  %51 = phi ptr [ %48, %46 ], [ %58, %55 ]
  br label %37, !llvm.loop !108

52:                                               ; preds = %74
  %53 = icmp eq ptr %31, null
  %54 = getelementptr inbounds %struct.loops, ptr %34, i64 0, i32 1
  br label %77

55:                                               ; preds = %46, %74
  %56 = phi ptr [ %75, %74 ], [ %38, %46 ]
  %57 = getelementptr inbounds %struct.loop, ptr %56, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !109
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !108

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.loop, ptr %56, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %62, align 8, !tbaa !75
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %65, %64 ], [ 0, %60 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = add i32 %67, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %62, i64 0, i32 2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ %73, %69 ], [ null, %66 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %52, label %55, !llvm.loop !110

77:                                               ; preds = %52, %89
  %78 = phi i32 [ %90, %89 ], [ 0, %52 ]
  br i1 %53, label %86, label %79

79:                                               ; preds = %77
  %80 = load i32, ptr %31, align 4, !tbaa !105
  %81 = icmp ugt i32 %80, %78
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = zext i32 %78 to i64
  %84 = getelementptr inbounds %struct.VEC_int_base, ptr %31, i64 0, i32 2, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !67
  br label %86

86:                                               ; preds = %82, %79, %77
  %87 = phi i32 [ %85, %82 ], [ 0, %79 ], [ 0, %77 ]
  %88 = phi i1 [ false, %82 ], [ true, %79 ], [ true, %77 ]
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = add i32 %78, 1
  %91 = load ptr, ptr %54, align 8, !tbaa !102
  %92 = zext i32 %87 to i64
  %93 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %91, i64 0, i32 2, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !52
  %95 = icmp eq ptr %94, null
  br i1 %95, label %77, label %98, !llvm.loop !111

96:                                               ; preds = %86
  br i1 %53, label %98, label %97

97:                                               ; preds = %96
  tail call void @free(ptr noundef %31)
  br label %98

98:                                               ; preds = %89, %96, %97, %16
  %99 = phi i32 [ 0, %16 ], [ %78, %97 ], [ %78, %96 ], [ %90, %89 ]
  %100 = phi ptr [ null, %16 ], [ null, %97 ], [ null, %96 ], [ %31, %89 ]
  %101 = phi ptr [ null, %16 ], [ null, %97 ], [ null, %96 ], [ %94, %89 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %138, label %103

103:                                              ; preds = %98, %133
  %104 = phi ptr [ %136, %133 ], [ %101, %98 ]
  %105 = phi ptr [ %135, %133 ], [ %100, %98 ]
  %106 = phi i32 [ %134, %133 ], [ %99, %98 ]
  tail call void @flow_loop_dump(ptr noundef nonnull %104, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  %107 = icmp eq ptr %105, null
  %108 = load ptr, ptr @cfun, align 8
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 4
  br label %110

110:                                              ; preds = %122, %103
  %111 = phi i32 [ %106, %103 ], [ %123, %122 ]
  br i1 %107, label %119, label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %105, align 4, !tbaa !105
  %114 = icmp ugt i32 %113, %111
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = zext i32 %111 to i64
  %117 = getelementptr inbounds %struct.VEC_int_base, ptr %105, i64 0, i32 2, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !67
  br label %119

119:                                              ; preds = %115, %112, %110
  %120 = phi i32 [ %118, %115 ], [ 0, %112 ], [ 0, %110 ]
  %121 = phi i1 [ false, %115 ], [ true, %112 ], [ true, %110 ]
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  %123 = add i32 %111, 1
  %124 = load ptr, ptr %109, align 8, !tbaa !100
  %125 = getelementptr inbounds %struct.loops, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !102
  %127 = zext i32 %120 to i64
  %128 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %126, i64 0, i32 2, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !52
  %130 = icmp eq ptr %129, null
  br i1 %130, label %110, label %133, !llvm.loop !111

131:                                              ; preds = %119
  br i1 %107, label %133, label %132

132:                                              ; preds = %131
  tail call void @free(ptr noundef %105)
  br label %133

133:                                              ; preds = %122, %131, %132
  %134 = phi i32 [ %111, %132 ], [ %111, %131 ], [ %123, %122 ]
  %135 = phi ptr [ null, %132 ], [ null, %131 ], [ %105, %122 ]
  %136 = phi ptr [ null, %132 ], [ null, %131 ], [ %129, %122 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %103, !llvm.loop !112

138:                                              ; preds = %133, %98
  %139 = icmp eq i32 %2, 0
  br i1 %139, label %197, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr @cfun, align 8, !tbaa !52
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !91
  %144 = load ptr, ptr %143, align 8, !tbaa !96
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !97
  %147 = getelementptr inbounds %struct.control_flow_graph, ptr %143, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !93
  %149 = icmp eq ptr %146, %148
  br i1 %149, label %197, label %150

150:                                              ; preds = %140, %187
  %151 = phi ptr [ %190, %187 ], [ %146, %140 ]
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 9
  %153 = load i32, ptr %152, align 8, !tbaa !79
  %154 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i32 noundef %153)
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 1
  br label %156

156:                                              ; preds = %185, %150
  %157 = phi i32 [ 0, %150 ], [ %186, %185 ]
  %158 = load ptr, ptr %155, align 8, !tbaa !52
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = load i32, ptr %158, align 8, !tbaa !82
  br label %162

162:                                              ; preds = %160, %156
  %163 = phi i32 [ %161, %160 ], [ 0, %156 ]
  %164 = icmp eq i32 %163, %157
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = zext i32 %157 to i64
  %167 = getelementptr inbounds %struct.VEC_edge_base, ptr %158, i64 0, i32 2, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !52
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi ptr [ %168, %165 ], [ null, %162 ]
  br i1 %164, label %187, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.edge_def, ptr %170, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !113
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !79
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i32 noundef %175)
  %177 = load ptr, ptr %155, align 8, !tbaa !52
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = load i32, ptr %177, align 8, !tbaa !82
  br label %181

181:                                              ; preds = %179, %171
  %182 = phi i32 [ %180, %179 ], [ 0, %171 ]
  %183 = icmp ult i32 %157, %182
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %185

185:                                              ; preds = %184, %181
  %186 = add i32 %157, 1
  br label %156, !llvm.loop !114

187:                                              ; preds = %169
  %188 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr nonnull %0)
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !97
  %191 = load ptr, ptr @cfun, align 8, !tbaa !52
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !91
  %194 = getelementptr inbounds %struct.control_flow_graph, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !93
  %196 = icmp eq ptr %190, %195
  br i1 %196, label %197, label %150, !llvm.loop !115

197:                                              ; preds = %187, %140, %138, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @flow_loop_free(ptr noundef %0) local_unnamed_addr #12 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !116

5:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %3) #23
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.loop_exit, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %18, label %12, !prof !120

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.loop_exit, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  store ptr %13, ptr %14, align 8, !tbaa !118
  %16 = getelementptr inbounds %struct.loop_exit, ptr %13, i64 0, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !121
  %17 = icmp eq ptr %15, %8
  br i1 %17, label %18, label %12, !prof !120, !llvm.loop !122

18:                                               ; preds = %12, %6
  tail call void @ggc_free(ptr noundef %8) #23
  tail call void @ggc_free(ptr noundef %0) #23
  ret void
}

declare void @ggc_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @flow_loops_free(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !123 {
  %2 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5, !prof !124

5:                                                ; preds = %1, %39
  %6 = phi i32 [ %40, %39 ], [ 0, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9, !prof !125

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !75
  %11 = icmp ugt i32 %10, %6
  br i1 %11, label %12, label %16, !prof !126

12:                                               ; preds = %9
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %7, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %5, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %5 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %5 ]
  br i1 %18, label %41, label %19, !prof !126

19:                                               ; preds = %16
  %20 = icmp eq ptr %17, null
  br i1 %20, label %39, label %21, !prof !124

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.loop, ptr %17, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !116

25:                                               ; preds = %21
  tail call void @ggc_free(ptr noundef nonnull %23) #23
  br label %26

26:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.loop, ptr %17, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !118
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %38, label %32, !prof !120

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %26 ]
  %34 = getelementptr inbounds %struct.loop_exit, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  store ptr %33, ptr %34, align 8, !tbaa !118
  %36 = getelementptr inbounds %struct.loop_exit, ptr %33, i64 0, i32 1
  store ptr %33, ptr %36, align 8, !tbaa !121
  %37 = icmp eq ptr %35, %28
  br i1 %37, label %38, label %32, !prof !120, !llvm.loop !122

38:                                               ; preds = %32, %26
  tail call void @ggc_free(ptr noundef %28) #23
  tail call void @ggc_free(ptr noundef nonnull %17) #23
  br label %39

39:                                               ; preds = %19, %38
  %40 = add i32 %6, 1
  br label %5, !llvm.loop !127

41:                                               ; preds = %16
  br i1 %8, label %43, label %42, !prof !124

42:                                               ; preds = %41
  tail call void @ggc_free(ptr noundef nonnull %7) #23
  br label %43

43:                                               ; preds = %41, %42
  store ptr null, ptr %2, align 8, !tbaa !52
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @flow_loop_nodes_find(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !75
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !128
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 %9, ptr %11, align 4, !tbaa !129
  %12 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %144, %8
  %16 = phi i32 [ 0, %8 ], [ %145, %144 ]
  %17 = phi ptr [ null, %8 ], [ %134, %144 ]
  %18 = phi i32 [ 1, %8 ], [ %135, %144 ]
  br i1 %14, label %19, label %20

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %13, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !82
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = zext i32 %16 to i64
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi ptr [ %31, %28 ], [ null, %25 ]
  br i1 %27, label %146, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %33, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !128
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %133, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %12, align 8, !tbaa !77
  %41 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %40) #23
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %133, label %43

43:                                               ; preds = %39
  %44 = add nsw i32 %18, 1
  %45 = load ptr, ptr %33, align 8, !tbaa !84
  %46 = icmp eq ptr %17, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %17, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !130
  %50 = load i32, ptr %17, align 8, !tbaa !132
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43, %47
  %53 = tail call ptr @vec_heap_p_reserve(ptr noundef %17, i32 noundef 1) #23
  br label %54

54:                                               ; preds = %47, %52
  %55 = phi ptr [ %53, %52 ], [ %17, %47 ]
  %56 = load i32, ptr %55, align 8, !tbaa !132
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !132
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %55, i64 0, i32 2, i64 %58
  store ptr %45, ptr %59, align 8, !tbaa !52
  %60 = load ptr, ptr %33, align 8, !tbaa !84
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 3
  store ptr %1, ptr %61, align 8, !tbaa !128
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 10
  store i32 %9, ptr %62, align 4, !tbaa !129
  br label %63

63:                                               ; preds = %96, %54
  %64 = phi ptr [ %55, %54 ], [ %80, %96 ]
  %65 = phi i32 [ %44, %54 ], [ %82, %96 ]
  %66 = icmp eq ptr %64, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %64, align 8, !tbaa !132
  br label %69

69:                                               ; preds = %63, %67
  %70 = phi i32 [ %68, %67 ], [ 0, %63 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %133, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %64, align 8, !tbaa !132
  %74 = add i32 %73, -1
  store i32 %74, ptr %64, align 8, !tbaa !132
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %64, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br label %79

79:                                               ; preds = %131, %72
  %80 = phi ptr [ %64, %72 ], [ %121, %131 ]
  %81 = phi i32 [ 0, %72 ], [ %132, %131 ]
  %82 = phi i32 [ %65, %72 ], [ %122, %131 ]
  br i1 %78, label %83, label %84

83:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %84

84:                                               ; preds = %83, %79
  %85 = load ptr, ptr %77, align 8, !tbaa !52
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %85, align 8, !tbaa !82
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = icmp eq i32 %90, %81
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = zext i32 %81 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  br i1 %91, label %63, label %98, !llvm.loop !133

98:                                               ; preds = %96
  %99 = load ptr, ptr %97, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !128
  %102 = icmp eq ptr %101, %1
  br i1 %102, label %120, label %103

103:                                              ; preds = %98
  store ptr %1, ptr %100, align 8, !tbaa !128
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 10
  store i32 %9, ptr %104, align 4, !tbaa !129
  %105 = add nsw i32 %82, 1
  %106 = icmp eq ptr %80, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %80, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !130
  %110 = load i32, ptr %80, align 8, !tbaa !132
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103, %107
  %113 = tail call ptr @vec_heap_p_reserve(ptr noundef %80, i32 noundef 1) #23
  br label %114

114:                                              ; preds = %107, %112
  %115 = phi ptr [ %113, %112 ], [ %80, %107 ]
  %116 = load i32, ptr %115, align 8, !tbaa !132
  %117 = add i32 %116, 1
  store i32 %117, ptr %115, align 8, !tbaa !132
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %115, i64 0, i32 2, i64 %118
  store ptr %99, ptr %119, align 8, !tbaa !52
  br label %120

120:                                              ; preds = %98, %114
  %121 = phi ptr [ %80, %98 ], [ %115, %114 ]
  %122 = phi i32 [ %82, %98 ], [ %105, %114 ]
  %123 = load ptr, ptr %77, align 8, !tbaa !52
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = load i32, ptr %123, align 8, !tbaa !82
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi i32 [ %126, %125 ], [ 0, %120 ]
  %129 = icmp ult i32 %81, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %131

131:                                              ; preds = %127, %130
  %132 = add i32 %81, 1
  br label %79, !llvm.loop !134

133:                                              ; preds = %69, %39, %34
  %134 = phi ptr [ %17, %34 ], [ %17, %39 ], [ %64, %69 ]
  %135 = phi i32 [ %18, %34 ], [ %18, %39 ], [ %65, %69 ]
  %136 = load ptr, ptr %13, align 8, !tbaa !52
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %136, align 8, !tbaa !82
  br label %140

140:                                              ; preds = %138, %133
  %141 = phi i32 [ %139, %138 ], [ 0, %133 ]
  %142 = icmp ult i32 %16, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %144

144:                                              ; preds = %140, %143
  %145 = add i32 %16, 1
  br label %15, !llvm.loop !135

146:                                              ; preds = %32
  %147 = icmp eq ptr %17, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  tail call void @free(ptr noundef %17)
  br label %149

149:                                              ; preds = %146, %148
  ret i32 %18
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @flow_loop_tree_node_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !109
  store ptr %1, ptr %3, align 8, !tbaa !107
  tail call fastcc void @establish_preds(ptr noundef %1, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @establish_preds(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !75
  %8 = add i32 %7, 1
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 1, %2 ]
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  store i32 0, ptr %12, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !136
  %17 = icmp uge i32 %16, %10
  br label %20

18:                                               ; preds = %9
  %19 = icmp eq i32 %10, 0
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i1 [ %17, %14 ], [ %19, %18 ]
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @vec_gc_p_reserve(ptr noundef %12, i32 noundef %10) #23
  store ptr %23, ptr %11, align 8, !tbaa !52
  br label %24

24:                                               ; preds = %20, %22
  br label %25

25:                                               ; preds = %24, %44
  %26 = phi i32 [ %45, %44 ], [ 0, %24 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !71
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %27, align 8, !tbaa !75
  %31 = icmp ugt i32 %30, %26
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %27, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  br label %36

36:                                               ; preds = %25, %29, %32
  %37 = phi ptr [ %35, %32 ], [ null, %29 ], [ null, %25 ]
  %38 = phi i1 [ false, %32 ], [ true, %29 ], [ true, %25 ]
  %39 = load ptr, ptr %11, align 8, !tbaa !71
  %40 = load i32, ptr %39, align 8, !tbaa !75
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !75
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %39, i64 0, i32 2, i64 %42
  br i1 %38, label %46, label %44

44:                                               ; preds = %36
  store ptr %37, ptr %43, align 8, !tbaa !52
  %45 = add i32 %26, 1
  br label %25, !llvm.loop !137

46:                                               ; preds = %36
  store ptr %1, ptr %43, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46, %50
  %51 = phi ptr [ %53, %50 ], [ %48, %46 ]
  tail call fastcc void @establish_preds(ptr noundef nonnull %51, ptr noundef %0)
  %52 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %50, !llvm.loop !138

55:                                               ; preds = %50, %46
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flow_loop_tree_node_remove(ptr noundef readonly %0) local_unnamed_addr #13 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !75
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = add i32 %8, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %3, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi ptr [ %14, %10 ], [ null, %7 ]
  %17 = getelementptr inbounds %struct.loop, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %23, %20 ], [ %18, %15 ]
  %22 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %20, !llvm.loop !139

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 9
  br label %27

27:                                               ; preds = %15, %25
  %28 = phi ptr [ %26, %25 ], [ %17, %15 ]
  %29 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !109
  store ptr %30, ptr %28, align 8, !tbaa !52
  br i1 %4, label %32, label %31

31:                                               ; preds = %27
  store i32 0, ptr %3, align 8, !tbaa !75
  br label %32

32:                                               ; preds = %27, %31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @alloc_loop() local_unnamed_addr #10 !prof !51 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #23
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #23
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 18
  store ptr %2, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.loop_exit, ptr %2, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.loop_exit, ptr %2, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 19
  store i8 0, ptr %6, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 20
  store ptr null, ptr %7, align 8, !tbaa !141
  ret ptr %1
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @flow_loops_find(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !123 {
  tail call void @calculate_dominance_info(i32 noundef 1) #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !95
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9, !prof !124

8:                                                ; preds = %1
  tail call fastcc void @init_loops_structure(ptr noundef %0, i32 noundef 1)
  br label %314

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %11) #23
  tail call void @sbitmap_zero(ptr noundef %12) #23
  %13 = load ptr, ptr @cfun, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %144, label %22, !prof !143

22:                                               ; preds = %9, %134
  %23 = phi ptr [ %137, %134 ], [ %18, %9 ]
  %24 = phi i32 [ %135, %134 ], [ 0, %9 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 10
  store i32 0, ptr %25, align 4, !tbaa !129
  %26 = icmp eq ptr %23, null
  br label %27

27:                                               ; preds = %57, %22
  %28 = phi i32 [ 0, %22 ], [ %58, %57 ]
  br i1 %26, label %29, label %30, !prof !144

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %29, %27
  %31 = load ptr, ptr %23, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !144

33:                                               ; preds = %30
  %34 = load i32, ptr %31, align 8, !tbaa !82
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ 0, %30 ]
  %37 = icmp eq i32 %36, %28
  br i1 %37, label %42, label %38, !prof !145

38:                                               ; preds = %35
  %39 = zext i32 %28 to i64
  %40 = getelementptr inbounds %struct.VEC_edge_base, ptr %31, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  br label %42

42:                                               ; preds = %35, %38
  %43 = phi ptr [ %41, %38 ], [ null, %35 ]
  br i1 %37, label %59, label %44, !prof !145

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !146
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59, !prof !147

49:                                               ; preds = %44
  %50 = icmp eq ptr %31, null
  br i1 %50, label %53, label %51, !prof !148

51:                                               ; preds = %49
  %52 = load i32, ptr %31, align 8, !tbaa !82
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %52, %51 ], [ 0, %49 ]
  %55 = icmp ult i32 %28, %54
  br i1 %55, label %57, label %56, !prof !147

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %57

57:                                               ; preds = %53, %56
  %58 = add i32 %28, 1
  br label %27, !llvm.loop !149

59:                                               ; preds = %44, %42
  %60 = icmp eq ptr %43, null
  br i1 %60, label %61, label %134, !prof !150

61:                                               ; preds = %59, %132
  %62 = phi i32 [ %133, %132 ], [ 0, %59 ]
  %63 = phi i32 [ %123, %132 ], [ %24, %59 ]
  %64 = load ptr, ptr %23, align 8, !tbaa !52
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !144

66:                                               ; preds = %61
  %67 = load i32, ptr %64, align 8, !tbaa !82
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ 0, %61 ]
  %70 = icmp eq i32 %69, %62
  br i1 %70, label %75, label %71, !prof !145

71:                                               ; preds = %68
  %72 = zext i32 %62 to i64
  %73 = getelementptr inbounds %struct.VEC_edge_base, ptr %64, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  br label %75

75:                                               ; preds = %68, %71
  %76 = phi ptr [ %74, %71 ], [ null, %68 ]
  br i1 %70, label %134, label %77, !prof !145

77:                                               ; preds = %75
  %78 = load ptr, ptr %76, align 8, !tbaa !84
  %79 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !146
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83, !prof !147

83:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @.str.1) #23
  br label %84

84:                                               ; preds = %77, %83
  %85 = load ptr, ptr @cfun, align 8, !tbaa !52
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !91
  %88 = load ptr, ptr %87, align 8, !tbaa !96
  %89 = icmp eq ptr %78, %88
  br i1 %89, label %122, label %90, !prof !151

90:                                               ; preds = %84
  %91 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %78, ptr noundef nonnull %23) #23
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %122, label %93, !prof !152

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !79
  %96 = load ptr, ptr %12, align 8, !tbaa !153
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = lshr i32 %95, 6
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 3, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !155
  %103 = and i32 %95, 63
  %104 = zext nneg i32 %103 to i64
  %105 = shl nuw i64 1, %104
  %106 = and i64 %102, %105
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = getelementptr inbounds i8, ptr %96, i64 %100
  %110 = load i8, ptr %109, align 1, !tbaa !63
  %111 = add i8 %110, 1
  store i8 %111, ptr %109, align 1, !tbaa !63
  br label %112

112:                                              ; preds = %93, %98, %108
  %113 = and i32 %95, 63
  %114 = zext nneg i32 %113 to i64
  %115 = shl nuw i64 1, %114
  %116 = lshr i32 %95, 6
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 3, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !155
  %120 = or i64 %119, %115
  store i64 %120, ptr %118, align 8, !tbaa !155
  %121 = add nsw i32 %63, 1
  br label %122

122:                                              ; preds = %84, %90, %112
  %123 = phi i32 [ %121, %112 ], [ %63, %90 ], [ %63, %84 ]
  %124 = load ptr, ptr %23, align 8, !tbaa !52
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !148

126:                                              ; preds = %122
  %127 = load i32, ptr %124, align 8, !tbaa !82
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i32 [ %127, %126 ], [ 0, %122 ]
  %130 = icmp ult i32 %62, %129
  br i1 %130, label %132, label %131, !prof !147

131:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %132

132:                                              ; preds = %128, %131
  %133 = add i32 %62, 1
  br label %61, !llvm.loop !156

134:                                              ; preds = %75, %59
  %135 = phi i32 [ %24, %59 ], [ %63, %75 ]
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !97
  %138 = load ptr, ptr @cfun, align 8, !tbaa !52
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !91
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !93
  %143 = icmp eq ptr %137, %142
  br i1 %143, label %144, label %22, !prof !157, !llvm.loop !158

144:                                              ; preds = %134, %9
  %145 = phi i32 [ 0, %9 ], [ %135, %134 ]
  %146 = add nsw i32 %145, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %147 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %146) #23
  %148 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  store ptr %147, ptr %148, align 8, !tbaa !102
  %149 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #23
  %150 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #23
  %151 = getelementptr inbounds %struct.loop, ptr %149, i64 0, i32 18
  store ptr %150, ptr %151, align 8, !tbaa !117
  %152 = getelementptr inbounds %struct.loop_exit, ptr %150, i64 0, i32 1
  store ptr %150, ptr %152, align 8, !tbaa !121
  %153 = getelementptr inbounds %struct.loop_exit, ptr %150, i64 0, i32 2
  store ptr %150, ptr %153, align 8, !tbaa !118
  %154 = getelementptr inbounds %struct.loop, ptr %149, i64 0, i32 19
  store i8 0, ptr %154, align 8, !tbaa !140
  %155 = getelementptr inbounds %struct.loop, ptr %149, i64 0, i32 20
  store ptr null, ptr %155, align 8, !tbaa !141
  %156 = load ptr, ptr @cfun, align 8, !tbaa !52
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !91
  %159 = getelementptr inbounds %struct.control_flow_graph, ptr %158, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !95
  %161 = getelementptr inbounds %struct.loop, ptr %149, i64 0, i32 6
  store i32 %160, ptr %161, align 4, !tbaa !87
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !93
  %164 = getelementptr inbounds %struct.loop, ptr %149, i64 0, i32 3
  store ptr %163, ptr %164, align 8, !tbaa !81
  %165 = load ptr, ptr %158, align 8, !tbaa !96
  %166 = getelementptr inbounds %struct.loop, ptr %149, i64 0, i32 2
  store ptr %165, ptr %166, align 8, !tbaa !77
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 3
  store ptr %149, ptr %167, align 8, !tbaa !128
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 3
  store ptr %149, ptr %168, align 8, !tbaa !128
  %169 = load ptr, ptr %148, align 8, !tbaa !102
  %170 = load i32, ptr %169, align 8, !tbaa !75
  %171 = add i32 %170, 1
  store i32 %171, ptr %169, align 8, !tbaa !75
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %169, i64 0, i32 2, i64 %172
  store ptr %149, ptr %173, align 8, !tbaa !52
  %174 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  store ptr %149, ptr %174, align 8, !tbaa !104
  %175 = load ptr, ptr @cfun, align 8, !tbaa !52
  %176 = getelementptr inbounds %struct.function, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !91
  %178 = load ptr, ptr %177, align 8, !tbaa !96
  %179 = getelementptr inbounds %struct.control_flow_graph, ptr %177, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !93
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !97
  %183 = icmp eq ptr %182, %180
  br i1 %183, label %190, label %184, !prof !143

184:                                              ; preds = %144, %184
  %185 = phi ptr [ %188, %184 ], [ %182, %144 ]
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 3
  store ptr %149, ptr %186, align 8, !tbaa !128
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !97
  %189 = icmp eq ptr %188, %180
  br i1 %189, label %190, label %184, !prof !157, !llvm.loop !159

190:                                              ; preds = %184, %144
  %191 = icmp eq i32 %145, 0
  br i1 %191, label %307, label %192, !prof !116

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.control_flow_graph, ptr %177, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !95
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 2
  %197 = tail call ptr @xmalloc(i64 noundef %196) #23
  %198 = load ptr, ptr @cfun, align 8, !tbaa !52
  %199 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !91
  %201 = getelementptr inbounds %struct.control_flow_graph, ptr %200, i64 0, i32 3
  %202 = load i32, ptr %201, align 8, !tbaa !95
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %203, 2
  %205 = tail call ptr @xmalloc(i64 noundef %204) #23
  %206 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef %197, ptr noundef %205, i8 noundef zeroext 0) #23
  %207 = load ptr, ptr @cfun, align 8, !tbaa !52
  %208 = getelementptr inbounds %struct.function, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !91
  %210 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 3
  %211 = load i32, ptr %210, align 8, !tbaa !95
  %212 = icmp sgt i32 %211, 2
  br i1 %212, label %213, label %306

213:                                              ; preds = %192, %295
  %214 = phi i64 [ %297, %295 ], [ 0, %192 ]
  %215 = phi ptr [ %300, %295 ], [ %209, %192 ]
  %216 = phi i32 [ %296, %295 ], [ 1, %192 ]
  %217 = getelementptr inbounds i32, ptr %205, i64 %214
  %218 = load i32, ptr %217, align 4, !tbaa !67
  %219 = lshr i32 %218, 6
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 3, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !155
  %223 = and i32 %218, 63
  %224 = zext nneg i32 %223 to i64
  %225 = shl nuw i64 1, %224
  %226 = and i64 %225, %222
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %295, label %228

228:                                              ; preds = %213
  %229 = getelementptr inbounds %struct.control_flow_graph, ptr %215, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !160
  %231 = zext i32 %218 to i64
  %232 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %230, i64 0, i32 2, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !52
  %234 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #23
  %235 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #23
  %236 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 18
  store ptr %235, ptr %236, align 8, !tbaa !117
  %237 = getelementptr inbounds %struct.loop_exit, ptr %235, i64 0, i32 1
  store ptr %235, ptr %237, align 8, !tbaa !121
  %238 = getelementptr inbounds %struct.loop_exit, ptr %235, i64 0, i32 2
  store ptr %235, ptr %238, align 8, !tbaa !118
  %239 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 19
  store i8 0, ptr %239, align 8, !tbaa !140
  %240 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 20
  store ptr null, ptr %240, align 8, !tbaa !141
  %241 = load ptr, ptr %148, align 8, !tbaa !102
  %242 = load i32, ptr %241, align 8, !tbaa !75
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 8, !tbaa !75
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %241, i64 0, i32 2, i64 %244
  store ptr %234, ptr %245, align 8, !tbaa !52
  %246 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 2
  store ptr %233, ptr %246, align 8, !tbaa !77
  store i32 %216, ptr %234, align 8, !tbaa !78
  %247 = add nsw i32 %216, 1
  %248 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !128
  %250 = getelementptr inbounds %struct.loop, ptr %249, i64 0, i32 8
  %251 = load ptr, ptr %250, align 8, !tbaa !107
  %252 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 9
  store ptr %251, ptr %252, align 8, !tbaa !109
  store ptr %234, ptr %250, align 8, !tbaa !107
  tail call fastcc void @establish_preds(ptr noundef nonnull %234, ptr noundef %249)
  %253 = load ptr, ptr %246, align 8, !tbaa !77
  %254 = tail call i32 @flow_loop_nodes_find(ptr noundef %253, ptr noundef nonnull %234)
  %255 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 6
  store i32 %254, ptr %255, align 4, !tbaa !87
  %256 = icmp eq ptr %233, null
  %257 = getelementptr inbounds %struct.loop, ptr %234, i64 0, i32 3
  br label %258

258:                                              ; preds = %293, %228
  %259 = phi i32 [ 0, %228 ], [ %294, %293 ]
  br i1 %256, label %260, label %261

260:                                              ; preds = %258
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %261

261:                                              ; preds = %260, %258
  %262 = load ptr, ptr %233, align 8, !tbaa !52
  %263 = icmp eq ptr %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %262, align 8, !tbaa !82
  br label %266

266:                                              ; preds = %264, %261
  %267 = phi i32 [ %265, %264 ], [ 0, %261 ]
  %268 = icmp eq i32 %267, %259
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = zext i32 %259 to i64
  %271 = getelementptr inbounds %struct.VEC_edge_base, ptr %262, i64 0, i32 2, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !52
  br label %273

273:                                              ; preds = %266, %269
  %274 = phi ptr [ %272, %269 ], [ null, %266 ]
  br i1 %268, label %295, label %275

275:                                              ; preds = %273
  %276 = load ptr, ptr %274, align 8, !tbaa !84
  %277 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %234, ptr noundef %276), !range !161
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %275
  %280 = load ptr, ptr %257, align 8, !tbaa !81
  %281 = icmp eq ptr %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %279
  store ptr null, ptr %257, align 8, !tbaa !81
  br label %295

283:                                              ; preds = %279
  store ptr %276, ptr %257, align 8, !tbaa !81
  br label %284

284:                                              ; preds = %283, %275
  %285 = load ptr, ptr %233, align 8, !tbaa !52
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = load i32, ptr %285, align 8, !tbaa !82
  br label %289

289:                                              ; preds = %287, %284
  %290 = phi i32 [ %288, %287 ], [ 0, %284 ]
  %291 = icmp ult i32 %259, %290
  br i1 %291, label %293, label %292

292:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %293

293:                                              ; preds = %289, %292
  %294 = add i32 %259, 1
  br label %258, !llvm.loop !162

295:                                              ; preds = %273, %282, %213
  %296 = phi i32 [ %216, %213 ], [ %247, %282 ], [ %247, %273 ]
  %297 = add nuw nsw i64 %214, 1
  %298 = load ptr, ptr @cfun, align 8, !tbaa !52
  %299 = getelementptr inbounds %struct.function, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !91
  %301 = getelementptr inbounds %struct.control_flow_graph, ptr %300, i64 0, i32 3
  %302 = load i32, ptr %301, align 8, !tbaa !95
  %303 = add nsw i32 %302, -2
  %304 = sext i32 %303 to i64
  %305 = icmp slt i64 %297, %304
  br i1 %305, label %213, label %306, !llvm.loop !163

306:                                              ; preds = %295, %192
  tail call void @free(ptr noundef %197)
  tail call void @free(ptr noundef %205)
  br label %307

307:                                              ; preds = %306, %190
  %308 = load ptr, ptr %12, align 8, !tbaa !153
  tail call void @free(ptr noundef %308)
  tail call void @free(ptr noundef %12)
  %309 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  store ptr null, ptr %309, align 8, !tbaa !164
  %310 = load ptr, ptr %148, align 8, !tbaa !102
  %311 = icmp eq ptr %310, null
  br i1 %311, label %314, label %312, !prof !124

312:                                              ; preds = %307
  %313 = load i32, ptr %310, align 8, !tbaa !75
  br label %314

314:                                              ; preds = %312, %307, %8
  %315 = phi i32 [ 1, %8 ], [ %313, %312 ], [ 0, %307 ]
  ret i32 %315
}

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_loops_structure(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !51 !PGOFuncName !165 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %1) #23
  %4 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !102
  %5 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #23
  %6 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #23
  %7 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 18
  store ptr %6, ptr %7, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.loop_exit, ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.loop_exit, ptr %6, i64 0, i32 2
  store ptr %6, ptr %9, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 19
  store i8 0, ptr %10, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 20
  store ptr null, ptr %11, align 8, !tbaa !141
  %12 = load ptr, ptr @cfun, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 6
  store i32 %16, ptr %17, align 4, !tbaa !87
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !81
  %21 = load ptr, ptr %14, align 8, !tbaa !96
  %22 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 3
  store ptr %5, ptr %23, align 8, !tbaa !128
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  store ptr %5, ptr %24, align 8, !tbaa !128
  %25 = load ptr, ptr %4, align 8, !tbaa !102
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !75
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2, i64 %28
  store ptr %5, ptr %29, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  store ptr %5, ptr %30, align 8, !tbaa !104
  ret void
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @flow_bb_inside_loop_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #14 !prof !166 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %38, label %8, !prof !167

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %38, label %12, !prof !168

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %38, label %16, !prof !169

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !75
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %24 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %25, align 8, !tbaa !75
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %28, %27 ], [ 0, %22 ]
  %31 = icmp ugt i32 %30, %23
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = zext i32 %23 to i64
  %34 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = icmp eq ptr %35, %0
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %32, %29, %12, %2, %8
  %39 = phi i8 [ 0, %8 ], [ 0, %2 ], [ 1, %12 ], [ 0, %29 ], [ %37, %32 ]
  ret i8 %39
}

; Function Attrs: nounwind uwtable
define dso_local void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #12 !prof !170 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6, !prof !171

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !171

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %13, i64 noundef 8, i64 noundef 4) #23
  %15 = load ptr, ptr @cfun, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %33, %12
  %21 = phi ptr [ %19, %12 ], [ %34, %33 ]
  %22 = load i32, ptr %21, align 8, !tbaa !78
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %29, label %24, !prof !172

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 4, !tbaa !105
  %26 = add i32 %25, 1
  store i32 %26, ptr %14, align 4, !tbaa !105
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %27
  store i32 %22, ptr %28, align 4, !tbaa !67
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !107
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !172

33:                                               ; preds = %37, %29
  %34 = phi ptr [ %31, %29 ], [ %40, %37 ]
  br label %20, !llvm.loop !108

35:                                               ; preds = %56
  %36 = icmp eq ptr %14, null
  br label %59

37:                                               ; preds = %29, %56
  %38 = phi ptr [ %57, %56 ], [ %21, %29 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !prof !172, !llvm.loop !108

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !172

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 8, !tbaa !75
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51, !prof !172

51:                                               ; preds = %48
  %52 = add i32 %49, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %44, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi ptr [ %55, %51 ], [ null, %48 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %35, label %37, !prof !172, !llvm.loop !110

59:                                               ; preds = %35, %71
  %60 = phi i32 [ %73, %71 ], [ 0, %35 ]
  br i1 %36, label %68, label %61, !prof !171

61:                                               ; preds = %59
  %62 = load i32, ptr %14, align 4, !tbaa !105
  %63 = icmp ugt i32 %62, %60
  br i1 %63, label %64, label %68, !prof !171

64:                                               ; preds = %61
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !67
  br label %68

68:                                               ; preds = %64, %61, %59
  %69 = phi i32 [ %67, %64 ], [ 0, %61 ], [ 0, %59 ]
  %70 = phi i1 [ false, %64 ], [ true, %61 ], [ true, %59 ]
  br i1 %70, label %79, label %71, !prof !172

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 1
  %73 = add i32 %60, 1
  %74 = load ptr, ptr %72, align 8, !tbaa !102
  %75 = zext i32 %69 to i64
  %76 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %74, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %59, label %81, !llvm.loop !111

79:                                               ; preds = %68
  br i1 %36, label %81, label %80, !prof !171

80:                                               ; preds = %79
  tail call void @free(ptr noundef %14)
  br label %81

81:                                               ; preds = %71, %79, %80, %0
  %82 = phi i32 [ 0, %0 ], [ %60, %80 ], [ %60, %79 ], [ %73, %71 ]
  %83 = phi ptr [ null, %0 ], [ null, %80 ], [ null, %79 ], [ %14, %71 ]
  %84 = phi ptr [ null, %0 ], [ null, %80 ], [ null, %79 ], [ %77, %71 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %423, label %86, !prof !120

86:                                               ; preds = %81, %418
  %87 = phi ptr [ %421, %418 ], [ %84, %81 ]
  %88 = phi ptr [ %420, %418 ], [ %83, %81 ]
  %89 = phi i32 [ %419, %418 ], [ %82, %81 ]
  %90 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !81
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %391

93:                                               ; preds = %86
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %87, align 8, !tbaa !78
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.34, i32 noundef %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load ptr, ptr @cfun, align 8, !tbaa !52
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !91
  %103 = load ptr, ptr %102, align 8, !tbaa !96
  %104 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !77
  %106 = call ptr @find_edge(ptr noundef %103, ptr noundef %105) #23
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = call ptr @split_edge(ptr noundef nonnull %106) #23
  br label %110

110:                                              ; preds = %108, %99
  br label %111

111:                                              ; preds = %110, %326
  %112 = call fastcc ptr @get_loop_latch_edges(ptr noundef nonnull %87)
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %112, align 8, !tbaa !82
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i32 [ %115, %114 ], [ 0, %111 ]
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %119, label %284

119:                                              ; preds = %116, %134
  %120 = phi i32 [ %141, %134 ], [ 0, %116 ]
  %121 = phi ptr [ %138, %134 ], [ null, %116 ]
  %122 = phi i64 [ %139, %134 ], [ 0, %116 ]
  %123 = phi i64 [ %140, %134 ], [ 0, %116 ]
  br i1 %113, label %131, label %124

124:                                              ; preds = %119
  %125 = load i32, ptr %112, align 8, !tbaa !82
  %126 = icmp ugt i32 %125, %120
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = zext i32 %120 to i64
  %129 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !52
  br label %131

131:                                              ; preds = %127, %124, %119
  %132 = phi ptr [ %130, %127 ], [ null, %124 ], [ null, %119 ]
  %133 = phi i1 [ false, %127 ], [ true, %124 ], [ true, %119 ]
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 9
  %136 = load i64, ptr %135, align 8, !tbaa !173
  %137 = icmp sgt i64 %136, %122
  %138 = select i1 %137, ptr %132, ptr %121
  %139 = call i64 @llvm.smax.i64(i64 %136, i64 %122)
  %140 = add nsw i64 %136, %123
  %141 = add i32 %120, 1
  br label %119, !llvm.loop !174

142:                                              ; preds = %131
  %143 = icmp slt i64 %123, 10
  br i1 %143, label %160, label %144

144:                                              ; preds = %142
  %145 = sub nsw i64 %123, %122
  %146 = shl nsw i64 %145, 3
  %147 = icmp sgt i64 %146, %123
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %121, align 8, !tbaa !84
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !79
  %155 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !113
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %156, i64 0, i32 9
  %158 = load i32, ptr %157, align 8, !tbaa !79
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %149, ptr noundef nonnull @.str.35, i32 noundef %154, i32 noundef %158)
  br label %160

160:                                              ; preds = %151, %148, %144, %142
  %161 = phi ptr [ null, %144 ], [ null, %142 ], [ %121, %151 ], [ %121, %148 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %284

163:                                              ; preds = %160
  %164 = call i32 @current_ir_type() #23
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %284

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 0
  %168 = load ptr, ptr %167, align 8, !tbaa !52
  br label %169

169:                                              ; preds = %182, %166
  %170 = phi i32 [ 1, %166 ], [ %188, %182 ]
  %171 = phi ptr [ %168, %166 ], [ %187, %182 ]
  br i1 %113, label %179, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %112, align 8, !tbaa !82
  %174 = icmp ugt i32 %173, %170
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = zext i32 %170 to i64
  %177 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !52
  br label %179

179:                                              ; preds = %175, %172, %169
  %180 = phi ptr [ %178, %175 ], [ null, %172 ], [ null, %169 ]
  %181 = phi i1 [ false, %175 ], [ true, %172 ], [ true, %169 ]
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %171, align 8, !tbaa !84
  %184 = load ptr, ptr %180, align 8, !tbaa !84
  %185 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %183, ptr noundef %184) #23
  %186 = icmp eq i8 %185, 0
  %187 = select i1 %186, ptr %171, ptr %180
  %188 = add i32 %170, 1
  br label %169, !llvm.loop !175

189:                                              ; preds = %179, %201
  %190 = phi i32 [ %206, %201 ], [ 0, %179 ]
  br i1 %113, label %198, label %191

191:                                              ; preds = %189
  %192 = load i32, ptr %112, align 8, !tbaa !82
  %193 = icmp ugt i32 %192, %190
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = zext i32 %190 to i64
  %196 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !52
  br label %198

198:                                              ; preds = %194, %191, %189
  %199 = phi ptr [ %197, %194 ], [ null, %191 ], [ null, %189 ]
  %200 = phi i1 [ false, %194 ], [ true, %191 ], [ true, %189 ]
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr %199, align 8, !tbaa !84
  %203 = load ptr, ptr %171, align 8, !tbaa !84
  %204 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %202, ptr noundef %203) #23
  %205 = icmp eq i8 %204, 0
  %206 = add i32 %190, 1
  br i1 %205, label %284, label %189, !llvm.loop !176

207:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #23
  %208 = load ptr, ptr %104, align 8, !tbaa !77
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %208) #23
  %209 = load ptr, ptr %1, align 8, !tbaa.struct !177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #23
  %210 = icmp eq ptr %209, null
  br i1 %210, label %272, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 6
  br label %213

213:                                              ; preds = %211, %268
  %214 = phi ptr [ %209, %211 ], [ %270, %268 ]
  %215 = load ptr, ptr %214, align 8, !tbaa !178
  %216 = load i32, ptr %212, align 4, !tbaa !180
  %217 = getelementptr inbounds %struct.gimple_statement_phi, ptr %215, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !63
  %219 = icmp ult i32 %218, %216
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %221

221:                                              ; preds = %220, %213
  %222 = zext i32 %216 to i64
  %223 = getelementptr inbounds %struct.gimple_statement_phi, ptr %215, i64 0, i32 4, i64 %222, i32 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !181
  %225 = load ptr, ptr %224, align 8, !tbaa !52
  %226 = load i64, ptr %225, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 141
  br i1 %228, label %229, label %268

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.tree_ssa_name, ptr %225, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !63
  %232 = icmp eq ptr %231, %215
  br i1 %232, label %268, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.gimple_statement_base, ptr %231, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !63
  %236 = icmp eq ptr %235, null
  br i1 %236, label %268, label %237

237:                                              ; preds = %233
  %238 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %87, ptr noundef nonnull %235), !range !161
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %268, label %240

240:                                              ; preds = %237, %266
  %241 = phi i32 [ %267, %266 ], [ 0, %237 ]
  br i1 %113, label %249, label %242

242:                                              ; preds = %240
  %243 = load i32, ptr %112, align 8, !tbaa !82
  %244 = icmp ugt i32 %243, %241
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = zext i32 %241 to i64
  %247 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !52
  br label %249

249:                                              ; preds = %245, %242, %240
  %250 = phi ptr [ %248, %245 ], [ null, %242 ], [ null, %240 ]
  %251 = phi i1 [ false, %245 ], [ true, %242 ], [ true, %240 ]
  br i1 %251, label %268, label %252

252:                                              ; preds = %249
  %253 = icmp eq ptr %250, %171
  br i1 %253, label %266, label %254

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.edge_def, ptr %250, i64 0, i32 6
  %256 = load i32, ptr %255, align 4, !tbaa !180
  %257 = load i32, ptr %217, align 8, !tbaa !63
  %258 = icmp ult i32 %257, %256
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %260

260:                                              ; preds = %259, %254
  %261 = zext i32 %256 to i64
  %262 = getelementptr inbounds %struct.gimple_statement_phi, ptr %215, i64 0, i32 4, i64 %261, i32 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !181
  %264 = load ptr, ptr %263, align 8, !tbaa !52
  %265 = icmp eq ptr %264, %225
  br i1 %265, label %284, label %266

266:                                              ; preds = %260, %252
  %267 = add i32 %241, 1
  br label %240, !llvm.loop !183

268:                                              ; preds = %249, %237, %233, %229, %221
  %269 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %214, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !184
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %213, !llvm.loop !185

272:                                              ; preds = %268, %207
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %274 = icmp eq ptr %273, null
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr %171, align 8, !tbaa !84
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %276, i64 0, i32 9
  %278 = load i32, ptr %277, align 8, !tbaa !79
  %279 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !113
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %280, i64 0, i32 9
  %282 = load i32, ptr %281, align 8, !tbaa !79
  %283 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %273, ptr noundef nonnull @.str.36, i32 noundef %278, i32 noundef %282)
  br label %284

284:                                              ; preds = %201, %260, %275, %272, %163, %160, %116
  %285 = phi ptr [ %161, %160 ], [ null, %163 ], [ null, %116 ], [ %171, %275 ], [ %171, %272 ], [ null, %260 ], [ null, %201 ]
  br i1 %113, label %287, label %286

286:                                              ; preds = %284
  call void @free(ptr noundef %112)
  br label %287

287:                                              ; preds = %286, %284
  %288 = icmp eq ptr %285, null
  br i1 %288, label %343, label %289

289:                                              ; preds = %287
  %290 = call ptr @pointer_set_create() #23
  store ptr %290, ptr @mfb_reis_set, align 8, !tbaa !52
  %291 = load ptr, ptr %104, align 8, !tbaa !77
  %292 = icmp eq ptr %291, null
  br label %293

293:                                              ; preds = %324, %289
  %294 = phi i32 [ 0, %289 ], [ %325, %324 ]
  br i1 %292, label %295, label %296

295:                                              ; preds = %293
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %296

296:                                              ; preds = %295, %293
  %297 = load ptr, ptr %291, align 8, !tbaa !52
  %298 = icmp eq ptr %297, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %296
  %300 = load i32, ptr %297, align 8, !tbaa !82
  br label %301

301:                                              ; preds = %299, %296
  %302 = phi i32 [ %300, %299 ], [ 0, %296 ]
  %303 = icmp eq i32 %302, %294
  br i1 %303, label %308, label %304

304:                                              ; preds = %301
  %305 = zext i32 %294 to i64
  %306 = getelementptr inbounds %struct.VEC_edge_base, ptr %297, i64 0, i32 2, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !52
  br label %308

308:                                              ; preds = %304, %301
  %309 = phi ptr [ %307, %304 ], [ null, %301 ]
  br i1 %303, label %326, label %310

310:                                              ; preds = %308
  %311 = icmp eq ptr %309, %285
  br i1 %311, label %315, label %312

312:                                              ; preds = %310
  %313 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !52
  %314 = call i32 @pointer_set_insert(ptr noundef %313, ptr noundef %309) #23
  br label %315

315:                                              ; preds = %312, %310
  %316 = load ptr, ptr %291, align 8, !tbaa !52
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = load i32, ptr %316, align 8, !tbaa !82
  br label %320

320:                                              ; preds = %318, %315
  %321 = phi i32 [ %319, %318 ], [ 0, %315 ]
  %322 = icmp ult i32 %294, %321
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %324

324:                                              ; preds = %323, %320
  %325 = add i32 %294, 1
  br label %293, !llvm.loop !186

326:                                              ; preds = %308
  %327 = load ptr, ptr %104, align 8, !tbaa !77
  %328 = call ptr @make_forwarder_block(ptr noundef %327, ptr noundef nonnull @mfb_redirect_edges_in_set, ptr noundef null) #23
  %329 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !52
  call void @pointer_set_destroy(ptr noundef %329) #23
  %330 = load ptr, ptr %328, align 8, !tbaa !84
  store ptr %330, ptr %104, align 8, !tbaa !77
  %331 = call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #23
  %332 = call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #23
  %333 = getelementptr inbounds %struct.loop, ptr %331, i64 0, i32 18
  store ptr %332, ptr %333, align 8, !tbaa !117
  %334 = getelementptr inbounds %struct.loop_exit, ptr %332, i64 0, i32 1
  store ptr %332, ptr %334, align 8, !tbaa !121
  %335 = getelementptr inbounds %struct.loop_exit, ptr %332, i64 0, i32 2
  store ptr %332, ptr %335, align 8, !tbaa !118
  %336 = getelementptr inbounds %struct.loop, ptr %331, i64 0, i32 19
  store i8 0, ptr %336, align 8, !tbaa !140
  %337 = getelementptr inbounds %struct.loop, ptr %331, i64 0, i32 20
  store ptr null, ptr %337, align 8, !tbaa !141
  %338 = getelementptr inbounds %struct.edge_def, ptr %328, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !113
  %340 = getelementptr inbounds %struct.loop, ptr %331, i64 0, i32 2
  store ptr %339, ptr %340, align 8, !tbaa !77
  %341 = load ptr, ptr %285, align 8, !tbaa !84
  %342 = getelementptr inbounds %struct.loop, ptr %331, i64 0, i32 3
  store ptr %341, ptr %342, align 8, !tbaa !81
  call void @add_loop(ptr noundef %331, ptr noundef nonnull %87) #23
  br label %111, !llvm.loop !187

343:                                              ; preds = %287
  %344 = call fastcc ptr @get_loop_latch_edges(ptr noundef nonnull %87)
  %345 = icmp eq ptr %344, null
  br i1 %345, label %349, label %346

346:                                              ; preds = %343
  %347 = load i32, ptr %344, align 8, !tbaa !82
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346, %343
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.1) #23
  br label %350

350:                                              ; preds = %349, %346
  br i1 %345, label %357, label %351

351:                                              ; preds = %350
  %352 = load i32, ptr %344, align 8, !tbaa !82
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.VEC_edge_base, ptr %344, i64 0, i32 2, i64 0
  %356 = load ptr, ptr %355, align 8, !tbaa !52
  br label %387

357:                                              ; preds = %351, %350
  %358 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %359 = icmp eq ptr %358, null
  br i1 %359, label %363, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr %87, align 8, !tbaa !78
  %362 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %358, ptr noundef nonnull @.str.38, i32 noundef %361)
  br label %363

363:                                              ; preds = %360, %357
  %364 = call ptr @pointer_set_create() #23
  store ptr %364, ptr @mfb_reis_set, align 8, !tbaa !52
  br label %365

365:                                              ; preds = %377, %363
  %366 = phi i32 [ 0, %363 ], [ %380, %377 ]
  br i1 %345, label %374, label %367

367:                                              ; preds = %365
  %368 = load i32, ptr %344, align 8, !tbaa !82
  %369 = icmp ugt i32 %368, %366
  br i1 %369, label %370, label %374

370:                                              ; preds = %367
  %371 = zext i32 %366 to i64
  %372 = getelementptr inbounds %struct.VEC_edge_base, ptr %344, i64 0, i32 2, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !52
  br label %374

374:                                              ; preds = %370, %367, %365
  %375 = phi ptr [ %373, %370 ], [ null, %367 ], [ null, %365 ]
  %376 = phi i1 [ false, %370 ], [ true, %367 ], [ true, %365 ]
  br i1 %376, label %381, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !52
  %379 = call i32 @pointer_set_insert(ptr noundef %378, ptr noundef %375) #23
  %380 = add i32 %366, 1
  br label %365, !llvm.loop !188

381:                                              ; preds = %374
  %382 = load ptr, ptr %104, align 8, !tbaa !77
  %383 = call ptr @make_forwarder_block(ptr noundef %382, ptr noundef nonnull @mfb_redirect_edges_in_set, ptr noundef null) #23
  %384 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !52
  call void @pointer_set_destroy(ptr noundef %384) #23
  %385 = getelementptr inbounds %struct.edge_def, ptr %383, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !113
  store ptr %386, ptr %104, align 8, !tbaa !77
  br label %387

387:                                              ; preds = %381, %354
  %388 = phi ptr [ %356, %354 ], [ %383, %381 ]
  %389 = load ptr, ptr %388, align 8, !tbaa !84
  store ptr %389, ptr %90, align 8, !tbaa !81
  br i1 %345, label %391, label %390

390:                                              ; preds = %387
  call void @free(ptr noundef %344)
  br label %391

391:                                              ; preds = %390, %387, %86
  %392 = icmp eq ptr %88, null
  %393 = load ptr, ptr @cfun, align 8
  %394 = getelementptr inbounds %struct.function, ptr %393, i64 0, i32 4
  br label %395

395:                                              ; preds = %407, %391
  %396 = phi i32 [ %89, %391 ], [ %408, %407 ]
  br i1 %392, label %404, label %397

397:                                              ; preds = %395
  %398 = load i32, ptr %88, align 4, !tbaa !105
  %399 = icmp ugt i32 %398, %396
  br i1 %399, label %400, label %404

400:                                              ; preds = %397
  %401 = zext i32 %396 to i64
  %402 = getelementptr inbounds %struct.VEC_int_base, ptr %88, i64 0, i32 2, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !67
  br label %404

404:                                              ; preds = %400, %397, %395
  %405 = phi i32 [ %403, %400 ], [ 0, %397 ], [ 0, %395 ]
  %406 = phi i1 [ false, %400 ], [ true, %397 ], [ true, %395 ]
  br i1 %406, label %416, label %407

407:                                              ; preds = %404
  %408 = add i32 %396, 1
  %409 = load ptr, ptr %394, align 8, !tbaa !100
  %410 = getelementptr inbounds %struct.loops, ptr %409, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !102
  %412 = zext i32 %405 to i64
  %413 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %411, i64 0, i32 2, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !52
  %415 = icmp eq ptr %414, null
  br i1 %415, label %395, label %418, !llvm.loop !111

416:                                              ; preds = %404
  br i1 %392, label %418, label %417

417:                                              ; preds = %416
  call void @free(ptr noundef %88)
  br label %418

418:                                              ; preds = %407, %416, %417
  %419 = phi i32 [ %396, %417 ], [ %396, %416 ], [ %408, %407 ]
  %420 = phi ptr [ null, %417 ], [ null, %416 ], [ %88, %407 ]
  %421 = phi ptr [ null, %417 ], [ null, %416 ], [ %414, %407 ]
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %86, !prof !120, !llvm.loop !189

423:                                              ; preds = %418, %81
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @get_loop_body_with_size(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !51 {
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = tail call i32 @dfs_enumerate_from(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @glb_enum_p, ptr noundef %1, i32 noundef %2, ptr noundef %0) #23
  ret i32 %6
}

declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @glb_enum_p(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %4) #23
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %6 ]
  ret i8 %11
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_loop_body_in_dom_order(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !87
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, ptr %3, align 4, !tbaa !87
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #23
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = load ptr, ptr @cfun, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 882, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %7, %19
  store i32 0, ptr %2, align 4, !tbaa !67
  %21 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  call fastcc void @fill_sons_in_loop(ptr noundef %0, ptr noundef %22, ptr noundef %10, ptr noundef nonnull %2)
  %23 = load i32, ptr %2, align 4, !tbaa !67
  %24 = load i32, ptr %3, align 4, !tbaa !87
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 887, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %20, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret ptr %10
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fill_sons_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !prof !51 {
  br label %5

5:                                                ; preds = %29, %4
  %6 = phi ptr [ %1, %4 ], [ %30, %29 ]
  %7 = load i32, ptr %3, align 4, !tbaa !67
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %3, align 4, !tbaa !67
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %2, i64 %9
  store ptr %6, ptr %10, align 8, !tbaa !52
  %11 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %6) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %25
  %16 = phi ptr [ null, %13 ], [ %26, %25 ]
  %17 = phi ptr [ %11, %13 ], [ %27, %25 ]
  %18 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %17), !range !161
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 8, !tbaa !81
  %22 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %21, ptr noundef nonnull %17) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call fastcc void @fill_sons_in_loop(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %3)
  br label %25

25:                                               ; preds = %20, %15, %24
  %26 = phi ptr [ %16, %24 ], [ %16, %15 ], [ %17, %20 ]
  %27 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %17) #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !190

29:                                               ; preds = %25, %5
  %30 = phi ptr [ null, %5 ], [ %26, %25 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5

32:                                               ; preds = %29
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @get_loop_body_in_custom_order(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = tail call ptr @get_loop_body(ptr noundef %0)
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !87
  %6 = zext i32 %5 to i64
  tail call void @spec_qsort(ptr noundef %3, i64 noundef %6, i64 noundef 8, ptr noundef %1) #23
  ret ptr %3
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_loop_body_in_bfs_order(ptr noundef readonly %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 920, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = load ptr, ptr @cfun, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 921, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %6, %15
  %17 = load i32, ptr %2, align 4, !tbaa !87
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 8) #23
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %21 = load i32, ptr %2, align 4, !tbaa !87
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %99, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  br label %25

25:                                               ; preds = %23, %93
  %26 = phi ptr [ %96, %93 ], [ %24, %23 ]
  %27 = phi i32 [ %45, %93 ], [ 0, %23 ]
  %28 = phi i32 [ %94, %93 ], [ 1, %23 ]
  %29 = load ptr, ptr %26, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %31) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32, ptr %30, align 8, !tbaa !79
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %35) #23
  %37 = add i32 %27, 1
  %38 = zext i32 %27 to i64
  %39 = getelementptr inbounds ptr, ptr %19, i64 %38
  store ptr %29, ptr %39, align 8, !tbaa !52
  br label %40

40:                                               ; preds = %34, %25
  %41 = phi i32 [ %27, %25 ], [ %37, %34 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  br label %43

43:                                               ; preds = %88, %40
  %44 = phi i32 [ 0, %40 ], [ %89, %88 ]
  %45 = phi i32 [ %41, %40 ], [ %79, %88 ]
  %46 = load ptr, ptr %42, align 8, !tbaa !52
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %46, align 8, !tbaa !82
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %49, %48 ], [ 0, %43 ]
  %52 = icmp eq i32 %51, %44
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = zext i32 %44 to i64
  %55 = getelementptr inbounds %struct.VEC_edge_base, ptr %46, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  br label %57

57:                                               ; preds = %50, %53
  %58 = phi ptr [ %56, %53 ], [ null, %50 ]
  br i1 %52, label %90, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !113
  %62 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %61), !range !161
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !79
  %67 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %66) #23
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load ptr, ptr %60, align 8, !tbaa !113
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !79
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %72) #23
  %74 = load ptr, ptr %60, align 8, !tbaa !113
  %75 = add i32 %45, 1
  %76 = zext i32 %45 to i64
  %77 = getelementptr inbounds ptr, ptr %19, i64 %76
  store ptr %74, ptr %77, align 8, !tbaa !52
  br label %78

78:                                               ; preds = %64, %69, %59
  %79 = phi i32 [ %45, %64 ], [ %75, %69 ], [ %45, %59 ]
  %80 = load ptr, ptr %42, align 8, !tbaa !52
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %80, align 8, !tbaa !82
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %83, %82 ], [ 0, %78 ]
  %86 = icmp ult i32 %44, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %88

88:                                               ; preds = %84, %87
  %89 = add i32 %44, 1
  br label %43, !llvm.loop !191

90:                                               ; preds = %57
  %91 = icmp ult i32 %45, %28
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 951, ptr noundef nonnull @.str.1) #23
  br label %93

93:                                               ; preds = %90, %92
  %94 = add i32 %28, 1
  %95 = zext i32 %28 to i64
  %96 = getelementptr inbounds ptr, ptr %19, i64 %95
  %97 = load i32, ptr %2, align 4, !tbaa !87
  %98 = icmp ult i32 %45, %97
  br i1 %98, label %25, label %99, !llvm.loop !192

99:                                               ; preds = %93, %16
  tail call void @bitmap_obstack_free(ptr noundef %20) #23
  ret ptr %19
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #15 !prof !193 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = load i32, ptr %6, align 8, !tbaa !194
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %192, label %10, !prof !195

10:                                               ; preds = %3
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %12, label %152, !prof !196

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = icmp eq ptr %15, null
  br i1 %16, label %152, label %17, !prof !197

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = icmp eq ptr %21, null
  br i1 %22, label %152, label %23, !prof !198

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp eq ptr %26, %19
  br i1 %27, label %55, label %28, !prof !167

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %55, label %32, !prof !168

32:                                               ; preds = %28
  %33 = icmp eq ptr %21, %15
  br i1 %33, label %152, label %34, !prof !169

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 8, !tbaa !75
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %39, %38 ], [ 0, %34 ]
  %42 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %43, align 8, !tbaa !75
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i32 [ %46, %45 ], [ 0, %40 ]
  %49 = icmp ugt i32 %48, %41
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = zext i32 %41 to i64
  %52 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %43, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, %15
  br i1 %54, label %152, label %55, !prof !199

55:                                               ; preds = %28, %23, %47, %50
  %56 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !200

59:                                               ; preds = %55
  %60 = load i32, ptr %57, align 8, !tbaa !75
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %60, %59 ], [ 0, %55 ]
  %63 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !71
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !200

66:                                               ; preds = %61
  %67 = load i32, ptr %64, align 8, !tbaa !75
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ 0, %61 ]
  %70 = icmp ult i32 %62, %69
  br i1 %70, label %71, label %75, !prof !201

71:                                               ; preds = %68
  %72 = zext i32 %62 to i64
  %73 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %64, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  br label %81

75:                                               ; preds = %68
  %76 = icmp ugt i32 %62, %69
  br i1 %76, label %77, label %81, !prof !201

77:                                               ; preds = %75
  %78 = zext i32 %69 to i64
  %79 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %57, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  br label %81

81:                                               ; preds = %77, %75, %71
  %82 = phi ptr [ %74, %71 ], [ %21, %77 ], [ %21, %75 ]
  %83 = phi ptr [ %15, %71 ], [ %80, %77 ], [ %15, %75 ]
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %119, label %85, !prof !120

85:                                               ; preds = %81, %116
  %86 = phi ptr [ %102, %116 ], [ %83, %81 ]
  %87 = phi ptr [ %117, %116 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !71
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr %89, align 8, !tbaa !75
  br label %93

93:                                               ; preds = %91, %85
  %94 = phi i32 [ %92, %91 ], [ 0, %85 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = add i32 %94, -1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %89, i64 0, i32 2, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi ptr [ %100, %96 ], [ null, %93 ]
  %103 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !71
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %104, align 8, !tbaa !75
  br label %108

108:                                              ; preds = %106, %101
  %109 = phi i32 [ %107, %106 ], [ 0, %101 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = add i32 %109, -1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %104, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !52
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi ptr [ %115, %111 ], [ null, %108 ]
  %118 = icmp eq ptr %102, %117
  br i1 %118, label %119, label %85, !prof !120, !llvm.loop !202

119:                                              ; preds = %116, %81
  %120 = phi ptr [ %83, %81 ], [ %102, %116 ]
  %121 = icmp eq ptr %15, %120
  br i1 %121, label %152, label %122, !prof !120

122:                                              ; preds = %119, %149
  %123 = phi ptr [ %125, %149 ], [ null, %119 ]
  %124 = phi ptr [ %150, %149 ], [ %15, %119 ]
  %125 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #23
  store ptr %0, ptr %125, align 8, !tbaa !203
  %126 = getelementptr inbounds %struct.loop, ptr %124, i64 0, i32 18
  %127 = load ptr, ptr %126, align 8, !tbaa !117
  %128 = getelementptr inbounds %struct.loop_exit, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !118
  %130 = getelementptr inbounds %struct.loop_exit, ptr %125, i64 0, i32 2
  store ptr %129, ptr %130, align 8, !tbaa !118
  %131 = getelementptr inbounds %struct.loop_exit, ptr %125, i64 0, i32 1
  store ptr %127, ptr %131, align 8, !tbaa !121
  %132 = getelementptr inbounds %struct.loop_exit, ptr %129, i64 0, i32 1
  store ptr %125, ptr %132, align 8, !tbaa !121
  %133 = load ptr, ptr %131, align 8, !tbaa !121
  %134 = getelementptr inbounds %struct.loop_exit, ptr %133, i64 0, i32 2
  store ptr %125, ptr %134, align 8, !tbaa !118
  %135 = getelementptr inbounds %struct.loop_exit, ptr %125, i64 0, i32 3
  store ptr %123, ptr %135, align 8, !tbaa !204
  %136 = getelementptr inbounds %struct.loop, ptr %124, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !71
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %122
  %140 = load i32, ptr %137, align 8, !tbaa !75
  br label %141

141:                                              ; preds = %139, %122
  %142 = phi i32 [ %140, %139 ], [ 0, %122 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = add i32 %142, -1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %137, i64 0, i32 2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !52
  br label %149

149:                                              ; preds = %141, %144
  %150 = phi ptr [ %148, %144 ], [ null, %141 ]
  %151 = icmp eq ptr %150, %120
  br i1 %151, label %152, label %122, !prof !120, !llvm.loop !205

152:                                              ; preds = %149, %32, %119, %50, %17, %12, %10
  %153 = phi ptr [ null, %10 ], [ null, %50 ], [ null, %17 ], [ null, %12 ], [ null, %119 ], [ null, %32 ], [ %125, %149 ]
  %154 = icmp eq ptr %153, null
  %155 = icmp ne i8 %1, 0
  %156 = and i1 %155, %154
  br i1 %156, label %192, label %157, !prof !206

157:                                              ; preds = %152
  %158 = load ptr, ptr @cfun, align 8, !tbaa !52
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !100
  %161 = getelementptr inbounds %struct.loops, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !164
  %163 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !52
  %164 = tail call i32 %163(ptr noundef %0) #23, !prof !207
  %165 = icmp ne ptr %153, null
  %166 = zext i1 %165 to i32
  %167 = tail call ptr @htab_find_slot_with_hash(ptr noundef %162, ptr noundef %0, i32 noundef %164, i32 noundef %166) #23
  %168 = icmp eq ptr %167, null
  br i1 %168, label %192, label %169, !prof !208

169:                                              ; preds = %157
  br i1 %165, label %170, label %186

170:                                              ; preds = %169
  %171 = load ptr, ptr %167, align 8, !tbaa !52
  %172 = icmp eq ptr %171, null
  br i1 %172, label %185, label %173

173:                                              ; preds = %170, %173
  %174 = phi ptr [ %176, %173 ], [ %171, %170 ]
  %175 = getelementptr inbounds %struct.loop_exit, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !204
  %177 = getelementptr inbounds %struct.loop_exit, ptr %174, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !121
  %179 = getelementptr inbounds %struct.loop_exit, ptr %174, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !118
  %181 = getelementptr inbounds %struct.loop_exit, ptr %180, i64 0, i32 1
  store ptr %178, ptr %181, align 8, !tbaa !121
  %182 = load ptr, ptr %177, align 8, !tbaa !121
  %183 = getelementptr inbounds %struct.loop_exit, ptr %182, i64 0, i32 2
  store ptr %180, ptr %183, align 8, !tbaa !118
  tail call void @ggc_free(ptr noundef nonnull %174) #23
  %184 = icmp eq ptr %176, null
  br i1 %184, label %185, label %173, !llvm.loop !209

185:                                              ; preds = %173, %170
  store ptr %153, ptr %167, align 8, !tbaa !52
  br label %192

186:                                              ; preds = %169
  %187 = load ptr, ptr @cfun, align 8, !tbaa !52
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !100
  %190 = getelementptr inbounds %struct.loops, ptr %189, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !164
  tail call void @htab_clear_slot(ptr noundef %191, ptr noundef nonnull %167) #23
  br label %192

192:                                              ; preds = %185, %186, %157, %152, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_common_loop(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #16 !prof !210 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %70, label %4, !prof !201

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %70, label %6, !prof !201

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !200

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !200

17:                                               ; preds = %12
  %18 = load i32, ptr %15, align 8, !tbaa !75
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %12 ]
  %21 = icmp ult i32 %13, %20
  br i1 %21, label %22, label %26, !prof !201

22:                                               ; preds = %19
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  br label %32

26:                                               ; preds = %19
  %27 = icmp ugt i32 %13, %20
  br i1 %27, label %28, label %32, !prof !201

28:                                               ; preds = %26
  %29 = zext i32 %20 to i64
  %30 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %8, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %26, %28, %22
  %33 = phi ptr [ %25, %22 ], [ %1, %28 ], [ %1, %26 ]
  %34 = phi ptr [ %0, %22 ], [ %31, %28 ], [ %0, %26 ]
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %70, label %36, !prof !120

36:                                               ; preds = %32, %67
  %37 = phi ptr [ %53, %67 ], [ %34, %32 ]
  %38 = phi ptr [ %68, %67 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %40, align 8, !tbaa !75
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = add i32 %45, -1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %40, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  br label %52

52:                                               ; preds = %44, %47
  %53 = phi ptr [ %51, %47 ], [ null, %44 ]
  %54 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !71
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %55, align 8, !tbaa !75
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi i32 [ %58, %57 ], [ 0, %52 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = add i32 %60, -1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %55, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !52
  br label %67

67:                                               ; preds = %59, %62
  %68 = phi ptr [ %66, %62 ], [ null, %59 ]
  %69 = icmp eq ptr %53, %68
  br i1 %69, label %70, label %36, !prof !120, !llvm.loop !202

70:                                               ; preds = %67, %32, %4, %2
  %71 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %34, %32 ], [ %53, %67 ]
  ret ptr %71
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @loop_exit_free(ptr noundef %0) #10 !prof !51 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = getelementptr inbounds %struct.loop_exit, ptr %10, i64 0, i32 1
  store ptr %8, ptr %11, align 8, !tbaa !121
  %12 = load ptr, ptr %7, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.loop_exit, ptr %12, i64 0, i32 2
  store ptr %10, ptr %13, align 8, !tbaa !118
  tail call void @ggc_free(ptr noundef nonnull %4) #23
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %3, !llvm.loop !209

15:                                               ; preds = %3, %1
  ret void
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @record_loop_exits() local_unnamed_addr #12 !prof !211 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %260, label %5, !prof !212

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !194
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %260, !prof !213

9:                                                ; preds = %5
  %10 = or disjoint i32 %6, 8
  store i32 %10, ptr %3, align 8, !tbaa !194
  %11 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !213

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1082, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %9, %14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20, !prof !214

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.loops, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !214

24:                                               ; preds = %20
  %25 = load i32, ptr %22, align 8, !tbaa !75
  %26 = shl i32 %25, 1
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %15, %20, %24
  %29 = phi i64 [ 0, %15 ], [ %27, %24 ], [ 0, %20 ]
  %30 = tail call ptr @htab_create_alloc(i64 noundef %29, ptr noundef nonnull @loop_exit_hash, ptr noundef nonnull @loop_exit_eq, ptr noundef nonnull @loop_exit_free, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  %31 = load ptr, ptr @cfun, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.loops, ptr %33, i64 0, i32 2
  store ptr %30, ptr %34, align 8, !tbaa !164
  %35 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !97
  %40 = load ptr, ptr @cfun, align 8, !tbaa !52
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %260, label %55, !prof !215

46:                                               ; preds = %71
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = load ptr, ptr @cfun, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !91
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %260, label %55, !prof !216, !llvm.loop !217

55:                                               ; preds = %28, %46
  %56 = phi ptr [ %48, %46 ], [ %39, %28 ]
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 1
  br label %58

58:                                               ; preds = %258, %55
  %59 = phi i32 [ 0, %55 ], [ %259, %258 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !218

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 8, !tbaa !82
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %63, %62 ], [ 0, %58 ]
  %66 = icmp eq i32 %65, %59
  br i1 %66, label %71, label %67, !prof !219

67:                                               ; preds = %64
  %68 = zext i32 %59 to i64
  %69 = getelementptr inbounds %struct.VEC_edge_base, ptr %60, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  br label %71

71:                                               ; preds = %64, %67
  %72 = phi ptr [ %70, %67 ], [ null, %64 ]
  br i1 %66, label %46, label %73, !prof !219

73:                                               ; preds = %71
  %74 = load ptr, ptr @cfun, align 8, !tbaa !52
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !100
  %77 = load i32, ptr %76, align 8, !tbaa !194
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %249, label %80, !prof !195

80:                                               ; preds = %73
  %81 = load ptr, ptr %72, align 8, !tbaa !84
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !128
  %84 = icmp eq ptr %83, null
  br i1 %84, label %220, label %85, !prof !197

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !113
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !128
  %90 = icmp eq ptr %89, null
  br i1 %90, label %220, label %91, !prof !198

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !91
  %94 = load ptr, ptr %93, align 8, !tbaa !96
  %95 = icmp eq ptr %94, %87
  br i1 %95, label %123, label %96, !prof !167

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !93
  %99 = icmp eq ptr %98, %87
  br i1 %99, label %123, label %100, !prof !168

100:                                              ; preds = %96
  %101 = icmp eq ptr %89, %83
  br i1 %101, label %220, label %102, !prof !169

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.loop, ptr %83, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !71
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %104, align 8, !tbaa !75
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %107, %106 ], [ 0, %102 ]
  %110 = getelementptr inbounds %struct.loop, ptr %89, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !71
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %111, align 8, !tbaa !75
  br label %115

115:                                              ; preds = %113, %108
  %116 = phi i32 [ %114, %113 ], [ 0, %108 ]
  %117 = icmp ugt i32 %116, %109
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = zext i32 %109 to i64
  %120 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %111, i64 0, i32 2, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !52
  %122 = icmp eq ptr %121, %83
  br i1 %122, label %220, label %123, !prof !199

123:                                              ; preds = %118, %115, %96, %91
  %124 = getelementptr inbounds %struct.loop, ptr %83, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !71
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127, !prof !200

127:                                              ; preds = %123
  %128 = load i32, ptr %125, align 8, !tbaa !75
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %128, %127 ], [ 0, %123 ]
  %131 = getelementptr inbounds %struct.loop, ptr %89, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !71
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134, !prof !200

134:                                              ; preds = %129
  %135 = load i32, ptr %132, align 8, !tbaa !75
  br label %136

136:                                              ; preds = %134, %129
  %137 = phi i32 [ %135, %134 ], [ 0, %129 ]
  %138 = icmp ult i32 %130, %137
  br i1 %138, label %139, label %143, !prof !201

139:                                              ; preds = %136
  %140 = zext i32 %130 to i64
  %141 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %132, i64 0, i32 2, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !52
  br label %149

143:                                              ; preds = %136
  %144 = icmp ugt i32 %130, %137
  br i1 %144, label %145, label %149, !prof !201

145:                                              ; preds = %143
  %146 = zext i32 %137 to i64
  %147 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %125, i64 0, i32 2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !52
  br label %149

149:                                              ; preds = %145, %143, %139
  %150 = phi ptr [ %142, %139 ], [ %89, %145 ], [ %89, %143 ]
  %151 = phi ptr [ %83, %139 ], [ %148, %145 ], [ %83, %143 ]
  %152 = icmp eq ptr %151, %150
  br i1 %152, label %187, label %153, !prof !120

153:                                              ; preds = %149, %184
  %154 = phi ptr [ %170, %184 ], [ %151, %149 ]
  %155 = phi ptr [ %185, %184 ], [ %150, %149 ]
  %156 = getelementptr inbounds %struct.loop, ptr %154, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !71
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %153
  %160 = load i32, ptr %157, align 8, !tbaa !75
  br label %161

161:                                              ; preds = %159, %153
  %162 = phi i32 [ %160, %159 ], [ 0, %153 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = add i32 %162, -1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %157, i64 0, i32 2, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !52
  br label %169

169:                                              ; preds = %164, %161
  %170 = phi ptr [ %168, %164 ], [ null, %161 ]
  %171 = getelementptr inbounds %struct.loop, ptr %155, i64 0, i32 7
  %172 = load ptr, ptr %171, align 8, !tbaa !71
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %172, align 8, !tbaa !75
  br label %176

176:                                              ; preds = %174, %169
  %177 = phi i32 [ %175, %174 ], [ 0, %169 ]
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = add i32 %177, -1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %172, i64 0, i32 2, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !52
  br label %184

184:                                              ; preds = %179, %176
  %185 = phi ptr [ %183, %179 ], [ null, %176 ]
  %186 = icmp eq ptr %170, %185
  br i1 %186, label %187, label %153, !prof !120, !llvm.loop !202

187:                                              ; preds = %184, %149
  %188 = phi ptr [ %151, %149 ], [ %170, %184 ]
  %189 = icmp eq ptr %83, %188
  br i1 %189, label %220, label %190, !prof !120

190:                                              ; preds = %187, %217
  %191 = phi ptr [ %193, %217 ], [ null, %187 ]
  %192 = phi ptr [ %218, %217 ], [ %83, %187 ]
  %193 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #23
  store ptr %72, ptr %193, align 8, !tbaa !203
  %194 = getelementptr inbounds %struct.loop, ptr %192, i64 0, i32 18
  %195 = load ptr, ptr %194, align 8, !tbaa !117
  %196 = getelementptr inbounds %struct.loop_exit, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !118
  %198 = getelementptr inbounds %struct.loop_exit, ptr %193, i64 0, i32 2
  store ptr %197, ptr %198, align 8, !tbaa !118
  %199 = getelementptr inbounds %struct.loop_exit, ptr %193, i64 0, i32 1
  store ptr %195, ptr %199, align 8, !tbaa !121
  %200 = getelementptr inbounds %struct.loop_exit, ptr %197, i64 0, i32 1
  store ptr %193, ptr %200, align 8, !tbaa !121
  %201 = load ptr, ptr %199, align 8, !tbaa !121
  %202 = getelementptr inbounds %struct.loop_exit, ptr %201, i64 0, i32 2
  store ptr %193, ptr %202, align 8, !tbaa !118
  %203 = getelementptr inbounds %struct.loop_exit, ptr %193, i64 0, i32 3
  store ptr %191, ptr %203, align 8, !tbaa !204
  %204 = getelementptr inbounds %struct.loop, ptr %192, i64 0, i32 7
  %205 = load ptr, ptr %204, align 8, !tbaa !71
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %190
  %208 = load i32, ptr %205, align 8, !tbaa !75
  br label %209

209:                                              ; preds = %207, %190
  %210 = phi i32 [ %208, %207 ], [ 0, %190 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = add i32 %210, -1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %205, i64 0, i32 2, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !52
  br label %217

217:                                              ; preds = %212, %209
  %218 = phi ptr [ %216, %212 ], [ null, %209 ]
  %219 = icmp eq ptr %218, %188
  br i1 %219, label %220, label %190, !prof !120, !llvm.loop !205

220:                                              ; preds = %217, %187, %118, %100, %85, %80
  %221 = phi ptr [ null, %118 ], [ null, %85 ], [ null, %80 ], [ null, %187 ], [ null, %100 ], [ %193, %217 ]
  %222 = icmp eq ptr %221, null
  br i1 %222, label %249, label %223, !prof !206

223:                                              ; preds = %220
  %224 = load ptr, ptr @cfun, align 8, !tbaa !52
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 4
  %226 = load ptr, ptr %225, align 8, !tbaa !100
  %227 = getelementptr inbounds %struct.loops, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !164
  %229 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !52
  %230 = tail call i32 %229(ptr noundef nonnull %72) #23, !prof !220
  %231 = tail call ptr @htab_find_slot_with_hash(ptr noundef %228, ptr noundef nonnull %72, i32 noundef %230, i32 noundef 1) #23
  %232 = icmp eq ptr %231, null
  br i1 %232, label %249, label %233, !prof !208

233:                                              ; preds = %223
  %234 = load ptr, ptr %231, align 8, !tbaa !52
  %235 = icmp eq ptr %234, null
  br i1 %235, label %248, label %236

236:                                              ; preds = %233, %236
  %237 = phi ptr [ %239, %236 ], [ %234, %233 ]
  %238 = getelementptr inbounds %struct.loop_exit, ptr %237, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !204
  %240 = getelementptr inbounds %struct.loop_exit, ptr %237, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !121
  %242 = getelementptr inbounds %struct.loop_exit, ptr %237, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !118
  %244 = getelementptr inbounds %struct.loop_exit, ptr %243, i64 0, i32 1
  store ptr %241, ptr %244, align 8, !tbaa !121
  %245 = load ptr, ptr %240, align 8, !tbaa !121
  %246 = getelementptr inbounds %struct.loop_exit, ptr %245, i64 0, i32 2
  store ptr %243, ptr %246, align 8, !tbaa !118
  tail call void @ggc_free(ptr noundef nonnull %237) #23
  %247 = icmp eq ptr %239, null
  br i1 %247, label %248, label %236, !llvm.loop !209

248:                                              ; preds = %236, %233
  store ptr %221, ptr %231, align 8, !tbaa !52
  br label %249

249:                                              ; preds = %73, %220, %223, %248
  %250 = load ptr, ptr %57, align 8, !tbaa !52
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252, !prof !221

252:                                              ; preds = %249
  %253 = load i32, ptr %250, align 8, !tbaa !82
  br label %254

254:                                              ; preds = %252, %249
  %255 = phi i32 [ %253, %252 ], [ 0, %249 ]
  %256 = icmp ult i32 %59, %255
  br i1 %256, label %258, label %257, !prof !222

257:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %258

258:                                              ; preds = %254, %257
  %259 = add i32 %59, 1
  br label %58, !llvm.loop !223

260:                                              ; preds = %46, %28, %5, %0
  ret void
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @loop_exit_hash(ptr nocapture noundef readonly %0) #10 !prof !51 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !52
  %3 = load ptr, ptr %0, align 8, !tbaa !203
  %4 = tail call i32 %2(ptr noundef %3) #23
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @loop_exit_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #17 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !203
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_recorded_exits(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %6, ptr noundef nonnull @dump_recorded_exit, ptr noundef %0) #23
  br label %9

9:                                                ; preds = %1, %8
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal noundef i32 @dump_recorded_exit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #18 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %3, %2 ], [ %10, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.loop_exit, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !224

12:                                               ; preds = %5
  %13 = load ptr, ptr %4, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !79
  %16 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !79
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %15, i32 noundef %19, i32 noundef %8)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @release_recorded_exits() local_unnamed_addr #12 !prof !225 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = load i32, ptr %3, align 8, !tbaa !194
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !214

7:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1133, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %0, %7
  %9 = load ptr, ptr @cfun, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.loops, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  tail call void @htab_delete(ptr noundef %13) #23
  %14 = load ptr, ptr @cfun, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !164
  %18 = icmp eq ptr %16, null
  br i1 %18, label %22, label %19, !prof !214

19:                                               ; preds = %8
  %20 = load i32, ptr %16, align 8, !tbaa !194
  %21 = and i32 %20, -9
  store i32 %21, ptr %16, align 8, !tbaa !194
  br label %22

22:                                               ; preds = %8, %19
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_loop_exit_edges(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @cfun, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = load i32, ptr %14, align 8, !tbaa !194
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  %21 = getelementptr inbounds %struct.loop_exit, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = load ptr, ptr %22, align 8, !tbaa !203
  %24 = icmp eq ptr %23, null
  br i1 %24, label %113, label %25

25:                                               ; preds = %18, %37
  %26 = phi ptr [ %45, %37 ], [ %23, %18 ]
  %27 = phi ptr [ %44, %37 ], [ %22, %18 ]
  %28 = phi ptr [ %38, %37 ], [ null, %18 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %28, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !89
  %33 = load i32, ptr %28, align 8, !tbaa !82
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25, %30
  %36 = tail call ptr @vec_heap_p_reserve(ptr noundef %28, i32 noundef 1) #23
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %36, %35 ], [ %28, %30 ]
  %39 = load i32, ptr %38, align 8, !tbaa !82
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !82
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 %41
  store ptr %26, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.loop_exit, ptr %27, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  %45 = load ptr, ptr %44, align 8, !tbaa !203
  %46 = icmp eq ptr %45, null
  br i1 %46, label %113, label %25, !llvm.loop !226

47:                                               ; preds = %11
  %48 = tail call ptr @get_loop_body(ptr noundef %0)
  %49 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !87
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %111, label %52

52:                                               ; preds = %47, %106
  %53 = phi i64 [ %107, %106 ], [ 0, %47 ]
  %54 = phi ptr [ %59, %106 ], [ null, %47 ]
  %55 = getelementptr inbounds ptr, ptr %48, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 1
  br label %58

58:                                               ; preds = %104, %52
  %59 = phi ptr [ %54, %52 ], [ %95, %104 ]
  %60 = phi i32 [ 0, %52 ], [ %105, %104 ]
  %61 = load ptr, ptr %57, align 8, !tbaa !52
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %61, align 8, !tbaa !82
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %64, %63 ], [ 0, %58 ]
  %67 = icmp eq i32 %66, %60
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = zext i32 %60 to i64
  %70 = getelementptr inbounds %struct.VEC_edge_base, ptr %61, i64 0, i32 2, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  br label %72

72:                                               ; preds = %65, %68
  %73 = phi ptr [ %71, %68 ], [ null, %65 ]
  br i1 %67, label %106, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !113
  %77 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %76), !range !161
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = icmp eq ptr %59, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !89
  %84 = load i32, ptr %59, align 8, !tbaa !82
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %81
  %87 = tail call ptr @vec_heap_p_reserve(ptr noundef %59, i32 noundef 1) #23
  br label %88

88:                                               ; preds = %81, %86
  %89 = phi ptr [ %87, %86 ], [ %59, %81 ]
  %90 = load i32, ptr %89, align 8, !tbaa !82
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !82
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds %struct.VEC_edge_base, ptr %89, i64 0, i32 2, i64 %92
  store ptr %73, ptr %93, align 8, !tbaa !52
  br label %94

94:                                               ; preds = %88, %74
  %95 = phi ptr [ %89, %88 ], [ %59, %74 ]
  %96 = load ptr, ptr %57, align 8, !tbaa !52
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %96, align 8, !tbaa !82
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ 0, %94 ]
  %102 = icmp ult i32 %60, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %104

104:                                              ; preds = %100, %103
  %105 = add i32 %60, 1
  br label %58, !llvm.loop !227

106:                                              ; preds = %72
  %107 = add nuw nsw i64 %53, 1
  %108 = load i32, ptr %49, align 4, !tbaa !87
  %109 = zext i32 %108 to i64
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %52, label %111, !llvm.loop !228

111:                                              ; preds = %106, %47
  %112 = phi ptr [ null, %47 ], [ %59, %106 ]
  tail call void @free(ptr noundef %48)
  br label %113

113:                                              ; preds = %37, %18, %111
  %114 = phi ptr [ %112, %111 ], [ null, %18 ], [ %38, %37 ]
  ret ptr %114
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @num_loop_branches(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1183, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %1, %10
  %12 = tail call ptr @get_loop_body(ptr noundef %0)
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !87
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = zext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %28
  %19 = phi i64 [ 0, %16 ], [ %33, %28 ]
  %20 = phi i32 [ 0, %16 ], [ %32, %28 ]
  %21 = getelementptr inbounds ptr, ptr %12, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !229
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %24, align 8, !tbaa !82
  br label %28

28:                                               ; preds = %18, %26
  %29 = phi i32 [ %27, %26 ], [ 0, %18 ]
  %30 = icmp ugt i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = add i32 %20, %31
  %33 = add nuw nsw i64 %19, 1
  %34 = icmp eq i64 %33, %17
  br i1 %34, label %35, label %18, !llvm.loop !230

35:                                               ; preds = %28, %11
  %36 = phi i32 [ 0, %11 ], [ %32, %28 ]
  tail call void @free(ptr noundef %12)
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local void @add_bb_to_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !231 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !232

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  store ptr %1, ptr %3, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !232

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 %14, ptr %15, align 4, !tbaa !129
  %16 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !87
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !87
  br label %19

19:                                               ; preds = %31, %13
  %20 = phi i32 [ 0, %13 ], [ %35, %31 ]
  br i1 %10, label %28, label %21, !prof !232

21:                                               ; preds = %19
  %22 = load i32, ptr %9, align 8, !tbaa !75
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %9, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  br label %28

28:                                               ; preds = %19, %21, %24
  %29 = phi ptr [ %27, %24 ], [ null, %21 ], [ null, %19 ]
  %30 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %19 ]
  br i1 %30, label %36, label %31, !prof !232

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !87
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !87
  %35 = add i32 %20, 1
  br label %19, !llvm.loop !233

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %38

38:                                               ; preds = %64, %36
  %39 = phi i32 [ 0, %36 ], [ %65, %64 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !52
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !234

42:                                               ; preds = %38
  %43 = load i32, ptr %40, align 8, !tbaa !82
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %43, %42 ], [ 0, %38 ]
  %46 = icmp eq i32 %45, %39
  br i1 %46, label %51, label %47, !prof !235

47:                                               ; preds = %44
  %48 = zext i32 %39 to i64
  %49 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi ptr [ %50, %47 ], [ null, %44 ]
  br i1 %46, label %53, label %55, !prof !235

53:                                               ; preds = %51
  %54 = icmp eq ptr %0, null
  br label %66

55:                                               ; preds = %51
  tail call void @rescan_loop_exit(ptr noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %56 = load ptr, ptr %37, align 8, !tbaa !52
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !236

58:                                               ; preds = %55
  %59 = load i32, ptr %56, align 8, !tbaa !82
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ 0, %55 ]
  %62 = icmp ult i32 %39, %61
  br i1 %62, label %64, label %63, !prof !237

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %64

64:                                               ; preds = %60, %63
  %65 = add i32 %39, 1
  br label %38, !llvm.loop !238

66:                                               ; preds = %53, %92
  %67 = phi i32 [ %93, %92 ], [ 0, %53 ]
  br i1 %54, label %68, label %69, !prof !239

68:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %69

69:                                               ; preds = %68, %66
  %70 = load ptr, ptr %0, align 8, !tbaa !52
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !240

72:                                               ; preds = %69
  %73 = load i32, ptr %70, align 8, !tbaa !82
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %73, %72 ], [ 0, %69 ]
  %76 = icmp eq i32 %75, %67
  br i1 %76, label %81, label %77, !prof !241

77:                                               ; preds = %74
  %78 = zext i32 %67 to i64
  %79 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  br label %81

81:                                               ; preds = %74, %77
  %82 = phi ptr [ %80, %77 ], [ null, %74 ]
  br i1 %76, label %94, label %83, !prof !241

83:                                               ; preds = %81
  tail call void @rescan_loop_exit(ptr noundef %82, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %84 = load ptr, ptr %0, align 8, !tbaa !52
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !242

86:                                               ; preds = %83
  %87 = load i32, ptr %84, align 8, !tbaa !82
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i32 [ %87, %86 ], [ 0, %83 ]
  %90 = icmp ult i32 %67, %89
  br i1 %90, label %92, label %91, !prof !243

91:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %92

92:                                               ; preds = %88, %91
  %93 = add i32 %67, 1
  br label %66, !llvm.loop !244

94:                                               ; preds = %81
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_bb_from_loops(ptr noundef %0) local_unnamed_addr #15 !prof !245 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !246

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !87
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4, !tbaa !87
  %10 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br label %13

13:                                               ; preds = %25, %6
  %14 = phi i64 [ %29, %25 ], [ 0, %6 ]
  br i1 %12, label %22, label %15, !prof !247

15:                                               ; preds = %13
  %16 = load i32, ptr %11, align 8, !tbaa !75
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %14
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %13, %15, %19
  %23 = phi ptr [ %21, %19 ], [ null, %15 ], [ null, %13 ]
  %24 = phi i1 [ false, %19 ], [ true, %15 ], [ true, %13 ]
  br i1 %24, label %30, label %25, !prof !247

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !87
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !87
  %29 = add nuw i64 %14, 1
  br label %13, !llvm.loop !248

30:                                               ; preds = %22
  store ptr null, ptr %2, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 0, ptr %31, align 4, !tbaa !129
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %33

33:                                               ; preds = %59, %30
  %34 = phi i32 [ 0, %30 ], [ %60, %59 ]
  %35 = load ptr, ptr %32, align 8, !tbaa !52
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !246

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !82
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ 0, %33 ]
  %41 = icmp eq i32 %40, %34
  br i1 %41, label %46, label %42, !prof !247

42:                                               ; preds = %39
  %43 = zext i32 %34 to i64
  %44 = getelementptr inbounds %struct.VEC_edge_base, ptr %35, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  br label %46

46:                                               ; preds = %39, %42
  %47 = phi ptr [ %45, %42 ], [ null, %39 ]
  br i1 %41, label %48, label %50, !prof !247

48:                                               ; preds = %46
  %49 = icmp eq ptr %0, null
  br label %61

50:                                               ; preds = %46
  tail call void @rescan_loop_exit(ptr noundef %47, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %51 = load ptr, ptr %32, align 8, !tbaa !52
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %51, align 8, !tbaa !82
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %54, %53 ], [ 0, %50 ]
  %57 = icmp ult i32 %34, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %59

59:                                               ; preds = %55, %58
  %60 = add i32 %34, 1
  br label %33, !llvm.loop !249

61:                                               ; preds = %48, %87
  %62 = phi i32 [ %88, %87 ], [ 0, %48 ]
  br i1 %49, label %63, label %64, !prof !246

63:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %64

64:                                               ; preds = %63, %61
  %65 = load ptr, ptr %0, align 8, !tbaa !52
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !246

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 8, !tbaa !82
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %68, %67 ], [ 0, %64 ]
  %71 = icmp eq i32 %70, %62
  br i1 %71, label %76, label %72, !prof !247

72:                                               ; preds = %69
  %73 = zext i32 %62 to i64
  %74 = getelementptr inbounds %struct.VEC_edge_base, ptr %65, i64 0, i32 2, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  br label %76

76:                                               ; preds = %69, %72
  %77 = phi ptr [ %75, %72 ], [ null, %69 ]
  br i1 %71, label %89, label %78, !prof !247

78:                                               ; preds = %76
  tail call void @rescan_loop_exit(ptr noundef %77, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %79 = load ptr, ptr %0, align 8, !tbaa !52
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %79, align 8, !tbaa !82
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i32 [ %82, %81 ], [ 0, %78 ]
  %85 = icmp ult i32 %62, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %87

87:                                               ; preds = %83, %86
  %88 = add i32 %62, 1
  br label %61, !llvm.loop !250

89:                                               ; preds = %76
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @delete_loop(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  tail call void @flow_loop_tree_node_remove(ptr noundef %0)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = load i32, ptr %0, align 8, !tbaa !78
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %6, i64 0, i32 2, i64 %8
  store ptr null, ptr %9, align 8, !tbaa !52
  tail call void @flow_loop_free(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cancel_loop_tree(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @cancel_loop_tree(ptr noundef nonnull %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !107
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !251

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !75
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi ptr [ %22, %18 ], [ null, %15 ]
  %25 = tail call ptr @get_loop_body(ptr noundef %0)
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !87
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = zext i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %36, %31 ]
  %33 = getelementptr inbounds ptr, ptr %25, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 3
  store ptr %24, ptr %35, align 8, !tbaa !128
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %38, label %31, !llvm.loop !252

38:                                               ; preds = %31, %23
  tail call void @flow_loop_tree_node_remove(ptr noundef %0)
  %39 = load ptr, ptr @cfun, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = getelementptr inbounds %struct.loops, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = load i32, ptr %0, align 8, !tbaa !78
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %43, i64 0, i32 2, i64 %45
  store ptr null, ptr %46, align 8, !tbaa !52
  tail call void @flow_loop_free(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_loop_structure() local_unnamed_addr #10 !prof !51 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !75
  br label %11

11:                                               ; preds = %0, %5, %9
  %12 = phi i32 [ 0, %0 ], [ %10, %9 ], [ 0, %5 ]
  %13 = zext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 4) #23
  store i32 2, ptr %14, align 4, !tbaa !67
  %15 = load ptr, ptr @cfun, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %56, label %28

24:                                               ; preds = %53, %28
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %56, label %28, !llvm.loop !253

28:                                               ; preds = %11, %24
  %29 = phi ptr [ %26, %24 ], [ %22, %11 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  %32 = icmp eq ptr %31, null
  br i1 %32, label %24, label %33

33:                                               ; preds = %28, %53
  %34 = phi ptr [ %54, %53 ], [ %31, %28 ]
  %35 = load i32, ptr %34, align 8, !tbaa !78
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %14, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !67
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !67
  %40 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i32, ptr %41, align 8, !tbaa !75
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i32 [ %44, %43 ], [ 0, %33 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = add i32 %46, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %41, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  br label %53

53:                                               ; preds = %45, %48
  %54 = phi ptr [ %52, %48 ], [ null, %45 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %24, label %33, !llvm.loop !254

56:                                               ; preds = %24, %11
  %57 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !100
  %59 = icmp eq ptr %58, null
  br i1 %59, label %135, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.loops, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !102
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %62, align 8, !tbaa !75
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %65, %64 ], [ 0, %60 ]
  %68 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %67, i64 noundef 8, i64 noundef 4) #23
  %69 = load ptr, ptr @cfun, align 8, !tbaa !52
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !100
  %72 = getelementptr inbounds %struct.loops, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !104
  br label %74

74:                                               ; preds = %87, %66
  %75 = phi ptr [ %73, %66 ], [ %88, %87 ]
  %76 = load i32, ptr %75, align 8, !tbaa !78
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %68, align 4, !tbaa !105
  %80 = add i32 %79, 1
  store i32 %80, ptr %68, align 4, !tbaa !105
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds %struct.VEC_int_base, ptr %68, i64 0, i32 2, i64 %81
  store i32 %76, ptr %82, align 4, !tbaa !67
  br label %83

83:                                               ; preds = %78, %74
  %84 = getelementptr inbounds %struct.loop, ptr %75, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !107
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %92, %83
  %88 = phi ptr [ %85, %83 ], [ %95, %92 ]
  br label %74, !llvm.loop !108

89:                                               ; preds = %111
  %90 = icmp eq ptr %68, null
  %91 = getelementptr inbounds %struct.loops, ptr %71, i64 0, i32 1
  br label %114

92:                                               ; preds = %83, %111
  %93 = phi ptr [ %112, %111 ], [ %75, %83 ]
  %94 = getelementptr inbounds %struct.loop, ptr %93, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !109
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %87, !llvm.loop !108

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.loop, ptr %93, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !71
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %99, align 8, !tbaa !75
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %102, %101 ], [ 0, %97 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = add i32 %104, -1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %99, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  br label %111

111:                                              ; preds = %106, %103
  %112 = phi ptr [ %110, %106 ], [ null, %103 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %89, label %92, !llvm.loop !110

114:                                              ; preds = %89, %126
  %115 = phi i32 [ %127, %126 ], [ 0, %89 ]
  br i1 %90, label %123, label %116

116:                                              ; preds = %114
  %117 = load i32, ptr %68, align 4, !tbaa !105
  %118 = icmp ugt i32 %117, %115
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = zext i32 %115 to i64
  %121 = getelementptr inbounds %struct.VEC_int_base, ptr %68, i64 0, i32 2, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !67
  br label %123

123:                                              ; preds = %119, %116, %114
  %124 = phi i32 [ %122, %119 ], [ 0, %116 ], [ 0, %114 ]
  %125 = phi i1 [ false, %119 ], [ true, %116 ], [ true, %114 ]
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = add i32 %115, 1
  %128 = load ptr, ptr %91, align 8, !tbaa !102
  %129 = zext i32 %124 to i64
  %130 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %128, i64 0, i32 2, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !52
  %132 = icmp eq ptr %131, null
  br i1 %132, label %114, label %135, !llvm.loop !111

133:                                              ; preds = %123
  br i1 %90, label %135, label %134

134:                                              ; preds = %133
  tail call void @free(ptr noundef %68)
  br label %135

135:                                              ; preds = %126, %133, %134, %56
  %136 = phi ptr [ null, %56 ], [ null, %134 ], [ null, %133 ], [ %68, %126 ]
  %137 = phi i32 [ 0, %56 ], [ %115, %134 ], [ %115, %133 ], [ %127, %126 ]
  %138 = phi ptr [ null, %56 ], [ null, %134 ], [ null, %133 ], [ %131, %126 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %186, label %140

140:                                              ; preds = %135, %181
  %141 = phi i32 [ %154, %181 ], [ 0, %135 ]
  %142 = phi ptr [ %184, %181 ], [ %138, %135 ]
  %143 = phi i32 [ %183, %181 ], [ %137, %135 ]
  %144 = phi ptr [ %182, %181 ], [ %136, %135 ]
  %145 = load i32, ptr %142, align 8, !tbaa !78
  %146 = getelementptr inbounds %struct.loop, ptr %142, i64 0, i32 6
  %147 = load i32, ptr %146, align 4, !tbaa !87
  %148 = zext i32 %145 to i64
  %149 = getelementptr inbounds i32, ptr %14, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !67
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %153, label %152

152:                                              ; preds = %140
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %145, i32 noundef %150, i32 noundef %147) #23
  br label %153

153:                                              ; preds = %140, %152
  %154 = phi i32 [ 1, %152 ], [ %141, %140 ]
  %155 = icmp eq ptr %144, null
  %156 = load ptr, ptr @cfun, align 8
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 4
  br label %158

158:                                              ; preds = %170, %153
  %159 = phi i32 [ %143, %153 ], [ %171, %170 ]
  br i1 %155, label %167, label %160

160:                                              ; preds = %158
  %161 = load i32, ptr %144, align 4, !tbaa !105
  %162 = icmp ugt i32 %161, %159
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = zext i32 %159 to i64
  %165 = getelementptr inbounds %struct.VEC_int_base, ptr %144, i64 0, i32 2, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !67
  br label %167

167:                                              ; preds = %163, %160, %158
  %168 = phi i32 [ %166, %163 ], [ 0, %160 ], [ 0, %158 ]
  %169 = phi i1 [ false, %163 ], [ true, %160 ], [ true, %158 ]
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = add i32 %159, 1
  %172 = load ptr, ptr %157, align 8, !tbaa !100
  %173 = getelementptr inbounds %struct.loops, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !102
  %175 = zext i32 %168 to i64
  %176 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %174, i64 0, i32 2, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !52
  %178 = icmp eq ptr %177, null
  br i1 %178, label %158, label %181, !llvm.loop !111

179:                                              ; preds = %167
  br i1 %155, label %181, label %180

180:                                              ; preds = %179
  tail call void @free(ptr noundef %144)
  br label %181

181:                                              ; preds = %170, %179, %180
  %182 = phi ptr [ null, %180 ], [ null, %179 ], [ %144, %170 ]
  %183 = phi i32 [ %159, %180 ], [ %159, %179 ], [ %171, %170 ]
  %184 = phi ptr [ null, %180 ], [ null, %179 ], [ %177, %170 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %140, !llvm.loop !255

186:                                              ; preds = %181, %135
  %187 = phi i32 [ 0, %135 ], [ %154, %181 ]
  %188 = load ptr, ptr @cfun, align 8, !tbaa !52
  %189 = getelementptr inbounds %struct.function, ptr %188, i64 0, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !100
  %191 = icmp eq ptr %190, null
  br i1 %191, label %267, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.loops, ptr %190, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !102
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr %194, align 8, !tbaa !75
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi i32 [ %197, %196 ], [ 0, %192 ]
  %200 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %199, i64 noundef 8, i64 noundef 4) #23
  %201 = load ptr, ptr @cfun, align 8, !tbaa !52
  %202 = getelementptr inbounds %struct.function, ptr %201, i64 0, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !100
  %204 = getelementptr inbounds %struct.loops, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !104
  br label %206

206:                                              ; preds = %219, %198
  %207 = phi ptr [ %205, %198 ], [ %220, %219 ]
  %208 = load i32, ptr %207, align 8, !tbaa !78
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %215, label %210

210:                                              ; preds = %206
  %211 = load i32, ptr %200, align 4, !tbaa !105
  %212 = add i32 %211, 1
  store i32 %212, ptr %200, align 4, !tbaa !105
  %213 = zext i32 %211 to i64
  %214 = getelementptr inbounds %struct.VEC_int_base, ptr %200, i64 0, i32 2, i64 %213
  store i32 %208, ptr %214, align 4, !tbaa !67
  br label %215

215:                                              ; preds = %210, %206
  %216 = getelementptr inbounds %struct.loop, ptr %207, i64 0, i32 8
  %217 = load ptr, ptr %216, align 8, !tbaa !107
  %218 = icmp eq ptr %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %224, %215
  %220 = phi ptr [ %217, %215 ], [ %227, %224 ]
  br label %206, !llvm.loop !108

221:                                              ; preds = %243
  %222 = icmp eq ptr %200, null
  %223 = getelementptr inbounds %struct.loops, ptr %203, i64 0, i32 1
  br label %246

224:                                              ; preds = %215, %243
  %225 = phi ptr [ %244, %243 ], [ %207, %215 ]
  %226 = getelementptr inbounds %struct.loop, ptr %225, i64 0, i32 9
  %227 = load ptr, ptr %226, align 8, !tbaa !109
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %219, !llvm.loop !108

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.loop, ptr %225, i64 0, i32 7
  %231 = load ptr, ptr %230, align 8, !tbaa !71
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %231, align 8, !tbaa !75
  br label %235

235:                                              ; preds = %233, %229
  %236 = phi i32 [ %234, %233 ], [ 0, %229 ]
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = add i32 %236, -1
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %231, i64 0, i32 2, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !52
  br label %243

243:                                              ; preds = %238, %235
  %244 = phi ptr [ %242, %238 ], [ null, %235 ]
  %245 = icmp eq ptr %244, null
  br i1 %245, label %221, label %224, !llvm.loop !110

246:                                              ; preds = %221, %258
  %247 = phi i32 [ %259, %258 ], [ 0, %221 ]
  br i1 %222, label %255, label %248

248:                                              ; preds = %246
  %249 = load i32, ptr %200, align 4, !tbaa !105
  %250 = icmp ugt i32 %249, %247
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = zext i32 %247 to i64
  %253 = getelementptr inbounds %struct.VEC_int_base, ptr %200, i64 0, i32 2, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !67
  br label %255

255:                                              ; preds = %251, %248, %246
  %256 = phi i32 [ %254, %251 ], [ 0, %248 ], [ 0, %246 ]
  %257 = phi i1 [ false, %251 ], [ true, %248 ], [ true, %246 ]
  br i1 %257, label %265, label %258

258:                                              ; preds = %255
  %259 = add i32 %247, 1
  %260 = load ptr, ptr %223, align 8, !tbaa !102
  %261 = zext i32 %256 to i64
  %262 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %260, i64 0, i32 2, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !52
  %264 = icmp eq ptr %263, null
  br i1 %264, label %246, label %267, !llvm.loop !111

265:                                              ; preds = %255
  br i1 %222, label %267, label %266

266:                                              ; preds = %265
  tail call void @free(ptr noundef %200)
  br label %267

267:                                              ; preds = %258, %265, %266, %186
  %268 = phi ptr [ null, %186 ], [ null, %266 ], [ null, %265 ], [ %200, %258 ]
  %269 = phi i32 [ 0, %186 ], [ %247, %266 ], [ %247, %265 ], [ %259, %258 ]
  %270 = phi ptr [ null, %186 ], [ null, %266 ], [ null, %265 ], [ %263, %258 ]
  %271 = icmp eq ptr %270, null
  br i1 %271, label %331, label %272

272:                                              ; preds = %267, %326
  %273 = phi i32 [ %299, %326 ], [ %187, %267 ]
  %274 = phi ptr [ %329, %326 ], [ %270, %267 ]
  %275 = phi i32 [ %328, %326 ], [ %269, %267 ]
  %276 = phi ptr [ %327, %326 ], [ %268, %267 ]
  %277 = tail call ptr @get_loop_body(ptr noundef nonnull %274)
  %278 = getelementptr inbounds %struct.loop, ptr %274, i64 0, i32 6
  %279 = load i32, ptr %278, align 4, !tbaa !87
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %298, label %281

281:                                              ; preds = %272, %292
  %282 = phi i64 [ %294, %292 ], [ 0, %272 ]
  %283 = phi i32 [ %293, %292 ], [ %273, %272 ]
  %284 = getelementptr inbounds ptr, ptr %277, i64 %282
  %285 = load ptr, ptr %284, align 8, !tbaa !52
  %286 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %274, ptr noundef %285), !range !161
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %285, i64 0, i32 9
  %290 = load i32, ptr %289, align 8, !tbaa !79
  %291 = load i32, ptr %274, align 8, !tbaa !78
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12, i32 noundef %290, i32 noundef %291) #23
  br label %292

292:                                              ; preds = %281, %288
  %293 = phi i32 [ %283, %281 ], [ 1, %288 ]
  %294 = add nuw nsw i64 %282, 1
  %295 = load i32, ptr %278, align 4, !tbaa !87
  %296 = zext i32 %295 to i64
  %297 = icmp ult i64 %294, %296
  br i1 %297, label %281, label %298, !llvm.loop !256

298:                                              ; preds = %292, %272
  %299 = phi i32 [ %273, %272 ], [ %293, %292 ]
  tail call void @free(ptr noundef %277)
  %300 = icmp eq ptr %276, null
  %301 = load ptr, ptr @cfun, align 8
  %302 = getelementptr inbounds %struct.function, ptr %301, i64 0, i32 4
  br label %303

303:                                              ; preds = %315, %298
  %304 = phi i32 [ %275, %298 ], [ %316, %315 ]
  br i1 %300, label %312, label %305

305:                                              ; preds = %303
  %306 = load i32, ptr %276, align 4, !tbaa !105
  %307 = icmp ugt i32 %306, %304
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = zext i32 %304 to i64
  %310 = getelementptr inbounds %struct.VEC_int_base, ptr %276, i64 0, i32 2, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !67
  br label %312

312:                                              ; preds = %308, %305, %303
  %313 = phi i32 [ %311, %308 ], [ 0, %305 ], [ 0, %303 ]
  %314 = phi i1 [ false, %308 ], [ true, %305 ], [ true, %303 ]
  br i1 %314, label %324, label %315

315:                                              ; preds = %312
  %316 = add i32 %304, 1
  %317 = load ptr, ptr %302, align 8, !tbaa !100
  %318 = getelementptr inbounds %struct.loops, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !102
  %320 = zext i32 %313 to i64
  %321 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %319, i64 0, i32 2, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !52
  %323 = icmp eq ptr %322, null
  br i1 %323, label %303, label %326, !llvm.loop !111

324:                                              ; preds = %312
  br i1 %300, label %326, label %325

325:                                              ; preds = %324
  tail call void @free(ptr noundef %276)
  br label %326

326:                                              ; preds = %315, %324, %325
  %327 = phi ptr [ null, %325 ], [ null, %324 ], [ %276, %315 ]
  %328 = phi i32 [ %304, %325 ], [ %304, %324 ], [ %316, %315 ]
  %329 = phi ptr [ null, %325 ], [ null, %324 ], [ %322, %315 ]
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %272, !llvm.loop !257

331:                                              ; preds = %326, %267
  %332 = phi i32 [ %187, %267 ], [ %299, %326 ]
  %333 = load ptr, ptr @cfun, align 8, !tbaa !52
  %334 = getelementptr inbounds %struct.function, ptr %333, i64 0, i32 4
  %335 = load ptr, ptr %334, align 8, !tbaa !100
  %336 = icmp eq ptr %335, null
  br i1 %336, label %412, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.loops, ptr %335, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !102
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %337
  %342 = load i32, ptr %339, align 8, !tbaa !75
  br label %343

343:                                              ; preds = %341, %337
  %344 = phi i32 [ %342, %341 ], [ 0, %337 ]
  %345 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %344, i64 noundef 8, i64 noundef 4) #23
  %346 = load ptr, ptr @cfun, align 8, !tbaa !52
  %347 = getelementptr inbounds %struct.function, ptr %346, i64 0, i32 4
  %348 = load ptr, ptr %347, align 8, !tbaa !100
  %349 = getelementptr inbounds %struct.loops, ptr %348, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !104
  br label %351

351:                                              ; preds = %364, %343
  %352 = phi ptr [ %350, %343 ], [ %365, %364 ]
  %353 = load i32, ptr %352, align 8, !tbaa !78
  %354 = icmp slt i32 %353, 1
  br i1 %354, label %360, label %355

355:                                              ; preds = %351
  %356 = load i32, ptr %345, align 4, !tbaa !105
  %357 = add i32 %356, 1
  store i32 %357, ptr %345, align 4, !tbaa !105
  %358 = zext i32 %356 to i64
  %359 = getelementptr inbounds %struct.VEC_int_base, ptr %345, i64 0, i32 2, i64 %358
  store i32 %353, ptr %359, align 4, !tbaa !67
  br label %360

360:                                              ; preds = %355, %351
  %361 = getelementptr inbounds %struct.loop, ptr %352, i64 0, i32 8
  %362 = load ptr, ptr %361, align 8, !tbaa !107
  %363 = icmp eq ptr %362, null
  br i1 %363, label %369, label %364

364:                                              ; preds = %369, %360
  %365 = phi ptr [ %362, %360 ], [ %372, %369 ]
  br label %351, !llvm.loop !108

366:                                              ; preds = %388
  %367 = icmp eq ptr %345, null
  %368 = getelementptr inbounds %struct.loops, ptr %348, i64 0, i32 1
  br label %391

369:                                              ; preds = %360, %388
  %370 = phi ptr [ %389, %388 ], [ %352, %360 ]
  %371 = getelementptr inbounds %struct.loop, ptr %370, i64 0, i32 9
  %372 = load ptr, ptr %371, align 8, !tbaa !109
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %364, !llvm.loop !108

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.loop, ptr %370, i64 0, i32 7
  %376 = load ptr, ptr %375, align 8, !tbaa !71
  %377 = icmp eq ptr %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %374
  %379 = load i32, ptr %376, align 8, !tbaa !75
  br label %380

380:                                              ; preds = %378, %374
  %381 = phi i32 [ %379, %378 ], [ 0, %374 ]
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %380
  %384 = add i32 %381, -1
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %376, i64 0, i32 2, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !52
  br label %388

388:                                              ; preds = %383, %380
  %389 = phi ptr [ %387, %383 ], [ null, %380 ]
  %390 = icmp eq ptr %389, null
  br i1 %390, label %366, label %369, !llvm.loop !110

391:                                              ; preds = %366, %403
  %392 = phi i32 [ %404, %403 ], [ 0, %366 ]
  br i1 %367, label %400, label %393

393:                                              ; preds = %391
  %394 = load i32, ptr %345, align 4, !tbaa !105
  %395 = icmp ugt i32 %394, %392
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = zext i32 %392 to i64
  %398 = getelementptr inbounds %struct.VEC_int_base, ptr %345, i64 0, i32 2, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !67
  br label %400

400:                                              ; preds = %396, %393, %391
  %401 = phi i32 [ %399, %396 ], [ 0, %393 ], [ 0, %391 ]
  %402 = phi i1 [ false, %396 ], [ true, %393 ], [ true, %391 ]
  br i1 %402, label %410, label %403

403:                                              ; preds = %400
  %404 = add i32 %392, 1
  %405 = load ptr, ptr %368, align 8, !tbaa !102
  %406 = zext i32 %401 to i64
  %407 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %405, i64 0, i32 2, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !52
  %409 = icmp eq ptr %408, null
  br i1 %409, label %391, label %412, !llvm.loop !111

410:                                              ; preds = %400
  br i1 %367, label %412, label %411

411:                                              ; preds = %410
  tail call void @free(ptr noundef %345)
  br label %412

412:                                              ; preds = %403, %410, %411, %331
  %413 = phi ptr [ null, %331 ], [ null, %411 ], [ null, %410 ], [ %345, %403 ]
  %414 = phi i32 [ 0, %331 ], [ %392, %411 ], [ %392, %410 ], [ %404, %403 ]
  %415 = phi ptr [ null, %331 ], [ null, %411 ], [ null, %410 ], [ %408, %403 ]
  %416 = icmp eq ptr %415, null
  br i1 %416, label %548, label %417

417:                                              ; preds = %412, %543
  %418 = phi i32 [ %516, %543 ], [ %332, %412 ]
  %419 = phi ptr [ %546, %543 ], [ %415, %412 ]
  %420 = phi i32 [ %545, %543 ], [ %414, %412 ]
  %421 = phi ptr [ %544, %543 ], [ %413, %412 ]
  %422 = load i32, ptr %419, align 8, !tbaa !78
  %423 = load ptr, ptr @cfun, align 8, !tbaa !52
  %424 = getelementptr inbounds %struct.function, ptr %423, i64 0, i32 4
  %425 = load ptr, ptr %424, align 8, !tbaa !100
  %426 = load i32, ptr %425, align 8, !tbaa !194
  %427 = and i32 %426, 1
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %440, label %429

429:                                              ; preds = %417
  %430 = getelementptr inbounds %struct.loop, ptr %419, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !77
  %432 = load ptr, ptr %431, align 8, !tbaa !258
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %429
  %435 = load i32, ptr %432, align 8, !tbaa !82
  br label %436

436:                                              ; preds = %429, %434
  %437 = phi i32 [ %435, %434 ], [ 0, %429 ]
  %438 = icmp eq i32 %437, 2
  br i1 %438, label %440, label %439

439:                                              ; preds = %436
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.13, i32 noundef %422) #23
  br label %440

440:                                              ; preds = %439, %436, %417
  %441 = phi i32 [ 1, %439 ], [ %418, %436 ], [ %418, %417 ]
  %442 = load ptr, ptr @cfun, align 8, !tbaa !52
  %443 = getelementptr inbounds %struct.function, ptr %442, i64 0, i32 4
  %444 = load ptr, ptr %443, align 8, !tbaa !100
  %445 = load i32, ptr %444, align 8, !tbaa !194
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %489, label %448

448:                                              ; preds = %440
  %449 = getelementptr inbounds %struct.loop, ptr %419, i64 0, i32 3
  %450 = load ptr, ptr %449, align 8, !tbaa !81
  %451 = getelementptr inbounds %struct.basic_block_def, ptr %450, i64 0, i32 1
  %452 = load ptr, ptr %451, align 8, !tbaa !229
  %453 = icmp eq ptr %452, null
  br i1 %453, label %458, label %454

454:                                              ; preds = %448
  %455 = load i32, ptr %452, align 8, !tbaa !82
  %456 = icmp eq i32 %455, 1
  %457 = zext i1 %456 to i8
  br label %458

458:                                              ; preds = %448, %454
  %459 = phi i8 [ %457, %454 ], [ 0, %448 ]
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.14, i32 noundef %422) #23
  br label %462

462:                                              ; preds = %461, %458
  %463 = phi i32 [ %441, %458 ], [ 1, %461 ]
  %464 = load ptr, ptr %449, align 8, !tbaa !81
  %465 = getelementptr inbounds %struct.basic_block_def, ptr %464, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !229
  %467 = icmp eq ptr %466, null
  br i1 %467, label %471, label %468

468:                                              ; preds = %462
  %469 = load i32, ptr %466, align 8, !tbaa !82
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %472, label %471

471:                                              ; preds = %468, %462
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %472

472:                                              ; preds = %468, %471
  %473 = load ptr, ptr %465, align 8, !tbaa !229
  %474 = getelementptr inbounds %struct.VEC_edge_base, ptr %473, i64 0, i32 2, i64 0
  %475 = load ptr, ptr %474, align 8, !tbaa !52
  %476 = getelementptr inbounds %struct.edge_def, ptr %475, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !113
  %478 = getelementptr inbounds %struct.loop, ptr %419, i64 0, i32 2
  %479 = load ptr, ptr %478, align 8, !tbaa !77
  %480 = icmp eq ptr %477, %479
  br i1 %480, label %482, label %481

481:                                              ; preds = %472
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %422) #23
  br label %482

482:                                              ; preds = %481, %472
  %483 = phi i32 [ 1, %481 ], [ %463, %472 ]
  %484 = load ptr, ptr %449, align 8, !tbaa !81
  %485 = getelementptr inbounds %struct.basic_block_def, ptr %484, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !128
  %487 = icmp eq ptr %486, %419
  br i1 %487, label %489, label %488

488:                                              ; preds = %482
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %422) #23
  br label %489

489:                                              ; preds = %482, %488, %440
  %490 = phi i32 [ 1, %488 ], [ %483, %482 ], [ %441, %440 ]
  %491 = getelementptr inbounds %struct.loop, ptr %419, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !77
  %493 = getelementptr inbounds %struct.basic_block_def, ptr %492, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !128
  %495 = icmp eq ptr %494, %419
  br i1 %495, label %497, label %496

496:                                              ; preds = %489
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %422) #23
  br label %497

497:                                              ; preds = %496, %489
  %498 = phi i32 [ 1, %496 ], [ %490, %489 ]
  %499 = load ptr, ptr @cfun, align 8, !tbaa !52
  %500 = getelementptr inbounds %struct.function, ptr %499, i64 0, i32 4
  %501 = load ptr, ptr %500, align 8, !tbaa !100
  %502 = load i32, ptr %501, align 8, !tbaa !194
  %503 = and i32 %502, 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %515, label %505

505:                                              ; preds = %497
  %506 = getelementptr inbounds %struct.loop, ptr %419, i64 0, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !81
  %508 = load ptr, ptr %491, align 8, !tbaa !77
  %509 = tail call ptr @find_edge(ptr noundef %507, ptr noundef %508) #23
  %510 = getelementptr inbounds %struct.edge_def, ptr %509, i64 0, i32 7
  %511 = load i32, ptr %510, align 8, !tbaa !146
  %512 = and i32 %511, 128
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %515, label %514

514:                                              ; preds = %505
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %422) #23
  br label %515

515:                                              ; preds = %497, %505, %514
  %516 = phi i32 [ 1, %514 ], [ %498, %505 ], [ %498, %497 ]
  %517 = icmp eq ptr %421, null
  %518 = load ptr, ptr @cfun, align 8
  %519 = getelementptr inbounds %struct.function, ptr %518, i64 0, i32 4
  br label %520

520:                                              ; preds = %532, %515
  %521 = phi i32 [ %420, %515 ], [ %533, %532 ]
  br i1 %517, label %529, label %522

522:                                              ; preds = %520
  %523 = load i32, ptr %421, align 4, !tbaa !105
  %524 = icmp ugt i32 %523, %521
  br i1 %524, label %525, label %529

525:                                              ; preds = %522
  %526 = zext i32 %521 to i64
  %527 = getelementptr inbounds %struct.VEC_int_base, ptr %421, i64 0, i32 2, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !67
  br label %529

529:                                              ; preds = %525, %522, %520
  %530 = phi i32 [ %528, %525 ], [ 0, %522 ], [ 0, %520 ]
  %531 = phi i1 [ false, %525 ], [ true, %522 ], [ true, %520 ]
  br i1 %531, label %541, label %532

532:                                              ; preds = %529
  %533 = add i32 %521, 1
  %534 = load ptr, ptr %519, align 8, !tbaa !100
  %535 = getelementptr inbounds %struct.loops, ptr %534, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !102
  %537 = zext i32 %530 to i64
  %538 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %536, i64 0, i32 2, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !52
  %540 = icmp eq ptr %539, null
  br i1 %540, label %520, label %543, !llvm.loop !111

541:                                              ; preds = %529
  br i1 %517, label %543, label %542

542:                                              ; preds = %541
  tail call void @free(ptr noundef %421)
  br label %543

543:                                              ; preds = %532, %541, %542
  %544 = phi ptr [ null, %542 ], [ null, %541 ], [ %421, %532 ]
  %545 = phi i32 [ %521, %542 ], [ %521, %541 ], [ %533, %532 ]
  %546 = phi ptr [ null, %542 ], [ null, %541 ], [ %539, %532 ]
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %417, !llvm.loop !259

548:                                              ; preds = %543, %412
  %549 = phi i32 [ %332, %412 ], [ %516, %543 ]
  %550 = load ptr, ptr @cfun, align 8, !tbaa !52
  %551 = getelementptr inbounds %struct.function, ptr %550, i64 0, i32 4
  %552 = load ptr, ptr %551, align 8, !tbaa !100
  %553 = load i32, ptr %552, align 8, !tbaa !194
  %554 = and i32 %553, 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %776, label %556

556:                                              ; preds = %548
  %557 = getelementptr inbounds %struct.function, ptr %550, i64 0, i32 1
  %558 = load ptr, ptr %557, align 8, !tbaa !91
  %559 = getelementptr inbounds %struct.control_flow_graph, ptr %558, i64 0, i32 5
  %560 = load i32, ptr %559, align 8, !tbaa !142
  %561 = tail call ptr @sbitmap_alloc(i32 noundef %560) #23
  %562 = load ptr, ptr @cfun, align 8, !tbaa !52
  %563 = getelementptr inbounds %struct.function, ptr %562, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !91
  %565 = load ptr, ptr %564, align 8, !tbaa !96
  %566 = getelementptr inbounds %struct.basic_block_def, ptr %565, i64 0, i32 6
  %567 = load ptr, ptr %566, align 8, !tbaa !97
  %568 = getelementptr inbounds %struct.control_flow_graph, ptr %564, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !93
  %570 = icmp eq ptr %567, %569
  br i1 %570, label %673, label %580

571:                                              ; preds = %654
  %572 = getelementptr inbounds %struct.basic_block_def, ptr %581, i64 0, i32 6
  %573 = load ptr, ptr %572, align 8, !tbaa !97
  %574 = load ptr, ptr @cfun, align 8, !tbaa !52
  %575 = getelementptr inbounds %struct.function, ptr %574, i64 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !91
  %577 = getelementptr inbounds %struct.control_flow_graph, ptr %576, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !93
  %579 = icmp eq ptr %573, %578
  br i1 %579, label %673, label %580, !llvm.loop !260

580:                                              ; preds = %556, %571
  %581 = phi ptr [ %573, %571 ], [ %567, %556 ]
  %582 = getelementptr inbounds %struct.basic_block_def, ptr %581, i64 0, i32 13
  %583 = load i32, ptr %582, align 8, !tbaa !261
  %584 = and i32 %583, 4
  %585 = icmp eq i32 %584, 0
  %586 = getelementptr inbounds %struct.basic_block_def, ptr %581, i64 0, i32 9
  %587 = load i32, ptr %586, align 8, !tbaa !79
  %588 = load ptr, ptr %561, align 8, !tbaa !153
  %589 = icmp eq ptr %588, null
  br i1 %585, label %614, label %590

590:                                              ; preds = %580
  br i1 %589, label %605, label %591

591:                                              ; preds = %590
  %592 = lshr i32 %587, 6
  %593 = zext nneg i32 %592 to i64
  %594 = getelementptr inbounds %struct.simple_bitmap_def, ptr %561, i64 0, i32 3, i64 %593
  %595 = load i64, ptr %594, align 8, !tbaa !155
  %596 = and i32 %587, 63
  %597 = zext nneg i32 %596 to i64
  %598 = shl nuw i64 1, %597
  %599 = and i64 %595, %598
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %601, label %605

601:                                              ; preds = %591
  %602 = getelementptr inbounds i8, ptr %588, i64 %593
  %603 = load i8, ptr %602, align 1, !tbaa !63
  %604 = add i8 %603, 1
  store i8 %604, ptr %602, align 1, !tbaa !63
  br label %605

605:                                              ; preds = %590, %591, %601
  %606 = and i32 %587, 63
  %607 = zext nneg i32 %606 to i64
  %608 = shl nuw i64 1, %607
  %609 = lshr i32 %587, 6
  %610 = zext nneg i32 %609 to i64
  %611 = getelementptr inbounds %struct.simple_bitmap_def, ptr %561, i64 0, i32 3, i64 %610
  %612 = load i64, ptr %611, align 8, !tbaa !155
  %613 = or i64 %612, %608
  store i64 %613, ptr %611, align 8, !tbaa !155
  br label %639

614:                                              ; preds = %580
  br i1 %589, label %629, label %615

615:                                              ; preds = %614
  %616 = lshr i32 %587, 6
  %617 = zext nneg i32 %616 to i64
  %618 = getelementptr inbounds %struct.simple_bitmap_def, ptr %561, i64 0, i32 3, i64 %617
  %619 = load i64, ptr %618, align 8, !tbaa !155
  %620 = and i32 %587, 63
  %621 = zext nneg i32 %620 to i64
  %622 = shl nuw i64 1, %621
  %623 = and i64 %619, %622
  %624 = icmp eq i64 %623, 0
  br i1 %624, label %629, label %625

625:                                              ; preds = %615
  %626 = getelementptr inbounds i8, ptr %588, i64 %617
  %627 = load i8, ptr %626, align 1, !tbaa !63
  %628 = add i8 %627, -1
  store i8 %628, ptr %626, align 1, !tbaa !63
  br label %629

629:                                              ; preds = %614, %615, %625
  %630 = and i32 %587, 63
  %631 = zext nneg i32 %630 to i64
  %632 = shl nuw i64 1, %631
  %633 = xor i64 %632, -1
  %634 = lshr i32 %587, 6
  %635 = zext nneg i32 %634 to i64
  %636 = getelementptr inbounds %struct.simple_bitmap_def, ptr %561, i64 0, i32 3, i64 %635
  %637 = load i64, ptr %636, align 8, !tbaa !155
  %638 = and i64 %637, %633
  store i64 %638, ptr %636, align 8, !tbaa !155
  br label %639

639:                                              ; preds = %629, %605
  %640 = getelementptr inbounds %struct.basic_block_def, ptr %581, i64 0, i32 1
  br label %641

641:                                              ; preds = %671, %639
  %642 = phi i32 [ 0, %639 ], [ %672, %671 ]
  %643 = load ptr, ptr %640, align 8, !tbaa !52
  %644 = icmp eq ptr %643, null
  br i1 %644, label %647, label %645

645:                                              ; preds = %641
  %646 = load i32, ptr %643, align 8, !tbaa !82
  br label %647

647:                                              ; preds = %645, %641
  %648 = phi i32 [ %646, %645 ], [ 0, %641 ]
  %649 = icmp eq i32 %648, %642
  br i1 %649, label %654, label %650

650:                                              ; preds = %647
  %651 = zext i32 %642 to i64
  %652 = getelementptr inbounds %struct.VEC_edge_base, ptr %643, i64 0, i32 2, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !52
  br label %654

654:                                              ; preds = %647, %650
  %655 = phi ptr [ %653, %650 ], [ null, %647 ]
  br i1 %649, label %571, label %656

656:                                              ; preds = %654
  %657 = getelementptr inbounds %struct.edge_def, ptr %655, i64 0, i32 7
  %658 = load i32, ptr %657, align 8, !tbaa !146
  %659 = and i32 %658, 128
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %663, label %661

661:                                              ; preds = %656
  %662 = or i32 %658, 16384
  store i32 %662, ptr %657, align 8, !tbaa !146
  br label %663

663:                                              ; preds = %661, %656
  %664 = icmp eq ptr %643, null
  br i1 %664, label %667, label %665

665:                                              ; preds = %663
  %666 = load i32, ptr %643, align 8, !tbaa !82
  br label %667

667:                                              ; preds = %665, %663
  %668 = phi i32 [ %666, %665 ], [ 0, %663 ]
  %669 = icmp ult i32 %642, %668
  br i1 %669, label %671, label %670

670:                                              ; preds = %667
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %671

671:                                              ; preds = %667, %670
  %672 = add i32 %642, 1
  br label %641, !llvm.loop !262

673:                                              ; preds = %571, %556
  %674 = tail call zeroext i8 @mark_irreducible_loops() #23
  %675 = load ptr, ptr @cfun, align 8, !tbaa !52
  %676 = getelementptr inbounds %struct.function, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !91
  %678 = load ptr, ptr %677, align 8, !tbaa !96
  %679 = getelementptr inbounds %struct.basic_block_def, ptr %678, i64 0, i32 6
  %680 = load ptr, ptr %679, align 8, !tbaa !97
  %681 = getelementptr inbounds %struct.control_flow_graph, ptr %677, i64 0, i32 1
  %682 = load ptr, ptr %681, align 8, !tbaa !93
  %683 = icmp eq ptr %680, %682
  br i1 %683, label %774, label %693

684:                                              ; preds = %744
  %685 = getelementptr inbounds %struct.basic_block_def, ptr %694, i64 0, i32 6
  %686 = load ptr, ptr %685, align 8, !tbaa !97
  %687 = load ptr, ptr @cfun, align 8, !tbaa !52
  %688 = getelementptr inbounds %struct.function, ptr %687, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !91
  %690 = getelementptr inbounds %struct.control_flow_graph, ptr %689, i64 0, i32 1
  %691 = load ptr, ptr %690, align 8, !tbaa !93
  %692 = icmp eq ptr %686, %691
  br i1 %692, label %774, label %693, !llvm.loop !263

693:                                              ; preds = %673, %684
  %694 = phi ptr [ %686, %684 ], [ %680, %673 ]
  %695 = phi i32 [ %732, %684 ], [ %549, %673 ]
  %696 = getelementptr inbounds %struct.basic_block_def, ptr %694, i64 0, i32 13
  %697 = load i32, ptr %696, align 8, !tbaa !261
  %698 = and i32 %697, 4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %714, label %700

700:                                              ; preds = %693
  %701 = getelementptr inbounds %struct.basic_block_def, ptr %694, i64 0, i32 9
  %702 = load i32, ptr %701, align 8, !tbaa !79
  %703 = lshr i32 %702, 6
  %704 = zext nneg i32 %703 to i64
  %705 = getelementptr inbounds %struct.simple_bitmap_def, ptr %561, i64 0, i32 3, i64 %704
  %706 = load i64, ptr %705, align 8, !tbaa !155
  %707 = and i32 %702, 63
  %708 = zext nneg i32 %707 to i64
  %709 = shl nuw i64 1, %708
  %710 = and i64 %709, %706
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %712, label %713

712:                                              ; preds = %700
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.19, i32 noundef %702) #23
  br label %727

713:                                              ; preds = %700
  br i1 %699, label %714, label %727

714:                                              ; preds = %693, %713
  %715 = getelementptr inbounds %struct.basic_block_def, ptr %694, i64 0, i32 9
  %716 = load i32, ptr %715, align 8, !tbaa !79
  %717 = lshr i32 %716, 6
  %718 = zext nneg i32 %717 to i64
  %719 = getelementptr inbounds %struct.simple_bitmap_def, ptr %561, i64 0, i32 3, i64 %718
  %720 = load i64, ptr %719, align 8, !tbaa !155
  %721 = and i32 %716, 63
  %722 = zext nneg i32 %721 to i64
  %723 = shl nuw i64 1, %722
  %724 = and i64 %723, %720
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %727, label %726

726:                                              ; preds = %714
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20, i32 noundef %716) #23
  br label %727

727:                                              ; preds = %713, %714, %726, %712
  %728 = phi i32 [ %695, %713 ], [ 1, %726 ], [ %695, %714 ], [ 1, %712 ]
  %729 = getelementptr inbounds %struct.basic_block_def, ptr %694, i64 0, i32 1
  br label %730

730:                                              ; preds = %772, %727
  %731 = phi i32 [ 0, %727 ], [ %773, %772 ]
  %732 = phi i32 [ %728, %727 ], [ %761, %772 ]
  %733 = load ptr, ptr %729, align 8, !tbaa !52
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735

735:                                              ; preds = %730
  %736 = load i32, ptr %733, align 8, !tbaa !82
  br label %737

737:                                              ; preds = %735, %730
  %738 = phi i32 [ %736, %735 ], [ 0, %730 ]
  %739 = icmp eq i32 %738, %731
  br i1 %739, label %744, label %740

740:                                              ; preds = %737
  %741 = zext i32 %731 to i64
  %742 = getelementptr inbounds %struct.VEC_edge_base, ptr %733, i64 0, i32 2, i64 %741
  %743 = load ptr, ptr %742, align 8, !tbaa !52
  br label %744

744:                                              ; preds = %737, %740
  %745 = phi ptr [ %743, %740 ], [ null, %737 ]
  br i1 %739, label %684, label %746

746:                                              ; preds = %744
  %747 = getelementptr inbounds %struct.edge_def, ptr %745, i64 0, i32 7
  %748 = load i32, ptr %747, align 8, !tbaa !146
  %749 = and i32 %748, 16512
  switch i32 %749, label %760 [
    i32 128, label %751
    i32 16384, label %750
  ]

750:                                              ; preds = %746
  br label %751

751:                                              ; preds = %746, %750
  %752 = phi ptr [ @.str.22, %750 ], [ @.str.21, %746 ]
  %753 = load ptr, ptr %745, align 8, !tbaa !84
  %754 = getelementptr inbounds %struct.basic_block_def, ptr %753, i64 0, i32 9
  %755 = load i32, ptr %754, align 8, !tbaa !79
  %756 = getelementptr inbounds %struct.edge_def, ptr %745, i64 0, i32 1
  %757 = load ptr, ptr %756, align 8, !tbaa !113
  %758 = getelementptr inbounds %struct.basic_block_def, ptr %757, i64 0, i32 9
  %759 = load i32, ptr %758, align 8, !tbaa !79
  tail call void (ptr, ...) @error(ptr noundef nonnull %752, i32 noundef %755, i32 noundef %759) #23
  br label %760

760:                                              ; preds = %751, %746
  %761 = phi i32 [ %732, %746 ], [ 1, %751 ]
  %762 = load i32, ptr %747, align 8, !tbaa !146
  %763 = and i32 %762, -16385
  store i32 %763, ptr %747, align 8, !tbaa !146
  %764 = load ptr, ptr %729, align 8, !tbaa !52
  %765 = icmp eq ptr %764, null
  br i1 %765, label %768, label %766

766:                                              ; preds = %760
  %767 = load i32, ptr %764, align 8, !tbaa !82
  br label %768

768:                                              ; preds = %766, %760
  %769 = phi i32 [ %767, %766 ], [ 0, %760 ]
  %770 = icmp ult i32 %731, %769
  br i1 %770, label %772, label %771

771:                                              ; preds = %768
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %772

772:                                              ; preds = %768, %771
  %773 = add i32 %731, 1
  br label %730, !llvm.loop !264

774:                                              ; preds = %684, %673
  %775 = phi i32 [ %549, %673 ], [ %732, %684 ]
  tail call void @free(ptr noundef %561)
  br label %776

776:                                              ; preds = %774, %548
  %777 = phi i32 [ %775, %774 ], [ %549, %548 ]
  %778 = load ptr, ptr @cfun, align 8, !tbaa !52
  %779 = getelementptr inbounds %struct.function, ptr %778, i64 0, i32 4
  %780 = load ptr, ptr %779, align 8, !tbaa !100
  %781 = icmp eq ptr %780, null
  br i1 %781, label %857, label %782

782:                                              ; preds = %776
  %783 = getelementptr inbounds %struct.loops, ptr %780, i64 0, i32 1
  %784 = load ptr, ptr %783, align 8, !tbaa !102
  %785 = icmp eq ptr %784, null
  br i1 %785, label %788, label %786

786:                                              ; preds = %782
  %787 = load i32, ptr %784, align 8, !tbaa !75
  br label %788

788:                                              ; preds = %786, %782
  %789 = phi i32 [ %787, %786 ], [ 0, %782 ]
  %790 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %789, i64 noundef 8, i64 noundef 4) #23
  %791 = load ptr, ptr @cfun, align 8, !tbaa !52
  %792 = getelementptr inbounds %struct.function, ptr %791, i64 0, i32 4
  %793 = load ptr, ptr %792, align 8, !tbaa !100
  %794 = getelementptr inbounds %struct.loops, ptr %793, i64 0, i32 3
  %795 = load ptr, ptr %794, align 8, !tbaa !104
  br label %796

796:                                              ; preds = %809, %788
  %797 = phi ptr [ %795, %788 ], [ %810, %809 ]
  %798 = load i32, ptr %797, align 8, !tbaa !78
  %799 = icmp slt i32 %798, 1
  br i1 %799, label %805, label %800

800:                                              ; preds = %796
  %801 = load i32, ptr %790, align 4, !tbaa !105
  %802 = add i32 %801, 1
  store i32 %802, ptr %790, align 4, !tbaa !105
  %803 = zext i32 %801 to i64
  %804 = getelementptr inbounds %struct.VEC_int_base, ptr %790, i64 0, i32 2, i64 %803
  store i32 %798, ptr %804, align 4, !tbaa !67
  br label %805

805:                                              ; preds = %800, %796
  %806 = getelementptr inbounds %struct.loop, ptr %797, i64 0, i32 8
  %807 = load ptr, ptr %806, align 8, !tbaa !107
  %808 = icmp eq ptr %807, null
  br i1 %808, label %814, label %809

809:                                              ; preds = %814, %805
  %810 = phi ptr [ %807, %805 ], [ %817, %814 ]
  br label %796, !llvm.loop !108

811:                                              ; preds = %833
  %812 = icmp eq ptr %790, null
  %813 = getelementptr inbounds %struct.loops, ptr %793, i64 0, i32 1
  br label %836

814:                                              ; preds = %805, %833
  %815 = phi ptr [ %834, %833 ], [ %797, %805 ]
  %816 = getelementptr inbounds %struct.loop, ptr %815, i64 0, i32 9
  %817 = load ptr, ptr %816, align 8, !tbaa !109
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %809, !llvm.loop !108

819:                                              ; preds = %814
  %820 = getelementptr inbounds %struct.loop, ptr %815, i64 0, i32 7
  %821 = load ptr, ptr %820, align 8, !tbaa !71
  %822 = icmp eq ptr %821, null
  br i1 %822, label %825, label %823

823:                                              ; preds = %819
  %824 = load i32, ptr %821, align 8, !tbaa !75
  br label %825

825:                                              ; preds = %823, %819
  %826 = phi i32 [ %824, %823 ], [ 0, %819 ]
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %833, label %828

828:                                              ; preds = %825
  %829 = add i32 %826, -1
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %821, i64 0, i32 2, i64 %830
  %832 = load ptr, ptr %831, align 8, !tbaa !52
  br label %833

833:                                              ; preds = %828, %825
  %834 = phi ptr [ %832, %828 ], [ null, %825 ]
  %835 = icmp eq ptr %834, null
  br i1 %835, label %811, label %814, !llvm.loop !110

836:                                              ; preds = %811, %848
  %837 = phi i32 [ %849, %848 ], [ 0, %811 ]
  br i1 %812, label %845, label %838

838:                                              ; preds = %836
  %839 = load i32, ptr %790, align 4, !tbaa !105
  %840 = icmp ugt i32 %839, %837
  br i1 %840, label %841, label %845

841:                                              ; preds = %838
  %842 = zext i32 %837 to i64
  %843 = getelementptr inbounds %struct.VEC_int_base, ptr %790, i64 0, i32 2, i64 %842
  %844 = load i32, ptr %843, align 4, !tbaa !67
  br label %845

845:                                              ; preds = %841, %838, %836
  %846 = phi i32 [ %844, %841 ], [ 0, %838 ], [ 0, %836 ]
  %847 = phi i1 [ false, %841 ], [ true, %838 ], [ true, %836 ]
  br i1 %847, label %855, label %848

848:                                              ; preds = %845
  %849 = add i32 %837, 1
  %850 = load ptr, ptr %813, align 8, !tbaa !102
  %851 = zext i32 %846 to i64
  %852 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %850, i64 0, i32 2, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !52
  %854 = icmp eq ptr %853, null
  br i1 %854, label %836, label %857, !llvm.loop !111

855:                                              ; preds = %845
  br i1 %812, label %857, label %856

856:                                              ; preds = %855
  tail call void @free(ptr noundef %790)
  br label %857

857:                                              ; preds = %848, %855, %856, %776
  %858 = phi ptr [ null, %776 ], [ null, %856 ], [ null, %855 ], [ %790, %848 ]
  %859 = phi i32 [ 0, %776 ], [ %837, %856 ], [ %837, %855 ], [ %849, %848 ]
  %860 = phi ptr [ null, %776 ], [ null, %856 ], [ null, %855 ], [ %853, %848 ]
  %861 = icmp eq ptr %860, null
  br i1 %861, label %952, label %862

862:                                              ; preds = %857, %947
  %863 = phi i32 [ %920, %947 ], [ %777, %857 ]
  %864 = phi ptr [ %950, %947 ], [ %860, %857 ]
  %865 = phi i32 [ %949, %947 ], [ %859, %857 ]
  %866 = phi ptr [ %948, %947 ], [ %858, %857 ]
  %867 = getelementptr inbounds %struct.loop, ptr %864, i64 0, i32 18
  %868 = load ptr, ptr %867, align 8, !tbaa !117
  %869 = icmp eq ptr %868, null
  br i1 %869, label %901, label %870

870:                                              ; preds = %862
  %871 = load ptr, ptr %868, align 8, !tbaa !203
  %872 = icmp eq ptr %871, null
  br i1 %872, label %873, label %901

873:                                              ; preds = %870
  %874 = getelementptr inbounds %struct.loop_exit, ptr %868, i64 0, i32 2
  %875 = load ptr, ptr %874, align 8, !tbaa !118
  %876 = load ptr, ptr %875, align 8, !tbaa !203
  %877 = icmp ne ptr %876, null
  %878 = icmp ne ptr %875, %868
  %879 = and i1 %877, %878
  br i1 %879, label %880, label %898

880:                                              ; preds = %873, %890
  %881 = phi ptr [ %893, %890 ], [ %875, %873 ]
  %882 = phi i32 [ %884, %890 ], [ 0, %873 ]
  %883 = phi ptr [ %891, %890 ], [ %868, %873 ]
  %884 = add i32 %882, 1
  %885 = and i32 %882, 1
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %890, label %887

887:                                              ; preds = %880
  %888 = getelementptr inbounds %struct.loop_exit, ptr %883, i64 0, i32 2
  %889 = load ptr, ptr %888, align 8, !tbaa !118
  br label %890

890:                                              ; preds = %880, %887
  %891 = phi ptr [ %889, %887 ], [ %883, %880 ]
  %892 = getelementptr inbounds %struct.loop_exit, ptr %881, i64 0, i32 2
  %893 = load ptr, ptr %892, align 8, !tbaa !118
  %894 = load ptr, ptr %893, align 8, !tbaa !203
  %895 = icmp ne ptr %894, null
  %896 = icmp ne ptr %893, %891
  %897 = select i1 %895, i1 %896, i1 false
  br i1 %897, label %880, label %898, !llvm.loop !265

898:                                              ; preds = %890, %873
  %899 = phi ptr [ %875, %873 ], [ %893, %890 ]
  %900 = icmp eq ptr %899, %868
  br i1 %900, label %904, label %901

901:                                              ; preds = %898, %862, %870
  %902 = phi ptr [ @.str.23, %870 ], [ @.str.23, %862 ], [ @.str.24, %898 ]
  %903 = load i32, ptr %864, align 8, !tbaa !78
  tail call void (ptr, ...) @error(ptr noundef nonnull %902, i32 noundef %903) #23
  br label %904

904:                                              ; preds = %901, %898
  %905 = phi i32 [ %863, %898 ], [ 1, %901 ]
  %906 = load ptr, ptr @cfun, align 8, !tbaa !52
  %907 = getelementptr inbounds %struct.function, ptr %906, i64 0, i32 4
  %908 = load ptr, ptr %907, align 8, !tbaa !100
  %909 = load i32, ptr %908, align 8, !tbaa !194
  %910 = and i32 %909, 8
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %919

912:                                              ; preds = %904
  %913 = load ptr, ptr %867, align 8, !tbaa !117
  %914 = getelementptr inbounds %struct.loop_exit, ptr %913, i64 0, i32 2
  %915 = load ptr, ptr %914, align 8, !tbaa !118
  %916 = icmp eq ptr %915, %913
  br i1 %916, label %919, label %917

917:                                              ; preds = %912
  %918 = load i32, ptr %864, align 8, !tbaa !78
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %918) #23
  br label %919

919:                                              ; preds = %904, %917, %912
  %920 = phi i32 [ %905, %904 ], [ 1, %917 ], [ %905, %912 ]
  %921 = icmp eq ptr %866, null
  %922 = load ptr, ptr @cfun, align 8
  %923 = getelementptr inbounds %struct.function, ptr %922, i64 0, i32 4
  br label %924

924:                                              ; preds = %936, %919
  %925 = phi i32 [ %865, %919 ], [ %937, %936 ]
  br i1 %921, label %933, label %926

926:                                              ; preds = %924
  %927 = load i32, ptr %866, align 4, !tbaa !105
  %928 = icmp ugt i32 %927, %925
  br i1 %928, label %929, label %933

929:                                              ; preds = %926
  %930 = zext i32 %925 to i64
  %931 = getelementptr inbounds %struct.VEC_int_base, ptr %866, i64 0, i32 2, i64 %930
  %932 = load i32, ptr %931, align 4, !tbaa !67
  br label %933

933:                                              ; preds = %929, %926, %924
  %934 = phi i32 [ %932, %929 ], [ 0, %926 ], [ 0, %924 ]
  %935 = phi i1 [ false, %929 ], [ true, %926 ], [ true, %924 ]
  br i1 %935, label %945, label %936

936:                                              ; preds = %933
  %937 = add i32 %925, 1
  %938 = load ptr, ptr %923, align 8, !tbaa !100
  %939 = getelementptr inbounds %struct.loops, ptr %938, i64 0, i32 1
  %940 = load ptr, ptr %939, align 8, !tbaa !102
  %941 = zext i32 %934 to i64
  %942 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %940, i64 0, i32 2, i64 %941
  %943 = load ptr, ptr %942, align 8, !tbaa !52
  %944 = icmp eq ptr %943, null
  br i1 %944, label %924, label %947, !llvm.loop !111

945:                                              ; preds = %933
  br i1 %921, label %947, label %946

946:                                              ; preds = %945
  tail call void @free(ptr noundef %866)
  br label %947

947:                                              ; preds = %936, %945, %946
  %948 = phi ptr [ null, %946 ], [ null, %945 ], [ %866, %936 ]
  %949 = phi i32 [ %925, %946 ], [ %925, %945 ], [ %937, %936 ]
  %950 = phi ptr [ null, %946 ], [ null, %945 ], [ %943, %936 ]
  %951 = icmp eq ptr %950, null
  br i1 %951, label %952, label %862, !llvm.loop !266

952:                                              ; preds = %947, %857
  %953 = phi i32 [ %777, %857 ], [ %920, %947 ]
  %954 = load ptr, ptr @cfun, align 8, !tbaa !52
  %955 = getelementptr inbounds %struct.function, ptr %954, i64 0, i32 4
  %956 = load ptr, ptr %955, align 8, !tbaa !100
  %957 = load i32, ptr %956, align 8, !tbaa !194
  %958 = and i32 %957, 8
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %1255, label %960

960:                                              ; preds = %952
  %961 = shl nuw nsw i64 %13, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %14, i8 0, i64 %961, i1 false)
  %962 = load ptr, ptr @cfun, align 8, !tbaa !52
  %963 = getelementptr inbounds %struct.function, ptr %962, i64 0, i32 1
  %964 = load ptr, ptr %963, align 8, !tbaa !91
  %965 = load ptr, ptr %964, align 8, !tbaa !96
  %966 = getelementptr inbounds %struct.basic_block_def, ptr %965, i64 0, i32 6
  %967 = load ptr, ptr %966, align 8, !tbaa !97
  %968 = getelementptr inbounds %struct.control_flow_graph, ptr %964, i64 0, i32 1
  %969 = load ptr, ptr %968, align 8, !tbaa !93
  %970 = icmp eq ptr %967, %969
  br i1 %970, label %1103, label %971

971:                                              ; preds = %960, %1090
  %972 = phi ptr [ %1095, %1090 ], [ %962, %960 ]
  %973 = phi ptr [ %1094, %1090 ], [ %967, %960 ]
  %974 = phi i32 [ %1092, %1090 ], [ 0, %960 ]
  %975 = phi i32 [ %1091, %1090 ], [ %953, %960 ]
  %976 = getelementptr inbounds %struct.basic_block_def, ptr %973, i64 0, i32 3
  %977 = load ptr, ptr %976, align 8, !tbaa !128
  %978 = getelementptr inbounds %struct.function, ptr %972, i64 0, i32 4
  %979 = load ptr, ptr %978, align 8, !tbaa !100
  %980 = getelementptr inbounds %struct.loops, ptr %979, i64 0, i32 3
  %981 = load ptr, ptr %980, align 8, !tbaa !104
  %982 = icmp eq ptr %977, %981
  br i1 %982, label %1090, label %983

983:                                              ; preds = %971
  %984 = getelementptr inbounds %struct.basic_block_def, ptr %973, i64 0, i32 1
  br label %985

985:                                              ; preds = %1088, %983
  %986 = phi i32 [ 0, %983 ], [ %1089, %1088 ]
  %987 = phi i32 [ %975, %983 ], [ %1078, %1088 ]
  %988 = phi i32 [ %974, %983 ], [ %1079, %1088 ]
  %989 = load ptr, ptr %984, align 8, !tbaa !52
  %990 = icmp eq ptr %989, null
  br i1 %990, label %993, label %991

991:                                              ; preds = %985
  %992 = load i32, ptr %989, align 8, !tbaa !82
  br label %993

993:                                              ; preds = %991, %985
  %994 = phi i32 [ %992, %991 ], [ 0, %985 ]
  %995 = icmp eq i32 %994, %986
  br i1 %995, label %1000, label %996

996:                                              ; preds = %993
  %997 = zext i32 %986 to i64
  %998 = getelementptr inbounds %struct.VEC_edge_base, ptr %989, i64 0, i32 2, i64 %997
  %999 = load ptr, ptr %998, align 8, !tbaa !52
  br label %1000

1000:                                             ; preds = %993, %996
  %1001 = phi ptr [ %999, %996 ], [ null, %993 ]
  br i1 %995, label %1090, label %1002

1002:                                             ; preds = %1000
  %1003 = load ptr, ptr %976, align 8, !tbaa !128
  %1004 = getelementptr inbounds %struct.edge_def, ptr %1001, i64 0, i32 1
  %1005 = load ptr, ptr %1004, align 8, !tbaa !113
  %1006 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1003, ptr noundef %1005), !range !161
  %1007 = icmp eq i8 %1006, 0
  br i1 %1007, label %1008, label %1077

1008:                                             ; preds = %1002
  %1009 = add i32 %988, 1
  %1010 = load ptr, ptr @cfun, align 8, !tbaa !52
  %1011 = getelementptr inbounds %struct.function, ptr %1010, i64 0, i32 4
  %1012 = load ptr, ptr %1011, align 8, !tbaa !100
  %1013 = getelementptr inbounds %struct.loops, ptr %1012, i64 0, i32 2
  %1014 = load ptr, ptr %1013, align 8, !tbaa !164
  %1015 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !52
  %1016 = tail call i32 %1015(ptr noundef %1001) #23
  %1017 = tail call ptr @htab_find_with_hash(ptr noundef %1014, ptr noundef %1001, i32 noundef %1016) #23
  %1018 = icmp eq ptr %1017, null
  br i1 %1018, label %1019, label %1026

1019:                                             ; preds = %1008
  %1020 = load ptr, ptr %1001, align 8, !tbaa !84
  %1021 = getelementptr inbounds %struct.basic_block_def, ptr %1020, i64 0, i32 9
  %1022 = load i32, ptr %1021, align 8, !tbaa !79
  %1023 = load ptr, ptr %1004, align 8, !tbaa !113
  %1024 = getelementptr inbounds %struct.basic_block_def, ptr %1023, i64 0, i32 9
  %1025 = load i32, ptr %1024, align 8, !tbaa !79
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %1022, i32 noundef %1025) #23
  br label %1026

1026:                                             ; preds = %1019, %1008
  %1027 = phi i32 [ %987, %1008 ], [ 1, %1019 ]
  %1028 = icmp eq ptr %1017, null
  br i1 %1028, label %1036, label %1029

1029:                                             ; preds = %1026, %1029
  %1030 = phi i32 [ %1032, %1029 ], [ 0, %1026 ]
  %1031 = phi ptr [ %1034, %1029 ], [ %1017, %1026 ]
  %1032 = add i32 %1030, 1
  %1033 = getelementptr inbounds %struct.loop_exit, ptr %1031, i64 0, i32 3
  %1034 = load ptr, ptr %1033, align 8, !tbaa !204
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1036, label %1029, !llvm.loop !267

1036:                                             ; preds = %1029, %1026
  %1037 = phi i32 [ 0, %1026 ], [ %1032, %1029 ]
  %1038 = load ptr, ptr %976, align 8, !tbaa !128
  %1039 = load ptr, ptr %1004, align 8, !tbaa !113
  %1040 = getelementptr inbounds %struct.basic_block_def, ptr %1039, i64 0, i32 3
  %1041 = load ptr, ptr %1040, align 8, !tbaa !128
  %1042 = icmp eq ptr %1038, %1041
  br i1 %1042, label %1068, label %1043

1043:                                             ; preds = %1036, %1065
  %1044 = phi i32 [ %1046, %1065 ], [ %1037, %1036 ]
  %1045 = phi ptr [ %1066, %1065 ], [ %1038, %1036 ]
  %1046 = add i32 %1044, -1
  %1047 = load i32, ptr %1045, align 8, !tbaa !78
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds i32, ptr %14, i64 %1048
  %1050 = load i32, ptr %1049, align 4, !tbaa !67
  %1051 = add i32 %1050, 1
  store i32 %1051, ptr %1049, align 4, !tbaa !67
  %1052 = getelementptr inbounds %struct.loop, ptr %1045, i64 0, i32 7
  %1053 = load ptr, ptr %1052, align 8, !tbaa !71
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1057, label %1055

1055:                                             ; preds = %1043
  %1056 = load i32, ptr %1053, align 8, !tbaa !75
  br label %1057

1057:                                             ; preds = %1055, %1043
  %1058 = phi i32 [ %1056, %1055 ], [ 0, %1043 ]
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1065, label %1060

1060:                                             ; preds = %1057
  %1061 = add i32 %1058, -1
  %1062 = zext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1053, i64 0, i32 2, i64 %1062
  %1064 = load ptr, ptr %1063, align 8, !tbaa !52
  br label %1065

1065:                                             ; preds = %1057, %1060
  %1066 = phi ptr [ %1064, %1060 ], [ null, %1057 ]
  %1067 = icmp eq ptr %1066, %1041
  br i1 %1067, label %1068, label %1043, !llvm.loop !268

1068:                                             ; preds = %1065, %1036
  %1069 = phi i32 [ %1037, %1036 ], [ %1046, %1065 ]
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1077, label %1071

1071:                                             ; preds = %1068
  %1072 = load ptr, ptr %1001, align 8, !tbaa !84
  %1073 = getelementptr inbounds %struct.basic_block_def, ptr %1072, i64 0, i32 9
  %1074 = load i32, ptr %1073, align 8, !tbaa !79
  %1075 = getelementptr inbounds %struct.basic_block_def, ptr %1039, i64 0, i32 9
  %1076 = load i32, ptr %1075, align 8, !tbaa !79
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %1074, i32 noundef %1076) #23
  br label %1077

1077:                                             ; preds = %1002, %1071, %1068
  %1078 = phi i32 [ %987, %1002 ], [ 1, %1071 ], [ %1027, %1068 ]
  %1079 = phi i32 [ %988, %1002 ], [ %1009, %1071 ], [ %1009, %1068 ]
  %1080 = load ptr, ptr %984, align 8, !tbaa !52
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1084, label %1082

1082:                                             ; preds = %1077
  %1083 = load i32, ptr %1080, align 8, !tbaa !82
  br label %1084

1084:                                             ; preds = %1082, %1077
  %1085 = phi i32 [ %1083, %1082 ], [ 0, %1077 ]
  %1086 = icmp ult i32 %986, %1085
  br i1 %1086, label %1088, label %1087

1087:                                             ; preds = %1084
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %1088

1088:                                             ; preds = %1084, %1087
  %1089 = add i32 %986, 1
  br label %985, !llvm.loop !269

1090:                                             ; preds = %1000, %971
  %1091 = phi i32 [ %975, %971 ], [ %987, %1000 ]
  %1092 = phi i32 [ %974, %971 ], [ %988, %1000 ]
  %1093 = getelementptr inbounds %struct.basic_block_def, ptr %973, i64 0, i32 6
  %1094 = load ptr, ptr %1093, align 8, !tbaa !97
  %1095 = load ptr, ptr @cfun, align 8, !tbaa !52
  %1096 = getelementptr inbounds %struct.function, ptr %1095, i64 0, i32 1
  %1097 = load ptr, ptr %1096, align 8, !tbaa !91
  %1098 = getelementptr inbounds %struct.control_flow_graph, ptr %1097, i64 0, i32 1
  %1099 = load ptr, ptr %1098, align 8, !tbaa !93
  %1100 = icmp eq ptr %1094, %1099
  br i1 %1100, label %1101, label %971, !llvm.loop !270

1101:                                             ; preds = %1090
  %1102 = zext i32 %1092 to i64
  br label %1103

1103:                                             ; preds = %1101, %960
  %1104 = phi i32 [ %953, %960 ], [ %1091, %1101 ]
  %1105 = phi i64 [ 0, %960 ], [ %1102, %1101 ]
  %1106 = phi ptr [ %962, %960 ], [ %1095, %1101 ]
  %1107 = getelementptr inbounds %struct.function, ptr %1106, i64 0, i32 4
  %1108 = load ptr, ptr %1107, align 8, !tbaa !100
  %1109 = getelementptr inbounds %struct.loops, ptr %1108, i64 0, i32 2
  %1110 = load ptr, ptr %1109, align 8, !tbaa !164
  %1111 = tail call i64 @htab_elements(ptr noundef %1110) #23
  %1112 = icmp eq i64 %1111, %1105
  br i1 %1112, label %1114, label %1113

1113:                                             ; preds = %1103
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28) #23
  br label %1114

1114:                                             ; preds = %1113, %1103
  %1115 = phi i32 [ 1, %1113 ], [ %1104, %1103 ]
  %1116 = load ptr, ptr @cfun, align 8, !tbaa !52
  %1117 = getelementptr inbounds %struct.function, ptr %1116, i64 0, i32 4
  %1118 = load ptr, ptr %1117, align 8, !tbaa !100
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1195, label %1120

1120:                                             ; preds = %1114
  %1121 = getelementptr inbounds %struct.loops, ptr %1118, i64 0, i32 1
  %1122 = load ptr, ptr %1121, align 8, !tbaa !102
  %1123 = icmp eq ptr %1122, null
  br i1 %1123, label %1126, label %1124

1124:                                             ; preds = %1120
  %1125 = load i32, ptr %1122, align 8, !tbaa !75
  br label %1126

1126:                                             ; preds = %1124, %1120
  %1127 = phi i32 [ %1125, %1124 ], [ 0, %1120 ]
  %1128 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %1127, i64 noundef 8, i64 noundef 4) #23
  %1129 = load ptr, ptr @cfun, align 8, !tbaa !52
  %1130 = getelementptr inbounds %struct.function, ptr %1129, i64 0, i32 4
  %1131 = load ptr, ptr %1130, align 8, !tbaa !100
  %1132 = getelementptr inbounds %struct.loops, ptr %1131, i64 0, i32 3
  %1133 = load ptr, ptr %1132, align 8, !tbaa !104
  br label %1134

1134:                                             ; preds = %1147, %1126
  %1135 = phi ptr [ %1133, %1126 ], [ %1148, %1147 ]
  %1136 = load i32, ptr %1135, align 8, !tbaa !78
  %1137 = icmp slt i32 %1136, 1
  br i1 %1137, label %1143, label %1138

1138:                                             ; preds = %1134
  %1139 = load i32, ptr %1128, align 4, !tbaa !105
  %1140 = add i32 %1139, 1
  store i32 %1140, ptr %1128, align 4, !tbaa !105
  %1141 = zext i32 %1139 to i64
  %1142 = getelementptr inbounds %struct.VEC_int_base, ptr %1128, i64 0, i32 2, i64 %1141
  store i32 %1136, ptr %1142, align 4, !tbaa !67
  br label %1143

1143:                                             ; preds = %1138, %1134
  %1144 = getelementptr inbounds %struct.loop, ptr %1135, i64 0, i32 8
  %1145 = load ptr, ptr %1144, align 8, !tbaa !107
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1152, label %1147

1147:                                             ; preds = %1152, %1143
  %1148 = phi ptr [ %1145, %1143 ], [ %1155, %1152 ]
  br label %1134, !llvm.loop !108

1149:                                             ; preds = %1171
  %1150 = icmp eq ptr %1128, null
  %1151 = getelementptr inbounds %struct.loops, ptr %1131, i64 0, i32 1
  br label %1174

1152:                                             ; preds = %1143, %1171
  %1153 = phi ptr [ %1172, %1171 ], [ %1135, %1143 ]
  %1154 = getelementptr inbounds %struct.loop, ptr %1153, i64 0, i32 9
  %1155 = load ptr, ptr %1154, align 8, !tbaa !109
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1157, label %1147, !llvm.loop !108

1157:                                             ; preds = %1152
  %1158 = getelementptr inbounds %struct.loop, ptr %1153, i64 0, i32 7
  %1159 = load ptr, ptr %1158, align 8, !tbaa !71
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1163, label %1161

1161:                                             ; preds = %1157
  %1162 = load i32, ptr %1159, align 8, !tbaa !75
  br label %1163

1163:                                             ; preds = %1161, %1157
  %1164 = phi i32 [ %1162, %1161 ], [ 0, %1157 ]
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1171, label %1166

1166:                                             ; preds = %1163
  %1167 = add i32 %1164, -1
  %1168 = zext i32 %1167 to i64
  %1169 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1159, i64 0, i32 2, i64 %1168
  %1170 = load ptr, ptr %1169, align 8, !tbaa !52
  br label %1171

1171:                                             ; preds = %1166, %1163
  %1172 = phi ptr [ %1170, %1166 ], [ null, %1163 ]
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1149, label %1152, !llvm.loop !110

1174:                                             ; preds = %1149, %1186
  %1175 = phi i32 [ %1187, %1186 ], [ 0, %1149 ]
  br i1 %1150, label %1183, label %1176

1176:                                             ; preds = %1174
  %1177 = load i32, ptr %1128, align 4, !tbaa !105
  %1178 = icmp ugt i32 %1177, %1175
  br i1 %1178, label %1179, label %1183

1179:                                             ; preds = %1176
  %1180 = zext i32 %1175 to i64
  %1181 = getelementptr inbounds %struct.VEC_int_base, ptr %1128, i64 0, i32 2, i64 %1180
  %1182 = load i32, ptr %1181, align 4, !tbaa !67
  br label %1183

1183:                                             ; preds = %1179, %1176, %1174
  %1184 = phi i32 [ %1182, %1179 ], [ 0, %1176 ], [ 0, %1174 ]
  %1185 = phi i1 [ false, %1179 ], [ true, %1176 ], [ true, %1174 ]
  br i1 %1185, label %1193, label %1186

1186:                                             ; preds = %1183
  %1187 = add i32 %1175, 1
  %1188 = load ptr, ptr %1151, align 8, !tbaa !102
  %1189 = zext i32 %1184 to i64
  %1190 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1188, i64 0, i32 2, i64 %1189
  %1191 = load ptr, ptr %1190, align 8, !tbaa !52
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %1174, label %1195, !llvm.loop !111

1193:                                             ; preds = %1183
  br i1 %1150, label %1195, label %1194

1194:                                             ; preds = %1193
  tail call void @free(ptr noundef %1128)
  br label %1195

1195:                                             ; preds = %1186, %1193, %1194, %1114
  %1196 = phi ptr [ null, %1114 ], [ null, %1194 ], [ null, %1193 ], [ %1128, %1186 ]
  %1197 = phi i32 [ 0, %1114 ], [ %1175, %1194 ], [ %1175, %1193 ], [ %1187, %1186 ]
  %1198 = phi ptr [ null, %1114 ], [ null, %1194 ], [ null, %1193 ], [ %1191, %1186 ]
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1255, label %1200

1200:                                             ; preds = %1195, %1250
  %1201 = phi i32 [ %1223, %1250 ], [ %1115, %1195 ]
  %1202 = phi ptr [ %1253, %1250 ], [ %1198, %1195 ]
  %1203 = phi i32 [ %1252, %1250 ], [ %1197, %1195 ]
  %1204 = phi ptr [ %1251, %1250 ], [ %1196, %1195 ]
  %1205 = getelementptr inbounds %struct.loop, ptr %1202, i64 0, i32 18
  %1206 = load ptr, ptr %1205, align 8, !tbaa !117
  br label %1207

1207:                                             ; preds = %1207, %1200
  %1208 = phi ptr [ %1206, %1200 ], [ %1211, %1207 ]
  %1209 = phi i32 [ 0, %1200 ], [ %1214, %1207 ]
  %1210 = getelementptr inbounds %struct.loop_exit, ptr %1208, i64 0, i32 2
  %1211 = load ptr, ptr %1210, align 8, !tbaa !118
  %1212 = load ptr, ptr %1211, align 8, !tbaa !203
  %1213 = icmp eq ptr %1212, null
  %1214 = add i32 %1209, 1
  br i1 %1213, label %1215, label %1207, !llvm.loop !271

1215:                                             ; preds = %1207
  %1216 = load i32, ptr %1202, align 8, !tbaa !78
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds i32, ptr %14, i64 %1217
  %1219 = load i32, ptr %1218, align 4, !tbaa !67
  %1220 = icmp eq i32 %1209, %1219
  br i1 %1220, label %1222, label %1221

1221:                                             ; preds = %1215
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %1209, i32 noundef %1216, i32 noundef %1219) #23
  br label %1222

1222:                                             ; preds = %1215, %1221
  %1223 = phi i32 [ 1, %1221 ], [ %1201, %1215 ]
  %1224 = icmp eq ptr %1204, null
  %1225 = load ptr, ptr @cfun, align 8
  %1226 = getelementptr inbounds %struct.function, ptr %1225, i64 0, i32 4
  br label %1227

1227:                                             ; preds = %1239, %1222
  %1228 = phi i32 [ %1203, %1222 ], [ %1240, %1239 ]
  br i1 %1224, label %1236, label %1229

1229:                                             ; preds = %1227
  %1230 = load i32, ptr %1204, align 4, !tbaa !105
  %1231 = icmp ugt i32 %1230, %1228
  br i1 %1231, label %1232, label %1236

1232:                                             ; preds = %1229
  %1233 = zext i32 %1228 to i64
  %1234 = getelementptr inbounds %struct.VEC_int_base, ptr %1204, i64 0, i32 2, i64 %1233
  %1235 = load i32, ptr %1234, align 4, !tbaa !67
  br label %1236

1236:                                             ; preds = %1232, %1229, %1227
  %1237 = phi i32 [ %1235, %1232 ], [ 0, %1229 ], [ 0, %1227 ]
  %1238 = phi i1 [ false, %1232 ], [ true, %1229 ], [ true, %1227 ]
  br i1 %1238, label %1248, label %1239

1239:                                             ; preds = %1236
  %1240 = add i32 %1228, 1
  %1241 = load ptr, ptr %1226, align 8, !tbaa !100
  %1242 = getelementptr inbounds %struct.loops, ptr %1241, i64 0, i32 1
  %1243 = load ptr, ptr %1242, align 8, !tbaa !102
  %1244 = zext i32 %1237 to i64
  %1245 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1243, i64 0, i32 2, i64 %1244
  %1246 = load ptr, ptr %1245, align 8, !tbaa !52
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1227, label %1250, !llvm.loop !111

1248:                                             ; preds = %1236
  br i1 %1224, label %1250, label %1249

1249:                                             ; preds = %1248
  tail call void @free(ptr noundef %1204)
  br label %1250

1250:                                             ; preds = %1239, %1248, %1249
  %1251 = phi ptr [ null, %1249 ], [ null, %1248 ], [ %1204, %1239 ]
  %1252 = phi i32 [ %1228, %1249 ], [ %1228, %1248 ], [ %1240, %1239 ]
  %1253 = phi ptr [ null, %1249 ], [ null, %1248 ], [ %1246, %1239 ]
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1255, label %1200, !llvm.loop !272

1255:                                             ; preds = %1250, %1195, %952
  %1256 = phi i32 [ %953, %952 ], [ %1115, %1195 ], [ %1223, %1250 ]
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1259, label %1258

1258:                                             ; preds = %1255
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1575, ptr noundef nonnull @.str.1) #23
  br label %1259

1259:                                             ; preds = %1255, %1258
  tail call void @free(ptr noundef %14)
  ret void
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @loop_latch_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %5) #23
  ret ptr %6
}

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @loop_preheader_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !51 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = load i32, ptr %4, align 8, !tbaa !194
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1594, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %14

14:                                               ; preds = %43, %9
  %15 = phi i32 [ 0, %9 ], [ %44, %43 ]
  br i1 %12, label %16, label %17

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %16, %14
  %18 = load ptr, ptr %11, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ 0, %17 ]
  %24 = icmp eq i32 %23, %15
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = zext i32 %15 to i64
  %27 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  br label %29

29:                                               ; preds = %22, %25
  %30 = phi ptr [ %28, %25 ], [ null, %22 ]
  br i1 %24, label %45, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %30, align 8, !tbaa !84
  %33 = load ptr, ptr %13, align 8, !tbaa !81
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = icmp eq ptr %18, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %18, align 8, !tbaa !82
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %38, %37 ], [ 0, %35 ]
  %41 = icmp ult i32 %15, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %43

43:                                               ; preds = %39, %42
  %44 = add i32 %15, 1
  br label %14, !llvm.loop !273

45:                                               ; preds = %31, %29
  ret ptr %30
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @loop_exit_edge_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !274 {
  %3 = load ptr, ptr %1, align 8, !tbaa !84
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %72, label %9, !prof !167

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %72, label %13, !prof !168

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %38, label %17, !prof !169

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 8, !tbaa !75
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ]
  %25 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %26, align 8, !tbaa !75
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ]
  %32 = icmp ugt i32 %31, %24
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = zext i32 %24 to i64
  %35 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %26, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %72, !prof !275

38:                                               ; preds = %13, %33
  %39 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  %41 = icmp eq ptr %7, %40
  br i1 %41, label %72, label %42, !prof !167

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = icmp eq ptr %44, %40
  br i1 %45, label %72, label %46, !prof !168

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !128
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %72, label %50, !prof !169

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %52, align 8, !tbaa !75
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ 0, %50 ]
  %58 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %59, align 8, !tbaa !75
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ 0, %56 ]
  %65 = icmp ugt i32 %64, %57
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = zext i32 %57 to i64
  %68 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %59, i64 0, i32 2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = icmp ne ptr %69, %0
  %71 = zext i1 %70 to i8
  br label %72

72:                                               ; preds = %9, %2, %30, %66, %63, %46, %42, %38, %33
  %73 = phi i8 [ 0, %33 ], [ 1, %42 ], [ 1, %38 ], [ 0, %46 ], [ 1, %63 ], [ %71, %66 ], [ 0, %30 ], [ 0, %2 ], [ 0, %9 ]
  ret i8 %73
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @single_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = load ptr, ptr @cfun, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = load i32, ptr %8, align 8, !tbaa !194
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 8, !tbaa !203
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.loop_exit, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %15, %1, %19
  %21 = phi ptr [ null, %19 ], [ null, %1 ], [ %13, %15 ]
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @is_loop_exit(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !51 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %41, %2
  %5 = phi i32 [ 0, %2 ], [ %42, %41 ]
  br i1 %3, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %6, %4
  %8 = load ptr, ptr %1, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = zext i32 %5 to i64
  %17 = getelementptr inbounds %struct.VEC_edge_base, ptr %8, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %12, %15
  %20 = phi ptr [ %18, %15 ], [ null, %12 ]
  br i1 %14, label %43, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %20, align 8, !tbaa !84
  %23 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %22), !range !161
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %27), !range !161
  %29 = xor i8 %28, 1
  br label %30

30:                                               ; preds = %21, %25
  %31 = phi i8 [ 0, %21 ], [ %29, %25 ]
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = icmp eq ptr %8, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %8, align 8, !tbaa !82
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ 0, %33 ]
  %39 = icmp ult i32 %5, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %41

41:                                               ; preds = %37, %40
  %42 = add i32 %5, 1
  br label %4, !llvm.loop !276

43:                                               ; preds = %19, %30
  %44 = phi i8 [ 1, %30 ], [ 0, %19 ]
  ret i8 %44
}

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @mfb_redirect_edges_in_set(ptr noundef %0) #10 !prof !51 {
  %2 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !52
  %3 = tail call i32 @pointer_set_contains(ptr noundef %2, ptr noundef %0) #23
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @add_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @flow_loops_free, ptr @ggc_free, i64 2520}
!36 = !{ptr @flow_loops_find, ptr @calculate_dominance_info, i64 840}
!37 = !{ptr @flow_loops_find, ptr @sbitmap_alloc, i64 840}
!38 = !{ptr @flow_loops_find, ptr @sbitmap_zero, i64 840}
!39 = !{ptr @flow_loops_find, ptr @dominated_by_p, i64 7282979}
!40 = !{ptr @flow_loops_find, ptr @vec_gc_p_reserve_exact, i64 840}
!41 = !{ptr @flow_loops_find, ptr @ggc_alloc_cleared_stat, i64 1680}
!42 = !{ptr @flow_loops_find, ptr @free, i64 1680}
!43 = !{ptr @disambiguate_loops_with_multiple_latches, ptr @vec_heap_o_reserve_exact, i64 612}
!44 = !{ptr @disambiguate_loops_with_multiple_latches, ptr @free, i64 612}
!45 = !{ptr @rescan_loop_exit, ptr @htab_find_slot_with_hash, i64 84006}
!46 = !{ptr @record_loop_exits, ptr @htab_create_alloc, i64 308}
!47 = !{ptr @record_loop_exits, ptr @htab_find_slot_with_hash, i64 327933}
!48 = !{ptr @release_recorded_exits, ptr @htab_delete, i64 308}
!49 = !{ptr @add_bb_to_loop, ptr @rescan_loop_exit, i64 92934}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !53, i64 8}
!57 = !{!"_IO_FILE", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !58, i64 112, !58, i64 116, !59, i64 120, !60, i64 128, !54, i64 130, !54, i64 131, !53, i64 136, !59, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !59, i64 184, !58, i64 192, !54, i64 196}
!58 = !{!"int", !54, i64 0}
!59 = !{!"long", !54, i64 0}
!60 = !{!"short", !54, i64 0}
!61 = !{!57, !53, i64 16}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!54, !54, i64 0}
!64 = !{!57, !53, i64 40}
!65 = !{!57, !53, i64 48}
!66 = !{!57, !58, i64 0}
!67 = !{!58, !58, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!72, !53, i64 40}
!72 = !{!"loop", !58, i64 0, !58, i64 4, !53, i64 8, !53, i64 16, !73, i64 24, !58, i64 32, !58, i64 36, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !74, i64 80, !74, i64 96, !54, i64 112, !54, i64 113, !58, i64 116, !53, i64 120, !53, i64 128, !54, i64 136, !53, i64 144}
!73 = !{!"lpt_decision", !58, i64 0, !58, i64 4}
!74 = !{!"", !59, i64 0, !59, i64 8}
!75 = !{!76, !58, i64 0}
!76 = !{!"VEC_loop_p_base", !58, i64 0, !58, i64 4, !54, i64 8}
!77 = !{!72, !53, i64 8}
!78 = !{!72, !58, i64 0}
!79 = !{!80, !58, i64 80}
!80 = !{!"basic_block_def", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !54, i64 32, !53, i64 48, !53, i64 56, !54, i64 64, !59, i64 72, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !58, i64 96}
!81 = !{!72, !53, i64 16}
!82 = !{!83, !58, i64 0}
!83 = !{!"VEC_edge_base", !58, i64 0, !58, i64 4, !54, i64 8}
!84 = !{!85, !53, i64 0}
!85 = !{!"edge_def", !53, i64 0, !53, i64 8, !54, i64 16, !53, i64 24, !53, i64 32, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !59, i64 56}
!86 = distinct !{!86, !69, !70}
!87 = !{!72, !58, i64 36}
!88 = distinct !{!88, !69, !70}
!89 = !{!83, !58, i64 4}
!90 = distinct !{!90, !69, !70}
!91 = !{!92, !53, i64 8}
!92 = !{!"function", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !58, i64 104, !58, i64 108, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !53, i64 128, !58, i64 136, !58, i64 137, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139}
!93 = !{!94, !53, i64 8}
!94 = !{!"control_flow_graph", !53, i64 0, !53, i64 8, !53, i64 16, !58, i64 24, !58, i64 28, !58, i64 32, !53, i64 40, !58, i64 48, !54, i64 52, !54, i64 60, !58, i64 68, !58, i64 72}
!95 = !{!94, !58, i64 24}
!96 = !{!94, !53, i64 0}
!97 = !{!80, !53, i64 56}
!98 = distinct !{!98, !69, !70}
!99 = !{!"function_entry_count", i64 802}
!100 = !{!92, !53, i64 32}
!101 = !{!"branch_weights", i32 0, i32 802}
!102 = !{!103, !53, i64 8}
!103 = !{!"loops", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!104 = !{!103, !53, i64 24}
!105 = !{!106, !58, i64 0}
!106 = !{!"VEC_int_base", !58, i64 0, !58, i64 4, !54, i64 8}
!107 = !{!72, !53, i64 48}
!108 = distinct !{!108, !70}
!109 = !{!72, !53, i64 56}
!110 = distinct !{!110, !69, !70}
!111 = distinct !{!111, !69, !70}
!112 = distinct !{!112, !69, !70}
!113 = !{!85, !53, i64 8}
!114 = distinct !{!114, !69, !70}
!115 = distinct !{!115, !69, !70}
!116 = !{!"branch_weights", i32 840, i32 0}
!117 = !{!72, !53, i64 128}
!118 = !{!119, !53, i64 16}
!119 = !{!"loop_exit", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!120 = !{!"branch_weights", i32 1, i32 0}
!121 = !{!119, !53, i64 8}
!122 = distinct !{!122, !69, !70}
!123 = !{!"function_entry_count", i64 840}
!124 = !{!"branch_weights", i32 0, i32 840}
!125 = !{!"branch_weights", i32 0, i32 1680}
!126 = !{!"branch_weights", i32 840, i32 840}
!127 = distinct !{!127, !69, !70}
!128 = !{!80, !53, i64 24}
!129 = !{!80, !58, i64 84}
!130 = !{!131, !58, i64 4}
!131 = !{!"VEC_basic_block_base", !58, i64 0, !58, i64 4, !54, i64 8}
!132 = !{!131, !58, i64 0}
!133 = distinct !{!133, !69, !70}
!134 = distinct !{!134, !69, !70}
!135 = distinct !{!135, !69, !70}
!136 = !{!76, !58, i64 4}
!137 = distinct !{!137, !69, !70}
!138 = distinct !{!138, !69, !70}
!139 = distinct !{!139, !69, !70}
!140 = !{!72, !54, i64 136}
!141 = !{!72, !53, i64 144}
!142 = !{!94, !58, i64 32}
!143 = !{!"branch_weights", i32 1, i32 839}
!144 = !{!"branch_weights", i32 0, i32 11338178}
!145 = !{!"branch_weights", i32 4054356, i32 7283822}
!146 = !{!85, !58, i64 48}
!147 = !{!"branch_weights", i32 7283822, i32 0}
!148 = !{!"branch_weights", i32 0, i32 7283822}
!149 = distinct !{!149, !69, !70}
!150 = !{!"branch_weights", i32 4054356, i32 0}
!151 = !{!"branch_weights", i32 840, i32 7282982}
!152 = !{!"branch_weights", i32 7282982, i32 0}
!153 = !{!154, !53, i64 0}
!154 = !{!"simple_bitmap_def", !53, i64 0, !58, i64 8, !58, i64 12, !54, i64 16}
!155 = !{!59, !59, i64 0}
!156 = distinct !{!156, !69, !70}
!157 = !{!"branch_weights", i32 839, i32 4053517}
!158 = distinct !{!158, !69, !70}
!159 = distinct !{!159, !69, !70}
!160 = !{!94, !53, i64 16}
!161 = !{i8 0, i8 2}
!162 = distinct !{!162, !69, !70}
!163 = distinct !{!163, !69, !70}
!164 = !{!103, !53, i64 16}
!165 = !{!"cfgloop.c;init_loops_structure"}
!166 = !{!"function_entry_count", i64 4788508}
!167 = !{!"branch_weights", i32 38, i32 8547318}
!168 = !{!"branch_weights", i32 369, i32 8546949}
!169 = !{!"branch_weights", i32 8546949, i32 0}
!170 = !{!"function_entry_count", i64 612}
!171 = !{!"branch_weights", i32 0, i32 612}
!172 = !{!"branch_weights", i32 612, i32 0}
!173 = !{!85, !59, i64 56}
!174 = distinct !{!174, !69, !70}
!175 = distinct !{!175, !69, !70}
!176 = distinct !{!176, !69, !70}
!177 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52}
!178 = !{!179, !53, i64 0}
!179 = !{!"gimple_seq_node_d", !53, i64 0, !53, i64 8, !53, i64 16}
!180 = !{!85, !58, i64 44}
!181 = !{!182, !53, i64 24}
!182 = !{!"ssa_use_operand_d", !53, i64 0, !53, i64 8, !54, i64 16, !53, i64 24}
!183 = distinct !{!183, !69, !70}
!184 = !{!179, !53, i64 16}
!185 = distinct !{!185, !69, !70}
!186 = distinct !{!186, !69, !70}
!187 = distinct !{!187, !70}
!188 = distinct !{!188, !69, !70}
!189 = distinct !{!189, !69, !70}
!190 = distinct !{!190, !69, !70}
!191 = distinct !{!191, !69, !70}
!192 = distinct !{!192, !69, !70}
!193 = !{!"function_entry_count", i64 655557}
!194 = !{!103, !58, i64 0}
!195 = !{!"branch_weights", i32 209367, i32 3005267}
!196 = !{!"branch_weights", i32 2798437, i32 206830}
!197 = !{!"branch_weights", i32 0, i32 2798437}
!198 = !{!"branch_weights", i32 11117, i32 2787320}
!199 = !{!"branch_weights", i32 2786951, i32 369}
!200 = !{!"branch_weights", i32 11486, i32 0}
!201 = !{!"branch_weights", i32 0, i32 11486}
!202 = distinct !{!202, !69, !70}
!203 = !{!119, !53, i64 0}
!204 = !{!119, !53, i64 24}
!205 = distinct !{!205, !69, !70}
!206 = !{!"branch_weights", i32 2593327, i32 411940}
!207 = !{!"VP", i32 0, i64 84006, i64 6196242093822180960, i64 84006}
!208 = !{!"branch_weights", i32 411940, i32 0}
!209 = distinct !{!209, !69, !70}
!210 = !{!"function_entry_count", i64 11117}
!211 = !{!"function_entry_count", i64 346}
!212 = !{!"branch_weights", i32 38, i32 308}
!213 = !{!"branch_weights", i32 308, i32 0}
!214 = !{!"branch_weights", i32 0, i32 308}
!215 = !{!"branch_weights", i32 1, i32 307}
!216 = !{!"branch_weights", i32 307, i32 1399217}
!217 = distinct !{!217, !69, !70}
!218 = !{!"branch_weights", i32 61, i32 3958539}
!219 = !{!"branch_weights", i32 1399524, i32 2559076}
!220 = !{!"VP", i32 0, i64 327933, i64 6196242093822180960, i64 327933}
!221 = !{!"branch_weights", i32 0, i32 2559076}
!222 = !{!"branch_weights", i32 2559076, i32 0}
!223 = distinct !{!223, !69, !70}
!224 = distinct !{!224, !69, !70}
!225 = !{!"function_entry_count", i64 308}
!226 = distinct !{!226, !69, !70}
!227 = distinct !{!227, !69, !70}
!228 = distinct !{!228, !69, !70}
!229 = !{!80, !53, i64 8}
!230 = distinct !{!230, !69, !70}
!231 = !{!"function_entry_count", i64 50578}
!232 = !{!"branch_weights", i32 50578, i32 0}
!233 = distinct !{!233, !69, !70}
!234 = !{!"branch_weights", i32 4111, i32 128284}
!235 = !{!"branch_weights", i32 50578, i32 81817}
!236 = !{!"branch_weights", i32 0, i32 81817}
!237 = !{!"branch_weights", i32 81817, i32 0}
!238 = distinct !{!238, !69, !70}
!239 = !{!"branch_weights", i32 0, i32 61695}
!240 = !{!"branch_weights", i32 39461, i32 22234}
!241 = !{!"branch_weights", i32 50578, i32 11117}
!242 = !{!"branch_weights", i32 0, i32 11117}
!243 = !{!"branch_weights", i32 11117, i32 0}
!244 = distinct !{!244, !69, !70}
!245 = !{!"function_entry_count", i64 186534}
!246 = !{!"branch_weights", i32 0, i32 186534}
!247 = !{!"branch_weights", i32 186534, i32 0}
!248 = distinct !{!248, !69, !70}
!249 = distinct !{!249, !69, !70}
!250 = distinct !{!250, !69, !70}
!251 = distinct !{!251, !69, !70}
!252 = distinct !{!252, !69, !70}
!253 = distinct !{!253, !69, !70}
!254 = distinct !{!254, !69, !70}
!255 = distinct !{!255, !69, !70}
!256 = distinct !{!256, !69, !70}
!257 = distinct !{!257, !69, !70}
!258 = !{!80, !53, i64 0}
!259 = distinct !{!259, !69, !70}
!260 = distinct !{!260, !69, !70}
!261 = !{!80, !58, i64 96}
!262 = distinct !{!262, !69, !70}
!263 = distinct !{!263, !69, !70}
!264 = distinct !{!264, !69, !70}
!265 = distinct !{!265, !69, !70}
!266 = distinct !{!266, !69, !70}
!267 = distinct !{!267, !69, !70}
!268 = distinct !{!268, !69, !70}
!269 = distinct !{!269, !69, !70}
!270 = distinct !{!270, !69, !70}
!271 = distinct !{!271, !69, !70}
!272 = distinct !{!272, !69, !70}
!273 = distinct !{!273, !69, !70}
!274 = !{!"function_entry_count", i64 485783}
!275 = !{!"branch_weights", i32 485745, i32 38}
!276 = distinct !{!276, !69, !70}
