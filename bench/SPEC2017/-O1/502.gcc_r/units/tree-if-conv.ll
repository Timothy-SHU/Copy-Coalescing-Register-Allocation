; ModuleID = 'tree-if-conv.c'
source_filename = "tree-if-conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"ifcvt\00", align 1
@pass_if_conversion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_if_conversion, ptr @main_tree_if_conversion, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 89 } }, align 8
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@ifc_bbs = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"-------------------------\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"not inner most loop\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"less than 2 basic blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"multiple exits\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Irreducible loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Applying if-conversion\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tree-if-conv.c\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"----------[%d]-------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"basic block after exit bb but before latch\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"non empty basic block after exit bb\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"latch is not dominated by exit_block\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Difficult to handle edges\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"don't know what to do\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"stmt not suitable for ifcvt\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"tree could trap...\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"LHS is not var\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"More than two phi node args.\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Virtual phi not on loop header.\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Difficult to handle this virtual phi.\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"------if-convert stmt\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"_ifc_\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"new phi replacement stmt\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_if_conversion() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @main_tree_if_conversion() #10 !prof !54 !PGOFuncName !56 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1360, label %13, !prof !59

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.loops, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1360, label %17, !prof !59

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !62
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %1360, label %20, !prof !64

20:                                               ; preds = %17
  br i1 %12, label %96, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.loops, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8, !tbaa !62
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %29 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %28, i64 noundef 8, i64 noundef 4) #14
  %30 = load ptr, ptr @cfun, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.loops, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  br label %35

35:                                               ; preds = %48, %27
  %36 = phi ptr [ %34, %27 ], [ %49, %48 ]
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, ptr %29, align 4, !tbaa !70
  %41 = add i32 %40, 1
  store i32 %41, ptr %29, align 4, !tbaa !70
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds %struct.VEC_int_base, ptr %29, i64 0, i32 2, i64 %42
  store i32 %37, ptr %43, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.loop, ptr %36, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %53, %44
  %49 = phi ptr [ %46, %44 ], [ %56, %53 ]
  br label %35, !llvm.loop !73

50:                                               ; preds = %72
  %51 = icmp eq ptr %29, null
  %52 = getelementptr inbounds %struct.loops, ptr %32, i64 0, i32 1
  br label %75

53:                                               ; preds = %44, %72
  %54 = phi ptr [ %73, %72 ], [ %36, %44 ]
  %55 = getelementptr inbounds %struct.loop, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !74
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %48, !llvm.loop !73

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.loop, ptr %54, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 8, !tbaa !62
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %63, %62 ], [ 0, %58 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = add i32 %65, -1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %60, i64 0, i32 2, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi ptr [ %71, %67 ], [ null, %64 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %50, label %53, !llvm.loop !76

75:                                               ; preds = %50, %87
  %76 = phi i32 [ %88, %87 ], [ 0, %50 ]
  br i1 %51, label %84, label %77

77:                                               ; preds = %75
  %78 = load i32, ptr %29, align 4, !tbaa !70
  %79 = icmp ugt i32 %78, %76
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds %struct.VEC_int_base, ptr %29, i64 0, i32 2, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  br label %84

84:                                               ; preds = %80, %77, %75
  %85 = phi i32 [ %83, %80 ], [ 0, %77 ], [ 0, %75 ]
  %86 = phi i1 [ false, %80 ], [ true, %77 ], [ true, %75 ]
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = add i32 %76, 1
  %89 = load ptr, ptr %52, align 8, !tbaa !60
  %90 = zext i32 %85 to i64
  %91 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %89, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = icmp eq ptr %92, null
  br i1 %93, label %75, label %96, !llvm.loop !77

94:                                               ; preds = %84
  br i1 %51, label %96, label %95

95:                                               ; preds = %94
  tail call void @free(ptr noundef %29)
  br label %96

96:                                               ; preds = %87, %94, %95, %20
  %97 = phi i32 [ 0, %20 ], [ %76, %95 ], [ %76, %94 ], [ %88, %87 ]
  %98 = phi ptr [ null, %20 ], [ null, %95 ], [ null, %94 ], [ %29, %87 ]
  %99 = phi ptr [ null, %20 ], [ null, %95 ], [ null, %94 ], [ %92, %87 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %1360, label %101

101:                                              ; preds = %96, %1355
  %102 = phi ptr [ %1358, %1355 ], [ %99, %96 ]
  %103 = phi ptr [ %1357, %1355 ], [ %98, %96 ]
  %104 = phi i32 [ %1356, %1355 ], [ %97, %96 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !35
  %105 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !72
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %110 = icmp eq ptr %109, null
  br i1 %110, label %647, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %113 = and i32 %112, 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %647, label %115

115:                                              ; preds = %111
  %116 = call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr nonnull %109)
  br label %647

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 6
  %119 = load i32, ptr %118, align 4, !tbaa !78
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %123 = icmp eq ptr %122, null
  br i1 %123, label %647, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %647, label %128

128:                                              ; preds = %124
  %129 = call i64 @fwrite(ptr nonnull @.str.3, i64 25, i64 1, ptr nonnull %122)
  br label %647

130:                                              ; preds = %117
  %131 = call ptr @single_exit(ptr noundef nonnull %102) #14
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %135 = icmp eq ptr %134, null
  br i1 %135, label %647, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %138 = and i32 %137, 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %647, label %140

140:                                              ; preds = %136
  %141 = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr nonnull %134)
  br label %647

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !79
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 1
  br label %146

146:                                              ; preds = %173, %142
  %147 = phi i32 [ 0, %142 ], [ %174, %173 ]
  %148 = load ptr, ptr %145, align 8, !tbaa !35
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load i32, ptr %148, align 8, !tbaa !80
  br label %152

152:                                              ; preds = %150, %146
  %153 = phi i32 [ %151, %150 ], [ 0, %146 ]
  %154 = icmp eq i32 %153, %147
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = zext i32 %147 to i64
  %157 = getelementptr inbounds %struct.VEC_edge_base, ptr %148, i64 0, i32 2, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi ptr [ %158, %155 ], [ null, %152 ]
  br i1 %154, label %175, label %161

161:                                              ; preds = %159
  %162 = call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %102, ptr noundef %160) #14
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %647

164:                                              ; preds = %161
  %165 = load ptr, ptr %145, align 8, !tbaa !35
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = load i32, ptr %165, align 8, !tbaa !80
  br label %169

169:                                              ; preds = %167, %164
  %170 = phi i32 [ %168, %167 ], [ 0, %164 ]
  %171 = icmp ult i32 %147, %170
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %173

173:                                              ; preds = %172, %169
  %174 = add i32 %147, 1
  br label %146, !llvm.loop !82

175:                                              ; preds = %159
  call void @calculate_dominance_info(i32 noundef 1) #14
  call void @calculate_dominance_info(i32 noundef 2) #14
  %176 = load i32, ptr %118, align 4, !tbaa !78
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1082, ptr noundef nonnull @.str.8) #14
  br label %179

179:                                              ; preds = %178, %175
  %180 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !83
  %182 = load ptr, ptr @cfun, align 8, !tbaa !35
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !84
  %185 = getelementptr inbounds %struct.control_flow_graph, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !85
  %187 = icmp eq ptr %181, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1083, ptr noundef nonnull @.str.8) #14
  br label %189

189:                                              ; preds = %188, %179
  %190 = load i32, ptr %118, align 4, !tbaa !78
  %191 = zext i32 %190 to i64
  %192 = call ptr @xcalloc(i64 noundef %191, i64 noundef 8) #14
  %193 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  %194 = call ptr @get_loop_body_in_bfs_order(ptr noundef nonnull %102) #14
  %195 = load i32, ptr %118, align 4, !tbaa !78
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %267, label %197

197:                                              ; preds = %189, %258
  %198 = phi i32 [ %259, %258 ], [ 0, %189 ]
  %199 = phi i32 [ %265, %258 ], [ 0, %189 ]
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds ptr, ptr %194, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !35
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 13
  %204 = load i32, ptr %203, align 8, !tbaa !87
  %205 = and i32 %204, 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %197
  call void @free(ptr noundef %194)
  call void @bitmap_obstack_free(ptr noundef %193) #14
  call void @free(ptr noundef %192)
  br label %268

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !89
  %211 = call i32 @bitmap_bit_p(ptr noundef %193, i32 noundef %210) #14
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %258

213:                                              ; preds = %208
  %214 = icmp eq ptr %202, null
  br label %215

215:                                              ; preds = %213, %247
  %216 = phi i32 [ %248, %247 ], [ 0, %213 ]
  br i1 %214, label %217, label %218

217:                                              ; preds = %215
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.8) #14
  br label %218

218:                                              ; preds = %217, %215
  %219 = load ptr, ptr %202, align 8, !tbaa !35
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = load i32, ptr %219, align 8, !tbaa !80
  br label %223

223:                                              ; preds = %221, %218
  %224 = phi i32 [ %222, %221 ], [ 0, %218 ]
  %225 = icmp eq i32 %224, %216
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = zext i32 %216 to i64
  %228 = getelementptr inbounds %struct.VEC_edge_base, ptr %219, i64 0, i32 2, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !35
  br label %230

230:                                              ; preds = %226, %223
  %231 = phi ptr [ %229, %226 ], [ null, %223 ]
  br i1 %225, label %252, label %232

232:                                              ; preds = %230
  %233 = load ptr, ptr %231, align 8, !tbaa !90
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 9
  %235 = load i32, ptr %234, align 8, !tbaa !89
  %236 = call i32 @bitmap_bit_p(ptr noundef %193, i32 noundef %235) #14
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %202, align 8, !tbaa !35
  %240 = icmp eq ptr %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %239, align 8, !tbaa !80
  br label %243

243:                                              ; preds = %241, %238
  %244 = phi i32 [ %242, %241 ], [ 0, %238 ]
  %245 = icmp ult i32 %216, %244
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %247

247:                                              ; preds = %246, %243
  %248 = add i32 %216, 1
  br label %215, !llvm.loop !92

249:                                              ; preds = %232
  %250 = load ptr, ptr %143, align 8, !tbaa !79
  %251 = icmp eq ptr %202, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %230, %249
  %253 = load i32, ptr %209, align 8, !tbaa !89
  %254 = call zeroext i8 @bitmap_set_bit(ptr noundef %193, i32 noundef %253) #14
  %255 = add i32 %198, 1
  %256 = zext i32 %198 to i64
  %257 = getelementptr inbounds ptr, ptr %192, i64 %256
  store ptr %202, ptr %257, align 8, !tbaa !35
  br label %258

258:                                              ; preds = %252, %249, %208
  %259 = phi i32 [ %198, %208 ], [ %255, %252 ], [ %198, %249 ]
  %260 = add i32 %199, 1
  %261 = load i32, ptr %118, align 4, !tbaa !78
  %262 = icmp ne i32 %260, %261
  %263 = icmp eq i32 %259, %261
  %264 = select i1 %262, i1 true, i1 %263
  %265 = select i1 %264, i32 %260, i32 0
  %266 = icmp ult i32 %265, %261
  br i1 %266, label %197, label %267, !llvm.loop !93

