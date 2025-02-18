; ModuleID = 'cfgloopanal.c'
source_filename = "cfgloopanal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"cfgloopanal.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@target_avail_regs = dso_local local_unnamed_addr global i32 0, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@target_res_regs = dso_local local_unnamed_addr global i32 0, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@target_reg_cost = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@target_spill_cost = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_ira_region = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
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
  %5 = tail call ptr @__ctype_tolower_loc() #14
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
  %5 = tail call ptr @__ctype_toupper_loc() #14
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
  br i1 %23, label %7, label %24, !llvm.loop !68

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @just_once_each_iteration_p(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #8 !prof !51 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef %1) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = phi i8 [ 0, %2 ], [ 0, %7 ], [ %16, %11 ]
  ret i8 %18
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #9 !prof !78 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !81

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !81

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !84
  br label %11

11:                                               ; preds = %0, %5, %9
  %12 = phi i32 [ 0, %0 ], [ %10, %9 ], [ 0, %5 ]
  br i1 %4, label %13, label %14, !prof !81

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #14
  br label %14

14:                                               ; preds = %11, %13
  %15 = load ptr, ptr @cfun, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %65, label %22, !prof !89

22:                                               ; preds = %14, %56
  %23 = phi ptr [ %58, %56 ], [ %18, %14 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !77
  %26 = and i32 %25, -5
  store i32 %26, ptr %24, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  br label %28

28:                                               ; preds = %54, %22
  %29 = phi i32 [ 0, %22 ], [ %55, %54 ]
  %30 = load ptr, ptr %27, align 8, !tbaa !52
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !90

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !91
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %33, %32 ], [ 0, %28 ]
  %36 = icmp eq i32 %35, %29
  br i1 %36, label %41, label %37, !prof !93

37:                                               ; preds = %34
  %38 = zext i32 %29 to i64
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  br label %41

41:                                               ; preds = %34, %37
  %42 = phi ptr [ %40, %37 ], [ null, %34 ]
  br i1 %36, label %56, label %43, !prof !93

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !94
  %46 = and i32 %45, -129
  store i32 %46, ptr %44, align 8, !tbaa !94
  %47 = icmp eq ptr %30, null
  br i1 %47, label %50, label %48, !prof !96

48:                                               ; preds = %43
  %49 = load i32, ptr %30, align 8, !tbaa !91
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %49, %48 ], [ 0, %43 ]
  %52 = icmp ult i32 %29, %51
  br i1 %52, label %54, label %53, !prof !97

53:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #14
  br label %54

54:                                               ; preds = %50, %53
  %55 = add i32 %29, 1
  br label %28, !llvm.loop !98

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = load ptr, ptr @cfun, align 8, !tbaa !52
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %22, !prof !99, !llvm.loop !100

65:                                               ; preds = %56, %14
  %66 = phi ptr [ %17, %14 ], [ %61, %56 ]
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !101
  %69 = add nsw i32 %68, %12
  %70 = tail call ptr @new_graph(i32 noundef %69) #14
  %71 = load ptr, ptr @cfun, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !86
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !87
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %186, label %78, !prof !89

78:                                               ; preds = %65, %182
  %79 = phi ptr [ %184, %182 ], [ %74, %65 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 1
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 3
  br label %83

83:                                               ; preds = %180, %78
  %84 = phi i32 [ 0, %78 ], [ %181, %180 ]
  %85 = load ptr, ptr %80, align 8, !tbaa !52
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !90

87:                                               ; preds = %83
  %88 = load i32, ptr %85, align 8, !tbaa !91
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ 0, %83 ]
  %91 = icmp eq i32 %90, %84
  br i1 %91, label %96, label %92, !prof !93

92:                                               ; preds = %89
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  %98 = load ptr, ptr @cfun, align 8, !tbaa !52
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !86
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  br i1 %91, label %182, label %103, !prof !93

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !102
  %106 = icmp eq ptr %105, %102
  br i1 %106, label %171, label %107, !prof !103

107:                                              ; preds = %103
  %108 = load i32, ptr %81, align 8, !tbaa !104
  %109 = add nsw i32 %108, 1
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !104
  %112 = add nsw i32 %111, 1
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !75
  %115 = getelementptr inbounds %struct.loop, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !105
  %117 = icmp eq ptr %116, %105
  br i1 %117, label %118, label %128, !prof !106

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.loop, ptr %114, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !71
  %121 = icmp eq ptr %120, %79
  br i1 %121, label %171, label %122

