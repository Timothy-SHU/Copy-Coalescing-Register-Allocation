; ModuleID = 'regmove.c'
source_filename = "regmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.match = type { [30 x i32], [30 x i32], [30 x i32], [30 x i32] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@pass_regmove = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_regmove, ptr @regmove_optimize, ptr null, ptr null, i32 0, i32 142, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_regmove = external local_unnamed_addr global i32, align 4
@flag_ira_loop_pressure = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@regno_src_regno = internal unnamed_addr global ptr null, align 8
@reg_set_in_bb = internal unnamed_addr global ptr null, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Starting forward pass...\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@reg_info_p = external local_unnamed_addr global ptr, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Starting backward pass...\0A\00", align 1
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Could fix operand %d of insn %d matching operand %d.\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.4 = private unnamed_addr constant [50 x i8] c"Fixed operand %d of insn %d matching operand %d.\0A\00", align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Fixed operand of insn %d.\0A\00", align 1
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@max_reg_computed = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"regmove.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
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
  %5 = tail call ptr @__ctype_tolower_loc() #16
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
  %5 = tail call ptr @__ctype_toupper_loc() #16
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_regmove() #9 !prof !84 !PGOFuncName !85 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !80
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_regmove, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !86
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @regmove_optimize() #10 !prof !84 !PGOFuncName !87 {
  %1 = alloca [30 x i32], align 16
  %2 = alloca ptr, align 8
  %3 = alloca %struct.match, align 4
  %4 = tail call i32 @max_reg_num() #16
  tail call void @df_note_add_problem() #16
  tail call void @df_analyze() #16
  %5 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %0
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !65
  tail call void @ira_set_pseudo_classes(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %7, %0
  tail call void @regstat_init_n_sets_and_refs() #16
  tail call void @regstat_compute_ri() #16
  %10 = sext i32 %4 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr @xmalloc(i64 noundef %11) #16
  store ptr %12, ptr @regno_src_regno, align 8, !tbaa !65
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %17, !prof !88

14:                                               ; preds = %9
  %15 = zext nneg i32 %4 to i64
  %16 = shl nuw nsw i64 %15, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 -1, i64 %16, i1 false), !tbaa !80
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %639, label %20, !prof !89

20:                                               ; preds = %17
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !86

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %21)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %639, label %35, !prof !97

35:                                               ; preds = %25, %630
  %36 = phi ptr [ %632, %630 ], [ %31, %25 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %630, label %41, !prof !97

41:                                               ; preds = %35, %626
  %42 = phi ptr [ %628, %626 ], [ %39, %35 ]
  %43 = load ptr, ptr %37, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %630, label %49, !prof !100

49:                                               ; preds = %41
  %50 = load i32, ptr %42, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %62, !prof !101

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 23
  br i1 %59, label %62, label %60, !prof !102

60:                                               ; preds = %54
  %61 = tail call ptr @single_set_2(ptr noundef nonnull %42, ptr noundef nonnull %56) #16
  br label %62

62:                                               ; preds = %60, %54, %49
  %63 = phi ptr [ %61, %60 ], [ null, %49 ], [ %56, %54 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %626, label %65, !prof !103

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !76
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65534
  %71 = icmp eq i32 %70, 98
  br i1 %71, label %72, label %205, !prof !104

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !76
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 37
  br i1 %77, label %78, label %205, !prof !105

78:                                               ; preds = %72
  %79 = load ptr, ptr %66, align 8, !tbaa !76
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %205, !prof !105

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !76
  %86 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !76
  %88 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  %90 = icmp slt i32 %85, 53
  %91 = icmp slt i32 %87, 53
  %92 = select i1 %90, i1 true, i1 %91, !prof !106
  br i1 %92, label %205, label %93, !prof !106

93:                                               ; preds = %83
  %94 = tail call ptr @find_reg_note(ptr noundef nonnull %42, i32 noundef 1, ptr noundef nonnull %74) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %205, label %96, !prof !106

96:                                               ; preds = %93
  %97 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %98 = zext nneg i32 %85 to i64
  %99 = getelementptr inbounds %struct.reg_info_t, ptr %97, i64 %98, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !107
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %205, !prof !105

102:                                              ; preds = %96
  %103 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %104 = sext i32 %85 to i64
  %105 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %103, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !109
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %205, !prof !105

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  %111 = icmp eq ptr %110, null
  br i1 %111, label %205, label %112, !prof !111

112:                                              ; preds = %108, %125
  %113 = phi ptr [ %127, %125 ], [ %110, %108 ]
  %114 = tail call i32 @reg_set_p(ptr noundef nonnull %74, ptr noundef nonnull %113) #16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129, !prof !106

116:                                              ; preds = %112
  %117 = load i32, ptr %113, align 8
  %118 = and i32 %117, 65535
  %119 = add nsw i32 %118, -7
  %120 = icmp ult i32 %119, 4
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = icmp eq ptr %123, %89
  br i1 %124, label %125, label %129

125:                                              ; preds = %121, %116
  %126 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !76
  %128 = icmp eq ptr %127, null
  br i1 %128, label %205, label %112, !prof !106, !llvm.loop !112

129:                                              ; preds = %121, %112
  %130 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !76
  %132 = icmp eq ptr %131, %89
  br i1 %132, label %133, label %205, !prof !105

133:                                              ; preds = %129
  %134 = load i32, ptr %113, align 8
  %135 = and i32 %134, 65535
  %136 = add nsw i32 %135, -7
  %137 = icmp ult i32 %136, 4
  br i1 %137, label %138, label %146, !prof !105

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !76
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 23
  br i1 %143, label %146, label %144, !prof !113

144:                                              ; preds = %138
  %145 = tail call ptr @single_set_2(ptr noundef nonnull %113, ptr noundef nonnull %140) #16
  br label %146

146:                                              ; preds = %144, %138, %133
  %147 = phi ptr [ %145, %144 ], [ null, %133 ], [ %140, %138 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %205, label %149, !prof !106

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1
  %151 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !76
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 43
  br i1 %155, label %156, label %205, !prof !106

156:                                              ; preds = %149
  %157 = tail call ptr @find_reg_note(ptr noundef nonnull %113, i32 noundef 3, ptr noundef null) #16
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %205

159:                                              ; preds = %156
  %160 = load ptr, ptr %150, align 8, !tbaa !76
  %161 = icmp eq ptr %160, %74
  br i1 %161, label %162, label %205

162:                                              ; preds = %159
  %163 = load ptr, ptr %151, align 8, !tbaa !76
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 134217728
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %162
  %168 = load i32, ptr %74, align 8
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  %171 = load i32, ptr %68, align 8
  %172 = and i32 %171, 16711680
  %173 = and i32 %168, -16711681
  %174 = or disjoint i32 %172, %173
  store i32 %174, ptr %74, align 8
  %175 = load ptr, ptr %151, align 8, !tbaa !76
  store ptr %175, ptr %73, align 8, !tbaa !76
  %176 = tail call zeroext i8 @validate_change(ptr noundef nonnull %113, ptr noundef nonnull %151, ptr noundef nonnull %68, i8 noundef zeroext 1) #16
  %177 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 2
  %178 = load ptr, ptr %177, align 8, !tbaa !76
  %179 = icmp eq ptr %178, %42
  br i1 %179, label %192, label %180

180:                                              ; preds = %167, %186
  %181 = phi ptr [ %188, %186 ], [ %178, %167 ]
  %182 = load i32, ptr %181, align 8
  %183 = and i32 %182, 65535
  %184 = add nsw i32 %183, -7
  %185 = icmp ult i32 %184, 4
  br i1 %185, label %190, label %186

186:                                              ; preds = %180, %190
  %187 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !76
  %189 = icmp eq ptr %188, %42
  br i1 %189, label %192, label %180, !llvm.loop !114

190:                                              ; preds = %180
  %191 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %170, ptr noundef nonnull %74) #16
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %74, ptr noundef %191, ptr noundef nonnull %181) #16
  br label %186

192:                                              ; preds = %186, %167
  %193 = phi ptr [ %178, %167 ], [ %188, %186 ]
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %68, ptr noundef nonnull %74, ptr noundef nonnull %42) #16
  %194 = tail call i32 @apply_change_group() #16
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32, ptr %74, align 8
  %198 = shl nuw nsw i32 %170, 16
  %199 = and i32 %197, -16711681
  %200 = or disjoint i32 %199, %198
  store i32 %200, ptr %74, align 8
  store ptr %74, ptr %73, align 8, !tbaa !76
  br label %205

201:                                              ; preds = %192
  %202 = tail call ptr @find_reg_note(ptr noundef %193, i32 noundef 4, ptr noundef null) #16
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  tail call void @remove_note(ptr noundef %193, ptr noundef nonnull %202) #16
  br label %205

205:                                              ; preds = %125, %108, %204, %201, %196, %162, %159, %156, %149, %146, %129, %102, %96, %93, %83, %78, %72, %65
  %206 = load ptr, ptr %67, align 8, !tbaa !76
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 37
  br i1 %209, label %210, label %626, !prof !115

210:                                              ; preds = %205
  %211 = load ptr, ptr %66, align 8, !tbaa !76
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 37
  br i1 %214, label %215, label %626, !prof !116

215:                                              ; preds = %210
  %216 = tail call ptr @find_reg_note(ptr noundef nonnull %42, i32 noundef 1, ptr noundef nonnull %206) #16
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %456, !prof !117

218:                                              ; preds = %215
  %219 = load ptr, ptr %66, align 8, !tbaa !76
  %220 = load ptr, ptr %67, align 8, !tbaa !76
  %221 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !76
  %223 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !76
  %225 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !76
  %227 = icmp eq i32 %222, %224
  %228 = icmp slt i32 %222, 53
  %229 = or i1 %228, %227
  %230 = icmp slt i32 %224, 53
  %231 = or i1 %230, %229
  br i1 %231, label %453, label %232, !prof !118

232:                                              ; preds = %218
  %233 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %234 = load ptr, ptr %233, align 8, !tbaa !76
  %235 = icmp eq ptr %234, null
  br i1 %235, label %453, label %236, !prof !111

236:                                              ; preds = %232, %449
  %237 = phi ptr [ %451, %449 ], [ %234, %232 ]
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 65535
  %240 = add nsw i32 %239, -7
  %241 = icmp ult i32 %240, 4
  br i1 %241, label %242, label %449, !prof !119

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1, i32 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !76
  %245 = icmp eq ptr %244, %226
  br i1 %245, label %246, label %453, !prof !120

246:                                              ; preds = %242
  %247 = tail call i32 @reg_set_p(ptr noundef %220, ptr noundef nonnull %237) #16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %453, !prof !121

249:                                              ; preds = %246
  %250 = tail call i32 @reg_set_p(ptr noundef %219, ptr noundef nonnull %237) #16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %453, !prof !121

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !76
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 24
  br i1 %257, label %258, label %263, !prof !122

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !76
  %261 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %220, ptr noundef %260) #16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %453

263:                                              ; preds = %258, %252
  %264 = tail call ptr @find_regno_note(ptr noundef nonnull %237, i32 noundef 1, i32 noundef %222) #16
  %265 = icmp eq ptr %264, null
  br i1 %265, label %449, label %266, !prof !123

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !76
  %269 = load i32, ptr %268, align 8
  %270 = load i32, ptr %220, align 8
  %271 = xor i32 %270, %269
  %272 = and i32 %271, 16711680
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %449, !prof !124

274:                                              ; preds = %266
  %275 = tail call ptr @next_real_insn(ptr noundef nonnull %42) #16
  %276 = tail call ptr @next_real_insn(ptr noundef nonnull %237) #16
  %277 = icmp eq ptr %275, %276
  br i1 %277, label %387, label %278, !prof !125

278:                                              ; preds = %274, %381
  %279 = phi i32 [ %368, %381 ], [ 0, %274 ]
  %280 = phi i32 [ %367, %381 ], [ 0, %274 ]
  %281 = phi i32 [ %366, %381 ], [ 0, %274 ]
  %282 = phi i32 [ %365, %381 ], [ 0, %274 ]
  %283 = phi i32 [ %306, %381 ], [ 0, %274 ]
  %284 = phi i32 [ %304, %381 ], [ 0, %274 ]
  %285 = phi i32 [ %383, %381 ], [ 0, %274 ]
  %286 = phi ptr [ %384, %381 ], [ %275, %274 ]
  %287 = phi ptr [ %382, %381 ], [ null, %274 ]
  %288 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !76
  %290 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %220, ptr noundef %289) #16
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292, !prof !126

292:                                              ; preds = %278
  %293 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %220, ptr noundef %219, ptr noundef %286) #16
  %294 = icmp eq i32 %293, 0
  %295 = select i1 %294, i32 1, i32 %285, !prof !126
  br label %296

296:                                              ; preds = %292, %278
  %297 = phi i32 [ %285, %278 ], [ %295, %292 ]
  %298 = load i32, ptr %237, align 8
  %299 = and i32 %298, 65535
  %300 = icmp ne i32 %299, 7
  %301 = icmp ne ptr %287, null
  %302 = select i1 %300, i1 %301, i1 false, !prof !124
  %303 = zext i1 %302 to i32
  %304 = add nuw nsw i32 %284, %303
  %305 = zext i1 %300 to i32
  %306 = add nuw nsw i32 %283, %305
  %307 = icmp eq ptr %286, %237
  br i1 %307, label %364, label %308, !prof !124

308:                                              ; preds = %296
  %309 = load i32, ptr %286, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 10
  br i1 %311, label %312, label %364

312:                                              ; preds = %308
  %313 = add nsw i32 %281, 1
  %314 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %336

316:                                              ; preds = %312
  %317 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %327, label %319

319:                                              ; preds = %316
  %320 = load ptr, ptr @cfun, align 8, !tbaa !65
  %321 = getelementptr inbounds %struct.function, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !90
  %323 = load ptr, ptr %322, align 8, !tbaa !92
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 8
  %325 = load i64, ptr %324, align 8, !tbaa !127
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %336, label %327

327:                                              ; preds = %319, %316
  %328 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1, i32 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !76
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %329, i64 0, i32 11
  %331 = load i32, ptr %330, align 8, !tbaa !128
  %332 = add i32 %331, 9
  %333 = icmp ult i32 %332, 19
  br i1 %333, label %336, label %334