267:                                              ; preds = %258, %189
  call void @free(ptr noundef %194)
  call void @bitmap_obstack_free(ptr noundef %193) #14
  br label %268

268:                                              ; preds = %267, %207
  %269 = phi ptr [ null, %207 ], [ %192, %267 ]
  store ptr %269, ptr @ifc_bbs, align 8, !tbaa !35
  %270 = icmp eq ptr %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %118, align 4, !tbaa !78
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %636, label %284

274:                                              ; preds = %268
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %276 = icmp eq ptr %275, null
  br i1 %276, label %283, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %279 = and i32 %278, 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %277
  %282 = call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr nonnull %275)
  br label %283

283:                                              ; preds = %281, %277, %274
  call void @free_dominance_info(i32 noundef 2) #14
  br label %647

284:                                              ; preds = %271, %628
  %285 = phi i64 [ %632, %628 ], [ 0, %271 ]
  %286 = phi ptr [ %631, %628 ], [ null, %271 ]
  %287 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %288 = getelementptr inbounds ptr, ptr %287, i64 %285
  %289 = load ptr, ptr %288, align 8, !tbaa !35
  %290 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %291 = icmp eq ptr %290, null
  br i1 %291, label %300, label %292

292:                                              ; preds = %284
  %293 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %294 = and i32 %293, 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.basic_block_def, ptr %289, i64 0, i32 9
  %298 = load i32, ptr %297, align 8, !tbaa !89
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %290, ptr noundef nonnull @.str.10, i32 noundef %298)
  br label %300

300:                                              ; preds = %296, %292, %284
  %301 = icmp eq ptr %286, null
  br i1 %301, label %343, label %302

302:                                              ; preds = %300
  %303 = load ptr, ptr %180, align 8, !tbaa !83
  %304 = icmp eq ptr %303, %289
  br i1 %304, label %314, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %307 = icmp eq ptr %306, null
  br i1 %307, label %647, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %310 = and i32 %309, 8
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %647, label %312

312:                                              ; preds = %308
  %313 = call i64 @fwrite(ptr nonnull @.str.11, i64 43, i64 1, ptr nonnull %306)
  br label %647

314:                                              ; preds = %302
  %315 = call zeroext i8 @empty_block_p(ptr noundef %289) #14
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %319 = icmp eq ptr %318, null
  br i1 %319, label %647, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %322 = and i32 %321, 8
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %647, label %324

324:                                              ; preds = %320
  %325 = call i64 @fwrite(ptr nonnull @.str.12, i64 36, i64 1, ptr nonnull %318)
  br label %647

326:                                              ; preds = %314
  %327 = load ptr, ptr %180, align 8, !tbaa !83
  %328 = icmp ne ptr %327, %289
  %329 = icmp eq ptr %289, %286
  %330 = or i1 %329, %328
  br i1 %330, label %343, label %331

331:                                              ; preds = %326
  %332 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %289, ptr noundef nonnull %286) #14
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %331
  %335 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %336 = icmp eq ptr %335, null
  br i1 %336, label %647, label %337

337:                                              ; preds = %334
  %338 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %339 = and i32 %338, 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %647, label %341

341:                                              ; preds = %337
  %342 = call i64 @fwrite(ptr nonnull @.str.13, i64 37, i64 1, ptr nonnull %335)
  br label %647

343:                                              ; preds = %331, %326, %300
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %289, i64 0, i32 1
  br label %345

345:                                              ; preds = %381, %343
  %346 = phi i32 [ 0, %343 ], [ %382, %381 ]
  %347 = load ptr, ptr %344, align 8, !tbaa !35
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = load i32, ptr %347, align 8, !tbaa !80
  br label %351

351:                                              ; preds = %349, %345
  %352 = phi i32 [ %350, %349 ], [ 0, %345 ]
  %353 = icmp eq i32 %352, %346
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = zext i32 %346 to i64
  %356 = getelementptr inbounds %struct.VEC_edge_base, ptr %347, i64 0, i32 2, i64 %355
  %357 = load ptr, ptr %356, align 8, !tbaa !35
  br label %358

358:                                              ; preds = %354, %351
  %359 = phi ptr [ %357, %354 ], [ null, %351 ]
  br i1 %353, label %383, label %360

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct.edge_def, ptr %359, i64 0, i32 7
  %362 = load i32, ptr %361, align 8, !tbaa !94
  %363 = and i32 %362, 142
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %374, label %365

365:                                              ; preds = %360
  %366 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %367 = icmp eq ptr %366, null
  br i1 %367, label %647, label %368

368:                                              ; preds = %365
  %369 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %370 = and i32 %369, 8
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %647, label %372

372:                                              ; preds = %368
  %373 = call i64 @fwrite(ptr nonnull @.str.14, i64 26, i64 1, ptr nonnull %366)
  br label %647

374:                                              ; preds = %360
  br i1 %348, label %377, label %375

375:                                              ; preds = %374
  %376 = load i32, ptr %347, align 8, !tbaa !80
  br label %377

377:                                              ; preds = %375, %374
  %378 = phi i32 [ %376, %375 ], [ 0, %374 ]
  %379 = icmp ult i32 %346, %378
  br i1 %379, label %381, label %380

380:                                              ; preds = %377
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %381

381:                                              ; preds = %380, %377
  %382 = add i32 %346, 1
  br label %345, !llvm.loop !95

383:                                              ; preds = %358
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %289, i64 0, i32 13
  %385 = load i32, ptr %384, align 8, !tbaa !87, !noalias !96
  %386 = and i32 %385, 512
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.basic_block_def, ptr %289, i64 0, i32 7
  %390 = load ptr, ptr %389, align 8, !tbaa !46, !noalias !96
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392

392:                                              ; preds = %388
  %393 = load ptr, ptr %390, align 8, !tbaa !99, !noalias !96
  br label %394

394:                                              ; preds = %392, %388, %383
  %395 = phi ptr [ %393, %392 ], [ null, %388 ], [ null, %383 ]
  %396 = icmp eq ptr %395, null
  br i1 %396, label %399, label %397

397:                                              ; preds = %394
  %398 = load ptr, ptr %395, align 8, !tbaa !101, !noalias !96
  br label %399

399:                                              ; preds = %397, %394
  %400 = phi ptr [ %398, %397 ], [ null, %394 ]
  %401 = icmp eq ptr %400, null
  br i1 %401, label %514, label %402

402:                                              ; preds = %399, %510
  %403 = phi ptr [ %512, %510 ], [ %400, %399 ]
  %404 = load ptr, ptr %403, align 8, !tbaa !103
  %405 = load i32, ptr %404, align 8
  %406 = trunc i32 %405 to i8
  switch i8 %406, label %500 [
    i8 4, label %510
    i8 2, label %510
    i8 6, label %407
    i8 1, label %510
  ]

407:                                              ; preds = %402
  %408 = and i32 %405, 255
  %409 = icmp eq i32 %408, 6
  br i1 %409, label %410, label %647

410:                                              ; preds = %407
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %412 = icmp eq ptr %411, null
  br i1 %412, label %420, label %413

413:                                              ; preds = %410
  %414 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %415 = and i32 %414, 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %413
  %418 = call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %411)
  %419 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %419, ptr noundef nonnull %404, i32 noundef 0, i32 noundef 2) #14
  br label %420

420:                                              ; preds = %417, %413, %410
  %421 = load i32, ptr %404, align 8
  %422 = and i32 %421, 255
  %423 = add nsw i32 %422, -10
  %424 = icmp ult i32 %423, -9
  br i1 %424, label %437, label %425

425:                                              ; preds = %420
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !50
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !105
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %434

434:                                              ; preds = %433, %425
  %435 = getelementptr inbounds i8, ptr %404, i64 %431
  %436 = load ptr, ptr %435, align 8, !tbaa !35
  br label %437

437:                                              ; preds = %434, %420
  %438 = phi ptr [ %436, %434 ], [ null, %420 ]
  %439 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %404) #14
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %441, label %456

441:                                              ; preds = %437
  %442 = load i32, ptr %404, align 8
  %443 = and i32 %442, 254
  %444 = add nsw i32 %443, -10
  %445 = icmp ult i32 %444, -4
  %446 = and i32 %442, 16384
  %447 = icmp eq i32 %446, 0
  %448 = or i1 %447, %445
  br i1 %448, label %449, label %456

449:                                              ; preds = %441
  %450 = load i64, ptr %438, align 8
  %451 = and i64 %450, 4259839
  %452 = icmp eq i64 %451, 4194445
  br i1 %452, label %456, label %453

453:                                              ; preds = %449
  %454 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %404) #14
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %465, label %456

456:                                              ; preds = %453, %449, %441, %437
  %457 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %458 = icmp eq ptr %457, null
  br i1 %458, label %647, label %459

459:                                              ; preds = %456
  %460 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %461 = and i32 %460, 8
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %647, label %463

463:                                              ; preds = %459
  %464 = call i64 @fwrite(ptr nonnull @.str.16, i64 28, i64 1, ptr nonnull %457)
  br label %647

465:                                              ; preds = %453
  %466 = load ptr, ptr %143, align 8, !tbaa !79
  %467 = icmp eq ptr %466, %289
  br i1 %467, label %480, label %468

468:                                              ; preds = %465
  %469 = call zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef nonnull %404) #14
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %480, label %471

471:                                              ; preds = %468
  %472 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %473 = icmp eq ptr %472, null
  br i1 %473, label %647, label %474

474:                                              ; preds = %471
  %475 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %476 = and i32 %475, 8
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %647, label %478

478:                                              ; preds = %474
  %479 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr nonnull %472)
  br label %647

480:                                              ; preds = %468, %465
  %481 = load i64, ptr %438, align 8
  %482 = and i64 %481, 65535
  %483 = icmp eq i64 %482, 141
  br i1 %483, label %510, label %484

484:                                              ; preds = %480
  %485 = load ptr, ptr %143, align 8, !tbaa !79
  %486 = icmp eq ptr %485, %289
  br i1 %486, label %510, label %487

487:                                              ; preds = %484
  %488 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef nonnull %102, ptr noundef %289), !range !106
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %490, label %510

490:                                              ; preds = %487
  %491 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %492 = icmp eq ptr %491, null
  br i1 %492, label %647, label %493

493:                                              ; preds = %490
  %494 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %495 = and i32 %494, 8
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %647, label %497

497:                                              ; preds = %493
  %498 = call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %491)
  %499 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %499, ptr noundef nonnull %404, i32 noundef 0, i32 noundef 2) #14
  br label %647

500:                                              ; preds = %402
  %501 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %502 = icmp eq ptr %501, null
  br i1 %502, label %647, label %503