122:                                              ; preds = %118
  br i1 %117, label %123, label %128, !prof !106

123:                                              ; preds = %122
  %124 = load i32, ptr %114, align 8, !tbaa !107
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 5
  %126 = load i32, ptr %125, align 8, !tbaa !101
  %127 = add nsw i32 %126, %124
  br label %128

128:                                              ; preds = %107, %123, %122
  %129 = phi i32 [ %127, %123 ], [ %112, %122 ], [ %112, %107 ]
  %130 = load ptr, ptr %82, align 8, !tbaa !75
  %131 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %130, ptr noundef %105) #14
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %167, !prof !106

133:                                              ; preds = %128
  %134 = load ptr, ptr %82, align 8, !tbaa !75
  %135 = load ptr, ptr %104, align 8, !tbaa !102
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !75
  %138 = tail call ptr @find_common_loop(ptr noundef %134, ptr noundef %137) #14
  %139 = getelementptr inbounds %struct.loop, ptr %138, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !108
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %133
  %143 = load i32, ptr %140, align 8, !tbaa !84
  br label %144

144:                                              ; preds = %133, %142
  %145 = phi i32 [ %143, %142 ], [ 0, %133 ]
  %146 = add i32 %145, 1
  %147 = load ptr, ptr %82, align 8, !tbaa !75
  %148 = getelementptr inbounds %struct.loop, ptr %147, i64 0, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !108
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %144
  %152 = load i32, ptr %149, align 8, !tbaa !84
  br label %153

153:                                              ; preds = %144, %151
  %154 = phi i32 [ %152, %151 ], [ 0, %144 ]
  %155 = icmp eq i32 %146, %154
  %156 = zext i32 %146 to i64
  %157 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %149, i64 0, i32 2, i64 %156
  %158 = select i1 %155, ptr %82, ptr %157
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  %160 = load i32, ptr %159, align 8, !tbaa !107
  %161 = load ptr, ptr @cfun, align 8, !tbaa !52
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !86
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 5
  %165 = load i32, ptr %164, align 8, !tbaa !101
  %166 = add nsw i32 %165, %160
  br label %167

167:                                              ; preds = %153, %128
  %168 = phi i32 [ %109, %128 ], [ %166, %153 ]
  %169 = tail call ptr @add_edge(ptr noundef %70, i32 noundef %168, i32 noundef %129) #14
  %170 = getelementptr inbounds %struct.graph_edge, ptr %169, i64 0, i32 4
  store ptr %97, ptr %170, align 8, !tbaa !109
  br label %171

171:                                              ; preds = %167, %103, %118
  %172 = load ptr, ptr %80, align 8, !tbaa !52
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174, !prof !96

174:                                              ; preds = %171
  %175 = load i32, ptr %172, align 8, !tbaa !91
  br label %176

176:                                              ; preds = %174, %171
  %177 = phi i32 [ %175, %174 ], [ 0, %171 ]
  %178 = icmp ult i32 %84, %177
  br i1 %178, label %180, label %179, !prof !97

179:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #14
  br label %180

180:                                              ; preds = %176, %179
  %181 = add i32 %84, 1
  br label %83, !llvm.loop !111

182:                                              ; preds = %96
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 6
  %184 = load ptr, ptr %183, align 8, !tbaa !52
  %185 = icmp eq ptr %184, %102
  br i1 %185, label %186, label %78, !prof !99, !llvm.loop !112

186:                                              ; preds = %182, %65
  %187 = tail call i32 @graphds_scc(ptr noundef %70, ptr noundef null) #14
  %188 = load i32, ptr %70, align 8, !tbaa !113
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %254, !prof !115

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.graph, ptr %70, i64 0, i32 1
  br label %192

192:                                              ; preds = %190, %248
  %193 = phi i64 [ 0, %190 ], [ %250, %248 ]
  %194 = phi i8 [ 0, %190 ], [ %249, %248 ]
  %195 = load ptr, ptr %191, align 8, !tbaa !116
  %196 = getelementptr inbounds %struct.vertex, ptr %195, i64 %193, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !52
  %198 = icmp eq ptr %197, null
  br i1 %198, label %248, label %199, !prof !117