334:                                              ; preds = %327
  %335 = sdiv i32 %331, 10
  br label %336

336:                                              ; preds = %319, %334, %327, %312
  %337 = phi i32 [ 1000, %312 ], [ %335, %334 ], [ 1, %327 ], [ 1000, %319 ]
  %338 = add nsw i32 %337, %280
  br i1 %301, label %339, label %364

339:                                              ; preds = %336
  %340 = add nsw i32 %282, 1
  br i1 %315, label %341, label %361

341:                                              ; preds = %339
  %342 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %352, label %344

344:                                              ; preds = %341
  %345 = load ptr, ptr @cfun, align 8, !tbaa !65
  %346 = getelementptr inbounds %struct.function, ptr %345, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !90
  %348 = load ptr, ptr %347, align 8, !tbaa !92
  %349 = getelementptr inbounds %struct.basic_block_def, ptr %348, i64 0, i32 8
  %350 = load i64, ptr %349, align 8, !tbaa !127
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %361, label %352

352:                                              ; preds = %344, %341
  %353 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1, i32 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !76
  %355 = getelementptr inbounds %struct.basic_block_def, ptr %354, i64 0, i32 11
  %356 = load i32, ptr %355, align 8, !tbaa !128
  %357 = add i32 %356, 9
  %358 = icmp ult i32 %357, 19
  br i1 %358, label %361, label %359

359:                                              ; preds = %352
  %360 = sdiv i32 %356, 10
  br label %361

361:                                              ; preds = %344, %359, %352, %339
  %362 = phi i32 [ 1000, %339 ], [ %360, %359 ], [ 1, %352 ], [ 1000, %344 ]
  %363 = add nsw i32 %362, %279
  br label %364

364:                                              ; preds = %361, %336, %308, %296
  %365 = phi i32 [ %340, %361 ], [ %282, %336 ], [ %282, %308 ], [ %282, %296 ]
  %366 = phi i32 [ %313, %361 ], [ %313, %336 ], [ %281, %308 ], [ %281, %296 ]
  %367 = phi i32 [ %338, %361 ], [ %338, %336 ], [ %280, %308 ], [ %280, %296 ]
  %368 = phi i32 [ %363, %361 ], [ %279, %336 ], [ %279, %308 ], [ %279, %296 ]
  br i1 %301, label %381, label %369, !prof !126

369:                                              ; preds = %364
  %370 = tail call ptr @find_regno_note(ptr noundef %286, i32 noundef 1, i32 noundef %224) #16
  %371 = icmp eq ptr %370, null
  br i1 %371, label %381, label %372, !prof !124

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.rtx_def, ptr %370, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !76
  %375 = load i32, ptr %374, align 8
  %376 = load i32, ptr %219, align 8
  %377 = xor i32 %376, %375
  %378 = and i32 %377, 16711680
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %372
  tail call void @remove_note(ptr noundef %286, ptr noundef nonnull %370) #16
  br label %381

381:                                              ; preds = %380, %372, %369, %364
  %382 = phi ptr [ %370, %380 ], [ null, %369 ], [ %287, %364 ], [ null, %372 ]
  %383 = phi i32 [ %297, %380 ], [ %297, %369 ], [ %297, %364 ], [ 1, %372 ]
  %384 = tail call ptr @next_real_insn(ptr noundef %286) #16
  %385 = tail call ptr @next_real_insn(ptr noundef nonnull %237) #16
  %386 = icmp eq ptr %384, %385
  br i1 %386, label %387, label %278, !prof !129, !llvm.loop !130

387:                                              ; preds = %381, %274
  %388 = phi ptr [ null, %274 ], [ %382, %381 ]
  %389 = phi i32 [ 0, %274 ], [ %383, %381 ]
  %390 = phi i32 [ 0, %274 ], [ %304, %381 ]
  %391 = phi i32 [ 0, %274 ], [ %306, %381 ]
  %392 = phi i32 [ 0, %274 ], [ %365, %381 ]
  %393 = phi i32 [ 0, %274 ], [ %366, %381 ]
  %394 = phi i32 [ 0, %274 ], [ %367, %381 ]
  %395 = phi i32 [ 0, %274 ], [ %368, %381 ]
  %396 = icmp eq i32 %389, 0
  br i1 %396, label %397, label %417, !prof !124

397:                                              ; preds = %387
  %398 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %399 = zext nneg i32 %222 to i64
  %400 = getelementptr inbounds %struct.reg_info_t, ptr %398, i64 %399, i32 2
  %401 = load i32, ptr %400, align 4, !tbaa !131
  %402 = icmp sgt i32 %401, -1
  br i1 %402, label %403, label %407, !prof !124

403:                                              ; preds = %397
  %404 = sub nsw i32 %401, %391
  store i32 %404, ptr %400, align 4, !tbaa !131
  %405 = icmp slt i32 %404, 2
  br i1 %405, label %406, label %407, !prof !126

406:                                              ; preds = %403
  store i32 2, ptr %400, align 4, !tbaa !131
  br label %407

407:                                              ; preds = %406, %403, %397
  %408 = getelementptr inbounds %struct.reg_info_t, ptr %398, i64 %399, i32 3
  %409 = load i32, ptr %408, align 4, !tbaa !132
  %410 = sub nsw i32 %409, %393
  store i32 %410, ptr %408, align 4, !tbaa !132
  %411 = getelementptr inbounds %struct.reg_info_t, ptr %398, i64 %399, i32 4
  %412 = load i32, ptr %411, align 4, !tbaa !133
  %413 = sub nsw i32 %412, %394
  store i32 %413, ptr %411, align 4, !tbaa !133
  tail call void @remove_note(ptr noundef nonnull %237, ptr noundef nonnull %264) #16
  %414 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 1, i32 1, i32 0, i32 0, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !76
  %416 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %415, ptr %416, align 8, !tbaa !76
  store ptr %264, ptr %414, align 8, !tbaa !76
  br label %417

417:                                              ; preds = %407, %387
  %418 = icmp eq ptr %388, null
  br i1 %418, label %419, label %426, !prof !124

419:                                              ; preds = %417
  %420 = tail call ptr @find_regno_note(ptr noundef nonnull %42, i32 noundef 6, i32 noundef %224) #16
  %421 = icmp eq ptr %420, null
  br i1 %421, label %426, label %422, !prof !124

422:                                              ; preds = %419
  %423 = load i32, ptr %420, align 8
  %424 = and i32 %423, -16711681
  %425 = or disjoint i32 %424, 65536
  store i32 %425, ptr %420, align 8
  tail call void @remove_note(ptr noundef nonnull %42, ptr noundef nonnull %420) #16
  br label %426

426:                                              ; preds = %422, %419, %417
  %427 = phi ptr [ %388, %417 ], [ %420, %422 ], [ null, %419 ]
  %428 = icmp eq ptr %427, null
  br i1 %428, label %447, label %429, !prof !124

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 1, i32 1, i32 0, i32 0, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !76
  %432 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %431, ptr %432, align 8, !tbaa !76
  store ptr %427, ptr %430, align 8, !tbaa !76
  %433 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %434 = zext nneg i32 %224 to i64
  %435 = getelementptr inbounds %struct.reg_info_t, ptr %433, i64 %434, i32 2
  %436 = load i32, ptr %435, align 4, !tbaa !131
  %437 = icmp sgt i32 %436, -1
  br i1 %437, label %438, label %440

438:                                              ; preds = %429
  %439 = add nuw nsw i32 %436, %390
  store i32 %439, ptr %435, align 4, !tbaa !131
  br label %440

440:                                              ; preds = %438, %429
  %441 = getelementptr inbounds %struct.reg_info_t, ptr %433, i64 %434, i32 3
  %442 = load i32, ptr %441, align 4, !tbaa !132
  %443 = add nsw i32 %442, %392
  store i32 %443, ptr %441, align 4, !tbaa !132
  %444 = getelementptr inbounds %struct.reg_info_t, ptr %433, i64 %434, i32 4
  %445 = load i32, ptr %444, align 4, !tbaa !133
  %446 = add nsw i32 %445, %395
  store i32 %446, ptr %444, align 4, !tbaa !133
  br label %447

447:                                              ; preds = %440, %426
  %448 = zext i1 %396 to i32
  br label %453

449:                                              ; preds = %266, %263, %236
  %450 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1, i32 0, i32 0, i64 2
  %451 = load ptr, ptr %450, align 8, !tbaa !76
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %236, !prof !134, !llvm.loop !135

453:                                              ; preds = %242, %246, %249, %258, %449, %232, %447, %218
  %454 = phi i32 [ %448, %447 ], [ 0, %218 ], [ 0, %232 ], [ 0, %449 ], [ 0, %258 ], [ 0, %249 ], [ 0, %246 ], [ 0, %242 ]
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %626, label %456, !prof !136

456:                                              ; preds = %453, %215
  %457 = load ptr, ptr %66, align 8, !tbaa !76
  %458 = getelementptr inbounds %struct.rtx_def, ptr %457, i64 0, i32 1
  %459 = load i32, ptr %458, align 8, !tbaa !76
  %460 = icmp ugt i32 %459, 52
  br i1 %460, label %461, label %626, !prof !137

461:                                              ; preds = %456
  %462 = load ptr, ptr %67, align 8, !tbaa !76
  %463 = getelementptr inbounds %struct.rtx_def, ptr %462, i64 0, i32 1
  %464 = load i32, ptr %463, align 8, !tbaa !76
  %465 = icmp ugt i32 %464, 52
  br i1 %465, label %466, label %606, !prof !138

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !76
  %469 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %470 = load ptr, ptr %469, align 8, !tbaa !76
  %471 = icmp eq ptr %470, null
  br i1 %471, label %606, label %472, !prof !111

472:                                              ; preds = %466, %602
  %473 = phi ptr [ %604, %602 ], [ %470, %466 ]
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = add nsw i32 %475, -7
  %477 = icmp ult i32 %476, 4
  br i1 %477, label %478, label %602, !prof !139

478:                                              ; preds = %472
  %479 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1, i32 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !76
  %481 = icmp eq ptr %480, %468
  br i1 %481, label %482, label %606, !prof !140

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 1
  %484 = load ptr, ptr %483, align 8, !tbaa !76
  %485 = load i32, ptr %484, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 23
  br i1 %487, label %490, label %488, !prof !141

488:                                              ; preds = %482
  %489 = tail call ptr @single_set_2(ptr noundef nonnull %473, ptr noundef nonnull %484) #16
  br label %490

490:                                              ; preds = %488, %482
  %491 = phi ptr [ %489, %488 ], [ %484, %482 ]
  %492 = icmp eq ptr %491, null
  br i1 %492, label %586, label %493, !prof !142

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.rtx_def, ptr %491, i64 0, i32 1, i32 0, i32 0, i64 1
  %495 = load ptr, ptr %494, align 8, !tbaa !76
  %496 = icmp eq ptr %495, %457
  br i1 %496, label %497, label %586, !prof !142

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.rtx_def, ptr %491, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !76
  %500 = icmp eq ptr %499, %462
  br i1 %500, label %501, label %586

501:                                              ; preds = %497
  %502 = tail call ptr @find_reg_note(ptr noundef nonnull %473, i32 noundef 1, ptr noundef %457) #16
  %503 = icmp eq ptr %502, null
  br i1 %503, label %586, label %504

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1, i32 0, i32 0, i64 2
  %506 = load ptr, ptr %505, align 8, !tbaa !76
  %507 = icmp eq ptr %42, %506
  br i1 %507, label %573, label %508

508:                                              ; preds = %504
  %509 = sext i32 %459 to i64
  %510 = sext i32 %464 to i64
  br label %511

511:                                              ; preds = %508, %568
  %512 = phi ptr [ %42, %508 ], [ %570, %568 ]
  %513 = load i32, ptr %512, align 8
  %514 = and i32 %513, 65535
  %515 = add nsw i32 %514, -7
  %516 = icmp ult i32 %515, 4
  br i1 %516, label %517, label %568

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.rtx_def, ptr %512, i64 1
  %519 = load ptr, ptr %518, align 8, !tbaa !76
  %520 = tail call i32 @reg_mentioned_p(ptr noundef %457, ptr noundef %519) #16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %526, label %522

522:                                              ; preds = %517
  %523 = load ptr, ptr %518, align 8, !tbaa !76
  %524 = tail call ptr @replace_rtx(ptr noundef %523, ptr noundef %457, ptr noundef %462) #16
  store ptr %524, ptr %518, align 8, !tbaa !76
  %525 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %512) #16
  br label %526

526:                                              ; preds = %522, %517
  %527 = load i32, ptr %512, align 8
  %528 = and i32 %527, 65535
  %529 = icmp eq i32 %528, 10
  br i1 %529, label %530, label %568

530:                                              ; preds = %526
  %531 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %553

533:                                              ; preds = %530
  %534 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %544, label %536

536:                                              ; preds = %533
  %537 = load ptr, ptr @cfun, align 8, !tbaa !65
  %538 = getelementptr inbounds %struct.function, ptr %537, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !90
  %540 = load ptr, ptr %539, align 8, !tbaa !92
  %541 = getelementptr inbounds %struct.basic_block_def, ptr %540, i64 0, i32 8
  %542 = load i64, ptr %541, align 8, !tbaa !127
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %553, label %544

544:                                              ; preds = %536, %533
  %545 = getelementptr inbounds %struct.rtx_def, ptr %512, i64 0, i32 1, i32 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !76
  %547 = getelementptr inbounds %struct.basic_block_def, ptr %546, i64 0, i32 11
  %548 = load i32, ptr %547, align 8, !tbaa !128
  %549 = add i32 %548, 9
  %550 = icmp ult i32 %549, 19
  br i1 %550, label %553, label %551

551:                                              ; preds = %544
  %552 = sdiv i32 %548, 10
  br label %553