503:                                              ; preds = %500
  %504 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %505 = and i32 %504, 8
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %647, label %507

507:                                              ; preds = %503
  %508 = call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %501)
  %509 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %509, ptr noundef nonnull %404, i32 noundef 0, i32 noundef 2) #14
  br label %647

510:                                              ; preds = %402, %402, %487, %484, %480, %402
  %511 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %403, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !107
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %402, !llvm.loop !108

514:                                              ; preds = %510, %399
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %289) #14
  %515 = load ptr, ptr %7, align 8, !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  %516 = icmp eq ptr %515, null
  br i1 %516, label %628, label %517

517:                                              ; preds = %514
  %518 = icmp eq ptr %289, null
  br label %519

519:                                              ; preds = %517, %546
  %520 = phi i32 [ %547, %546 ], [ 0, %517 ]
  br i1 %518, label %521, label %522

521:                                              ; preds = %519
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.8) #14
  br label %522

522:                                              ; preds = %521, %519
  %523 = load ptr, ptr %289, align 8, !tbaa !35
  %524 = icmp eq ptr %523, null
  br i1 %524, label %527, label %525

525:                                              ; preds = %522
  %526 = load i32, ptr %523, align 8, !tbaa !80
  br label %527

527:                                              ; preds = %525, %522
  %528 = phi i32 [ %526, %525 ], [ 0, %522 ]
  %529 = icmp eq i32 %528, %520
  br i1 %529, label %534, label %530

530:                                              ; preds = %527
  %531 = zext i32 %520 to i64
  %532 = getelementptr inbounds %struct.VEC_edge_base, ptr %523, i64 0, i32 2, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !35
  br label %534

534:                                              ; preds = %530, %527
  %535 = phi ptr [ %533, %530 ], [ null, %527 ]
  br i1 %529, label %548, label %536

536:                                              ; preds = %534
  %537 = getelementptr inbounds %struct.edge_def, ptr %535, i64 0, i32 3
  store ptr null, ptr %537, align 8, !tbaa !110
  %538 = load ptr, ptr %289, align 8, !tbaa !35
  %539 = icmp eq ptr %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %536
  %541 = load i32, ptr %538, align 8, !tbaa !80
  br label %542

542:                                              ; preds = %540, %536
  %543 = phi i32 [ %541, %540 ], [ 0, %536 ]
  %544 = icmp ult i32 %520, %543
  br i1 %544, label %546, label %545

545:                                              ; preds = %542
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %546

546:                                              ; preds = %545, %542
  %547 = add i32 %520, 1
  br label %519, !llvm.loop !111

548:                                              ; preds = %534, %624
  %549 = phi ptr [ %626, %624 ], [ %515, %534 ]
  %550 = load ptr, ptr %549, align 8, !tbaa !103
  %551 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %552 = icmp eq ptr %551, null
  br i1 %552, label %560, label %553

553:                                              ; preds = %548
  %554 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %555 = and i32 %554, 8
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %553
  %558 = call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %551)
  %559 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %559, ptr noundef %550, i32 noundef 0, i32 noundef 2) #14
  br label %560

560:                                              ; preds = %557, %553, %548
  %561 = load ptr, ptr %143, align 8, !tbaa !79
  %562 = icmp eq ptr %561, %289
  br i1 %562, label %576, label %563

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.gimple_statement_phi, ptr %550, i64 0, i32 2
  %565 = load i32, ptr %564, align 4, !tbaa !46
  %566 = icmp eq i32 %565, 2
  br i1 %566, label %576, label %567

567:                                              ; preds = %563
  %568 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %569 = icmp eq ptr %568, null
  br i1 %569, label %647, label %570

570:                                              ; preds = %567
  %571 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %572 = and i32 %571, 8
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %647, label %574

574:                                              ; preds = %570
  %575 = call i64 @fwrite(ptr nonnull @.str.20, i64 29, i64 1, ptr nonnull %568)
  br label %647

576:                                              ; preds = %563, %560
  %577 = getelementptr inbounds %struct.gimple_statement_phi, ptr %550, i64 0, i32 3
  %578 = load ptr, ptr %577, align 8, !tbaa !46
  %579 = getelementptr inbounds %struct.tree_ssa_name, ptr %578, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !46
  %581 = call zeroext i8 @is_gimple_reg(ptr noundef %580) #14
  %582 = icmp eq i8 %581, 0
  br i1 %582, label %583, label %624

583:                                              ; preds = %576
  %584 = load ptr, ptr %143, align 8, !tbaa !79
  %585 = icmp eq ptr %584, %289
  br i1 %585, label %595, label %586

586:                                              ; preds = %583
  %587 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %588 = icmp eq ptr %587, null
  br i1 %588, label %647, label %589

589:                                              ; preds = %586
  %590 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %591 = and i32 %590, 8
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %647, label %593

593:                                              ; preds = %589
  %594 = call i64 @fwrite(ptr nonnull @.str.21, i64 32, i64 1, ptr nonnull %587)
  br label %647

595:                                              ; preds = %583
  %596 = load ptr, ptr %577, align 8, !tbaa !46
  %597 = getelementptr inbounds %struct.tree_ssa_name, ptr %596, i64 0, i32 5
  %598 = getelementptr inbounds %struct.tree_ssa_name, ptr %596, i64 0, i32 5, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !112
  %600 = icmp eq ptr %599, %597
  br i1 %600, label %624, label %601

601:                                              ; preds = %595, %618
  %602 = phi ptr [ %622, %618 ], [ %599, %595 ]
  %603 = phi ptr [ %620, %618 ], [ %599, %595 ]
  %604 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %602, i64 0, i32 2
  %605 = load ptr, ptr %604, align 8, !tbaa !46
  %606 = load i32, ptr %605, align 8
  %607 = and i32 %606, 255
  %608 = icmp eq i32 %607, 16
  br i1 %608, label %609, label %618

609:                                              ; preds = %601
  %610 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %611 = icmp eq ptr %610, null
  br i1 %611, label %647, label %612

612:                                              ; preds = %609
  %613 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %614 = and i32 %613, 8
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %647, label %616

616:                                              ; preds = %612
  %617 = call i64 @fwrite(ptr nonnull @.str.22, i64 38, i64 1, ptr nonnull %610)
  br label %647

618:                                              ; preds = %601
  %619 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %603, i64 0, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !112
  %621 = icmp eq ptr %620, %597
  %622 = select i1 %621, ptr null, ptr %620
  %623 = icmp eq ptr %620, %597
  br i1 %623, label %624, label %601, !llvm.loop !114

624:                                              ; preds = %618, %595, %576
  %625 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %549, i64 0, i32 2
  %626 = load ptr, ptr %625, align 8, !tbaa !107
  %627 = icmp eq ptr %626, null
  br i1 %627, label %628, label %548, !llvm.loop !115

628:                                              ; preds = %624, %514
  %629 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef nonnull %102, ptr noundef %289), !range !106
  %630 = icmp eq i8 %629, 0
  %631 = select i1 %630, ptr %286, ptr %289
  %632 = add nuw nsw i64 %285, 1
  %633 = load i32, ptr %118, align 4, !tbaa !78
  %634 = zext i32 %633 to i64
  %635 = icmp ult i64 %632, %634
  br i1 %635, label %284, label %636, !llvm.loop !116

636:                                              ; preds = %628, %271
  %637 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %638 = icmp eq ptr %637, null
  br i1 %638, label %641, label %639

639:                                              ; preds = %636
  %640 = call i64 @fwrite(ptr nonnull @.str.6, i64 23, i64 1, ptr nonnull %637)
  br label %641

641:                                              ; preds = %639, %636
  call void @free_dominance_info(i32 noundef 2) #14
  %642 = load i32, ptr %118, align 4, !tbaa !78
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %661, label %644

644:                                              ; preds = %641
  %645 = getelementptr inbounds i8, ptr %8, i64 8
  %646 = getelementptr inbounds i8, ptr %8, i64 16
  br label %668

647:                                              ; preds = %161, %407, %108, %111, %115, %121, %124, %128, %133, %136, %140, %283, %305, %308, %312, %317, %320, %324, %334, %337, %341, %365, %368, %372, %456, %459, %463, %471, %474, %478, %490, %493, %497, %500, %503, %507, %567, %570, %574, %586, %589, %593, %609, %612, %616
  %648 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %649 = icmp eq ptr %648, null
  br i1 %649, label %656, label %650

650:                                              ; preds = %647
  %651 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %652 = and i32 %651, 8
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %656, label %654

654:                                              ; preds = %650
  %655 = call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %648)
  br label %656

656:                                              ; preds = %654, %650, %647
  %657 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %658 = icmp eq ptr %657, null
  br i1 %658, label %660, label %659

659:                                              ; preds = %656
  call void @free(ptr noundef %657)
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !35
  br label %660

660:                                              ; preds = %659, %656
  call void @free_dominance_info(i32 noundef 2) #14
  br label %1328

661:                                              ; preds = %838, %641
  %662 = phi i32 [ %642, %641 ], [ %840, %838 ]
  %663 = icmp ugt i32 %662, 1
  br i1 %663, label %664, label %843

664:                                              ; preds = %661
  %665 = getelementptr inbounds i8, ptr %1, i64 8
  %666 = getelementptr inbounds i8, ptr %1, i64 16
  %667 = zext i32 %662 to i64
  br label %847

668:                                              ; preds = %644, %838
  %669 = phi i64 [ %839, %838 ], [ 0, %644 ]
  %670 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %671 = getelementptr inbounds ptr, ptr %670, i64 %669
  %672 = load ptr, ptr %671, align 8, !tbaa !35
  %673 = getelementptr inbounds %struct.basic_block_def, ptr %672, i64 0, i32 2
  %674 = load ptr, ptr %673, align 8, !tbaa !117
  %675 = getelementptr inbounds %struct.basic_block_def, ptr %672, i64 0, i32 13
  %676 = load i32, ptr %675, align 8, !tbaa !87, !noalias !118
  %677 = and i32 %676, 512
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %685

679:                                              ; preds = %668
  %680 = getelementptr inbounds %struct.basic_block_def, ptr %672, i64 0, i32 7
  %681 = load ptr, ptr %680, align 8, !tbaa !46, !noalias !118
  %682 = icmp eq ptr %681, null
  br i1 %682, label %685, label %683

683:                                              ; preds = %679
  %684 = load ptr, ptr %681, align 8, !tbaa !99, !noalias !118
  br label %685

685:                                              ; preds = %683, %679, %668
  %686 = phi ptr [ %684, %683 ], [ null, %679 ], [ null, %668 ]
  %687 = icmp eq ptr %686, null
  br i1 %687, label %690, label %688

688:                                              ; preds = %685
  %689 = load ptr, ptr %686, align 8, !tbaa !101, !noalias !118
  br label %690