199:                                              ; preds = %192, %243
  %200 = phi ptr [ %246, %243 ], [ %197, %192 ]
  %201 = phi i8 [ %244, %243 ], [ %194, %192 ]
  %202 = getelementptr inbounds %struct.graph_edge, ptr %200, i64 0, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !109
  %204 = load ptr, ptr %191, align 8, !tbaa !116
  %205 = load i32, ptr %200, align 8, !tbaa !118
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.vertex, ptr %204, i64 %206, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !119
  %209 = getelementptr inbounds %struct.graph_edge, ptr %200, i64 0, i32 1
  %210 = load i32, ptr %209, align 4, !tbaa !121
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.vertex, ptr %204, i64 %211, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !119
  %214 = icmp slt i32 %208, %213
  br i1 %214, label %215, label %216, !prof !106

215:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #14
  br label %216

216:                                              ; preds = %199, %215
  %217 = load ptr, ptr %191, align 8, !tbaa !116
  %218 = load i32, ptr %200, align 8, !tbaa !118
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.vertex, ptr %217, i64 %219, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !119
  %222 = load i32, ptr %209, align 4, !tbaa !121
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.vertex, ptr %217, i64 %223, i32 2
  %225 = load i32, ptr %224, align 8, !tbaa !119
  %226 = icmp eq i32 %221, %225
  br i1 %226, label %227, label %243, !prof !106

227:                                              ; preds = %216
  %228 = getelementptr inbounds %struct.edge_def, ptr %203, i64 0, i32 7
  %229 = load i32, ptr %228, align 8, !tbaa !94
  %230 = or i32 %229, 128
  store i32 %230, ptr %228, align 8, !tbaa !94
  %231 = load ptr, ptr %203, align 8, !tbaa !122
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !75
  %234 = getelementptr inbounds %struct.edge_def, ptr %203, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !102
  %236 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %233, ptr noundef %235) #14
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %227
  %239 = load ptr, ptr %203, align 8, !tbaa !122
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %239, i64 0, i32 13
  %241 = load i32, ptr %240, align 8, !tbaa !77
  %242 = or i32 %241, 4
  store i32 %242, ptr %240, align 8, !tbaa !77
  br label %243

243:                                              ; preds = %227, %238, %216
  %244 = phi i8 [ %201, %216 ], [ 1, %238 ], [ 1, %227 ]
  %245 = getelementptr inbounds %struct.graph_edge, ptr %200, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !52
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %199, !prof !123, !llvm.loop !124

248:                                              ; preds = %243, %192
  %249 = phi i8 [ %194, %192 ], [ %244, %243 ]
  %250 = add nuw nsw i64 %193, 1
  %251 = load i32, ptr %70, align 8, !tbaa !113
  %252 = sext i32 %251 to i64
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %192, label %254, !prof !125, !llvm.loop !126

254:                                              ; preds = %248, %186
  %255 = phi i8 [ 0, %186 ], [ %249, %248 ]
  tail call void @free_graph(ptr noundef nonnull %70) #14
  %256 = load ptr, ptr @cfun, align 8, !tbaa !52
  %257 = getelementptr inbounds %struct.function, ptr %256, i64 0, i32 4
  %258 = load ptr, ptr %257, align 8, !tbaa !79
  %259 = load i32, ptr %258, align 8, !tbaa !127
  %260 = or i32 %259, 4
  store i32 %260, ptr %258, align 8, !tbaa !127
  ret i8 %255
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @new_graph(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_graph(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @num_loop_insns(ptr noundef %0) local_unnamed_addr #8 !prof !51 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %36
  %9 = phi i64 [ 0, %6 ], [ %38, %36 ]
  %10 = phi i32 [ 0, %6 ], [ %37, %36 ]
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  br label %22

22:                                               ; preds = %17, %26
  %23 = phi ptr [ %15, %17 ], [ %34, %26 ]
  %24 = phi i32 [ %10, %17 ], [ %32, %26 ]
  %25 = icmp eq ptr %23, %21
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %23, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -8
  %30 = icmp ult i32 %29, 3
  %31 = zext i1 %30 to i32
  %32 = add i32 %24, %31
  %33 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !131

36:                                               ; preds = %26, %22, %8
  %37 = phi i32 [ %10, %8 ], [ %32, %26 ], [ %24, %22 ]
  %38 = add nuw nsw i64 %9, 1
  %39 = icmp eq i64 %38, %7
  br i1 %39, label %40, label %8, !llvm.loop !132

40:                                               ; preds = %36, %1
  %41 = phi i32 [ 0, %1 ], [ %37, %36 ]
  tail call void @free(ptr noundef %2)
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 1)
  ret i32 %42
}

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local i32 @average_num_loop_insns(ptr noundef %0) local_unnamed_addr #8 !prof !51 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !133
  %11 = icmp eq i32 %10, 0
  %12 = zext i32 %4 to i64
  br label %13