553:                                              ; preds = %536, %551, %544, %530
  %554 = phi i32 [ 1000, %530 ], [ %552, %551 ], [ 1, %544 ], [ 1000, %536 ]
  %555 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %556 = getelementptr inbounds %struct.reg_info_t, ptr %555, i64 %509, i32 3
  %557 = load i32, ptr %556, align 4, !tbaa !132
  %558 = add nsw i32 %557, -1
  store i32 %558, ptr %556, align 4, !tbaa !132
  %559 = getelementptr inbounds %struct.reg_info_t, ptr %555, i64 %510, i32 3
  %560 = load i32, ptr %559, align 4, !tbaa !132
  %561 = add nsw i32 %560, 1
  store i32 %561, ptr %559, align 4, !tbaa !132
  %562 = getelementptr inbounds %struct.reg_info_t, ptr %555, i64 %509, i32 4
  %563 = load i32, ptr %562, align 4, !tbaa !133
  %564 = sub nsw i32 %563, %554
  store i32 %564, ptr %562, align 4, !tbaa !133
  %565 = getelementptr inbounds %struct.reg_info_t, ptr %555, i64 %510, i32 4
  %566 = load i32, ptr %565, align 4, !tbaa !133
  %567 = add nsw i32 %566, %554
  store i32 %567, ptr %565, align 4, !tbaa !133
  br label %568

568:                                              ; preds = %553, %526, %511
  %569 = getelementptr inbounds %struct.rtx_def, ptr %512, i64 0, i32 1, i32 0, i32 0, i64 2
  %570 = load ptr, ptr %569, align 8, !tbaa !76
  %571 = load ptr, ptr %505, align 8, !tbaa !76
  %572 = icmp eq ptr %570, %571
  br i1 %572, label %573, label %511, !llvm.loop !143

573:                                              ; preds = %568, %504
  %574 = tail call ptr @find_reg_note(ptr noundef nonnull %473, i32 noundef 1, ptr noundef %457) #16
  tail call void @remove_note(ptr noundef nonnull %473, ptr noundef %574) #16
  %575 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %576 = sext i32 %459 to i64
  %577 = getelementptr inbounds %struct.reg_info_t, ptr %575, i64 %576, i32 1
  %578 = load i32, ptr %577, align 4, !tbaa !107
  %579 = add nsw i32 %578, -1
  store i32 %579, ptr %577, align 4, !tbaa !107
  %580 = tail call ptr @find_reg_note(ptr noundef nonnull %42, i32 noundef 1, ptr noundef %462) #16
  tail call void @remove_note(ptr noundef nonnull %42, ptr noundef %580) #16
  %581 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %582 = sext i32 %464 to i64
  %583 = getelementptr inbounds %struct.reg_info_t, ptr %581, i64 %582, i32 1
  %584 = load i32, ptr %583, align 4, !tbaa !107
  %585 = add nsw i32 %584, -1
  store i32 %585, ptr %583, align 4, !tbaa !107
  br label %606

586:                                              ; preds = %501, %497, %493, %490
  %587 = tail call i32 @reg_set_p(ptr noundef %462, ptr noundef nonnull %473) #16
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %606, !prof !144

589:                                              ; preds = %586
  %590 = tail call ptr @find_reg_note(ptr noundef nonnull %473, i32 noundef 1, ptr noundef %457) #16
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %606, !prof !144

592:                                              ; preds = %589
  %593 = load i32, ptr %473, align 8
  %594 = and i32 %593, 65535
  %595 = icmp eq i32 %594, 10
  br i1 %595, label %596, label %602, !prof !142

596:                                              ; preds = %592
  %597 = sext i32 %464 to i64
  %598 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %599 = getelementptr inbounds %struct.reg_info_t, ptr %598, i64 %597, i32 3
  %600 = load i32, ptr %599, align 4, !tbaa !132
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %606, label %602

602:                                              ; preds = %596, %592, %472
  %603 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1, i32 0, i32 0, i64 2
  %604 = load ptr, ptr %603, align 8, !tbaa !76
  %605 = icmp eq ptr %604, null
  br i1 %605, label %606, label %472, !prof !145, !llvm.loop !146

606:                                              ; preds = %602, %478, %586, %589, %596, %466, %573, %461
  %607 = load ptr, ptr @regno_src_regno, align 8, !tbaa !65
  %608 = load ptr, ptr %66, align 8, !tbaa !76
  %609 = getelementptr inbounds %struct.rtx_def, ptr %608, i64 0, i32 1
  %610 = load i32, ptr %609, align 8, !tbaa !76
  %611 = zext i32 %610 to i64
  %612 = getelementptr inbounds i32, ptr %607, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !80
  %614 = icmp slt i32 %613, 0
  br i1 %614, label %615, label %626, !prof !147

615:                                              ; preds = %606
  %616 = load ptr, ptr %67, align 8, !tbaa !76
  %617 = icmp eq ptr %616, %608
  br i1 %617, label %626, label %618, !prof !148

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.rtx_def, ptr %616, i64 0, i32 1
  %620 = load i32, ptr %619, align 8, !tbaa !76
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, ptr %607, i64 %621
  %623 = load i32, ptr %622, align 4, !tbaa !80
  %624 = icmp slt i32 %623, 0
  %625 = select i1 %624, i32 %620, i32 %623, !prof !149
  store i32 %625, ptr %612, align 4, !tbaa !80
  br label %626

626:                                              ; preds = %453, %618, %615, %606, %456, %210, %205, %62
  %627 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %628 = load ptr, ptr %627, align 8, !tbaa !76
  %629 = icmp eq ptr %628, null
  br i1 %629, label %630, label %41, !prof !150, !llvm.loop !151

630:                                              ; preds = %626, %41, %35
  %631 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %632 = load ptr, ptr %631, align 8, !tbaa !94
  %633 = load ptr, ptr @cfun, align 8, !tbaa !65
  %634 = getelementptr inbounds %struct.function, ptr %633, i64 0, i32 1
  %635 = load ptr, ptr %634, align 8, !tbaa !90
  %636 = getelementptr inbounds %struct.control_flow_graph, ptr %635, i64 0, i32 1
  %637 = load ptr, ptr %636, align 8, !tbaa !96
  %638 = icmp eq ptr %632, %637
  br i1 %638, label %639, label %35, !prof !152, !llvm.loop !153

639:                                              ; preds = %630, %25, %17
  %640 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %641 = icmp eq ptr %640, null
  br i1 %641, label %644, label %642, !prof !86

642:                                              ; preds = %639
  %643 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr nonnull %640)
  br label %644

644:                                              ; preds = %642, %639
  %645 = load ptr, ptr @cfun, align 8, !tbaa !65
  %646 = getelementptr inbounds %struct.function, ptr %645, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !90
  %648 = getelementptr inbounds %struct.control_flow_graph, ptr %647, i64 0, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !96
  %650 = getelementptr inbounds %struct.basic_block_def, ptr %649, i64 0, i32 5
  %651 = load ptr, ptr %650, align 8, !tbaa !154
  %652 = load ptr, ptr @cfun, align 8, !tbaa !65
  %653 = getelementptr inbounds %struct.function, ptr %652, i64 0, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !90
  %655 = load ptr, ptr %654, align 8, !tbaa !92
  %656 = icmp eq ptr %651, %655
  br i1 %656, label %1401, label %657, !prof !97

657:                                              ; preds = %644, %1393
  %658 = phi ptr [ %1395, %1393 ], [ %651, %644 ]
  %659 = getelementptr inbounds %struct.basic_block_def, ptr %658, i64 0, i32 7
  %660 = load ptr, ptr %659, align 8, !tbaa !76
  %661 = getelementptr inbounds %struct.rtl_bb_info, ptr %660, i64 0, i32 1
  %662 = load ptr, ptr %661, align 8, !tbaa !98
  %663 = icmp eq ptr %662, null
  br i1 %663, label %667, label %664, !prof !155

664:                                              ; preds = %657
  %665 = getelementptr inbounds %struct.rtx_def, ptr %662, i64 0, i32 1, i32 0, i32 0, i64 1
  %666 = load ptr, ptr %665, align 8, !tbaa !76
  br label %667

667:                                              ; preds = %664, %657
  %668 = phi ptr [ %666, %664 ], [ null, %657 ]
  %669 = icmp eq ptr %662, null
  br i1 %669, label %1393, label %670, !prof !97

670:                                              ; preds = %667, %1390
  %671 = phi ptr [ %672, %1390 ], [ %662, %667 ]
  %672 = phi ptr [ %1391, %1390 ], [ %668, %667 ]
  %673 = load ptr, ptr %659, align 8, !tbaa !76
  %674 = load ptr, ptr %673, align 8, !tbaa !156
  %675 = getelementptr inbounds %struct.rtx_def, ptr %674, i64 0, i32 1, i32 0, i32 0, i64 1
  %676 = load ptr, ptr %675, align 8, !tbaa !76
  %677 = icmp eq ptr %671, %676
  br i1 %677, label %1393, label %678, !prof !100

678:                                              ; preds = %670
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %3) #16
  %679 = load i32, ptr %671, align 8
  %680 = and i32 %679, 65535
  %681 = add nsw i32 %680, -7
  %682 = icmp ult i32 %681, 4
  br i1 %682, label %683, label %1385, !prof !101

683:                                              ; preds = %678
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %1) #16
  tail call void @extract_insn(ptr noundef nonnull %671) #16
  %684 = tail call i32 @constrain_operands(i32 noundef 0) #16
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %817, label %686, !prof !157

686:                                              ; preds = %683
  %687 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !158
  %688 = icmp sgt i8 %687, 0
  br i1 %688, label %689, label %691, !prof !160

689:                                              ; preds = %686
  %690 = zext nneg i8 %687 to i64
  br label %694

691:                                              ; preds = %694, %686
  %692 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !158
  %693 = icmp sgt i8 %692, 0
  br i1 %693, label %700, label %817, !prof !160

694:                                              ; preds = %689, %694
  %695 = phi i64 [ %690, %689 ], [ %696, %694 ]
  %696 = add nsw i64 %695, -1
  %697 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 2, i64 %696
  store i32 -1, ptr %697, align 4, !tbaa !80
  %698 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %696
  store i32 -1, ptr %698, align 4, !tbaa !80
  %699 = icmp sgt i64 %695, 1
  br i1 %699, label %694, label %691, !prof !161, !llvm.loop !162

700:                                              ; preds = %691, %813
  %701 = phi i64 [ %720, %813 ], [ 0, %691 ]
  %702 = phi i32 [ %767, %813 ], [ 0, %691 ]
  %703 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %701
  %704 = load ptr, ptr %703, align 8, !tbaa !65
  %705 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %701
  store i32 0, ptr %705, align 4, !tbaa !80
  %706 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 1, i64 %701
  store i32 0, ptr %706, align 4, !tbaa !80
  %707 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 3, i64 %701
  store i32 0, ptr %707, align 4, !tbaa !80
  %708 = load i8, ptr %704, align 1, !tbaa !76
  switch i8 %708, label %712 [
    i8 61, label %710
    i8 43, label %709
  ], !prof !163

709:                                              ; preds = %700
  br label %710

710:                                              ; preds = %700, %709
  %711 = phi i32 [ 2, %709 ], [ 1, %700 ]
  store i32 %711, ptr %706, align 4, !tbaa !80
  br label %712

712:                                              ; preds = %710, %700
  %713 = load i32, ptr @which_alternative, align 4
  %714 = load i8, ptr %704, align 1, !tbaa !76
  %715 = icmp ne i8 %714, 0
  %716 = icmp sgt i32 %713, 0
  %717 = select i1 %715, i1 %716, i1 false, !prof !164
  br i1 %717, label %721, label %718, !prof !165

718:                                              ; preds = %721, %712
  %719 = phi ptr [ %704, %712 ], [ %728, %721 ]
  %720 = add nuw nsw i64 %701, 1
  br label %765

721:                                              ; preds = %712, %721
  %722 = phi i8 [ %729, %721 ], [ %714, %712 ]
  %723 = phi i32 [ %727, %721 ], [ 0, %712 ]
  %724 = phi ptr [ %728, %721 ], [ %704, %712 ]
  %725 = icmp eq i8 %722, 44
  %726 = zext i1 %725 to i32
  %727 = add nuw nsw i32 %723, %726
  %728 = getelementptr inbounds i8, ptr %724, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !76
  %730 = icmp ne i8 %729, 0
  %731 = icmp slt i32 %727, %713
  %732 = select i1 %730, i1 %731, i1 false, !prof !164
  br i1 %732, label %721, label %718, !prof !166, !llvm.loop !167

733:                                              ; preds = %765, %809
  %734 = phi ptr [ %812, %809 ], [ %766, %765 ]
  %735 = load i8, ptr %734, align 1, !tbaa !76
  switch i8 %735, label %809 [
    i8 44, label %813
    i8 0, label %813
    i8 90, label %768
    i8 89, label %768
    i8 38, label %736
    i8 37, label %737
    i8 48, label %742
    i8 49, label %742
    i8 50, label %742
    i8 51, label %742
    i8 52, label %742
    i8 53, label %742
    i8 54, label %742
    i8 55, label %742
    i8 56, label %742
    i8 57, label %742
    i8 97, label %768
    i8 98, label %768
    i8 99, label %768
    i8 100, label %768
    i8 101, label %768
    i8 102, label %768
    i8 104, label %768
    i8 106, label %768
    i8 107, label %768
    i8 108, label %768
    i8 112, label %768
    i8 113, label %768
    i8 116, label %768
    i8 117, label %768
    i8 118, label %768
    i8 119, label %768
    i8 120, label %768
    i8 121, label %768
    i8 122, label %768
    i8 65, label %768
    i8 66, label %768
    i8 67, label %768
    i8 68, label %768
    i8 87, label %768
  ], !prof !168

736:                                              ; preds = %733
  store i32 1, ptr %707, align 4, !tbaa !80
  br label %809

737:                                              ; preds = %733
  %738 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 2, i64 %701
  %739 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 2, i64 %720
  %740 = trunc i64 %720 to i32
  %741 = trunc i64 %701 to i32
  store i32 %740, ptr %738, align 4, !tbaa !80
  store i32 %741, ptr %739, align 4, !tbaa !80
  br label %809