690:                                              ; preds = %688, %685
  %691 = phi ptr [ %689, %688 ], [ null, %685 ]
  store ptr %691, ptr %8, align 8, !tbaa.struct !109
  store ptr %686, ptr %645, align 8, !tbaa.struct !121
  store ptr %672, ptr %646, align 8, !tbaa.struct !122
  %692 = icmp eq ptr %691, null
  br i1 %692, label %812, label %693

693:                                              ; preds = %690, %809
  %694 = phi ptr [ %810, %809 ], [ %691, %690 ]
  %695 = phi ptr [ %803, %809 ], [ %674, %690 ]
  %696 = load ptr, ptr %694, align 8, !tbaa !103
  %697 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %698 = icmp eq ptr %697, null
  br i1 %698, label %707, label %699

699:                                              ; preds = %693
  %700 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %701 = and i32 %700, 8
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %707, label %703

703:                                              ; preds = %699
  %704 = call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr nonnull %697)
  %705 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %705, ptr noundef %696, i32 noundef 0, i32 noundef 2) #14
  %706 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_stmt(ptr noundef %706, ptr noundef %695, i32 noundef 2) #14
  br label %707

707:                                              ; preds = %703, %699, %693
  %708 = load i32, ptr %696, align 8
  %709 = trunc i32 %708 to i8
  switch i8 %709, label %801 [
    i8 4, label %802
    i8 2, label %710
    i8 6, label %802
    i8 1, label %742
  ]

710:                                              ; preds = %707
  %711 = load ptr, ptr %8, align 8
  %712 = load ptr, ptr %711, align 8, !tbaa !103
  %713 = load i32, ptr %712, align 8
  %714 = and i32 %713, -65281
  %715 = icmp eq i32 %714, 2
  br i1 %715, label %716, label %802

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.gimple_statement_base, ptr %712, i64 0, i32 3
  %718 = load i32, ptr %717, align 4, !tbaa !46
  %719 = icmp ugt i32 %718, 1
  br i1 %719, label %721, label %720

720:                                              ; preds = %716
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1665, ptr noundef nonnull @.str.8) #14
  br label %721

721:                                              ; preds = %720, %716
  %722 = load i32, ptr %712, align 8
  %723 = and i32 %722, 255
  %724 = zext nneg i32 %723 to i64
  %725 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %724
  %726 = load i32, ptr %725, align 4, !tbaa !50
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %727
  %729 = load i64, ptr %728, align 8, !tbaa !105
  %730 = icmp eq i64 %729, 0
  br i1 %730, label %731, label %732

731:                                              ; preds = %721
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %732

732:                                              ; preds = %731, %721
  %733 = getelementptr inbounds i8, ptr %712, i64 %729
  %734 = getelementptr inbounds ptr, ptr %733, i64 1
  store ptr null, ptr %734, align 8, !tbaa !35
  %735 = load ptr, ptr %8, align 8
  %736 = load ptr, ptr %735, align 8, !tbaa !103
  %737 = load i32, ptr %736, align 8
  %738 = and i32 %737, 255
  %739 = add nsw i32 %738, -10
  %740 = icmp ult i32 %739, -9
  br i1 %740, label %802, label %741

741:                                              ; preds = %732
  call void @gimple_set_modified(ptr noundef nonnull %736, i8 noundef zeroext 1) #14
  call void @update_stmt_operands(ptr noundef nonnull %736) #14
  br label %802

742:                                              ; preds = %707
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %743 = getelementptr inbounds %struct.gimple_statement_base, ptr %696, i64 0, i32 2
  %744 = load i32, ptr %743, align 8, !tbaa !46
  %745 = load i32, ptr %696, align 8
  %746 = and i32 %745, 255
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %749, label %748

748:                                              ; preds = %742
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 285, ptr noundef nonnull @.str.8) #14
  br label %749

749:                                              ; preds = %748, %742
  %750 = load i32, ptr %696, align 8
  %751 = lshr i32 %750, 16
  %752 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %753 = and i32 %750, 255
  %754 = add nsw i32 %753, -10
  %755 = icmp ult i32 %754, -9
  br i1 %755, label %768, label %756

756:                                              ; preds = %749
  %757 = zext nneg i32 %753 to i64
  %758 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %757
  %759 = load i32, ptr %758, align 4, !tbaa !50
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !105
  %763 = icmp eq i64 %762, 0
  br i1 %763, label %764, label %765

764:                                              ; preds = %756
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %765

765:                                              ; preds = %764, %756
  %766 = getelementptr inbounds i8, ptr %696, i64 %762
  %767 = load ptr, ptr %766, align 8, !tbaa !35
  br label %768

768:                                              ; preds = %765, %749
  %769 = phi ptr [ %767, %765 ], [ null, %749 ]
  %770 = load i32, ptr %696, align 8
  %771 = and i32 %770, 255
  %772 = add nsw i32 %771, -10
  %773 = icmp ult i32 %772, -9
  br i1 %773, label %787, label %774

774:                                              ; preds = %768
  %775 = zext nneg i32 %771 to i64
  %776 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %775
  %777 = load i32, ptr %776, align 4, !tbaa !50
  %778 = zext i32 %777 to i64
  %779 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %778
  %780 = load i64, ptr %779, align 8, !tbaa !105
  %781 = icmp eq i64 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %774
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %783

783:                                              ; preds = %782, %774
  %784 = getelementptr inbounds i8, ptr %696, i64 %780
  %785 = getelementptr inbounds ptr, ptr %784, i64 1
  %786 = load ptr, ptr %785, align 8, !tbaa !35
  br label %787

787:                                              ; preds = %783, %768
  %788 = phi ptr [ %786, %783 ], [ null, %768 ]
  %789 = call ptr @fold_build2_stat_loc(i32 noundef %744, i32 noundef %751, ptr noundef %752, ptr noundef %769, ptr noundef %788) #14
  %790 = getelementptr inbounds %struct.gimple_statement_base, ptr %696, i64 0, i32 4
  %791 = load ptr, ptr %790, align 8, !tbaa !46
  call void @extract_true_false_edges_from_block(ptr noundef %791, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %792 = load ptr, ptr %5, align 8, !tbaa !35
  call fastcc void @add_to_dst_predicate_list(ptr noundef nonnull %102, ptr noundef %792, ptr noundef %695, ptr noundef %789, ptr noundef nonnull %8)
  %793 = call ptr @unshare_expr(ptr noundef %789) #14
  %794 = call ptr @invert_truthvalue_loc(i32 noundef %744, ptr noundef %793) #14
  %795 = load ptr, ptr %6, align 8, !tbaa !35
  call fastcc void @add_to_dst_predicate_list(ptr noundef nonnull %102, ptr noundef %795, ptr noundef %695, ptr noundef %794, ptr noundef nonnull %8)
  %796 = load ptr, ptr %790, align 8, !tbaa !46
  %797 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef nonnull %102, ptr noundef %796), !range !106
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %799, label %800

799:                                              ; preds = %787
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #14
  br label %800

800:                                              ; preds = %799, %787
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %802

801:                                              ; preds = %707
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 267, ptr noundef nonnull @.str.8) #14
  br label %802

802:                                              ; preds = %707, %801, %800, %741, %732, %710, %707
  %803 = phi ptr [ %695, %801 ], [ null, %800 ], [ %695, %710 ], [ %695, %707 ], [ %695, %732 ], [ %695, %741 ], [ %695, %707 ]
  %804 = load ptr, ptr %8, align 8
  %805 = icmp eq ptr %804, null
  br i1 %805, label %809, label %806

806:                                              ; preds = %802
  %807 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %804, i64 0, i32 2
  %808 = load ptr, ptr %807, align 8, !tbaa !107
  store ptr %808, ptr %8, align 8, !tbaa !123
  br label %809

809:                                              ; preds = %806, %802
  %810 = load ptr, ptr %8, align 8
  %811 = icmp eq ptr %810, null
  br i1 %811, label %812, label %693, !llvm.loop !125

812:                                              ; preds = %809, %690
  %813 = phi ptr [ %674, %690 ], [ %803, %809 ]
  %814 = getelementptr inbounds %struct.basic_block_def, ptr %672, i64 0, i32 1
  %815 = load ptr, ptr %814, align 8, !tbaa !126
  %816 = icmp eq ptr %815, null
  br i1 %816, label %821, label %817

817:                                              ; preds = %812
  %818 = load i32, ptr %815, align 8, !tbaa !80
  %819 = icmp eq i32 %818, 1
  %820 = zext i1 %819 to i8
  br label %821

821:                                              ; preds = %817, %812
  %822 = phi i8 [ %820, %817 ], [ 0, %812 ]
  %823 = icmp eq i8 %822, 0
  br i1 %823, label %838, label %824

824:                                              ; preds = %821
  br i1 %816, label %828, label %825

825:                                              ; preds = %824
  %826 = load i32, ptr %815, align 8, !tbaa !80
  %827 = icmp eq i32 %826, 1
  br i1 %827, label %829, label %828

828:                                              ; preds = %825, %824
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 645, ptr noundef nonnull @.str.8) #14
  br label %829

829:                                              ; preds = %828, %825
  %830 = load ptr, ptr %814, align 8, !tbaa !126
  %831 = getelementptr inbounds %struct.VEC_edge_base, ptr %830, i64 0, i32 2, i64 0
  %832 = load ptr, ptr %831, align 8, !tbaa !35
  %833 = getelementptr inbounds %struct.edge_def, ptr %832, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !127
  %835 = icmp eq ptr %813, null
  %836 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %837 = select i1 %835, ptr %836, ptr %813
  call fastcc void @add_to_predicate_list(ptr noundef %834, ptr noundef %837)
  br label %838

838:                                              ; preds = %829, %821
  %839 = add nuw nsw i64 %669, 1
  %840 = load i32, ptr %118, align 4, !tbaa !78
  %841 = zext i32 %840 to i64
  %842 = icmp ult i64 %839, %841
  br i1 %842, label %668, label %661, !llvm.loop !128

843:                                              ; preds = %1071, %661
  %844 = icmp eq i32 %662, 0
  br i1 %844, label %1084, label %845

845:                                              ; preds = %843
  %846 = zext i32 %662 to i64
  br label %1077

847:                                              ; preds = %664, %1071
  %848 = phi i64 [ 1, %664 ], [ %1072, %1071 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %849 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %850 = getelementptr inbounds ptr, ptr %849, i64 %848
  %851 = load ptr, ptr %850, align 8, !tbaa !35
  %852 = load ptr, ptr %143, align 8, !tbaa !79
  %853 = icmp eq ptr %851, %852
  br i1 %853, label %1071, label %854

854:                                              ; preds = %847
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %851) #14
  %855 = load ptr, ptr %2, align 8, !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %856 = getelementptr inbounds %struct.basic_block_def, ptr %851, i64 0, i32 13
  %857 = load i32, ptr %856, align 8, !tbaa !87, !noalias !129
  %858 = and i32 %857, 512
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %866