13:                                               ; preds = %6, %48
  %14 = phi i64 [ 0, %6 ], [ %52, %48 ]
  %15 = phi i32 [ 0, %6 ], [ %51, %48 ]
  %16 = getelementptr inbounds ptr, ptr %2, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  br label %27

27:                                               ; preds = %22, %31
  %28 = phi ptr [ %20, %22 ], [ %39, %31 ]
  %29 = phi i32 [ 0, %22 ], [ %37, %31 ]
  %30 = icmp eq ptr %28, %26
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %28, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -8
  %35 = icmp ult i32 %34, 3
  %36 = zext i1 %35 to i32
  %37 = add i32 %29, %36
  %38 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %27, !llvm.loop !134

41:                                               ; preds = %27, %31, %13
  %42 = phi i32 [ 0, %13 ], [ %29, %27 ], [ %37, %31 ]
  br i1 %11, label %48, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !133
  %46 = mul nsw i32 %45, 10000
  %47 = sdiv i32 %46, %10
  br label %48

48:                                               ; preds = %41, %43
  %49 = phi i32 [ %47, %43 ], [ 10000, %41 ]
  %50 = mul i32 %49, %42
  %51 = add i32 %50, %15
  %52 = add nuw nsw i64 %14, 1
  %53 = icmp eq i64 %52, %12
  br i1 %53, label %54, label %13, !llvm.loop !135

54:                                               ; preds = %48, %1
  %55 = phi i32 [ 0, %1 ], [ %51, %48 ]
  tail call void @free(ptr noundef %2)
  %56 = udiv i32 %55, 10000
  %57 = icmp ult i32 %55, 10000
  %58 = select i1 %57, i32 1, i32 %56
  ret i32 %58
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @expected_loop_iterations_unbounded(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !136
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !136
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = icmp eq ptr %9, null
  br label %64

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br label %19

19:                                               ; preds = %54, %15
  %20 = phi i32 [ 0, %15 ], [ %55, %54 ]
  %21 = phi i64 [ 0, %15 ], [ %44, %54 ]
  %22 = phi i64 [ 0, %15 ], [ %46, %54 ]
  br i1 %18, label %23, label %24

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #14
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %17, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %25, align 8, !tbaa !91
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %31 = icmp eq i32 %30, %20
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = zext i32 %20 to i64
  %34 = getelementptr inbounds %struct.VEC_edge_base, ptr %25, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  br label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ %35, %32 ], [ null, %29 ]
  br i1 %31, label %56, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %37, align 8, !tbaa !122
  %40 = load ptr, ptr %2, align 8, !tbaa !71
  %41 = icmp eq ptr %39, %40
  %42 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 9
  %43 = load i64, ptr %42, align 8, !tbaa !137
  %44 = select i1 %41, i64 %43, i64 %21
  %45 = select i1 %41, i64 0, i64 %43
  %46 = add nsw i64 %22, %45
  %47 = icmp eq ptr %25, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = load i32, ptr %25, align 8, !tbaa !91
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i32 [ %49, %48 ], [ 0, %38 ]
  %52 = icmp ult i32 %20, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #14
  br label %54

54:                                               ; preds = %50, %53
  %55 = add i32 %20, 1
  br label %19, !llvm.loop !138

56:                                               ; preds = %36
  %57 = icmp eq i64 %22, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = shl nsw i64 %21, 1
  br label %117

60:                                               ; preds = %56
  %61 = add i64 %21, -1
  %62 = add i64 %61, %22
  %63 = sdiv i64 %62, %22
  br label %117

64:                                               ; preds = %13, %104
  %65 = phi i32 [ %105, %104 ], [ 0, %13 ]
  %66 = phi i32 [ %95, %104 ], [ 0, %13 ]
  %67 = phi i32 [ %96, %104 ], [ 0, %13 ]
  br i1 %14, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #14
  br label %69

69:                                               ; preds = %68, %64
  %70 = load ptr, ptr %9, align 8, !tbaa !52
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %70, align 8, !tbaa !91
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %73, %72 ], [ 0, %69 ]
  %76 = icmp eq i32 %75, %65
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = zext i32 %65 to i64
  %79 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  br label %81