742:                                              ; preds = %733, %733, %733, %733, %733, %733, %733, %733, %733, %733
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %743 = call i64 @strtoul(ptr noundef nonnull %734, ptr noundef nonnull %2, i32 noundef 10)
  %744 = trunc i64 %743 to i32
  %745 = load ptr, ptr %2, align 8, !tbaa !65
  %746 = shl i64 %743, 32
  %747 = ashr exact i64 %746, 32
  %748 = icmp sgt i64 %701, %747
  br i1 %748, label %749, label %755, !prof !169

749:                                              ; preds = %742
  %750 = shl i64 %743, 32
  %751 = ashr exact i64 %750, 32
  %752 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %751
  %753 = load i32, ptr %752, align 4, !tbaa !80
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %763, !prof !169, !llvm.loop !170

755:                                              ; preds = %749, %742
  %756 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %701
  %757 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 2, i64 %701
  store i32 %744, ptr %756, align 4, !tbaa !80
  %758 = load i32, ptr %757, align 4, !tbaa !80
  %759 = icmp sgt i32 %758, -1
  br i1 %759, label %760, label %763, !prof !171

760:                                              ; preds = %755
  %761 = zext nneg i32 %758 to i64
  %762 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %761
  store i32 %744, ptr %762, align 4, !tbaa !80
  br label %763

763:                                              ; preds = %760, %755, %749
  %764 = phi i32 [ %767, %749 ], [ 1, %760 ], [ 1, %755 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %765

765:                                              ; preds = %718, %763
  %766 = phi ptr [ %719, %718 ], [ %745, %763 ]
  %767 = phi i32 [ %702, %718 ], [ %764, %763 ]
  br label %733

768:                                              ; preds = %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733, %733
  %769 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %770 = tail call i32 @regclass_for_constraint(i32 noundef %769) #16
  %771 = icmp eq i32 %770, 1
  br i1 %771, label %808, label %772, !prof !172

772:                                              ; preds = %768
  %773 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %774 = tail call i32 @regclass_for_constraint(i32 noundef %773) #16
  %775 = icmp eq i32 %774, 2
  br i1 %775, label %808, label %776, !prof !172

776:                                              ; preds = %772
  %777 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %778 = tail call i32 @regclass_for_constraint(i32 noundef %777) #16
  %779 = icmp eq i32 %778, 3
  br i1 %779, label %808, label %780, !prof !173

780:                                              ; preds = %776
  %781 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %782 = tail call i32 @regclass_for_constraint(i32 noundef %781) #16
  %783 = icmp eq i32 %782, 4
  br i1 %783, label %808, label %784, !prof !174

784:                                              ; preds = %780
  %785 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %786 = tail call i32 @regclass_for_constraint(i32 noundef %785) #16
  %787 = icmp eq i32 %786, 7
  br i1 %787, label %808, label %788, !prof !174

788:                                              ; preds = %784
  %789 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %790 = tail call i32 @regclass_for_constraint(i32 noundef %789) #16
  %791 = icmp eq i32 %790, 5
  br i1 %791, label %808, label %792, !prof !174

792:                                              ; preds = %788
  %793 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %794 = tail call i32 @regclass_for_constraint(i32 noundef %793) #16
  %795 = icmp eq i32 %794, 6
  br i1 %795, label %808, label %796, !prof !174

796:                                              ; preds = %792
  %797 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %798 = tail call i32 @regclass_for_constraint(i32 noundef %797) #16
  %799 = icmp eq i32 %798, 17
  br i1 %799, label %808, label %800, !prof !174

800:                                              ; preds = %796
  %801 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %802 = tail call i32 @regclass_for_constraint(i32 noundef %801) #16
  %803 = icmp eq i32 %802, 14
  br i1 %803, label %808, label %804, !prof !174

804:                                              ; preds = %800
  %805 = tail call i32 @lookup_constraint(ptr noundef nonnull %734) #16
  %806 = tail call i32 @regclass_for_constraint(i32 noundef %805) #16
  %807 = icmp eq i32 %806, 15
  br i1 %807, label %808, label %809, !prof !174

808:                                              ; preds = %804, %800, %796, %792, %788, %784, %780, %776, %772, %768
  store i32 1, ptr %705, align 4, !tbaa !80
  br label %809

809:                                              ; preds = %804, %808, %737, %736, %733
  %810 = icmp eq i8 %735, 89
  %811 = select i1 %810, i64 2, i64 1, !prof !175
  %812 = getelementptr inbounds i8, ptr %734, i64 %811
  br label %733, !llvm.loop !170

813:                                              ; preds = %733, %733
  %814 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !158
  %815 = sext i8 %814 to i64
  %816 = icmp slt i64 %720, %815
  br i1 %816, label %700, label %817, !prof !161, !llvm.loop !176

817:                                              ; preds = %813, %691, %683
  %818 = phi i32 [ 0, %683 ], [ 0, %691 ], [ %767, %813 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %1) #16
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %1385, label %820, !prof !177

820:                                              ; preds = %817
  %821 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !158
  %822 = icmp sgt i8 %821, 0
  br i1 %822, label %823, label %1275, !prof !178

823:                                              ; preds = %820, %1265
  %824 = phi i64 [ %1270, %1265 ], [ 0, %820 ]
  %825 = phi ptr [ %1269, %1265 ], [ null, %820 ]
  %826 = phi ptr [ %1268, %1265 ], [ null, %820 ]
  %827 = phi i32 [ %1267, %1265 ], [ 0, %820 ]
  %828 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %824
  %829 = load i32, ptr %828, align 4, !tbaa !80
  %830 = icmp slt i32 %829, 0
  br i1 %830, label %1265, label %831, !prof !179

831:                                              ; preds = %823
  %832 = zext nneg i32 %829 to i64
  %833 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %832
  %834 = load ptr, ptr %833, align 8, !tbaa !65
  %835 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %824
  %836 = load ptr, ptr %835, align 8, !tbaa !65
  %837 = load i32, ptr %836, align 8
  %838 = and i32 %837, 65535
  %839 = icmp eq i32 %838, 37
  br i1 %839, label %840, label %1265, !prof !180

840:                                              ; preds = %831
  %841 = load i32, ptr %834, align 8
  %842 = and i32 %841, 65535
  %843 = icmp eq i32 %842, 37
  br i1 %843, label %844, label %1265, !prof !181

844:                                              ; preds = %840
  %845 = getelementptr inbounds %struct.rtx_def, ptr %834, i64 0, i32 1
  %846 = load i32, ptr %845, align 8, !tbaa !76
  %847 = icmp ult i32 %846, 53
  br i1 %847, label %1265, label %848, !prof !182

848:                                              ; preds = %844
  %849 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %850 = zext i32 %846 to i64
  %851 = getelementptr inbounds %struct.reg_info_t, ptr %849, i64 %850, i32 2
  %852 = load i32, ptr %851, align 4, !tbaa !131
  %853 = icmp slt i32 %852, 0
  br i1 %853, label %1265, label %854, !prof !182

854:                                              ; preds = %848
  %855 = xor i32 %841, %837
  %856 = and i32 %855, 16711680
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %1265, !prof !181

858:                                              ; preds = %854
  %859 = tail call i32 @operands_match_p(ptr noundef nonnull %836, ptr noundef nonnull %834) #16
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %1265, !prof !183

861:                                              ; preds = %858
  %862 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 2, i64 %824
  %863 = load i32, ptr %862, align 4, !tbaa !80
  %864 = icmp sgt i32 %863, -1
  br i1 %864, label %865, label %871, !prof !184

865:                                              ; preds = %861
  %866 = zext nneg i32 %863 to i64
  %867 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %866
  %868 = load ptr, ptr %867, align 8, !tbaa !65
  %869 = tail call i32 @operands_match_p(ptr noundef %868, ptr noundef nonnull %834) #16
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %1265, !prof !185

871:                                              ; preds = %865, %861
  %872 = load i32, ptr %671, align 8
  %873 = and i32 %872, 65535
  %874 = add nsw i32 %873, -7
  %875 = icmp ult i32 %874, 4
  br i1 %875, label %876, label %884, !prof !186

876:                                              ; preds = %871
  %877 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 1
  %878 = load ptr, ptr %877, align 8, !tbaa !76
  %879 = load i32, ptr %878, align 8
  %880 = and i32 %879, 65535
  %881 = icmp eq i32 %880, 23
  br i1 %881, label %884, label %882, !prof !187

882:                                              ; preds = %876
  %883 = tail call ptr @single_set_2(ptr noundef nonnull %671, ptr noundef nonnull %878) #16
  br label %884

884:                                              ; preds = %882, %876, %871
  %885 = phi ptr [ %883, %882 ], [ null, %871 ], [ %878, %876 ]
  %886 = icmp eq ptr %885, null
  br i1 %886, label %1265, label %887, !prof !188

887:                                              ; preds = %884
  %888 = tail call i32 @reg_set_p(ptr noundef nonnull %836, ptr noundef nonnull %671) #16
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %1265, !prof !189

890:                                              ; preds = %887
  %891 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 1, i64 %824
  %892 = load i32, ptr %891, align 4, !tbaa !80
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %1265, !prof !189

894:                                              ; preds = %890
  %895 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 1, i64 %832
  %896 = load i32, ptr %895, align 4, !tbaa !80
  %897 = icmp eq i32 %896, 1
  br i1 %897, label %898, label %1265, !prof !189

898:                                              ; preds = %894
  %899 = getelementptr inbounds %struct.match, ptr %3, i64 0, i32 3, i64 %832
  %900 = load i32, ptr %899, align 4, !tbaa !80
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %907, label %902, !prof !189

902:                                              ; preds = %898
  %903 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 1
  %904 = load ptr, ptr %903, align 8, !tbaa !76
  %905 = tail call i32 @count_occurrences(ptr noundef %904, ptr noundef nonnull %836, i32 noundef 0) #16
  %906 = icmp sgt i32 %905, 1
  br i1 %906, label %1265, label %907

907:                                              ; preds = %902, %898
  %908 = load ptr, ptr %833, align 8, !tbaa !65
  %909 = getelementptr inbounds %struct.rtx_def, ptr %885, i64 0, i32 1
  %910 = load ptr, ptr %909, align 8, !tbaa !76
  %911 = icmp eq ptr %908, %910
  br i1 %911, label %912, label %1265, !prof !189

912:                                              ; preds = %907
  %913 = getelementptr inbounds %struct.rtx_def, ptr %836, i64 0, i32 1
  %914 = load i32, ptr %913, align 8, !tbaa !76
  %915 = icmp ult i32 %914, 53
  br i1 %915, label %916, label %936, !prof !190

916:                                              ; preds = %912
  %917 = getelementptr inbounds %struct.rtx_def, ptr %885, i64 0, i32 1, i32 0, i32 0, i64 1
  %918 = load ptr, ptr %917, align 8, !tbaa !76
  %919 = load i32, ptr %918, align 8
  %920 = and i32 %919, 65535
  %921 = icmp eq i32 %920, 49
  br i1 %921, label %922, label %935

922:                                              ; preds = %916
  %923 = getelementptr inbounds %struct.rtx_def, ptr %918, i64 0, i32 1, i32 0, i32 0, i64 1
  %924 = load ptr, ptr %923, align 8, !tbaa !76
  %925 = load i32, ptr %924, align 8
  %926 = and i32 %925, 65535
  %927 = icmp eq i32 %926, 30
  br i1 %927, label %928, label %935

928:                                              ; preds = %922
  %929 = getelementptr inbounds %struct.rtx_def, ptr %918, i64 0, i32 1
  %930 = load ptr, ptr %929, align 8, !tbaa !76
  %931 = icmp eq ptr %930, %836
  br i1 %931, label %932, label %935

932:                                              ; preds = %928
  %933 = tail call fastcc i32 @fixup_match_2(ptr noundef nonnull %671, ptr noundef nonnull %834, ptr noundef nonnull %836, ptr noundef nonnull %924)
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %1265

935:                                              ; preds = %932, %928, %922, %916
  br label %1265

936:                                              ; preds = %912
  %937 = tail call i32 @reg_preferred_class(i32 noundef %914) #16
  %938 = load i32, ptr %845, align 8, !tbaa !76
  %939 = tail call i32 @reg_preferred_class(i32 noundef %938) #16
  %940 = tail call ptr @find_reg_note(ptr noundef nonnull %671, i32 noundef 1, ptr noundef nonnull %836) #16
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1265, label %942, !prof !190

942:                                              ; preds = %936
  %943 = icmp eq i32 %937, %939
  br i1 %943, label %962, label %944, !prof !189

944:                                              ; preds = %942
  %945 = tail call i32 @reg_class_subset_p(i32 noundef %937, i32 noundef %939) #16
  %946 = freeze i32 %945
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %949, label %948

948:                                              ; preds = %944
  switch i32 %937, label %962 [
    i32 17, label %949
    i32 15, label %949
    i32 14, label %949
    i32 7, label %949
    i32 6, label %949
    i32 5, label %949
    i32 4, label %949
    i32 3, label %949
    i32 2, label %949
    i32 1, label %949
  ]

949:                                              ; preds = %948, %948, %948, %948, %948, %948, %948, %948, %948, %948, %944
  %950 = tail call i32 @reg_class_subset_p(i32 noundef %939, i32 noundef %937) #16
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %962, label %952

952:                                              ; preds = %949
  %953 = add i32 %939, -1
  %954 = icmp ult i32 %953, 17
  br i1 %954, label %958, label %955

955:                                              ; preds = %958, %952
  %956 = icmp ne i32 %939, 15
  %957 = zext i1 %956 to i32
  br label %962

958:                                              ; preds = %952
  %959 = lshr i32 73855, %953
  %960 = and i32 %959, 1
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %955, label %962

962:                                              ; preds = %958, %948, %955, %949, %942
  %963 = phi i32 [ 1, %942 ], [ 1, %948 ], [ 0, %949 ], [ %957, %955 ], [ 0, %958 ]
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %965, label %969, !prof !190

965:                                              ; preds = %962
  %966 = icmp eq ptr %825, null
  %967 = select i1 %966, ptr %834, ptr %826
  %968 = select i1 %966, ptr %836, ptr %825
  br label %1265

969:                                              ; preds = %962
  %970 = getelementptr inbounds %struct.rtx_def, ptr %885, i64 0, i32 1, i32 0, i32 0, i64 1
  %971 = load ptr, ptr %970, align 8, !tbaa !76
  %972 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %834, ptr noundef %971) #16
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %978, label %974, !prof !189