860:                                              ; preds = %854
  %861 = getelementptr inbounds %struct.basic_block_def, ptr %851, i64 0, i32 7
  %862 = load ptr, ptr %861, align 8, !tbaa !46, !noalias !129
  %863 = icmp eq ptr %862, null
  br i1 %863, label %866, label %864

864:                                              ; preds = %860
  %865 = load ptr, ptr %862, align 8, !tbaa !99, !noalias !129
  br label %866

866:                                              ; preds = %864, %860, %854
  %867 = phi ptr [ %865, %864 ], [ null, %860 ], [ null, %854 ]
  %868 = icmp eq ptr %867, null
  br i1 %868, label %871, label %869

869:                                              ; preds = %866
  %870 = load ptr, ptr %867, align 8, !tbaa !101, !noalias !129
  br label %871

871:                                              ; preds = %869, %866
  %872 = phi ptr [ %870, %869 ], [ null, %866 ]
  %873 = icmp eq ptr %872, null
  br i1 %873, label %884, label %874

874:                                              ; preds = %871, %880
  %875 = phi ptr [ %882, %880 ], [ %872, %871 ]
  %876 = load ptr, ptr %875, align 8, !tbaa !103, !noalias !134
  %877 = load i32, ptr %876, align 8, !noalias !134
  %878 = and i32 %877, 255
  %879 = icmp eq i32 %878, 4
  br i1 %879, label %880, label %884

880:                                              ; preds = %874
  %881 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %875, i64 0, i32 2
  %882 = load ptr, ptr %881, align 8, !tbaa !107, !noalias !134
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %874, !llvm.loop !135

884:                                              ; preds = %880, %874, %871
  %885 = phi ptr [ %872, %871 ], [ %882, %880 ], [ %875, %874 ]
  store ptr %885, ptr %1, align 8, !tbaa.struct !109
  store ptr %867, ptr %665, align 8, !tbaa.struct !121
  store ptr %851, ptr %666, align 8, !tbaa.struct !122
  %886 = icmp eq ptr %855, null
  br i1 %886, label %982, label %887

887:                                              ; preds = %884
  %888 = load ptr, ptr %851, align 8, !tbaa !136
  %889 = icmp eq ptr %888, null
  br i1 %889, label %893, label %890

890:                                              ; preds = %887
  %891 = load i32, ptr %888, align 8, !tbaa !80
  %892 = icmp eq i32 %891, 2
  br i1 %892, label %894, label %893

893:                                              ; preds = %890, %887
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 716, ptr noundef nonnull @.str.8) #14
  br label %894

894:                                              ; preds = %893, %890
  %895 = load ptr, ptr %851, align 8, !tbaa !136
  %896 = getelementptr inbounds %struct.VEC_edge_base, ptr %895, i64 0, i32 2, i64 0
  %897 = load ptr, ptr %896, align 8, !tbaa !35
  %898 = getelementptr inbounds %struct.VEC_edge_base, ptr %895, i64 0, i32 2, i64 1
  %899 = load ptr, ptr %898, align 8, !tbaa !35
  %900 = load ptr, ptr %897, align 8, !tbaa !90
  %901 = getelementptr inbounds %struct.basic_block_def, ptr %900, i64 0, i32 2
  %902 = load ptr, ptr %901, align 8, !tbaa !117
  %903 = icmp eq ptr %902, null
  br i1 %903, label %904, label %905

904:                                              ; preds = %894
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 746, ptr noundef nonnull @.str.8) #14
  br label %905

905:                                              ; preds = %904, %894
  %906 = load i64, ptr %902, align 8
  %907 = and i64 %906, 65535
  %908 = icmp eq i64 %907, 96
  %909 = select i1 %908, ptr %897, ptr %899
  %910 = select i1 %908, ptr %899, ptr %897
  %911 = load ptr, ptr %910, align 8, !tbaa !90
  %912 = load ptr, ptr %143, align 8, !tbaa !79
  %913 = icmp eq ptr %911, %912
  br i1 %913, label %918, label %914

914:                                              ; preds = %905
  %915 = load ptr, ptr %909, align 8, !tbaa !90
  %916 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %915, ptr noundef %911) #14
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %935, label %918

918:                                              ; preds = %914, %905
  %919 = load ptr, ptr %909, align 8, !tbaa !90
  %920 = getelementptr inbounds %struct.basic_block_def, ptr %919, i64 0, i32 2
  %921 = load ptr, ptr %920, align 8, !tbaa !117
  %922 = getelementptr inbounds %struct.edge_def, ptr %909, i64 0, i32 3
  %923 = load ptr, ptr %922, align 8, !tbaa !110
  %924 = icmp eq ptr %923, null
  br i1 %924, label %928, label %925

925:                                              ; preds = %918
  %926 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %927 = call ptr @build2_stat(i32 noundef 93, ptr noundef %926, ptr noundef %921, ptr noundef nonnull %923) #14
  br label %928

928:                                              ; preds = %925, %918
  %929 = phi ptr [ %921, %918 ], [ %927, %925 ]
  %930 = load i64, ptr %929, align 8
  %931 = and i64 %930, 65535
  %932 = icmp eq i64 %931, 96
  br i1 %932, label %933, label %945

933:                                              ; preds = %928
  %934 = call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef nonnull %929) #14
  br label %945

935:                                              ; preds = %914
  %936 = load ptr, ptr %910, align 8, !tbaa !90
  %937 = getelementptr inbounds %struct.basic_block_def, ptr %936, i64 0, i32 2
  %938 = load ptr, ptr %937, align 8, !tbaa !117
  %939 = getelementptr inbounds %struct.edge_def, ptr %910, i64 0, i32 3
  %940 = load ptr, ptr %939, align 8, !tbaa !110
  %941 = icmp eq ptr %940, null
  br i1 %941, label %945, label %942

942:                                              ; preds = %935
  %943 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %944 = call ptr @build2_stat(i32 noundef 93, ptr noundef %943, ptr noundef %938, ptr noundef nonnull %940) #14
  br label %945

945:                                              ; preds = %942, %935, %933, %928
  %946 = phi ptr [ %934, %933 ], [ %929, %928 ], [ %938, %935 ], [ %944, %942 ]
  %947 = phi ptr [ %910, %933 ], [ %909, %928 ], [ %910, %935 ], [ %910, %942 ]
  %948 = call ptr @unshare_expr(ptr noundef %946) #14
  %949 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %1, ptr noundef %948, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  %950 = call zeroext i8 @is_gimple_reg(ptr noundef %949) #14
  %951 = icmp eq i8 %950, 0
  br i1 %951, label %952, label %976

952:                                              ; preds = %945
  %953 = call zeroext i8 @is_gimple_condexpr(ptr noundef %949) #14
  %954 = icmp eq i8 %953, 0
  br i1 %954, label %955, label %976

955:                                              ; preds = %952
  %956 = getelementptr inbounds %struct.tree_common, ptr %949, i64 0, i32 2
  %957 = load ptr, ptr %956, align 8, !tbaa !46
  %958 = call ptr @unshare_expr(ptr noundef %949) #14
  %959 = call fastcc ptr @ifc_temp_var(ptr noundef %957, ptr noundef %958)
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %959, i32 noundef 1) #14
  %960 = load i32, ptr %959, align 8
  %961 = and i32 %960, 255
  %962 = add nsw i32 %961, -10
  %963 = icmp ult i32 %962, -9
  br i1 %963, label %976, label %964

964:                                              ; preds = %955
  %965 = zext nneg i32 %961 to i64
  %966 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %965
  %967 = load i32, ptr %966, align 4, !tbaa !50
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %968
  %970 = load i64, ptr %969, align 8, !tbaa !105
  %971 = icmp eq i64 %970, 0
  br i1 %971, label %972, label %973

972:                                              ; preds = %964
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %973

973:                                              ; preds = %972, %964
  %974 = getelementptr inbounds i8, ptr %959, i64 %970
  %975 = load ptr, ptr %974, align 8, !tbaa !35
  br label %976

976:                                              ; preds = %973, %955, %952, %945
  %977 = phi ptr [ %949, %952 ], [ %949, %945 ], [ %975, %973 ], [ null, %955 ]
  %978 = icmp eq ptr %977, null
  br i1 %978, label %979, label %980

979:                                              ; preds = %976
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 808, ptr noundef nonnull @.str.8) #14
  br label %980

980:                                              ; preds = %979, %976
  %981 = load ptr, ptr %947, align 8, !tbaa !90
  br label %982

982:                                              ; preds = %980, %884
  %983 = phi ptr [ %977, %980 ], [ null, %884 ]
  %984 = phi ptr [ %981, %980 ], [ null, %884 ]
  %985 = icmp eq ptr %855, null
  br i1 %985, label %1062, label %986

986:                                              ; preds = %982, %1058
  %987 = phi ptr [ %1060, %1058 ], [ %855, %982 ]
  %988 = load ptr, ptr %987, align 8, !tbaa !103
  %989 = load i32, ptr %988, align 8
  %990 = and i32 %989, 255
  %991 = icmp eq i32 %990, 16
  br i1 %991, label %993, label %992

992:                                              ; preds = %986
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 834, ptr noundef nonnull @.str.8) #14
  br label %993

993:                                              ; preds = %992, %986
  %994 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 2
  %995 = load i32, ptr %994, align 4, !tbaa !46
  %996 = icmp eq i32 %995, 2
  br i1 %996, label %998, label %997

997:                                              ; preds = %993
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 837, ptr noundef nonnull @.str.8) #14
  br label %998

998:                                              ; preds = %997, %993
  %999 = getelementptr inbounds %struct.gimple_statement_base, ptr %988, i64 0, i32 4
  %1000 = load ptr, ptr %999, align 8, !tbaa !46
  %1001 = load ptr, ptr %1000, align 8, !tbaa !136
  %1002 = getelementptr inbounds %struct.VEC_edge_base, ptr %1001, i64 0, i32 2, i64 1
  %1003 = load ptr, ptr %1002, align 8, !tbaa !35
  %1004 = load ptr, ptr %1003, align 8, !tbaa !90
  %1005 = icmp eq ptr %1004, %984
  %1006 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 1
  br i1 %1005, label %1007, label %1016

1007:                                             ; preds = %998
  %1008 = load i32, ptr %1006, align 8, !tbaa !46
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1007
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.8) #14
  br label %1011

1011:                                             ; preds = %1010, %1007
  %1012 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 4, i64 1, i32 0, i32 3
  %1013 = load ptr, ptr %1012, align 8, !tbaa !137
  %1014 = load ptr, ptr %1013, align 8, !tbaa !35
  %1015 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 4, i64 0, i32 0, i32 3
  br label %1025