81:                                               ; preds = %74, %77
  %82 = phi ptr [ %80, %77 ], [ null, %74 ]
  br i1 %76, label %106, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %82, align 8, !tbaa !122
  %85 = load ptr, ptr %2, align 8, !tbaa !71
  %86 = icmp eq ptr %84, %85
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %88 = load i32, ptr %87, align 8, !tbaa !133
  %89 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 8
  %90 = load i32, ptr %89, align 4, !tbaa !139
  %91 = mul nsw i32 %90, %88
  %92 = add nsw i32 %91, 5000
  %93 = sdiv i32 %92, 10000
  %94 = select i1 %86, i32 0, i32 %93
  %95 = add nsw i32 %66, %94
  %96 = select i1 %86, i32 %93, i32 %67
  %97 = icmp eq ptr %70, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %83
  %99 = load i32, ptr %70, align 8, !tbaa !91
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i32 [ %99, %98 ], [ 0, %83 ]
  %102 = icmp ult i32 %65, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #14
  br label %104

104:                                              ; preds = %100, %103
  %105 = add i32 %65, 1
  br label %64, !llvm.loop !140

106:                                              ; preds = %81
  %107 = icmp eq i32 %66, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = shl nsw i32 %67, 1
  br label %114

110:                                              ; preds = %106
  %111 = add i32 %66, -1
  %112 = add i32 %111, %67
  %113 = sdiv i32 %112, %66
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i32 [ %109, %108 ], [ %113, %110 ]
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %58, %60, %114
  %118 = phi i64 [ %116, %114 ], [ %59, %58 ], [ %63, %60 ]
  ret i64 %118
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @expected_loop_iterations(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !51 {
  %2 = tail call i64 @expected_loop_iterations_unbounded(ptr noundef %0)
  %3 = tail call i64 @llvm.smin.i64(i64 %2, i64 10000)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_loop_level(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !51 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %11, %5 ], [ 0, %1 ]
  %8 = tail call i32 @get_loop_level(ptr noundef nonnull %6)
  %9 = icmp ult i32 %8, %7
  %10 = add i32 %8, 1
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !141

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @init_set_costs() local_unnamed_addr #9 !prof !142 {
  %1 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 53) #14
  %2 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 54) #14
  %3 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 55) #14
  %4 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %3) #14
  %5 = tail call ptr @validize_mem(ptr noundef %4) #14
  store i32 0, ptr @target_avail_regs, align 4, !tbaa !67
  %6 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !143
  br label %7

7:                                                ; preds = %0, %19
  %8 = phi i64 [ 0, %0 ], [ %21, %19 ]
  %9 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %10 = shl nuw nsw i64 1, %8
  %11 = and i64 %6, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13, !prof !144

13:                                               ; preds = %7
  %14 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %8
  %15 = load i8, ptr %14, align 1, !tbaa !63
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19, !prof !145

17:                                               ; preds = %13
  %18 = add i32 %9, 1
  store i32 %18, ptr @target_avail_regs, align 4, !tbaa !67
  br label %19

19:                                               ; preds = %7, %13, %17
  %20 = phi i32 [ %9, %7 ], [ %9, %13 ], [ %18, %17 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %7, !prof !146, !llvm.loop !147

23:                                               ; preds = %19
  store i32 3, ptr @target_res_regs, align 4, !tbaa !67
  br label %24

24:                                               ; preds = %23, %24
  %25 = phi i64 [ 0, %23 ], [ %36, %24 ]
  %26 = trunc i64 %25 to i8
  store i8 %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !148
  tail call void @start_sequence() #14
  %27 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %2) #14
  %28 = tail call ptr @get_insns() #14
  tail call void @end_sequence() #14
  %29 = tail call fastcc i32 @seq_cost(ptr noundef %28, i8 noundef zeroext %26)
  %30 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %25
  store i32 %29, ptr %30, align 4, !tbaa !67
  tail call void @start_sequence() #14
  %31 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %1) #14
  %32 = tail call ptr @emit_move_insn(ptr noundef %2, ptr noundef %5) #14
  %33 = tail call ptr @get_insns() #14
  tail call void @end_sequence() #14
  %34 = tail call fastcc i32 @seq_cost(ptr noundef %33, i8 noundef zeroext %26)
  %35 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %25
  store i32 %34, ptr %35, align 4, !tbaa !67
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %25, 0
  br i1 %37, label %24, label %38, !prof !157, !llvm.loop !158

38:                                               ; preds = %24
  tail call void @default_rtl_profile() #14
  ret void
}

declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @seq_cost(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #8 !prof !159 !PGOFuncName !160 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4, !prof !161

4:                                                ; preds = %2, %24
  %5 = phi ptr [ %28, %24 ], [ %0, %2 ]
  %6 = phi i32 [ %26, %24 ], [ 0, %2 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %19, !prof !162

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %19, label %17, !prof !162

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %13) #14
  br label %19

19:                                               ; preds = %4, %11, %17
  %20 = phi ptr [ %18, %17 ], [ null, %4 ], [ %13, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !163

22:                                               ; preds = %19
  %23 = tail call i32 @rtx_cost(ptr noundef nonnull %20, i32 noundef 23, i8 noundef zeroext %1) #14
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ 1, %19 ]
  %26 = add i32 %25, %6
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %4, !prof !164, !llvm.loop !165

30:                                               ; preds = %24, %2
  %31 = phi i32 [ 0, %2 ], [ %26, %24 ]
  ret i32 %31
}

declare void @default_rtl_profile() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @estimate_reg_pressure_cost(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #12 !prof !51 {
  %4 = add i32 %1, %0
  %5 = load i32, ptr @target_res_regs, align 4, !tbaa !67
  %6 = add i32 %5, %4
  %7 = load i32, ptr @target_avail_regs, align 4, !tbaa !67
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = icmp ugt i32 %4, %7
  %11 = zext i8 %2 to i64
  %12 = getelementptr inbounds [2 x i32], ptr @target_reg_cost, i64 0, i64 %11
  %13 = getelementptr inbounds [2 x i32], ptr @target_spill_cost, i64 0, i64 %11
  %14 = select i1 %10, ptr %13, ptr %12
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = mul i32 %15, %0
  %17 = load i32, ptr @optimize, align 4, !tbaa !67
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %9
  %20 = load i32, ptr @flag_ira_region, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.loops, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !84
  br label %34

34:                                               ; preds = %23, %28, %32
  %35 = phi i32 [ 0, %23 ], [ %33, %32 ], [ 0, %28 ]
  %36 = load ptr, ptr @compiler_params, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.param_info, ptr %36, i64 105, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !166
  %39 = icmp ule i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = lshr i32 %16, %40
  br label %42

42:                                               ; preds = %34, %9, %19, %3
  %43 = phi i32 [ 0, %3 ], [ %16, %19 ], [ %16, %9 ], [ %41, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local void @mark_loop_exit_edges() local_unnamed_addr #9 !prof !168 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5, !prof !169

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9, !prof !169

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !84
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %92, label %12, !prof !170

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = load ptr, ptr %14, align 8, !tbaa !171
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = load ptr, ptr @cfun, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %92, label %33

24:                                               ; preds = %50
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !172
  %27 = load ptr, ptr @cfun, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %92, label %33, !llvm.loop !173

33:                                               ; preds = %12, %24
  %34 = phi ptr [ %26, %24 ], [ %17, %12 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 1
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 3
  br label %37

37:                                               ; preds = %90, %33
  %38 = phi i32 [ 0, %33 ], [ %91, %90 ]
  %39 = load ptr, ptr %35, align 8, !tbaa !52
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 8, !tbaa !91
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %42, %41 ], [ 0, %37 ]
  %45 = icmp eq i32 %44, %38
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = zext i32 %38 to i64
  %48 = getelementptr inbounds %struct.VEC_edge_base, ptr %39, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  br label %50

50:                                               ; preds = %43, %46
  %51 = phi ptr [ %49, %46 ], [ null, %43 ]
  br i1 %45, label %24, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %36, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.loop, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !108
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %55, align 8, !tbaa !84
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
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %53, ptr noundef %51) #14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !94
  %76 = or i32 %75, 512
  store i32 %76, ptr %74, align 8, !tbaa !94
  br label %81

77:                                               ; preds = %70, %67
  %78 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !94
  %80 = and i32 %79, -513
  store i32 %80, ptr %78, align 8, !tbaa !94
  br label %81

81:                                               ; preds = %77, %73
  %82 = load ptr, ptr %35, align 8, !tbaa !52
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %82, align 8, !tbaa !91
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %85, %84 ], [ 0, %81 ]
  %88 = icmp ult i32 %38, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #14
  br label %90

90:                                               ; preds = %86, %89
  %91 = add i32 %38, 1
  br label %37, !llvm.loop !174

92:                                               ; preds = %24, %12, %0, %5, %9
  ret void
}

declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

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
!35 = !{ptr @mark_irreducible_loops, ptr @new_graph, i64 538}
!36 = !{ptr @mark_irreducible_loops, ptr @flow_bb_inside_loop_p, i64 4724300}
!37 = !{ptr @mark_irreducible_loops, ptr @add_edge, i64 4724300}
!38 = !{ptr @mark_irreducible_loops, ptr @graphds_scc, i64 538}
!39 = !{ptr @mark_irreducible_loops, ptr @free_graph, i64 538}
!40 = !{ptr @init_set_costs, ptr @gen_raw_REG, i64 3}
!41 = !{ptr @init_set_costs, ptr @gen_rtx_MEM, i64 1}
!42 = !{ptr @init_set_costs, ptr @validize_mem, i64 1}
!43 = !{ptr @init_set_costs, ptr @start_sequence, i64 4}
!44 = !{ptr @init_set_costs, ptr @emit_move_insn, i64 6}
!45 = !{ptr @init_set_costs, ptr @get_insns, i64 4}
!46 = !{ptr @init_set_costs, ptr @end_sequence, i64 4}
!47 = !{ptr @init_set_costs, ptr @seq_cost, i64 4}
!48 = !{ptr @init_set_costs, ptr @default_rtl_profile, i64 1}
!49 = !{ptr @seq_cost, ptr @rtx_cost, i64 6}
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
!71 = !{!72, !53, i64 16}
!72 = !{!"loop", !58, i64 0, !58, i64 4, !53, i64 8, !53, i64 16, !73, i64 24, !58, i64 32, !58, i64 36, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !74, i64 80, !74, i64 96, !54, i64 112, !54, i64 113, !58, i64 116, !53, i64 120, !53, i64 128, !54, i64 136, !53, i64 144}
!73 = !{!"lpt_decision", !58, i64 0, !58, i64 4}
!74 = !{!"", !59, i64 0, !59, i64 8}
!75 = !{!76, !53, i64 24}
!76 = !{!"basic_block_def", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !54, i64 32, !53, i64 48, !53, i64 56, !54, i64 64, !59, i64 72, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !58, i64 96}
!77 = !{!76, !58, i64 96}
!78 = !{!"function_entry_count", i64 538}
!79 = !{!80, !53, i64 32}
!80 = !{!"function", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !58, i64 104, !58, i64 108, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !53, i64 128, !58, i64 136, !58, i64 137, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139}
!81 = !{!"branch_weights", i32 0, i32 538}
!82 = !{!83, !53, i64 8}
!83 = !{!"loops", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!84 = !{!85, !58, i64 0}
!85 = !{!"VEC_loop_p_base", !58, i64 0, !58, i64 4, !54, i64 8}
!86 = !{!80, !53, i64 8}
!87 = !{!88, !53, i64 8}
!88 = !{!"control_flow_graph", !53, i64 0, !53, i64 8, !53, i64 16, !58, i64 24, !58, i64 28, !58, i64 32, !53, i64 40, !58, i64 48, !54, i64 52, !54, i64 60, !58, i64 68, !58, i64 72}
!89 = !{!"branch_weights", i32 1, i32 537}
!90 = !{!"branch_weights", i32 183, i32 7415871}
!91 = !{!92, !58, i64 0}
!92 = !{!"VEC_edge_base", !58, i64 0, !58, i64 4, !54, i64 8}
!93 = !{!"branch_weights", i32 2691137, i32 4724917}
!94 = !{!95, !58, i64 48}
!95 = !{!"edge_def", !53, i64 0, !53, i64 8, !54, i64 16, !53, i64 24, !53, i64 32, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !59, i64 56}
!96 = !{!"branch_weights", i32 0, i32 4724917}
!97 = !{!"branch_weights", i32 4724917, i32 0}
!98 = distinct !{!98, !69, !70}
!99 = !{!"branch_weights", i32 537, i32 2690600}
!100 = distinct !{!100, !69, !70}
!101 = !{!88, !58, i64 32}
!102 = !{!95, !53, i64 8}
!103 = !{!"branch_weights", i32 620, i32 4724297}
!104 = !{!76, !58, i64 80}
!105 = !{!72, !53, i64 8}
!106 = !{!"branch_weights", i32 0, i32 4724297}
!107 = !{!72, !58, i64 0}
!108 = !{!72, !53, i64 40}
!109 = !{!110, !53, i64 24}
!110 = !{!"graph_edge", !58, i64 0, !58, i64 4, !53, i64 8, !53, i64 16, !53, i64 24}
!111 = distinct !{!111, !69, !70}
!112 = distinct !{!112, !69, !70}
!113 = !{!114, !58, i64 0}
!114 = !{!"graph", !58, i64 0, !53, i64 8, !53, i64 16}
!115 = !{!"branch_weights", i32 537, i32 1}
!116 = !{!114, !53, i64 8}
!117 = !{!"branch_weights", i32 1, i32 2692245}
!118 = !{!110, !58, i64 0}
!119 = !{!120, !58, i64 16}
!120 = !{!"vertex", !53, i64 0, !53, i64 8, !58, i64 16, !58, i64 20, !53, i64 24}
!121 = !{!110, !58, i64 4}
!122 = !{!95, !53, i64 0}
!123 = !{!"branch_weights", i32 2692245, i32 2032052}
!124 = distinct !{!124, !69, !70}
!125 = !{!"branch_weights", i32 2691709, i32 537}
!126 = distinct !{!126, !69, !70}
!127 = !{!83, !58, i64 0}
!128 = !{!72, !58, i64 36}
!129 = !{!130, !53, i64 8}
!130 = !{!"rtl_bb_info", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !58, i64 32}
!131 = distinct !{!131, !69, !70}
!132 = distinct !{!132, !69, !70}
!133 = !{!76, !58, i64 88}
!134 = distinct !{!134, !69, !70}
!135 = distinct !{!135, !69, !70}
!136 = !{!76, !59, i64 72}
!137 = !{!95, !59, i64 56}
!138 = distinct !{!138, !69, !70}
!139 = !{!95, !58, i64 52}
!140 = distinct !{!140, !69, !70}
!141 = distinct !{!141, !69, !70}
!142 = !{!"function_entry_count", i64 1}
!143 = !{!59, !59, i64 0}
!144 = !{!"branch_weights", i32 35, i32 18}
!145 = !{!"branch_weights", i32 7, i32 11}
!146 = !{!"branch_weights", i32 1, i32 52}
!147 = distinct !{!147, !69, !70}
!148 = !{!149, !54, i64 478}
!149 = !{!"rtl_data", !150, i64 0, !151, i64 40, !152, i64 96, !153, i64 112, !155, i64 208, !156, i64 248, !58, i64 312, !53, i64 320, !53, i64 328, !53, i64 336, !53, i64 344, !53, i64 352, !53, i64 360, !53, i64 368, !53, i64 376, !53, i64 384, !53, i64 392, !59, i64 400, !53, i64 408, !53, i64 416, !53, i64 424, !58, i64 432, !58, i64 436, !58, i64 440, !58, i64 444, !58, i64 448, !58, i64 452, !53, i64 456, !54, i64 464, !54, i64 465, !54, i64 466, !54, i64 467, !54, i64 468, !54, i64 469, !54, i64 470, !54, i64 471, !54, i64 472, !54, i64 473, !54, i64 474, !54, i64 475, !54, i64 476, !54, i64 477, !54, i64 478, !54, i64 479, !54, i64 480, !54, i64 481, !54, i64 482, !54, i64 483, !54, i64 484, !54, i64 485}
!150 = !{!"expr_status", !58, i64 0, !58, i64 4, !58, i64 8, !53, i64 16, !53, i64 24, !53, i64 32}
!151 = !{!"emit_status", !58, i64 0, !58, i64 4, !53, i64 8, !53, i64 16, !53, i64 24, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !53, i64 48}
!152 = !{!"varasm_status", !53, i64 0, !58, i64 8}
!153 = !{!"incoming_args", !58, i64 0, !58, i64 4, !58, i64 8, !53, i64 16, !154, i64 24, !53, i64 88}
!154 = !{!"ix86_args", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60}
!155 = !{!"function_subsections", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32}
!156 = !{!"rtl_eh", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !54, i64 48}
!157 = !{!"branch_weights", i32 1, i32 1}
!158 = distinct !{!158, !69, !70}
!159 = !{!"function_entry_count", i64 4}
!160 = !{!"cfgloopanal.c;seq_cost"}
!161 = !{!"branch_weights", i32 1, i32 127}
!162 = !{!"branch_weights", i32 6, i32 0}
!163 = !{!"branch_weights", i32 0, i32 6}
!164 = !{!"branch_weights", i32 127, i32 65}
!165 = distinct !{!165, !69, !70}
!166 = !{!167, !58, i64 8}
!167 = !{!"param_info", !53, i64 0, !58, i64 8, !54, i64 12, !58, i64 16, !58, i64 20, !53, i64 24}
!168 = !{!"function_entry_count", i64 114}
!169 = !{!"branch_weights", i32 0, i32 114}
!170 = !{!"branch_weights", i32 114, i32 0}
!171 = !{!88, !53, i64 0}
!172 = !{!76, !53, i64 56}
!173 = distinct !{!173, !69, !70}
!174 = distinct !{!174, !69, !70}