974:                                              ; preds = %969
  %975 = icmp eq ptr %825, null
  %976 = select i1 %975, ptr %834, ptr %826
  %977 = select i1 %975, ptr %836, ptr %825
  br label %1265

978:                                              ; preds = %969
  %979 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !65
  %980 = icmp eq ptr %979, null
  br i1 %980, label %981, label %1061, !prof !191

981:                                              ; preds = %978
  %982 = tail call i32 @max_reg_num() #16
  store i32 %982, ptr @max_reg_computed, align 4, !tbaa !80
  %983 = sext i32 %982 to i64
  %984 = tail call ptr @xcalloc(i64 noundef %983, i64 noundef 8) #16
  store ptr %984, ptr @reg_set_in_bb, align 8, !tbaa !65
  %985 = load ptr, ptr @cfun, align 8, !tbaa !65
  %986 = getelementptr inbounds %struct.function, ptr %985, i64 0, i32 1
  %987 = load ptr, ptr %986, align 8, !tbaa !90
  %988 = load ptr, ptr %987, align 8, !tbaa !92
  %989 = getelementptr inbounds %struct.basic_block_def, ptr %988, i64 0, i32 6
  %990 = load ptr, ptr %989, align 8, !tbaa !94
  %991 = getelementptr inbounds %struct.control_flow_graph, ptr %987, i64 0, i32 1
  %992 = load ptr, ptr %991, align 8, !tbaa !96
  %993 = icmp eq ptr %990, %992
  br i1 %993, label %1061, label %994, !prof !192

994:                                              ; preds = %981, %1052
  %995 = phi ptr [ %1054, %1052 ], [ %990, %981 ]
  %996 = getelementptr inbounds %struct.basic_block_def, ptr %995, i64 0, i32 7
  %997 = load ptr, ptr %996, align 8, !tbaa !76
  %998 = load ptr, ptr %997, align 8, !tbaa !76
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1052, label %1000, !prof !192

1000:                                             ; preds = %994, %1048
  %1001 = phi ptr [ %1050, %1048 ], [ %998, %994 ]
  %1002 = load ptr, ptr %996, align 8, !tbaa !76
  %1003 = getelementptr inbounds %struct.rtl_bb_info, ptr %1002, i64 0, i32 1
  %1004 = load ptr, ptr %1003, align 8, !tbaa !98
  %1005 = getelementptr inbounds %struct.rtx_def, ptr %1004, i64 0, i32 1, i32 0, i32 0, i64 2
  %1006 = load ptr, ptr %1005, align 8, !tbaa !76
  %1007 = icmp eq ptr %1001, %1006
  br i1 %1007, label %1052, label %1008, !prof !193

1008:                                             ; preds = %1000
  %1009 = load i32, ptr %1001, align 8
  %1010 = and i32 %1009, 65535
  %1011 = add nsw i32 %1010, -7
  %1012 = icmp ult i32 %1011, 4
  br i1 %1012, label %1013, label %1048, !prof !194

1013:                                             ; preds = %1008
  %1014 = getelementptr inbounds %struct.rtx_def, ptr %1001, i64 1
  %1015 = load ptr, ptr %1014, align 8, !tbaa !76
  %1016 = load i32, ptr %1015, align 8
  %1017 = and i32 %1016, 65535
  %1018 = icmp eq i32 %1017, 23
  br i1 %1018, label %1021, label %1019, !prof !195

1019:                                             ; preds = %1013
  %1020 = tail call ptr @single_set_2(ptr noundef nonnull %1001, ptr noundef nonnull %1015) #16
  br label %1021

1021:                                             ; preds = %1019, %1013
  %1022 = phi ptr [ %1020, %1019 ], [ %1015, %1013 ]
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1048, label %1024, !prof !196

1024:                                             ; preds = %1021
  %1025 = getelementptr inbounds %struct.rtx_def, ptr %1022, i64 0, i32 1
  %1026 = load ptr, ptr %1025, align 8, !tbaa !76
  %1027 = load i32, ptr %1026, align 8
  %1028 = and i32 %1027, 65535
  %1029 = icmp eq i32 %1028, 37
  br i1 %1029, label %1030, label %1048, !prof !197

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds %struct.rtx_def, ptr %1026, i64 0, i32 1
  %1032 = load i32, ptr %1031, align 8, !tbaa !76
  %1033 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %1034 = sext i32 %1032 to i64
  %1035 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %1033, i64 %1034
  %1036 = load i32, ptr %1035, align 4, !tbaa !109
  %1037 = icmp eq i32 %1036, 1
  br i1 %1037, label %1038, label %1048, !prof !198

1038:                                             ; preds = %1030
  %1039 = tail call ptr @find_reg_note(ptr noundef nonnull %1001, i32 noundef 4, ptr noundef null) #16
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1048, label %1041, !prof !199

1041:                                             ; preds = %1038
  %1042 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !65
  %1043 = load ptr, ptr %1025, align 8, !tbaa !76
  %1044 = getelementptr inbounds %struct.rtx_def, ptr %1043, i64 0, i32 1
  %1045 = load i32, ptr %1044, align 8, !tbaa !76
  %1046 = zext i32 %1045 to i64
  %1047 = getelementptr inbounds ptr, ptr %1042, i64 %1046
  store ptr %995, ptr %1047, align 8, !tbaa !65
  br label %1048

1048:                                             ; preds = %1041, %1038, %1030, %1024, %1021, %1008
  %1049 = getelementptr inbounds %struct.rtx_def, ptr %1001, i64 0, i32 1, i32 0, i32 0, i64 2
  %1050 = load ptr, ptr %1049, align 8, !tbaa !76
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1052, label %1000, !prof !200, !llvm.loop !201

1052:                                             ; preds = %1048, %1000, %994
  %1053 = getelementptr inbounds %struct.basic_block_def, ptr %995, i64 0, i32 6
  %1054 = load ptr, ptr %1053, align 8, !tbaa !94
  %1055 = load ptr, ptr @cfun, align 8, !tbaa !65
  %1056 = getelementptr inbounds %struct.function, ptr %1055, i64 0, i32 1
  %1057 = load ptr, ptr %1056, align 8, !tbaa !90
  %1058 = getelementptr inbounds %struct.control_flow_graph, ptr %1057, i64 0, i32 1
  %1059 = load ptr, ptr %1058, align 8, !tbaa !96
  %1060 = icmp eq ptr %1054, %1059
  br i1 %1060, label %1061, label %994, !prof !202, !llvm.loop !203

1061:                                             ; preds = %1052, %981, %978
  %1062 = load i32, ptr %913, align 8, !tbaa !76
  %1063 = load i32, ptr @max_reg_computed, align 4, !tbaa !80
  %1064 = icmp ult i32 %1062, %1063
  br i1 %1064, label %1066, label %1065, !prof !189

1065:                                             ; preds = %1061
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 721, ptr noundef nonnull @.str.7) #16
  br label %1066

1066:                                             ; preds = %1065, %1061
  %1067 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !65
  %1068 = load i32, ptr %913, align 8, !tbaa !76
  %1069 = zext i32 %1068 to i64
  %1070 = getelementptr inbounds ptr, ptr %1067, i64 %1069
  %1071 = load ptr, ptr %1070, align 8, !tbaa !65
  %1072 = icmp eq ptr %1071, null
  br i1 %1072, label %1078, label %1073, !prof !204

1073:                                             ; preds = %1066
  %1074 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1, i32 0, i32 1
  %1075 = load ptr, ptr %1074, align 8, !tbaa !76
  %1076 = icmp ne ptr %1071, %1075
  %1077 = zext i1 %1076 to i8
  br label %1078

1078:                                             ; preds = %1066, %1073
  %1079 = phi i8 [ %1077, %1073 ], [ 0, %1066 ]
  %1080 = icmp eq i8 %1079, 0
  br i1 %1080, label %1085, label %1081, !prof !189

1081:                                             ; preds = %1078
  %1082 = icmp eq ptr %825, null
  %1083 = select i1 %1082, ptr %834, ptr %826
  %1084 = select i1 %1082, ptr %836, ptr %825
  br label %1265

1085:                                             ; preds = %1078
  %1086 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1093, label %1088, !prof !189

1088:                                             ; preds = %1085
  %1089 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1
  %1090 = load i32, ptr %1089, align 8, !tbaa !76
  %1091 = trunc i64 %824 to i32
  %1092 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1086, ptr noundef nonnull @.str.3, i32 noundef %1091, i32 noundef %1090, i32 noundef %829)
  br label %1093

1093:                                             ; preds = %1088, %1085
  br label %1094

1094:                                             ; preds = %1093, %1194
  %1095 = phi ptr [ %1101, %1194 ], [ %671, %1093 ]
  %1096 = phi i32 [ %1196, %1194 ], [ %827, %1093 ]
  %1097 = phi i32 [ %1197, %1194 ], [ 0, %1093 ]
  %1098 = phi i32 [ %1198, %1194 ], [ 0, %1093 ]
  %1099 = phi i32 [ %1199, %1194 ], [ 0, %1093 ]
  %1100 = getelementptr inbounds %struct.rtx_def, ptr %1095, i64 0, i32 1, i32 0, i32 0, i64 1
  %1101 = load ptr, ptr %1100, align 8, !tbaa !76
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1200, label %1103, !prof !205

1103:                                             ; preds = %1094
  %1104 = load i32, ptr %1101, align 8
  %1105 = and i32 %1104, 65535
  %1106 = add nsw i32 %1105, -7
  %1107 = icmp ult i32 %1106, 4
  br i1 %1107, label %1108, label %1194, !prof !206

1108:                                             ; preds = %1103
  %1109 = getelementptr inbounds %struct.rtx_def, ptr %1101, i64 0, i32 1, i32 0, i32 1
  %1110 = load ptr, ptr %1109, align 8, !tbaa !76
  %1111 = icmp eq ptr %1110, %658
  br i1 %1111, label %1112, label %1194, !prof !207

1112:                                             ; preds = %1108
  %1113 = icmp ne i32 %1105, 7
  %1114 = zext i1 %1113 to i32
  %1115 = add nsw i32 %1099, %1114
  %1116 = getelementptr inbounds %struct.rtx_def, ptr %1101, i64 1
  %1117 = load ptr, ptr %1116, align 8, !tbaa !76
  %1118 = load i32, ptr %1117, align 8
  %1119 = and i32 %1118, 65535
  %1120 = icmp eq i32 %1119, 23
  br i1 %1120, label %1123, label %1121, !prof !208

1121:                                             ; preds = %1112
  %1122 = tail call ptr @single_set_2(ptr noundef nonnull %1101, ptr noundef nonnull %1117) #16
  br label %1123

1123:                                             ; preds = %1121, %1112
  %1124 = phi ptr [ %1122, %1121 ], [ %1117, %1112 ]
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1135, label %1126, !prof !209

1126:                                             ; preds = %1123
  %1127 = getelementptr inbounds %struct.rtx_def, ptr %1124, i64 0, i32 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !76
  %1129 = icmp eq ptr %1128, %836
  br i1 %1129, label %1130, label %1135, !prof !210

1130:                                             ; preds = %1126
  %1131 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1101, ptr noundef nonnull %1127, ptr noundef nonnull %834, i8 noundef zeroext 1) #16
  %1132 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %836, ptr noundef nonnull %834, ptr noundef nonnull %671) #16
  %1133 = icmp eq i32 %1132, 0
  %1134 = select i1 %1133, i32 %1096, i32 1, !prof !211
  br label %1194

1135:                                             ; preds = %1126, %1123
  %1136 = load ptr, ptr %1116, align 8, !tbaa !76
  %1137 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %834, ptr noundef %1136) #16
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1149, label %1139, !prof !212

1139:                                             ; preds = %1135
  %1140 = load i32, ptr %1101, align 8
  %1141 = and i32 %1140, 65535
  %1142 = icmp eq i32 %1141, 7
  br i1 %1142, label %1143, label %1194

1143:                                             ; preds = %1139
  %1144 = load ptr, ptr %1116, align 8, !tbaa !76
  %1145 = getelementptr inbounds %struct.rtx_def, ptr %1144, i64 0, i32 1, i32 0, i32 0, i64 1
  %1146 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %1147 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %1146) #16
  %1148 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1101, ptr noundef nonnull %1145, ptr noundef %1147, i8 noundef zeroext 1) #16
  br label %1149

1149:                                             ; preds = %1143, %1135
  %1150 = load ptr, ptr %1116, align 8, !tbaa !76
  %1151 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %836, ptr noundef %1150) #16
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1158, label %1153, !prof !212

1153:                                             ; preds = %1149
  %1154 = load i32, ptr %1101, align 8
  %1155 = and i32 %1154, 65535
  %1156 = icmp eq i32 %1155, 7
  br i1 %1156, label %1157, label %1194

1157:                                             ; preds = %1153
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %836, ptr noundef nonnull %834, ptr noundef nonnull %1101) #16
  br label %1158

1158:                                             ; preds = %1157, %1149
  %1159 = load i32, ptr %1101, align 8
  %1160 = and i32 %1159, 65535
  %1161 = icmp eq i32 %1160, 10
  br i1 %1161, label %1162, label %1194, !prof !213

1162:                                             ; preds = %1158
  %1163 = add nsw i32 %1097, 1
  %1164 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1166, label %1185, !prof !214

1166:                                             ; preds = %1162
  %1167 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1177, label %1169, !prof !214

1169:                                             ; preds = %1166
  %1170 = load ptr, ptr @cfun, align 8, !tbaa !65
  %1171 = getelementptr inbounds %struct.function, ptr %1170, i64 0, i32 1
  %1172 = load ptr, ptr %1171, align 8, !tbaa !90
  %1173 = load ptr, ptr %1172, align 8, !tbaa !92
  %1174 = getelementptr inbounds %struct.basic_block_def, ptr %1173, i64 0, i32 8
  %1175 = load i64, ptr %1174, align 8, !tbaa !127
  %1176 = icmp eq i64 %1175, 0
  br i1 %1176, label %1185, label %1177