1016:                                             ; preds = %998
  %1017 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 4, i64 0, i32 0, i32 3
  %1018 = load ptr, ptr %1017, align 8, !tbaa !137
  %1019 = load ptr, ptr %1018, align 8, !tbaa !35
  %1020 = load i32, ptr %1006, align 8, !tbaa !46
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1016
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.8) #14
  br label %1023

1023:                                             ; preds = %1022, %1016
  %1024 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 4, i64 1, i32 0, i32 3
  br label %1025

1025:                                             ; preds = %1023, %1011
  %1026 = phi ptr [ %1014, %1011 ], [ %1019, %1023 ]
  %1027 = phi ptr [ %1015, %1011 ], [ %1024, %1023 ]
  %1028 = load ptr, ptr %1027, align 8, !tbaa !137
  %1029 = load ptr, ptr %1028, align 8, !tbaa !35
  %1030 = getelementptr inbounds %struct.gimple_statement_phi, ptr %988, i64 0, i32 3
  %1031 = load ptr, ptr %1030, align 8, !tbaa !35
  %1032 = getelementptr inbounds %struct.tree_common, ptr %1031, i64 0, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !46
  %1034 = call ptr @unshare_expr(ptr noundef %983) #14
  %1035 = call ptr @unshare_expr(ptr noundef %1026) #14
  %1036 = call ptr @unshare_expr(ptr noundef %1029) #14
  %1037 = call ptr @build3_stat(i32 noundef 56, ptr noundef %1033, ptr noundef %1034, ptr noundef %1035, ptr noundef %1036) #14
  %1038 = load ptr, ptr %1030, align 8, !tbaa !35
  %1039 = call ptr @unshare_expr(ptr noundef %1038) #14
  %1040 = call ptr @gimple_build_assign_stat(ptr noundef %1039, ptr noundef %1037) #14
  %1041 = load ptr, ptr %1030, align 8, !tbaa !46
  %1042 = getelementptr inbounds %struct.tree_ssa_name, ptr %1041, i64 0, i32 2
  store ptr %1040, ptr %1042, align 8, !tbaa !46
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1040, i32 noundef 1) #14
  %1043 = load i32, ptr %1040, align 8
  %1044 = and i32 %1043, 255
  %1045 = add nsw i32 %1044, -10
  %1046 = icmp ult i32 %1045, -9
  br i1 %1046, label %1048, label %1047

1047:                                             ; preds = %1025
  call void @gimple_set_modified(ptr noundef nonnull %1040, i8 noundef zeroext 1) #14
  call void @update_stmt_operands(ptr noundef nonnull %1040) #14
  br label %1048

1048:                                             ; preds = %1047, %1025
  %1049 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1058, label %1051

1051:                                             ; preds = %1048
  %1052 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1053 = and i32 %1052, 8
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1058, label %1055

1055:                                             ; preds = %1051
  %1056 = call i64 @fwrite(ptr nonnull @.str.25, i64 25, i64 1, ptr nonnull %1049)
  %1057 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %1057, ptr noundef nonnull %1040, i32 noundef 0, i32 noundef 2) #14
  br label %1058

1058:                                             ; preds = %1055, %1051, %1048
  call void @release_phi_node(ptr noundef nonnull %988) #14
  %1059 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %987, i64 0, i32 2
  %1060 = load ptr, ptr %1059, align 8, !tbaa !107
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1062, label %986, !llvm.loop !138

1062:                                             ; preds = %1058, %982
  %1063 = load i32, ptr %856, align 8, !tbaa !87
  %1064 = and i32 %1063, 512
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1067, label %1066

1066:                                             ; preds = %1062
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 523, ptr noundef nonnull @.str.8) #14
  br label %1067

1067:                                             ; preds = %1066, %1062
  %1068 = getelementptr inbounds %struct.basic_block_def, ptr %851, i64 0, i32 7
  %1069 = load ptr, ptr %1068, align 8, !tbaa !46
  %1070 = getelementptr inbounds %struct.gimple_bb_info, ptr %1069, i64 0, i32 1
  store ptr null, ptr %1070, align 8, !tbaa !139
  br label %1071

1071:                                             ; preds = %1067, %847
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  %1072 = add nuw nsw i64 %848, 1
  %1073 = icmp eq i64 %1072, %667
  br i1 %1073, label %843, label %847, !llvm.loop !140

1074:                                             ; preds = %1077
  %1075 = add nuw nsw i64 %1078, 1
  %1076 = icmp eq i64 %1075, %846
  br i1 %1076, label %1084, label %1077, !llvm.loop !141

1077:                                             ; preds = %845, %1074
  %1078 = phi i64 [ 0, %845 ], [ %1075, %1074 ]
  %1079 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %1080 = getelementptr inbounds ptr, ptr %1079, i64 %1078
  %1081 = load ptr, ptr %1080, align 8, !tbaa !35
  %1082 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef nonnull %102, ptr noundef %1081), !range !106
  %1083 = icmp eq i8 %1082, 0
  br i1 %1083, label %1074, label %1084

1084:                                             ; preds = %1074, %1077, %843
  %1085 = phi ptr [ null, %843 ], [ null, %1074 ], [ %1081, %1077 ]
  %1086 = load ptr, ptr %180, align 8, !tbaa !83
  %1087 = icmp eq ptr %1085, %1086
  br i1 %1087, label %1088, label %1089

1088:                                             ; preds = %1084
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 945, ptr noundef nonnull @.str.8) #14
  br label %1089

1089:                                             ; preds = %1088, %1084
  %1090 = icmp ugt i32 %662, 1
  br i1 %1090, label %1091, label %1134

1091:                                             ; preds = %1089
  %1092 = zext i32 %662 to i64
  br label %1093

1093:                                             ; preds = %1091, %1131
  %1094 = phi i64 [ 1, %1091 ], [ %1132, %1131 ]
  %1095 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %1096 = getelementptr inbounds ptr, ptr %1095, i64 %1094
  %1097 = load ptr, ptr %1096, align 8, !tbaa !35
  %1098 = icmp eq ptr %1097, null
  br label %1099

1099:                                             ; preds = %1128, %1093
  %1100 = phi i32 [ %1129, %1128 ], [ 0, %1093 ]
  %1101 = zext i32 %1100 to i64
  br label %1102

1102:                                             ; preds = %1099, %1130
  br i1 %1098, label %1103, label %1104

1103:                                             ; preds = %1102
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.8) #14
  br label %1104

1104:                                             ; preds = %1103, %1102
  %1105 = load ptr, ptr %1097, align 8, !tbaa !35
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1109, label %1107

1107:                                             ; preds = %1104
  %1108 = load i32, ptr %1105, align 8, !tbaa !80
  br label %1109

1109:                                             ; preds = %1107, %1104
  %1110 = phi i32 [ %1108, %1107 ], [ 0, %1104 ]
  %1111 = icmp eq i32 %1110, %1100
  br i1 %1111, label %1115, label %1112

1112:                                             ; preds = %1109
  %1113 = getelementptr inbounds %struct.VEC_edge_base, ptr %1105, i64 0, i32 2, i64 %1101
  %1114 = load ptr, ptr %1113, align 8, !tbaa !35
  br label %1115

1115:                                             ; preds = %1112, %1109
  %1116 = phi ptr [ %1114, %1112 ], [ null, %1109 ]
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1131, label %1118

1118:                                             ; preds = %1115
  %1119 = load ptr, ptr %1116, align 8, !tbaa !90
  %1120 = icmp eq ptr %1119, %1085
  br i1 %1120, label %1121, label %1130

1121:                                             ; preds = %1118
  br i1 %1106, label %1124, label %1122

1122:                                             ; preds = %1121
  %1123 = load i32, ptr %1105, align 8, !tbaa !80
  br label %1124

1124:                                             ; preds = %1122, %1121
  %1125 = phi i32 [ %1123, %1122 ], [ 0, %1121 ]
  %1126 = icmp ult i32 %1100, %1125
  br i1 %1126, label %1128, label %1127

1127:                                             ; preds = %1124
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %1128

1128:                                             ; preds = %1127, %1124
  %1129 = add i32 %1100, 1
  br label %1099, !llvm.loop !142

1130:                                             ; preds = %1118
  call void @remove_edge(ptr noundef nonnull %1116) #14
  br label %1102, !llvm.loop !142

1131:                                             ; preds = %1115
  %1132 = add nuw nsw i64 %1094, 1
  %1133 = icmp eq i64 %1132, %1092
  br i1 %1133, label %1134, label %1093, !llvm.loop !143

1134:                                             ; preds = %1131, %1089
  %1135 = icmp eq ptr %1085, null
  %1136 = load ptr, ptr %143, align 8, !tbaa !79
  br i1 %1135, label %1178, label %1137

1137:                                             ; preds = %1134
  %1138 = icmp eq ptr %1085, %1136
  br i1 %1138, label %1142, label %1139

1139:                                             ; preds = %1137
  %1140 = call ptr @make_edge(ptr noundef %1136, ptr noundef nonnull %1085, i32 noundef 1) #14
  %1141 = load ptr, ptr %143, align 8, !tbaa !79
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %1085, ptr noundef %1141) #14
  br label %1142

1142:                                             ; preds = %1139, %1137
  %1143 = getelementptr inbounds %struct.basic_block_def, ptr %1085, i64 0, i32 1
  br label %1144

1144:                                             ; preds = %1174, %1142
  %1145 = phi i32 [ 0, %1142 ], [ %1175, %1174 ]
  %1146 = load ptr, ptr %1143, align 8, !tbaa !35
  %1147 = icmp eq ptr %1146, null
  br i1 %1147, label %1150, label %1148

1148:                                             ; preds = %1144
  %1149 = load i32, ptr %1146, align 8, !tbaa !80
  br label %1150

1150:                                             ; preds = %1148, %1144
  %1151 = phi i32 [ %1149, %1148 ], [ 0, %1144 ]
  %1152 = icmp eq i32 %1151, %1145
  br i1 %1152, label %1157, label %1153

1153:                                             ; preds = %1150
  %1154 = zext i32 %1145 to i64
  %1155 = getelementptr inbounds %struct.VEC_edge_base, ptr %1146, i64 0, i32 2, i64 %1154
  %1156 = load ptr, ptr %1155, align 8, !tbaa !35
  br label %1157

1157:                                             ; preds = %1153, %1150
  %1158 = phi ptr [ %1156, %1153 ], [ null, %1150 ]
  br i1 %1152, label %1176, label %1159

1159:                                             ; preds = %1157
  %1160 = call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %102, ptr noundef %1158) #14
  %1161 = icmp eq i8 %1160, 0
  br i1 %1161, label %1162, label %1165

1162:                                             ; preds = %1159
  %1163 = load ptr, ptr %180, align 8, !tbaa !83
  %1164 = call ptr @redirect_edge_and_branch(ptr noundef %1158, ptr noundef %1163) #14
  br label %1165

1165:                                             ; preds = %1162, %1159
  %1166 = load ptr, ptr %1143, align 8, !tbaa !35
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1170, label %1168