1177:                                             ; preds = %1169, %1166
  %1178 = load ptr, ptr %1109, align 8, !tbaa !76
  %1179 = getelementptr inbounds %struct.basic_block_def, ptr %1178, i64 0, i32 11
  %1180 = load i32, ptr %1179, align 8, !tbaa !128
  %1181 = add i32 %1180, 9
  %1182 = icmp ult i32 %1181, 19
  br i1 %1182, label %1185, label %1183, !prof !215

1183:                                             ; preds = %1177
  %1184 = sdiv i32 %1180, 10
  br label %1185

1185:                                             ; preds = %1169, %1183, %1177, %1162
  %1186 = phi i32 [ 1000, %1162 ], [ %1184, %1183 ], [ 1, %1177 ], [ 1000, %1169 ]
  %1187 = add nsw i32 %1186, %1098
  %1188 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %1189 = load i32, ptr %845, align 8, !tbaa !76
  %1190 = zext i32 %1189 to i64
  %1191 = getelementptr inbounds %struct.reg_info_t, ptr %1188, i64 %1190, i32 3
  %1192 = load i32, ptr %1191, align 4, !tbaa !132
  %1193 = icmp eq i32 %1192, 0
  br label %1194

1194:                                             ; preds = %1185, %1158, %1153, %1139, %1130, %1108, %1103
  %1195 = phi i1 [ true, %1130 ], [ false, %1103 ], [ true, %1108 ], [ true, %1139 ], [ true, %1153 ], [ false, %1158 ], [ %1193, %1185 ]
  %1196 = phi i32 [ %1134, %1130 ], [ %1096, %1103 ], [ %1096, %1108 ], [ %1096, %1139 ], [ %1096, %1153 ], [ %1096, %1158 ], [ %1096, %1185 ]
  %1197 = phi i32 [ %1097, %1130 ], [ %1097, %1103 ], [ %1097, %1108 ], [ %1097, %1139 ], [ %1097, %1153 ], [ %1097, %1158 ], [ %1163, %1185 ]
  %1198 = phi i32 [ %1098, %1130 ], [ %1098, %1103 ], [ %1098, %1108 ], [ %1098, %1139 ], [ %1098, %1153 ], [ %1098, %1158 ], [ %1187, %1185 ]
  %1199 = phi i32 [ %1115, %1130 ], [ %1099, %1103 ], [ %1099, %1108 ], [ %1115, %1139 ], [ %1115, %1153 ], [ %1115, %1158 ], [ %1115, %1185 ]
  br i1 %1195, label %1200, label %1094, !prof !216, !llvm.loop !217

1200:                                             ; preds = %1194, %1094
  %1201 = phi i32 [ %1096, %1094 ], [ %1196, %1194 ]
  %1202 = phi i32 [ %1097, %1094 ], [ %1197, %1194 ]
  %1203 = phi i32 [ %1098, %1094 ], [ %1198, %1194 ]
  %1204 = phi i32 [ %1099, %1094 ], [ %1199, %1194 ]
  %1205 = icmp eq i32 %1201, 0
  br i1 %1205, label %1261, label %1206, !prof !218

1206:                                             ; preds = %1200
  tail call void @remove_note(ptr noundef nonnull %671, ptr noundef nonnull %940) #16
  %1207 = getelementptr inbounds %struct.rtx_def, ptr %1101, i64 1
  %1208 = load ptr, ptr %1207, align 8, !tbaa !76
  %1209 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %836, ptr noundef %1208) #16
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1215, label %1211, !prof !219

1211:                                             ; preds = %1206
  %1212 = getelementptr inbounds %struct.rtx_def, ptr %1101, i64 1, i32 1, i32 0, i32 0, i64 1
  %1213 = load ptr, ptr %1212, align 8, !tbaa !76
  %1214 = getelementptr inbounds %struct.rtx_def, ptr %940, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1213, ptr %1214, align 8, !tbaa !76
  store ptr %940, ptr %1212, align 8, !tbaa !76
  br label %1215

1215:                                             ; preds = %1211, %1206
  %1216 = tail call ptr @find_reg_note(ptr noundef %1101, i32 noundef 1, ptr noundef nonnull %834) #16
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1219, label %1218, !prof !219

1218:                                             ; preds = %1215
  tail call void @remove_note(ptr noundef %1101, ptr noundef nonnull %1216) #16
  br label %1219

1219:                                             ; preds = %1218, %1215
  %1220 = load i32, ptr %845, align 8, !tbaa !76
  %1221 = load i32, ptr %913, align 8, !tbaa !76
  %1222 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %1223 = sext i32 %1220 to i64
  %1224 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %1222, i64 %1223
  %1225 = load i32, ptr %1224, align 4, !tbaa !109
  %1226 = add nsw i32 %1225, 1
  store i32 %1226, ptr %1224, align 4, !tbaa !109
  %1227 = sext i32 %1221 to i64
  %1228 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %1222, i64 %1227
  %1229 = load i32, ptr %1228, align 4, !tbaa !109
  %1230 = add nsw i32 %1229, -1
  store i32 %1230, ptr %1228, align 4, !tbaa !109
  %1231 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %1232 = getelementptr inbounds %struct.reg_info_t, ptr %1231, i64 %1223, i32 3
  %1233 = load i32, ptr %1232, align 4, !tbaa !132
  %1234 = add nsw i32 %1233, %1202
  store i32 %1234, ptr %1232, align 4, !tbaa !132
  %1235 = getelementptr inbounds %struct.reg_info_t, ptr %1231, i64 %1227, i32 3
  %1236 = load i32, ptr %1235, align 4, !tbaa !132
  %1237 = sub nsw i32 %1236, %1202
  store i32 %1237, ptr %1235, align 4, !tbaa !132
  %1238 = getelementptr inbounds %struct.reg_info_t, ptr %1231, i64 %1223, i32 4
  %1239 = load i32, ptr %1238, align 4, !tbaa !133
  %1240 = add nsw i32 %1239, %1203
  store i32 %1240, ptr %1238, align 4, !tbaa !133
  %1241 = getelementptr inbounds %struct.reg_info_t, ptr %1231, i64 %1227, i32 4
  %1242 = load i32, ptr %1241, align 4, !tbaa !133
  %1243 = sub nsw i32 %1242, %1203
  store i32 %1243, ptr %1241, align 4, !tbaa !133
  %1244 = getelementptr inbounds %struct.reg_info_t, ptr %1231, i64 %1223, i32 2
  %1245 = load i32, ptr %1244, align 4, !tbaa !131
  %1246 = add nsw i32 %1245, %1204
  store i32 %1246, ptr %1244, align 4, !tbaa !131
  %1247 = getelementptr inbounds %struct.reg_info_t, ptr %1231, i64 %1227, i32 2
  %1248 = load i32, ptr %1247, align 4, !tbaa !131
  %1249 = icmp sgt i32 %1248, -1
  br i1 %1249, label %1250, label %1253, !prof !219

1250:                                             ; preds = %1219
  %1251 = sub nsw i32 %1248, %1204
  %1252 = tail call i32 @llvm.smax.i32(i32 %1251, i32 2)
  store i32 %1252, ptr %1247, align 4
  br label %1253

1253:                                             ; preds = %1250, %1219
  %1254 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1265, label %1256, !prof !219

1256:                                             ; preds = %1253
  %1257 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1
  %1258 = load i32, ptr %1257, align 8, !tbaa !76
  %1259 = trunc i64 %824 to i32
  %1260 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1254, ptr noundef nonnull @.str.4, i32 noundef %1259, i32 noundef %1258, i32 noundef %829)
  br label %1265

1261:                                             ; preds = %1200
  %1262 = tail call i32 @num_changes_pending() #16
  %1263 = icmp sgt i32 %1262, 0
  br i1 %1263, label %1264, label %1265, !prof !220

1264:                                             ; preds = %1261
  tail call void @cancel_changes(i32 noundef 0) #16
  br label %1265

1265:                                             ; preds = %884, %1264, %1261, %1256, %1253, %1081, %974, %965, %936, %935, %932, %907, %902, %894, %890, %887, %865, %858, %854, %848, %844, %840, %831, %823
  %1266 = phi i1 [ true, %935 ], [ true, %974 ], [ true, %1081 ], [ true, %965 ], [ true, %865 ], [ true, %823 ], [ true, %831 ], [ true, %854 ], [ true, %848 ], [ true, %844 ], [ true, %840 ], [ true, %858 ], [ true, %887 ], [ true, %894 ], [ true, %890 ], [ true, %902 ], [ true, %907 ], [ false, %932 ], [ true, %936 ], [ false, %1256 ], [ false, %1253 ], [ true, %1261 ], [ true, %1264 ], [ true, %884 ]
  %1267 = phi i32 [ %827, %935 ], [ %827, %974 ], [ %827, %1081 ], [ %827, %965 ], [ %827, %865 ], [ %827, %823 ], [ %827, %831 ], [ %827, %854 ], [ %827, %848 ], [ %827, %844 ], [ %827, %840 ], [ %827, %858 ], [ %827, %887 ], [ %827, %894 ], [ %827, %890 ], [ %827, %902 ], [ %827, %907 ], [ %827, %932 ], [ %827, %936 ], [ 1, %1256 ], [ 1, %1253 ], [ 0, %1261 ], [ 0, %1264 ], [ %827, %884 ]
  %1268 = phi ptr [ %826, %935 ], [ %976, %974 ], [ %1083, %1081 ], [ %967, %965 ], [ %826, %865 ], [ %826, %823 ], [ %826, %831 ], [ %826, %854 ], [ %826, %848 ], [ %826, %844 ], [ %826, %840 ], [ %826, %858 ], [ %826, %887 ], [ %826, %894 ], [ %826, %890 ], [ %826, %902 ], [ %826, %907 ], [ %826, %932 ], [ %826, %936 ], [ %826, %1256 ], [ %826, %1253 ], [ %826, %1261 ], [ %826, %1264 ], [ %826, %884 ]
  %1269 = phi ptr [ %825, %935 ], [ %977, %974 ], [ %1084, %1081 ], [ %968, %965 ], [ %825, %865 ], [ %825, %823 ], [ %825, %831 ], [ %825, %854 ], [ %825, %848 ], [ %825, %844 ], [ %825, %840 ], [ %825, %858 ], [ %825, %887 ], [ %825, %894 ], [ %825, %890 ], [ %825, %902 ], [ %825, %907 ], [ %825, %932 ], [ %825, %936 ], [ %825, %1256 ], [ %825, %1253 ], [ %825, %1261 ], [ %825, %1264 ], [ %825, %884 ]
  %1270 = add nuw nsw i64 %824, 1
  %1271 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %1272 = sext i8 %1271 to i64
  %1273 = icmp slt i64 %1270, %1272
  %1274 = select i1 %1266, i1 %1273, i1 false
  br i1 %1274, label %823, label %1275, !prof !221, !llvm.loop !222

1275:                                             ; preds = %1265, %820
  %1276 = phi i32 [ 0, %820 ], [ %1267, %1265 ]
  %1277 = phi ptr [ null, %820 ], [ %1268, %1265 ]
  %1278 = phi ptr [ null, %820 ], [ %1269, %1265 ]
  %1279 = icmp eq i32 %1276, 0
  %1280 = icmp ne ptr %1278, null
  %1281 = select i1 %1279, i1 %1280, i1 false, !prof !223
  br i1 %1281, label %1282, label %1385, !prof !224

1282:                                             ; preds = %1275
  %1283 = load i32, ptr %1278, align 8
  %1284 = and i32 %1283, 65535
  %1285 = icmp eq i32 %1284, 37
  br i1 %1285, label %1286, label %1385

1286:                                             ; preds = %1282
  %1287 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %1288 = getelementptr inbounds %struct.rtx_def, ptr %1278, i64 0, i32 1
  %1289 = load i32, ptr %1288, align 8, !tbaa !76
  %1290 = zext i32 %1289 to i64
  %1291 = getelementptr inbounds %struct.reg_info_t, ptr %1287, i64 %1290, i32 2
  %1292 = load i32, ptr %1291, align 4, !tbaa !131
  %1293 = icmp sgt i32 %1292, 0
  br i1 %1293, label %1294, label %1385

1294:                                             ; preds = %1286
  %1295 = load i32, ptr %1277, align 8
  %1296 = and i32 %1295, 65535
  %1297 = icmp eq i32 %1296, 37
  br i1 %1297, label %1298, label %1385

1298:                                             ; preds = %1294
  %1299 = getelementptr inbounds %struct.rtx_def, ptr %1277, i64 0, i32 1
  %1300 = load i32, ptr %1299, align 8, !tbaa !76
  %1301 = zext i32 %1300 to i64
  %1302 = getelementptr inbounds %struct.reg_info_t, ptr %1287, i64 %1301, i32 2
  %1303 = load i32, ptr %1302, align 4, !tbaa !131
  %1304 = icmp sgt i32 %1303, 0
  br i1 %1304, label %1305, label %1385

1305:                                             ; preds = %1298
  %1306 = load i32, ptr %671, align 8
  %1307 = and i32 %1306, 65535
  %1308 = add nsw i32 %1307, -7
  %1309 = icmp ult i32 %1308, 4
  br i1 %1309, label %1310, label %1318

1310:                                             ; preds = %1305
  %1311 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 1
  %1312 = load ptr, ptr %1311, align 8, !tbaa !76
  %1313 = load i32, ptr %1312, align 8
  %1314 = and i32 %1313, 65535
  %1315 = icmp eq i32 %1314, 23
  br i1 %1315, label %1318, label %1316

1316:                                             ; preds = %1310
  %1317 = tail call ptr @single_set_2(ptr noundef nonnull %671, ptr noundef nonnull %1312) #16
  br label %1318

1318:                                             ; preds = %1316, %1310, %1305
  %1319 = phi ptr [ %1317, %1316 ], [ null, %1305 ], [ %1312, %1310 ]
  %1320 = icmp eq ptr %1319, null
  br i1 %1320, label %1385, label %1321

1321:                                             ; preds = %1318
  %1322 = getelementptr inbounds %struct.rtx_def, ptr %1319, i64 0, i32 1, i32 0, i32 0, i64 1
  %1323 = load ptr, ptr %1322, align 8, !tbaa !76
  %1324 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %1277, ptr noundef %1323) #16
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1326, label %1385

1326:                                             ; preds = %1321
  %1327 = load i32, ptr %1278, align 8
  %1328 = load i32, ptr %1277, align 8
  %1329 = xor i32 %1328, %1327
  %1330 = and i32 %1329, 16711680
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1332, label %1385

1332:                                             ; preds = %1326
  %1333 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !225
  tail call void @start_sequence() #16
  %1334 = tail call ptr @emit_move_insn(ptr noundef nonnull %1277, ptr noundef nonnull %1278) #16
  %1335 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %1336 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !225
  %1337 = icmp eq i32 %1333, %1336
  br i1 %1337, label %1338, label %1341

1338:                                             ; preds = %1332
  %1339 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %1278, ptr noundef nonnull %1277, ptr noundef nonnull %671) #16
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1341, label %1342

1341:                                             ; preds = %1338, %1332
  store i32 %1333, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !225
  br label %1385

1342:                                             ; preds = %1338
  %1343 = tail call ptr @emit_insn_before(ptr noundef %1335, ptr noundef nonnull %671) #16
  %1344 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1, i32 0, i32 0, i64 1
  %1345 = load ptr, ptr %1344, align 8, !tbaa !76
  %1346 = getelementptr inbounds %struct.rtx_def, ptr %1345, i64 1, i32 1, i32 0, i32 0, i64 1
  %1347 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 1, i32 1, i32 0, i32 0, i64 1
  %1348 = load ptr, ptr %1347, align 8, !tbaa !76
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1363, label %1350

1350:                                             ; preds = %1342, %1350
  %1351 = phi ptr [ %1356, %1350 ], [ %1348, %1342 ]
  %1352 = phi ptr [ %1361, %1350 ], [ %1347, %1342 ]
  %1353 = phi ptr [ %1360, %1350 ], [ %1346, %1342 ]
  %1354 = getelementptr inbounds %struct.rtx_def, ptr %1351, i64 0, i32 1
  %1355 = getelementptr inbounds %struct.rtx_def, ptr %1351, i64 0, i32 1, i32 0, i32 0, i64 1
  %1356 = load ptr, ptr %1355, align 8, !tbaa !76
  %1357 = load ptr, ptr %1354, align 8, !tbaa !76
  %1358 = icmp eq ptr %1357, %1278
  %1359 = select i1 %1358, ptr %1353, ptr %1352
  %1360 = select i1 %1358, ptr %1355, ptr %1353
  %1361 = select i1 %1358, ptr %1352, ptr %1355
  store ptr %1351, ptr %1359, align 8, !tbaa !65
  %1362 = icmp eq ptr %1356, null
  br i1 %1362, label %1363, label %1350, !llvm.loop !234

1363:                                             ; preds = %1350, %1342
  %1364 = phi ptr [ %1346, %1342 ], [ %1360, %1350 ]
  %1365 = phi ptr [ %1347, %1342 ], [ %1361, %1350 ]
  store ptr null, ptr %1364, align 8, !tbaa !65
  store ptr null, ptr %1365, align 8, !tbaa !65
  %1366 = load i32, ptr %1299, align 8, !tbaa !76
  %1367 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %1368 = sext i32 %1366 to i64
  %1369 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %1367, i64 %1368
  %1370 = load i32, ptr %1369, align 4, !tbaa !109
  %1371 = add nsw i32 %1370, 1
  store i32 %1371, ptr %1369, align 4, !tbaa !109
  %1372 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %1373 = getelementptr inbounds %struct.reg_info_t, ptr %1372, i64 %1368, i32 2
  %1374 = load i32, ptr %1373, align 4, !tbaa !131
  %1375 = add nsw i32 %1374, 1
  store i32 %1375, ptr %1373, align 4, !tbaa !131
  %1376 = load i32, ptr %1288, align 8, !tbaa !76
  %1377 = tail call ptr @find_reg_note(ptr noundef %1345, i32 noundef 1, ptr noundef nonnull %1278) #16
  %1378 = icmp eq ptr %1377, null
  br i1 %1378, label %1379, label %1385

1379:                                             ; preds = %1363
  %1380 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %1381 = sext i32 %1376 to i64
  %1382 = getelementptr inbounds %struct.reg_info_t, ptr %1380, i64 %1381, i32 2
  %1383 = load i32, ptr %1382, align 4, !tbaa !131
  %1384 = add nsw i32 %1383, 1
  store i32 %1384, ptr %1382, align 4, !tbaa !131
  br label %1385

1385:                                             ; preds = %1275, %1379, %1363, %1341, %1326, %1321, %1318, %1298, %1294, %1286, %1282, %817, %678
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %3) #16
  %1386 = icmp eq ptr %672, null
  br i1 %1386, label %1390, label %1387, !prof !235

1387:                                             ; preds = %1385
  %1388 = getelementptr inbounds %struct.rtx_def, ptr %672, i64 0, i32 1, i32 0, i32 0, i64 1
  %1389 = load ptr, ptr %1388, align 8, !tbaa !76
  br label %1390

1390:                                             ; preds = %1387, %1385
  %1391 = phi ptr [ %1389, %1387 ], [ null, %1385 ]
  %1392 = icmp eq ptr %672, null
  br i1 %1392, label %1393, label %670, !prof !150, !llvm.loop !236

1393:                                             ; preds = %1390, %670, %667
  %1394 = getelementptr inbounds %struct.basic_block_def, ptr %658, i64 0, i32 5
  %1395 = load ptr, ptr %1394, align 8, !tbaa !154
  %1396 = load ptr, ptr @cfun, align 8, !tbaa !65
  %1397 = getelementptr inbounds %struct.function, ptr %1396, i64 0, i32 1
  %1398 = load ptr, ptr %1397, align 8, !tbaa !90
  %1399 = load ptr, ptr %1398, align 8, !tbaa !92
  %1400 = icmp eq ptr %1395, %1399
  br i1 %1400, label %1401, label %657, !prof !152, !llvm.loop !237

1401:                                             ; preds = %1393, %644
  %1402 = load ptr, ptr @regno_src_regno, align 8, !tbaa !65
  tail call void @free(ptr noundef %1402)
  %1403 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !65
  %1404 = icmp eq ptr %1403, null
  br i1 %1404, label %1406, label %1405, !prof !238

1405:                                             ; preds = %1401
  tail call void @free(ptr noundef %1403)
  store ptr null, ptr @reg_set_in_bb, align 8, !tbaa !65
  br label %1406

1406:                                             ; preds = %1405, %1401
  tail call void @regstat_free_n_sets_and_refs() #16
  tail call void @regstat_free_ri() #16
  %1407 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !80
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1410, label %1409, !prof !86

1409:                                             ; preds = %1406
  tail call void @free_reg_info() #16
  br label %1410

1410:                                             ; preds = %1409, %1406
  ret i32 0
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #3

declare void @regstat_init_n_sets_and_refs() local_unnamed_addr #3

declare void @regstat_compute_ri() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @regstat_free_n_sets_and_refs() local_unnamed_addr #3

declare void @regstat_free_ri() local_unnamed_addr #3

declare void @free_reg_info() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @validate_replace_rtx_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @find_reg_fusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @validate_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @count_occurrences(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @fixup_match_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #12 !prof !64 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !76
  %10 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %9) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %192

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %192, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %187
  %19 = phi ptr [ %14, %16 ], [ %189, %187 ]
  %20 = phi ptr [ null, %16 ], [ %186, %187 ]
  %21 = phi i32 [ 0, %16 ], [ %184, %187 ]
  %22 = phi i32 [ 0, %16 ], [ %183, %187 ]
  %23 = phi i32 [ 0, %16 ], [ %182, %187 ]
  %24 = load i32, ptr %19, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %181

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = icmp eq ptr %30, %7
  br i1 %31, label %32, label %181

32:                                               ; preds = %28
  %33 = load i32, ptr %17, align 8, !tbaa !76
  %34 = tail call ptr @find_regno_note(ptr noundef nonnull %19, i32 noundef 1, i32 noundef %33) #16
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %20, ptr %19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, ptr %19, align 8
  %40 = and i32 %39, 65535
  %41 = icmp ne i32 %40, 7
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %21, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i32 [ %21, %32 ], [ %43, %38 ]
  %46 = load i32, ptr %19, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 23
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @single_set_2(ptr noundef nonnull %19, ptr noundef nonnull %52) #16
  br label %58

58:                                               ; preds = %44, %50, %56
  %59 = phi ptr [ %57, %56 ], [ null, %44 ], [ %52, %50 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %120, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %65, label %120

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 49
  br i1 %70, label %71, label %120

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = icmp eq ptr %73, %2
  br i1 %74, label %75, label %120

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !76
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 30
  br i1 %80, label %81, label %120

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !76
  %86 = sub nsw i64 %83, %85
  %87 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %86) #16
  %88 = tail call ptr @gen_add3_insn(ptr noundef %1, ptr noundef %1, ptr noundef %87) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %120, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %92 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %91, ptr noundef nonnull %88, i8 noundef zeroext 0) #16
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %120, label %94

94:                                               ; preds = %90
  br i1 %37, label %114, label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %17, align 8, !tbaa !76
  %97 = tail call ptr @remove_death(i32 noundef %96, ptr noundef nonnull %36) #16
  %98 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %99 = load i32, ptr %17, align 8, !tbaa !76
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.reg_info_t, ptr %98, i64 %100, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !131
  %103 = add nsw i32 %102, %45
  store i32 %103, ptr %101, align 4, !tbaa !131
  %104 = load i32, ptr %17, align 8, !tbaa !76
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.reg_info_t, ptr %98, i64 %105, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !132
  %108 = add nsw i32 %107, %23
  store i32 %108, ptr %106, align 4, !tbaa !132
  %109 = load i32, ptr %17, align 8, !tbaa !76
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.reg_info_t, ptr %98, i64 %110, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !133
  %113 = add nsw i32 %112, %22
  store i32 %113, ptr %111, align 4, !tbaa !133
  br label %114

114:                                              ; preds = %95, %94
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !65
  %116 = icmp eq ptr %115, null
  br i1 %116, label %181, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %5, align 8, !tbaa !76
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %115, ptr noundef nonnull @.str.5, i32 noundef %118)
  br label %181

120:                                              ; preds = %90, %81, %75, %71, %65, %61, %58
  %121 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !76
  %123 = tail call i32 @reg_set_p(ptr noundef %1, ptr noundef %122) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %181

125:                                              ; preds = %120
  %126 = load i32, ptr %19, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %174

129:                                              ; preds = %125
  br i1 %37, label %130, label %156

130:                                              ; preds = %129
  %131 = add nsw i32 %23, 1
  %132 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @cfun, align 8, !tbaa !65
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !90
  %141 = load ptr, ptr %140, align 8, !tbaa !92
  %142 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 8
  %143 = load i64, ptr %142, align 8, !tbaa !127
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %137, %134
  %146 = load ptr, ptr %29, align 8, !tbaa !76
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 11
  %148 = load i32, ptr %147, align 8, !tbaa !128
  %149 = add i32 %148, 9
  %150 = icmp ult i32 %149, 19
  br i1 %150, label %153, label %151

151:                                              ; preds = %145
  %152 = sdiv i32 %148, 10
  br label %153

153:                                              ; preds = %137, %151, %145, %130
  %154 = phi i32 [ 1000, %130 ], [ %152, %151 ], [ 1, %145 ], [ 1000, %137 ]
  %155 = add nsw i32 %154, %22
  br label %156

156:                                              ; preds = %153, %129
  %157 = phi i32 [ %23, %129 ], [ %131, %153 ]
  %158 = phi i32 [ %22, %129 ], [ %155, %153 ]
  %159 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %160 = load i32, ptr %8, align 8, !tbaa !76
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.reg_info_t, ptr %159, i64 %161, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !132
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %156
  %166 = load i32, ptr %17, align 8, !tbaa !76
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !76
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = tail call i32 @find_reg_fusage(ptr noundef nonnull %19, i32 noundef 25, ptr noundef %1) #16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %178, label %181

174:                                              ; preds = %125
  %175 = load ptr, ptr %121, align 8, !tbaa !76
  %176 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef %175) #16
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171, %174
  %179 = phi i32 [ %23, %174 ], [ %157, %171 ]
  %180 = phi i32 [ %22, %174 ], [ %158, %171 ]
  br label %181

181:                                              ; preds = %18, %117, %114, %174, %165, %171, %156, %120, %28, %178
  %182 = phi i32 [ %179, %178 ], [ %23, %18 ], [ %23, %28 ], [ %23, %120 ], [ %157, %156 ], [ %157, %171 ], [ %157, %165 ], [ %23, %174 ], [ %23, %114 ], [ %23, %117 ]
  %183 = phi i32 [ %180, %178 ], [ %22, %18 ], [ %22, %28 ], [ %22, %120 ], [ %158, %156 ], [ %158, %171 ], [ %158, %165 ], [ %22, %174 ], [ %22, %114 ], [ %22, %117 ]
  %184 = phi i32 [ %45, %178 ], [ %21, %18 ], [ %21, %28 ], [ %45, %120 ], [ %45, %156 ], [ %45, %171 ], [ %45, %165 ], [ %45, %174 ], [ %45, %114 ], [ %45, %117 ]
  %185 = phi i32 [ 0, %178 ], [ 4, %18 ], [ 2, %28 ], [ 2, %120 ], [ 2, %156 ], [ 2, %171 ], [ 2, %165 ], [ 2, %174 ], [ 1, %114 ], [ 1, %117 ]
  %186 = phi ptr [ %36, %178 ], [ %20, %18 ], [ %20, %28 ], [ %36, %120 ], [ %36, %156 ], [ %36, %171 ], [ %36, %165 ], [ %36, %174 ], [ %36, %114 ], [ %36, %117 ]
  switch i32 %185, label %192 [
    i32 0, label %187
    i32 4, label %187
    i32 2, label %191
  ]

187:                                              ; preds = %181, %181
  %188 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !76
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %18, !llvm.loop !239

191:                                              ; preds = %187, %181
  br label %192