1168:                                             ; preds = %1165
  %1169 = load i32, ptr %1166, align 8, !tbaa !80
  br label %1170

1170:                                             ; preds = %1168, %1165
  %1171 = phi i32 [ %1169, %1168 ], [ 0, %1165 ]
  %1172 = icmp ult i32 %1145, %1171
  br i1 %1172, label %1174, label %1173

1173:                                             ; preds = %1170
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %1174

1174:                                             ; preds = %1173, %1170
  %1175 = add i32 %1145, 1
  br label %1144, !llvm.loop !144

1176:                                             ; preds = %1157
  %1177 = load ptr, ptr %180, align 8, !tbaa !83
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1177, ptr noundef nonnull %1085) #14
  br label %1183

1178:                                             ; preds = %1134
  %1179 = load ptr, ptr %180, align 8, !tbaa !83
  %1180 = call ptr @make_edge(ptr noundef %1136, ptr noundef %1179, i32 noundef 1) #14
  %1181 = load ptr, ptr %180, align 8, !tbaa !83
  %1182 = load ptr, ptr %143, align 8, !tbaa !79
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1181, ptr noundef %1182) #14
  br label %1183

1183:                                             ; preds = %1178, %1176
  %1184 = load ptr, ptr %143, align 8, !tbaa !79
  %1185 = icmp ugt i32 %662, 1
  br i1 %1185, label %1186, label %1274

1186:                                             ; preds = %1183
  %1187 = getelementptr inbounds i8, ptr %3, i64 8
  %1188 = getelementptr inbounds i8, ptr %3, i64 16
  %1189 = getelementptr inbounds i8, ptr %4, i64 8
  %1190 = getelementptr inbounds i8, ptr %4, i64 16
  %1191 = getelementptr inbounds %struct.basic_block_def, ptr %1184, i64 0, i32 13
  %1192 = getelementptr inbounds %struct.basic_block_def, ptr %1184, i64 0, i32 7
  %1193 = zext i32 %662 to i64
  br label %1194

1194:                                             ; preds = %1186, %1271
  %1195 = phi i64 [ 1, %1186 ], [ %1272, %1271 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %1196 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  %1197 = getelementptr inbounds ptr, ptr %1196, i64 %1195
  %1198 = load ptr, ptr %1197, align 8, !tbaa !35
  %1199 = icmp eq ptr %1198, %1085
  br i1 %1199, label %1271, label %1200

1200:                                             ; preds = %1194
  %1201 = load ptr, ptr %180, align 8, !tbaa !83
  %1202 = icmp eq ptr %1198, %1201
  br i1 %1202, label %1271, label %1203

1203:                                             ; preds = %1200
  %1204 = getelementptr inbounds %struct.basic_block_def, ptr %1198, i64 0, i32 13
  %1205 = load i32, ptr %1204, align 8, !tbaa !87, !noalias !145
  %1206 = and i32 %1205, 512
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1208, label %1214

1208:                                             ; preds = %1203
  %1209 = getelementptr inbounds %struct.basic_block_def, ptr %1198, i64 0, i32 7
  %1210 = load ptr, ptr %1209, align 8, !tbaa !46, !noalias !145
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1214, label %1212

1212:                                             ; preds = %1208
  %1213 = load ptr, ptr %1210, align 8, !tbaa !99, !noalias !145
  br label %1214

1214:                                             ; preds = %1212, %1208, %1203
  %1215 = phi ptr [ %1213, %1212 ], [ null, %1208 ], [ null, %1203 ]
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1219, label %1217

1217:                                             ; preds = %1214
  %1218 = load ptr, ptr %1215, align 8, !tbaa !101, !noalias !145
  br label %1219

1219:                                             ; preds = %1217, %1214
  %1220 = phi ptr [ %1218, %1217 ], [ null, %1214 ]
  store ptr %1220, ptr %3, align 8, !tbaa.struct !109
  store ptr %1215, ptr %1187, align 8, !tbaa.struct !121
  store ptr %1198, ptr %1188, align 8, !tbaa.struct !122
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1236, label %1222

1222:                                             ; preds = %1219, %1233
  %1223 = phi ptr [ %1234, %1233 ], [ %1220, %1219 ]
  %1224 = load ptr, ptr %1223, align 8, !tbaa !103
  %1225 = load i32, ptr %1224, align 8
  %1226 = and i32 %1225, 255
  %1227 = icmp eq i32 %1226, 4
  br i1 %1227, label %1228, label %1229

1228:                                             ; preds = %1222
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #14
  br label %1233

1229:                                             ; preds = %1222
  call void @gimple_set_bb(ptr noundef nonnull %1224, ptr noundef %1184) #14
  %1230 = load ptr, ptr %3, align 8, !tbaa !123
  %1231 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1230, i64 0, i32 2
  %1232 = load ptr, ptr %1231, align 8, !tbaa !107
  store ptr %1232, ptr %3, align 8, !tbaa !123
  br label %1233

1233:                                             ; preds = %1229, %1228
  %1234 = load ptr, ptr %3, align 8
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1236, label %1222, !llvm.loop !148

1236:                                             ; preds = %1233, %1219
  %1237 = load i32, ptr %1191, align 8, !tbaa !87, !noalias !149
  %1238 = and i32 %1237, 512
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1240, label %1245

1240:                                             ; preds = %1236
  %1241 = load ptr, ptr %1192, align 8, !tbaa !46, !noalias !149
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1245, label %1243

1243:                                             ; preds = %1240
  %1244 = load ptr, ptr %1241, align 8, !tbaa !99, !noalias !149
  br label %1245

1245:                                             ; preds = %1243, %1240, %1236
  %1246 = phi ptr [ %1244, %1243 ], [ null, %1240 ], [ null, %1236 ]
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1251, label %1248

1248:                                             ; preds = %1245
  %1249 = getelementptr inbounds %struct.gimple_seq_d, ptr %1246, i64 0, i32 1
  %1250 = load ptr, ptr %1249, align 8, !tbaa !152, !noalias !149
  br label %1251

1251:                                             ; preds = %1248, %1245
  %1252 = phi ptr [ %1250, %1248 ], [ null, %1245 ]
  store ptr %1252, ptr %4, align 8, !tbaa.struct !109
  store ptr %1246, ptr %1189, align 8, !tbaa.struct !121
  store ptr %1184, ptr %1190, align 8, !tbaa.struct !122
  %1253 = load i32, ptr %1204, align 8, !tbaa !87
  %1254 = and i32 %1253, 512
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1256, label %1262

1256:                                             ; preds = %1251
  %1257 = getelementptr inbounds %struct.basic_block_def, ptr %1198, i64 0, i32 7
  %1258 = load ptr, ptr %1257, align 8, !tbaa !46
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1262, label %1260

1260:                                             ; preds = %1256
  %1261 = load ptr, ptr %1258, align 8, !tbaa !99
  br label %1262

1262:                                             ; preds = %1260, %1256, %1251
  %1263 = phi ptr [ %1261, %1260 ], [ null, %1256 ], [ null, %1251 ]
  call void @gsi_insert_seq_after(ptr noundef nonnull %4, ptr noundef %1263, i32 noundef 0) #14
  %1264 = load i32, ptr %1204, align 8, !tbaa !87
  %1265 = and i32 %1264, 512
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1268, label %1267

1267:                                             ; preds = %1262
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 248, ptr noundef nonnull @.str.8) #14
  br label %1268

1268:                                             ; preds = %1267, %1262
  %1269 = getelementptr inbounds %struct.basic_block_def, ptr %1198, i64 0, i32 7
  %1270 = load ptr, ptr %1269, align 8, !tbaa !46
  store ptr null, ptr %1270, align 8, !tbaa !99
  call void @delete_basic_block(ptr noundef %1198) #14
  br label %1271

1271:                                             ; preds = %1268, %1200, %1194
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  %1272 = add nuw nsw i64 %1195, 1
  %1273 = icmp eq i64 %1272, %1193
  br i1 %1273, label %1274, label %1194, !llvm.loop !153

1274:                                             ; preds = %1271, %1183
  br i1 %1135, label %1283, label %1275

1275:                                             ; preds = %1274
  %1276 = load ptr, ptr %143, align 8, !tbaa !79
  %1277 = icmp eq ptr %1085, %1276
  br i1 %1277, label %1283, label %1278

1278:                                             ; preds = %1275
  %1279 = call zeroext i8 @can_merge_blocks_p(ptr noundef %1276, ptr noundef nonnull %1085) #14
  %1280 = icmp eq i8 %1279, 0
  br i1 %1280, label %1283, label %1281

1281:                                             ; preds = %1278
  %1282 = load ptr, ptr %143, align 8, !tbaa !79
  call void @merge_blocks(ptr noundef %1282, ptr noundef nonnull %1085) #14
  br label %1283

1283:                                             ; preds = %1281, %1278, %1275, %1274
  %1284 = call ptr @get_loop_body(ptr noundef nonnull %102) #14
  %1285 = load i32, ptr %118, align 4, !tbaa !78
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1326, label %1287

1287:                                             ; preds = %1283, %1321
  %1288 = phi i64 [ %1322, %1321 ], [ 0, %1283 ]
  %1289 = getelementptr inbounds ptr, ptr %1284, i64 %1288
  %1290 = load ptr, ptr %1289, align 8, !tbaa !35
  %1291 = getelementptr inbounds %struct.basic_block_def, ptr %1290, i64 0, i32 2
  store ptr null, ptr %1291, align 8, !tbaa !117
  %1292 = load ptr, ptr %1289, align 8, !tbaa !35
  %1293 = getelementptr inbounds %struct.basic_block_def, ptr %1292, i64 0, i32 1
  br label %1294

1294:                                             ; preds = %1319, %1287
  %1295 = phi i32 [ 0, %1287 ], [ %1320, %1319 ]
  %1296 = load ptr, ptr %1293, align 8, !tbaa !35
  %1297 = icmp eq ptr %1296, null
  br i1 %1297, label %1300, label %1298

1298:                                             ; preds = %1294
  %1299 = load i32, ptr %1296, align 8, !tbaa !80
  br label %1300

1300:                                             ; preds = %1298, %1294
  %1301 = phi i32 [ %1299, %1298 ], [ 0, %1294 ]
  %1302 = icmp eq i32 %1301, %1295
  br i1 %1302, label %1307, label %1303

1303:                                             ; preds = %1300
  %1304 = zext i32 %1295 to i64
  %1305 = getelementptr inbounds %struct.VEC_edge_base, ptr %1296, i64 0, i32 2, i64 %1304
  %1306 = load ptr, ptr %1305, align 8, !tbaa !35
  br label %1307

1307:                                             ; preds = %1303, %1300
  %1308 = phi ptr [ %1306, %1303 ], [ null, %1300 ]
  br i1 %1302, label %1321, label %1309