192:                                              ; preds = %181, %191, %12, %4
  %193 = phi i32 [ 0, %4 ], [ 0, %12 ], [ 0, %191 ], [ 1, %181 ]
  ret i32 %193
}

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @num_changes_pending() local_unnamed_addr #3

declare void @cancel_changes(i32 noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

declare ptr @gen_add3_insn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @remove_death(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }

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
!35 = !{ptr @regmove_optimize, ptr @max_reg_num, i64 63}
!36 = !{ptr @regmove_optimize, ptr @df_note_add_problem, i64 38}
!37 = !{ptr @regmove_optimize, ptr @df_analyze, i64 38}
!38 = !{ptr @regmove_optimize, ptr @regstat_init_n_sets_and_refs, i64 38}
!39 = !{ptr @regmove_optimize, ptr @regstat_compute_ri, i64 38}
!40 = !{ptr @regmove_optimize, ptr @xmalloc, i64 38}
!41 = !{ptr @regmove_optimize, ptr @single_set_2, i64 35845}
!42 = !{ptr @regmove_optimize, ptr @find_reg_note, i64 175883}
!43 = !{ptr @regmove_optimize, ptr @reg_set_p, i64 946}
!44 = !{ptr @regmove_optimize, ptr @find_regno_note, i64 170}
!45 = !{ptr @regmove_optimize, ptr @next_real_insn, i64 188}
!46 = !{ptr @regmove_optimize, ptr @reg_overlap_mentioned_p, i64 1598}
!47 = !{ptr @regmove_optimize, ptr @validate_replace_rtx, i64 651}
!48 = !{ptr @regmove_optimize, ptr @remove_note, i64 651}
!49 = !{ptr @regmove_optimize, ptr @extract_insn, i64 605723}
!50 = !{ptr @regmove_optimize, ptr @constrain_operands, i64 605723}
!51 = !{ptr @regmove_optimize, ptr @strtoul, i64 4160}
!52 = !{ptr @regmove_optimize, ptr @lookup_constraint, i64 131631}
!53 = !{ptr @regmove_optimize, ptr @regclass_for_constraint, i64 131631}
!54 = !{ptr @regmove_optimize, ptr @operands_match_p, i64 5191}
!55 = !{ptr @regmove_optimize, ptr @reg_preferred_class, i64 1244}
!56 = !{ptr @regmove_optimize, ptr @xcalloc, i64 25}
!57 = !{ptr @regmove_optimize, ptr @validate_change, i64 604}
!58 = !{ptr @regmove_optimize, ptr @reg_mentioned_p, i64 325}
!59 = !{ptr @regmove_optimize, ptr @num_changes_pending, i64 18}
!60 = !{ptr @regmove_optimize, ptr @free, i64 62}
!61 = !{ptr @regmove_optimize, ptr @regstat_free_n_sets_and_refs, i64 38}
!62 = !{ptr @regmove_optimize, ptr @regstat_free_ri, i64 38}
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
!85 = !{!"regmove.c;gate_handle_regmove"}
!86 = !{!"branch_weights", i32 38, i32 0}
!87 = !{!"regmove.c;regmove_optimize"}
!88 = !{!"branch_weights", i32 151, i32 1}
!89 = !{!"branch_weights", i32 0, i32 38}
!90 = !{!91, !66, i64 8}
!91 = !{!"function", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !71, i64 104, !71, i64 108, !71, i64 112, !71, i64 116, !71, i64 120, !71, i64 124, !66, i64 128, !71, i64 136, !71, i64 137, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139}
!92 = !{!93, !66, i64 0}
!93 = !{!"control_flow_graph", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !66, i64 40, !71, i64 48, !67, i64 52, !67, i64 60, !71, i64 68, !71, i64 72}
!94 = !{!95, !66, i64 56}
!95 = !{!"basic_block_def", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !67, i64 32, !66, i64 48, !66, i64 56, !67, i64 64, !72, i64 72, !71, i64 80, !71, i64 84, !71, i64 88, !71, i64 92, !71, i64 96}
!96 = !{!93, !66, i64 8}
!97 = !{!"branch_weights", i32 1, i32 151}
!98 = !{!99, !66, i64 8}
!99 = !{!"rtl_bb_info", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !71, i64 32}
!100 = !{!"branch_weights", i32 153573, i32 877419}
!101 = !{!"branch_weights", i32 609711, i32 267708}
!102 = !{!"branch_weights", i32 592214, i32 17497}
!103 = !{!"branch_weights", i32 270100, i32 607319}
!104 = !{!"branch_weights", i32 104, i32 607215}
!105 = !{!"branch_weights", i32 104, i32 0}
!106 = !{!"branch_weights", i32 0, i32 104}
!107 = !{!108, !71, i64 4}
!108 = !{!"reg_info_t", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !71, i64 24}
!109 = !{!110, !71, i64 0}
!110 = !{!"regstat_n_sets_and_refs_t", !71, i64 0, !71, i64 4}
!111 = !{!"branch_weights", i32 0, i32 1}
!112 = distinct !{!112, !82, !83}
!113 = !{!"branch_weights", i32 12, i32 92}
!114 = distinct !{!114, !82, !83}
!115 = !{!"branch_weights", i32 135815, i32 471504}
!116 = !{!"branch_weights", i32 66800, i32 69015}
!117 = !{!"branch_weights", i32 84, i32 66716}
!118 = !{!"branch_weights", i32 0, i32 84}
!119 = !{!"branch_weights", i32 113, i32 173}
!120 = !{!"branch_weights", i32 76, i32 37}
!121 = !{!"branch_weights", i32 76, i32 0}
!122 = !{!"branch_weights", i32 0, i32 76}
!123 = !{!"branch_weights", i32 29, i32 47}
!124 = !{!"branch_weights", i32 47, i32 0}
!125 = !{!"branch_weights", i32 1, i32 187}
!126 = !{!"branch_weights", i32 0, i32 47}
!127 = !{!95, !72, i64 72}
!128 = !{!95, !71, i64 88}
!129 = !{!"branch_weights", i32 187, i32 1}
!130 = distinct !{!130, !82, !83}
!131 = !{!108, !71, i64 8}
!132 = !{!108, !71, i64 12}
!133 = !{!108, !71, i64 16}
!134 = !{!"branch_weights", i32 0, i32 286}
!135 = distinct !{!135, !82, !83}
!136 = !{!"branch_weights", i32 37, i32 47}
!137 = !{!"branch_weights", i32 66726, i32 37}
!138 = !{!"branch_weights", i32 61, i32 66665}
!139 = !{!"branch_weights", i32 130, i32 119}
!140 = !{!"branch_weights", i32 69, i32 61}
!141 = !{!"branch_weights", i32 22, i32 47}
!142 = !{!"branch_weights", i32 0, i32 69}
!143 = distinct !{!143, !82, !83}
!144 = !{!"branch_weights", i32 69, i32 0}
!145 = !{!"branch_weights", i32 0, i32 249}
!146 = distinct !{!146, !82, !83}
!147 = !{!"branch_weights", i32 66618, i32 108}
!148 = !{!"branch_weights", i32 0, i32 66618}
!149 = !{!"branch_weights", i32 66618, i32 0}
!150 = !{!"branch_weights", i32 151, i32 4123817}
!151 = distinct !{!151, !82, !83}
!152 = !{!"branch_weights", i32 151, i32 614293}
!153 = distinct !{!153, !82, !83}
!154 = !{!95, !66, i64 48}
!155 = !{!"branch_weights", i32 0, i32 153611}
!156 = !{!99, !66, i64 0}
!157 = !{!"branch_weights", i32 0, i32 609711}
!158 = !{!159, !67, i64 1086}
!159 = !{!"recog_data", !67, i64 0, !67, i64 240, !67, i64 480, !67, i64 720, !67, i64 840, !67, i64 960, !67, i64 1072, !67, i64 1086, !67, i64 1087, !67, i64 1088, !67, i64 1089, !66, i64 1120}
!160 = !{!"branch_weights", i32 609710, i32 1}
!161 = !{!"branch_weights", i32 698340, i32 609710}
!162 = distinct !{!162, !82, !83}
!163 = !{!"branch_weights", i32 1059672, i32 248378, i32 0}
!164 = !{!"branch_weights", i32 1266288, i32 538802}
!165 = !{!"branch_weights", i32 497040, i32 811010}
!166 = !{!"branch_weights", i32 0, i32 497040}
!167 = distinct !{!167, !82, !83}
!168 = !{!"branch_weights", i32 1243659, i32 732039, i32 576011, i32 0, i32 0, i32 0, i32 3640, i32 4187, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 269, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3214, i32 243, i32 9712, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!169 = !{!"branch_weights", i32 4187, i32 0}
!170 = distinct !{!170, !82, !83}
!171 = !{!"branch_weights", i32 3640, i32 547}
!172 = !{!"branch_weights", i32 0, i32 13438}
!173 = !{!"branch_weights", i32 269, i32 13169}
!174 = !{!"branch_weights", i32 0, i32 13169}
!175 = !{!"branch_weights", i32 0, i32 1260737}
!176 = distinct !{!176, !82, !83}
!177 = !{!"branch_weights", i32 605524, i32 4187}
!178 = !{!"branch_weights", i32 3604, i32 1}
!179 = !{!"branch_weights", i32 4269, i32 7476}
!180 = !{!"branch_weights", i32 4341, i32 3135}
!181 = !{!"branch_weights", i32 4341, i32 0}
!182 = !{!"branch_weights", i32 0, i32 4341}
!183 = !{!"branch_weights", i32 907, i32 3434}
!184 = !{!"branch_weights", i32 661, i32 246}
!185 = !{!"branch_weights", i32 661, i32 0}
!186 = !{!"branch_weights", i32 907, i32 0}
!187 = !{!"branch_weights", i32 0, i32 907}
!188 = !{!"branch_weights", i32 308, i32 599}
!189 = !{!"branch_weights", i32 599, i32 0}
!190 = !{!"branch_weights", i32 0, i32 599}
!191 = !{!"branch_weights", i32 24, i32 575}
!192 = !{!"branch_weights", i32 1, i32 191}
!193 = !{!"branch_weights", i32 152678, i32 870100}
!194 = !{!"branch_weights", i32 604203, i32 265897}
!195 = !{!"branch_weights", i32 587602, i32 16601}
!196 = !{!"branch_weights", i32 2160, i32 602043}
!197 = !{!"branch_weights", i32 374019, i32 228024}
!198 = !{!"branch_weights", i32 104738, i32 269281}
!199 = !{!"branch_weights", i32 104470, i32 268}
!200 = !{!"branch_weights", i32 191, i32 8182033}
!201 = distinct !{!201, !82, !83}
!202 = !{!"branch_weights", i32 191, i32 1221425}
!203 = distinct !{!203, !82, !83}
!204 = !{!"branch_weights", i32 418, i32 181}
!205 = !{!"branch_weights", i32 0, i32 1061}
!206 = !{!"branch_weights", i32 906, i32 155}
!207 = !{!"branch_weights", i32 895, i32 11}
!208 = !{!"branch_weights", i32 658, i32 237}
!209 = !{!"branch_weights", i32 0, i32 895}
!210 = !{!"branch_weights", i32 582, i32 313}
!211 = !{!"branch_weights", i32 0, i32 582}
!212 = !{!"branch_weights", i32 313, i32 0}
!213 = !{!"branch_weights", i32 6, i32 307}
!214 = !{!"branch_weights", i32 6, i32 0}
!215 = !{!"branch_weights", i32 0, i32 6}
!216 = !{!"branch_weights", i32 599, i32 462}
!217 = distinct !{!217, !82, !83}
!218 = !{!"branch_weights", i32 17, i32 582}
!219 = !{!"branch_weights", i32 582, i32 0}
!220 = !{!"branch_weights", i32 0, i32 17}
!221 = !{!"branch_weights", i32 90877983, i32 47067042}
!222 = distinct !{!222, !82, !83}
!223 = !{!"branch_weights", i32 3605, i32 582}
!224 = !{!"branch_weights", i32 0, i32 4187}
!225 = !{!226, !71, i64 40}
!226 = !{!"rtl_data", !227, i64 0, !228, i64 40, !229, i64 96, !230, i64 112, !232, i64 208, !233, i64 248, !71, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !66, i64 344, !66, i64 352, !66, i64 360, !66, i64 368, !66, i64 376, !66, i64 384, !66, i64 392, !72, i64 400, !66, i64 408, !66, i64 416, !66, i64 424, !71, i64 432, !71, i64 436, !71, i64 440, !71, i64 444, !71, i64 448, !71, i64 452, !66, i64 456, !67, i64 464, !67, i64 465, !67, i64 466, !67, i64 467, !67, i64 468, !67, i64 469, !67, i64 470, !67, i64 471, !67, i64 472, !67, i64 473, !67, i64 474, !67, i64 475, !67, i64 476, !67, i64 477, !67, i64 478, !67, i64 479, !67, i64 480, !67, i64 481, !67, i64 482, !67, i64 483, !67, i64 484, !67, i64 485}
!227 = !{!"expr_status", !71, i64 0, !71, i64 4, !71, i64 8, !66, i64 16, !66, i64 24, !66, i64 32}
!228 = !{!"emit_status", !71, i64 0, !71, i64 4, !66, i64 8, !66, i64 16, !66, i64 24, !71, i64 32, !71, i64 36, !71, i64 40, !71, i64 44, !66, i64 48}
!229 = !{!"varasm_status", !66, i64 0, !71, i64 8}
!230 = !{!"incoming_args", !71, i64 0, !71, i64 4, !71, i64 8, !66, i64 16, !231, i64 24, !66, i64 88}
!231 = !{!"ix86_args", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36, !71, i64 40, !71, i64 44, !71, i64 48, !71, i64 52, !71, i64 56, !71, i64 60}
!232 = !{!"function_subsections", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32}
!233 = !{!"rtl_eh", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !67, i64 48}
!234 = distinct !{!234, !82, !83}
!235 = !{!"branch_weights", i32 38, i32 877381}
!236 = distinct !{!236, !82, !83}
!237 = distinct !{!237, !82, !83}
!238 = !{!"branch_weights", i32 14, i32 24}
!239 = distinct !{!239, !82, !83}