1309:                                             ; preds = %1307
  %1310 = getelementptr inbounds %struct.edge_def, ptr %1308, i64 0, i32 3
  store ptr null, ptr %1310, align 8, !tbaa !110
  %1311 = load ptr, ptr %1293, align 8, !tbaa !35
  %1312 = icmp eq ptr %1311, null
  br i1 %1312, label %1315, label %1313

1313:                                             ; preds = %1309
  %1314 = load i32, ptr %1311, align 8, !tbaa !80
  br label %1315

1315:                                             ; preds = %1313, %1309
  %1316 = phi i32 [ %1314, %1313 ], [ 0, %1309 ]
  %1317 = icmp ult i32 %1295, %1316
  br i1 %1317, label %1319, label %1318

1318:                                             ; preds = %1315
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %1319

1319:                                             ; preds = %1318, %1315
  %1320 = add i32 %1295, 1
  br label %1294, !llvm.loop !154

1321:                                             ; preds = %1307
  %1322 = add nuw nsw i64 %1288, 1
  %1323 = load i32, ptr %118, align 4, !tbaa !78
  %1324 = zext i32 %1323 to i64
  %1325 = icmp ult i64 %1322, %1324
  br i1 %1325, label %1287, label %1326, !llvm.loop !155

1326:                                             ; preds = %1321, %1283
  call void @free(ptr noundef %1284)
  %1327 = load ptr, ptr @ifc_bbs, align 8, !tbaa !35
  call void @free(ptr noundef %1327)
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !35
  br label %1328

1328:                                             ; preds = %660, %1326
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %1329 = icmp eq ptr %103, null
  %1330 = load ptr, ptr @cfun, align 8
  %1331 = getelementptr inbounds %struct.function, ptr %1330, i64 0, i32 4
  br label %1332

1332:                                             ; preds = %1344, %1328
  %1333 = phi i32 [ %104, %1328 ], [ %1345, %1344 ]
  br i1 %1329, label %1341, label %1334

1334:                                             ; preds = %1332
  %1335 = load i32, ptr %103, align 4, !tbaa !70
  %1336 = icmp ugt i32 %1335, %1333
  br i1 %1336, label %1337, label %1341

1337:                                             ; preds = %1334
  %1338 = zext i32 %1333 to i64
  %1339 = getelementptr inbounds %struct.VEC_int_base, ptr %103, i64 0, i32 2, i64 %1338
  %1340 = load i32, ptr %1339, align 4, !tbaa !50
  br label %1341

1341:                                             ; preds = %1337, %1334, %1332
  %1342 = phi i32 [ %1340, %1337 ], [ 0, %1334 ], [ 0, %1332 ]
  %1343 = phi i1 [ false, %1337 ], [ true, %1334 ], [ true, %1332 ]
  br i1 %1343, label %1353, label %1344

1344:                                             ; preds = %1341
  %1345 = add i32 %1333, 1
  %1346 = load ptr, ptr %1331, align 8, !tbaa !57
  %1347 = getelementptr inbounds %struct.loops, ptr %1346, i64 0, i32 1
  %1348 = load ptr, ptr %1347, align 8, !tbaa !60
  %1349 = zext i32 %1342 to i64
  %1350 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1348, i64 0, i32 2, i64 %1349
  %1351 = load ptr, ptr %1350, align 8, !tbaa !35
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1332, label %1355, !llvm.loop !77

1353:                                             ; preds = %1341
  br i1 %1329, label %1355, label %1354

1354:                                             ; preds = %1353
  call void @free(ptr noundef %103)
  br label %1355

1355:                                             ; preds = %1344, %1353, %1354
  %1356 = phi i32 [ %1333, %1354 ], [ %1333, %1353 ], [ %1345, %1344 ]
  %1357 = phi ptr [ null, %1354 ], [ null, %1353 ], [ %103, %1344 ]
  %1358 = phi ptr [ null, %1354 ], [ null, %1353 ], [ %1351, %1344 ]
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1360, label %101, !llvm.loop !156

1360:                                             ; preds = %1355, %0, %13, %96, %17
  ret i32 0
}

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_to_predicate_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #12 !prof !34 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %6 ]
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %19 = tail call ptr @unshare_expr(ptr noundef nonnull %4) #14
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef %17, i32 noundef 94, ptr noundef %18, ptr noundef %19, ptr noundef %1) #14
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi ptr [ %20, %16 ], [ %1, %2 ]
  store ptr %22, ptr %3, align 8, !tbaa !117
  ret void
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !34 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  br label %4

4:                                                ; preds = %31, %2
  %5 = phi i32 [ 0, %2 ], [ %32, %31 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !80
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %10, %13
  %18 = phi ptr [ %16, %13 ], [ null, %10 ]
  br i1 %12, label %33, label %19

19:                                               ; preds = %17
  %20 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %18) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ 0, %22 ]
  %29 = icmp ult i32 %5, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #14
  br label %31

31:                                               ; preds = %27, %30
  %32 = add i32 %5, 1
  br label %4, !llvm.loop !157

33:                                               ; preds = %19, %17
  %34 = phi i8 [ 0, %17 ], [ 1, %19 ]
  ret i8 %34
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_bfs_order(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 !prof !34 {
  %6 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %7) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  %12 = icmp ne ptr %11, %2
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @unshare_expr(ptr noundef %3) #14
  br label %44

17:                                               ; preds = %10
  %18 = tail call ptr @unshare_expr(ptr noundef nonnull %2) #14
  %19 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  %20 = tail call ptr @unshare_expr(ptr noundef %3) #14
  %21 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %20, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !110
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %24 = tail call ptr @unshare_expr(ptr noundef %19) #14
  %25 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %23, ptr noundef %24, ptr noundef %21) #14
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %27 = tail call fastcc ptr @ifc_temp_var(ptr noundef %26, ptr noundef %25)
  tail call void @gsi_insert_before(ptr noundef %4, ptr noundef %27, i32 noundef 1) #14
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %44, label %32

32:                                               ; preds = %17
  %33 = zext nneg i32 %29 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !105
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds i8, ptr %27, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %41, %17, %15
  %45 = phi ptr [ %16, %15 ], [ %43, %41 ], [ null, %17 ]
  %46 = load ptr, ptr %6, align 8, !tbaa !127
  tail call fastcc void @add_to_predicate_list(ptr noundef %46, ptr noundef %45)
  br label %47

47:                                               ; preds = %5, %44
  ret void
}

declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @ifc_temp_var(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !34 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef nonnull @.str.24) #14
  %4 = tail call zeroext i8 @add_referenced_var(ptr noundef %3) #14
  %5 = tail call ptr @gimple_build_assign_stat(ptr noundef %3, ptr noundef %1) #14
  %6 = load ptr, ptr @cfun, align 8, !tbaa !35
  %7 = tail call ptr @make_ssa_name_fn(ptr noundef %6, ptr noundef %3, ptr noundef %5) #14
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1665, ptr noundef nonnull @.str.8) #14
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !105
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #14
  br label %28

28:                                               ; preds = %27, %17
  %29 = getelementptr inbounds i8, ptr %5, i64 %25
  store ptr %7, ptr %29, align 8, !tbaa !35
  %30 = icmp eq ptr %7, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr %7, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  store ptr %5, ptr %36, align 8, !tbaa !46
  br label %37

37:                                               ; preds = %28, %31, %35
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  store ptr %5, ptr %38, align 8, !tbaa !46
  %39 = load i32, ptr %5, align 8
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -10
  %42 = icmp ult i32 %41, -9
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @gimple_set_modified(ptr noundef nonnull %5, i8 noundef zeroext 1) #14
  tail call void @update_stmt_operands(ptr noundef nonnull %5) #14
  br label %44

44:                                               ; preds = %37, %43
  ret ptr %5
}

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @release_phi_node(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
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
!54 = !{!"function_entry_count", i64 38}
!55 = !{!"tree-if-conv.c;gate_tree_if_conversion"}
!56 = !{!"tree-if-conv.c;main_tree_if_conversion"}
!57 = !{!58, !36, i64 32}
!58 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!59 = !{!"branch_weights", i32 0, i32 38}
!60 = !{!61, !36, i64 8}
!61 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!62 = !{!63, !41, i64 0}
!63 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!64 = !{!"branch_weights", i32 38, i32 0}
!65 = !{!61, !36, i64 24}
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
!79 = !{!67, !36, i64 8}
!80 = !{!81, !41, i64 0}
!81 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = distinct !{!82, !52, !53}
!83 = !{!67, !36, i64 16}
!84 = !{!58, !36, i64 8}
!85 = !{!86, !36, i64 8}
!86 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!87 = !{!88, !41, i64 96}
!88 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!89 = !{!88, !41, i64 80}
!90 = !{!91, !36, i64 0}
!91 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = !{!91, !41, i64 48}
!95 = distinct !{!95, !52, !53}
!96 = !{!97}
!97 = distinct !{!97, !98, !"gsi_start_bb: argument 0"}
!98 = distinct !{!98, !"gsi_start_bb"}
!99 = !{!100, !36, i64 0}
!100 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!101 = !{!102, !36, i64 0}
!102 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!103 = !{!104, !36, i64 0}
!104 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!105 = !{!42, !42, i64 0}
!106 = !{i8 0, i8 2}
!107 = !{!104, !36, i64 16}
!108 = distinct !{!108, !52, !53}
!109 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!110 = !{!91, !36, i64 24}
!111 = distinct !{!111, !52, !53}
!112 = !{!113, !36, i64 8}
!113 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = !{!88, !36, i64 16}
!118 = !{!119}
!119 = distinct !{!119, !120, !"gsi_start_bb: argument 0"}
!120 = distinct !{!120, !"gsi_start_bb"}
!121 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!122 = !{i64 0, i64 8, !35}
!123 = !{!124, !36, i64 0}
!124 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!125 = distinct !{!125, !52, !53}
!126 = !{!88, !36, i64 8}
!127 = !{!91, !36, i64 8}
!128 = distinct !{!128, !52, !53}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"gsi_start_bb: argument 0"}
!131 = distinct !{!131, !"gsi_start_bb"}
!132 = distinct !{!132, !133, !"gsi_after_labels: argument 0"}
!133 = distinct !{!133, !"gsi_after_labels"}
!134 = !{!132}
!135 = distinct !{!135, !52, !53}
!136 = !{!88, !36, i64 0}
!137 = !{!113, !36, i64 24}
!138 = distinct !{!138, !52, !53}
!139 = !{!100, !36, i64 8}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = !{!146}
!146 = distinct !{!146, !147, !"gsi_start_bb: argument 0"}
!147 = distinct !{!147, !"gsi_start_bb"}
!148 = distinct !{!148, !52, !53}
!149 = !{!150}
!150 = distinct !{!150, !151, !"gsi_last_bb: argument 0"}
!151 = distinct !{!151, !"gsi_last_bb"}
!152 = !{!102, !36, i64 8}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
