; ModuleID = 'insn-preds.c'
source_filename = "insn-preds.c"
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.ix86_address = type { ptr, ptr, ptr, i64, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@.str = private unnamed_addr constant [3 x i8] c"Y2\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Yi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Ym\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Yz\00", align 1
@target_flags = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_cmodel = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"insn-preds.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@internal_label_prefix = external global [16 x i8], align 16
@internal_label_prefix_len = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@switch.table.sse_comparison_operator = private unnamed_addr constant [15 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !55 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !56
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #26
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #26
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #26
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !55 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #26
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #26
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #26
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !55 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #26
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
  br i1 %23, label %7, label %24, !llvm.loop !72

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @any_fp_register_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = and i32 %8, -8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  switch i32 %8, label %19 [
    i32 52, label %12
    i32 51, label %12
    i32 50, label %12
    i32 49, label %12
    i32 48, label %12
    i32 47, label %12
    i32 46, label %12
    i32 45, label %12
    i32 28, label %12
    i32 27, label %12
    i32 26, label %12
    i32 25, label %12
    i32 24, label %12
    i32 23, label %12
    i32 22, label %12
    i32 21, label %12
  ]

12:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %6
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = lshr i32 %3, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %11, %12, %14, %2
  %20 = phi i32 [ 0, %2 ], [ 1, %12 ], [ %18, %14 ], [ 0, %11 ]
  ret i32 %20
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @fp_register_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !75 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %18, !prof !76

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = and i32 %8, -8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %18, !prof !77

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %13, %6, %2
  %19 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %11 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @register_and_not_any_fp_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = and i32 %8, -8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %25, label %11

11:                                               ; preds = %6
  %12 = add i32 %8, -21
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %21, label %14

14:                                               ; preds = %21, %11
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = lshr i32 %3, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, %1
  %20 = zext i1 %19 to i32
  br label %25

21:                                               ; preds = %11
  %22 = lshr i32 -16776961, %12
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %14, label %25

25:                                               ; preds = %21, %14, %16, %6, %2
  %26 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %14 ], [ %20, %16 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @register_and_not_fp_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = and i32 %8, -8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %13, %6, %2
  %19 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %11 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mmx_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = zext i32 %8 to i64
  %10 = add nsw i64 %9, -29
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = lshr i32 %3, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %14, %6, %2
  %20 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %12 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @q_regs_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !78 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5, !prof !79

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %12, !prof !80

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %22, !prof !81

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = icmp ult i32 %19, 4
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %17, %12, %2
  %23 = phi i32 [ 0, %2 ], [ 0, %12 ], [ %21, %17 ]
  ret i32 %23
}

declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ext_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !82 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5, !prof !83

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -15
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %25, !prof !84

11:                                               ; preds = %5
  %12 = and i32 %6, 65535
  %13 = icmp eq i32 %12, 39
  br i1 %13, label %14, label %17, !prof !85

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %0, %11 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !67
  %21 = icmp ugt i32 %20, 57
  br i1 %21, label %25, label %22, !prof !86

22:                                               ; preds = %17
  %23 = icmp ult i32 %20, 4
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %17, %5, %2
  %26 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %17 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ax_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !87 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %17, !prof !88

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !89

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %12, !prof !90

12:                                               ; preds = %10
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %12, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @flags_reg_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !91 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %17, !prof !92

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %10, label %17, !prof !93

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %17, label %12, !prof !94

12:                                               ; preds = %10
  %13 = lshr i32 %3, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %12, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ext_QIreg_operand(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #13 !prof !55 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ext_QIreg_nomode_operand(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #13 !prof !55 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_not_xmm0_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !95 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5, !prof !96

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %14, !prof !97

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = icmp ne i32 %11, 21
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %5, %9, %2
  %15 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @nonimm_not_xmm0_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = icmp ne i32 %11, 21
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %5, %9, %2
  %15 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %13, %9 ]
  ret i32 %15
}

declare i32 @nonimmediate_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_immediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %7 [
    i16 30, label %5
    i16 45, label %5
    i16 44, label %5
    i16 35, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2
  %6 = tail call i32 @immediate_operand(ptr noundef nonnull %0, i32 noundef %1) #26
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_zext_immediate_operand(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %88 [
    i16 35, label %27
    i16 30, label %5
    i16 45, label %10
    i16 44, label %22
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !67
  %8 = icmp ult i64 %7, 4294967296
  %9 = zext i1 %8 to i32
  br label %88

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = and i32 %12, 56
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %10
  %16 = load i32, ptr @ix86_cmodel, align 4, !tbaa !71
  switch i32 %16, label %21 [
    i32 1, label %88
    i32 3, label %17
  ]

17:                                               ; preds = %15
  %18 = lshr i32 %12, 9
  %19 = and i32 %18, 1
  %20 = xor i32 %19, 1
  br label %88

21:                                               ; preds = %15
  br label %88

22:                                               ; preds = %2
  %23 = load i32, ptr @ix86_cmodel, align 4
  %24 = and i32 %23, -3
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  br label %88

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = load i32, ptr @ix86_cmodel, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %84, label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %35, align 8
  %42 = trunc i32 %41 to i16
  switch i16 %42, label %84 [
    i16 45, label %43
    i16 44, label %66
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load i32, ptr %44, align 8, !tbaa !67
  %46 = and i32 %45, 56
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %43
  switch i32 %38, label %83 [
    i32 1, label %52
    i32 3, label %49
  ]

49:                                               ; preds = %48
  %50 = and i32 %45, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %49, %48
  %53 = load i32, ptr %37, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 30
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !67
  %59 = tail call i64 @trunc_int_for_mode(i64 noundef %58, i32 noundef 17) #26
  %60 = icmp sgt i64 %59, -65536
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load i64, ptr %57, align 8, !tbaa !67
  %63 = tail call i64 @trunc_int_for_mode(i64 noundef %62, i32 noundef 16) #26
  %64 = load i64, ptr %57, align 8, !tbaa !67
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %84, label %83

66:                                               ; preds = %40
  %67 = and i32 %38, -3
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, ptr %37, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 30
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !67
  %76 = tail call i64 @trunc_int_for_mode(i64 noundef %75, i32 noundef 17) #26
  %77 = icmp sgt i64 %76, -65536
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i64, ptr %74, align 8, !tbaa !67
  %80 = tail call i64 @trunc_int_for_mode(i64 noundef %79, i32 noundef 16) #26
  %81 = load i64, ptr %74, align 8, !tbaa !67
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %61, %52, %49, %78, %73, %69, %66, %56, %48
  br label %84

84:                                               ; preds = %83, %78, %61, %43, %40, %33
  %85 = phi i32 [ undef, %83 ], [ 0, %33 ], [ 0, %43 ], [ 1, %61 ], [ 1, %78 ], [ 0, %40 ]
  %86 = phi i1 [ true, %83 ], [ false, %33 ], [ false, %43 ], [ false, %61 ], [ false, %78 ], [ false, %40 ]
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %27
  br label %88

88:                                               ; preds = %2, %87, %84, %22, %21, %17, %15, %10, %5
  %89 = phi i32 [ 0, %87 ], [ %85, %84 ], [ %26, %22 ], [ %9, %5 ], [ 0, %10 ], [ %16, %15 ], [ %20, %17 ], [ 0, %21 ], [ 0, %2 ]
  ret i32 %89
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #26
  ret i32 %3
}

declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_szext_general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #26
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) #26
  ret i32 %3
}

declare i32 @nonmemory_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_szext_nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) #26
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pic_32bit_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !98 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %18 [
    i16 35, label %5
    i16 45, label %5
    i16 44, label %5
  ], !prof !99

5:                                                ; preds = %2, %2, %2
  %6 = load i32, ptr @flag_pic, align 4, !tbaa !71
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8, !prof !100

8:                                                ; preds = %5
  %9 = tail call i32 @symbolic_operand(ptr noundef nonnull %0, i32 noundef %1), !range !101
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11, !prof !100

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %5, %2, %8, %13, %11
  %19 = phi i32 [ 0, %8 ], [ 1, %11 ], [ %17, %13 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @x86_64_movabs_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) #26
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #16 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %48 [
    i16 45, label %40
    i16 44, label %40
    i16 35, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %14 [
    i16 45, label %40
    i16 44, label %40
    i16 18, label %10
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %40, label %14

14:                                               ; preds = %10, %5
  %15 = and i32 %8, 65535
  %16 = icmp eq i32 %15, 49
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 30
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %48 [
    i16 45, label %40
    i16 44, label %40
    i16 18, label %28
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65534
  %39 = icmp eq i32 %38, 44
  br i1 %39, label %40, label %48

40:                                               ; preds = %10, %5, %5, %23, %23, %2, %2, %32
  %41 = icmp eq i32 %1, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %0, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, %1
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %23, %28, %17, %14, %2, %32, %42, %40
  %49 = phi i32 [ 0, %32 ], [ 1, %40 ], [ %47, %42 ], [ 0, %2 ], [ 0, %14 ], [ 0, %17 ], [ 0, %28 ], [ 0, %23 ]
  ret i32 %49
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pic_symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !102 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %6, label %34, !prof !103

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %34 [
    i16 18, label %27
    i16 49, label %11
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 18
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %6
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = lshr i32 %3, 16
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, %1
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %17, %23, %6, %11, %27, %29, %2
  %35 = phi i32 [ 0, %2 ], [ 1, %27 ], [ %33, %29 ], [ 0, %11 ], [ 0, %6 ], [ 0, %23 ], [ 0, %17 ]
  ret i32 %35
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @local_symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %49 [
    i16 35, label %5
    i16 44, label %5
    i16 45, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = and i32 %3, 65535
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 49
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  br label %23

23:                                               ; preds = %20, %14, %8, %5
  %24 = phi ptr [ %22, %20 ], [ %0, %14 ], [ %0, %8 ], [ %0, %5 ]
  %25 = load i32, ptr %24, align 8
  %26 = trunc i32 %25 to i16
  switch i16 %26, label %49 [
    i16 44, label %42
    i16 45, label %27
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = and i32 %30, 56
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = and i32 %30, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load ptr, ptr %28, align 8, !tbaa !67
  %38 = load i32, ptr @internal_label_prefix_len, align 4, !tbaa !71
  %39 = sext i32 %38 to i64
  %40 = tail call i32 @strncmp(ptr noundef %37, ptr noundef nonnull @internal_label_prefix, i64 noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %23, %33, %36
  %43 = icmp eq i32 %1, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = lshr i32 %3, 16
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, %1
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %23, %27, %2, %36, %44, %42
  %50 = phi i32 [ 0, %36 ], [ 1, %42 ], [ %48, %44 ], [ 0, %2 ], [ 0, %27 ], [ 0, %23 ]
  ret i32 %50
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gotoff_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !55 {
  %3 = tail call i32 @local_symbolic_operand(ptr noundef %0, i32 noundef %1), !range !101
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tls_symbolic_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = and i32 %8, 56
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %13, %6, %2
  %19 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %11 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @tls_modbase_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @ix86_tls_module_base() #26
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

declare ptr @ix86_tls_module_base() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @tp_or_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 18
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, %1
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %5, %9, %15, %13, %2
  %21 = phi i32 [ 1, %2 ], [ 0, %9 ], [ 0, %5 ], [ 1, %13 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @constant_call_address_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !104 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %15, !prof !105

6:                                                ; preds = %2
  %7 = load i32, ptr @ix86_cmodel, align 4
  switch i32 %7, label %8 [
    i32 7, label %15
    i32 4, label %15
  ]

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10, !prof !106

10:                                               ; preds = %8
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %6, %8, %10, %2
  %16 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %8 ], [ %14, %10 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @register_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5, !prof !107

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %12, !prof !107

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !56
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %17 = icmp eq ptr %13, %16
  %18 = select i1 %15, i1 true, i1 %17, !prof !107
  br i1 %18, label %26, label %19, !prof !107

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !67
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %22, -58
  %24 = icmp ult i64 %23, -5
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %12, %2
  %27 = phi i32 [ 0, %2 ], [ 0, %12 ], [ %25, %19 ]
  ret i32 %27
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @call_register_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !56
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @register_no_elim_operand(ptr noundef %13, i32 noundef %1), !range !101
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %16 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @index_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !108 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5, !prof !109

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %12, !prof !110

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %14 = load i32, ptr @reload_in_progress, align 4, !tbaa !71
  %15 = icmp ne i32 %14, 0
  %16 = load i32, ptr @reload_completed, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17, !prof !110
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !67
  br i1 %18, label %21, label %37, !prof !111

21:                                               ; preds = %12
  %22 = icmp ult i32 %20, 7
  br i1 %22, label %44, label %23, !prof !112

23:                                               ; preds = %21
  %24 = zext i32 %20 to i64
  %25 = add nsw i64 %24, -37
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @reg_renumber, align 8, !tbaa !56
  %29 = getelementptr inbounds i16, ptr %28, i64 %24
  %30 = load i16, ptr %29, align 2, !tbaa !113
  %31 = icmp ult i16 %30, 7
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = sext i16 %30 to i64
  %34 = and i64 %33, 4294967295
  %35 = add nsw i64 %34, -37
  %36 = icmp ult i64 %35, 8
  br label %44

37:                                               ; preds = %12
  %38 = zext i32 %20 to i64
  %39 = add nsw i64 %38, -37
  %40 = icmp ult i64 %39, 8
  %41 = add i32 %20, -53
  %42 = icmp ult i32 %41, -46
  %43 = select i1 %42, i1 true, i1 %40, !prof !114
  br label %44

44:                                               ; preds = %37, %21, %23, %27, %32
  %45 = phi i1 [ true, %27 ], [ true, %23 ], [ true, %21 ], [ %36, %32 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %44, %2
  %48 = phi i32 [ 0, %2 ], [ %46, %44 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local i32 @general_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !115 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %29 [
    i16 37, label %5
    i16 39, label %5
  ], !prof !116

5:                                                ; preds = %2, %2
  %6 = tail call i32 @register_operand(ptr noundef nonnull %0, i32 noundef %1) #26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8, !prof !107

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %15, !prof !107

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %0, %8 ]
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !56
  %18 = icmp eq ptr %16, %17
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %20 = icmp eq ptr %16, %19
  %21 = select i1 %18, i1 true, i1 %20, !prof !107
  br i1 %21, label %31, label %22, !prof !107

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !67
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %25, -58
  %27 = icmp ult i64 %26, -5
  %28 = zext i1 %27 to i32
  br label %31

29:                                               ; preds = %2
  %30 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #26
  br label %31

31:                                               ; preds = %22, %15, %5, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %5 ], [ 0, %15 ], [ %28, %22 ]
  ret i32 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @nonmemory_no_elim_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_no_elim_operand(ptr noundef %0, i32 noundef %1), !range !101
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @immediate_operand(ptr noundef %0, i32 noundef %1) #26
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 1, %2 ], [ %8, %5 ]
  ret i32 %10
}

declare i32 @immediate_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @call_insn_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !117 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %14, !prof !118

6:                                                ; preds = %2
  %7 = load i32, ptr @ix86_cmodel, align 4
  switch i32 %7, label %8 [
    i32 7, label %14
    i32 4, label %14
  ], !prof !119

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %21, label %10, !prof !120

10:                                               ; preds = %8
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %21, label %14, !prof !118

14:                                               ; preds = %2, %6, %6, %10
  %15 = tail call i32 @call_register_no_elim_operand(ptr noundef nonnull %0, i32 noundef %1), !range !101
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = tail call i32 @memory_operand(ptr noundef nonnull %0, i32 noundef %1) #26
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %8, %14, %17, %10
  %22 = phi i32 [ 1, %10 ], [ 1, %14 ], [ %20, %17 ], [ 1, %8 ]
  ret i32 %22
}

declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @sibcall_insn_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !121 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %14, !prof !122

6:                                                ; preds = %2
  %7 = load i32, ptr @ix86_cmodel, align 4
  switch i32 %7, label %8 [
    i32 7, label %14
    i32 4, label %14
  ], !prof !123

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %16, label %10, !prof !124

10:                                               ; preds = %8
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %16, label %14, !prof !122

14:                                               ; preds = %2, %6, %6, %10
  %15 = tail call i32 @register_no_elim_operand(ptr noundef nonnull %0, i32 noundef %1), !range !101
  br label %16

16:                                               ; preds = %8, %14, %10
  %17 = phi i32 [ 1, %10 ], [ %15, %14 ], [ 1, %8 ]
  ret i32 %17
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @const0_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !125 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %15 [
    i16 30, label %5
    i16 32, label %5
    i16 33, label %5
  ], !prof !126

5:                                                ; preds = %2, %2, %2
  %6 = icmp eq i32 %1, 0
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = select i1 %6, i32 %8, i32 %1, !prof !127
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, %0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %2, %5
  %16 = phi i32 [ %14, %5 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @const1_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !128 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 %7, i1 false, !prof !129
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const8_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i64 %8, 8
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const128_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !130 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11, !prof !131

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i64 %8, 128
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @const248_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !132 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12, !prof !133

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  switch i64 %8, label %9 [
    i64 4, label %12
    i64 2, label %12
  ], !prof !134

9:                                                ; preds = %6
  %10 = icmp eq i64 %8, 8
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %9, %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %9 ], [ 1, %6 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @const_0_to_1_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #16 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !56
  %8 = icmp eq ptr %7, %0
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %10 = icmp eq ptr %9, %0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_3_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 4
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_7_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 8
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_15_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 16
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_31_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 32
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_63_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 64
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_255_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 256
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_0_to_255_mul_8_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp ult i64 %8, 2041
  %10 = and i64 %8, 7
  %11 = icmp eq i64 %10, 0
  %12 = and i1 %9, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_1_to_31_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = add i64 %8, -1
  %10 = icmp ult i64 %9, 31
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_1_to_63_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = add i64 %8, -1
  %10 = icmp ult i64 %9, 63
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_2_to_3_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = and i64 %8, -2
  %10 = icmp eq i64 %9, 2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_4_to_5_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = and i64 %8, -2
  %10 = icmp eq i64 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_4_to_7_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = and i64 %8, -4
  %10 = icmp eq i64 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_6_to_7_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = and i64 %8, -2
  %10 = icmp eq i64 %9, 6
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_8_to_11_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = and i64 %8, -4
  %10 = icmp eq i64 %9, 8
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_12_to_15_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = and i64 %8, -4
  %10 = icmp eq i64 %9, 12
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_pow2_1_to_2_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp eq i64 %8, 2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %10, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @const_pow2_1_to_8_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = tail call i32 @exact_log2(i64 noundef %8) #26
  %10 = icmp ult i32 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @const_pow2_1_to_128_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = tail call i32 @exact_log2(i64 noundef %8) #26
  %10 = icmp ult i32 %9, 8
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @const_pow2_1_to_32768_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = tail call i32 @exact_log2(i64 noundef %8) #26
  %10 = icmp ult i32 %9, 16
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @incdec_operand(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !135 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %19, !prof !136

6:                                                ; preds = %2
  %7 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 47), align 1, !tbaa !67
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12, !prof !137

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @optimize_insn_for_size_p() #26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12, !prof !138

12:                                               ; preds = %9, %6
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !56
  %14 = icmp eq ptr %13, %0
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %16 = icmp eq ptr %15, %0
  %17 = select i1 %14, i1 true, i1 %16, !prof !139
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %9, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %12 ], [ 0, %9 ]
  ret i32 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @reg_or_pm1_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 30
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !56
  %11 = icmp eq ptr %10, %0
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %13 = icmp eq ptr %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %9, %2
  %17 = phi i32 [ 1, %2 ], [ 0, %5 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @shiftdi_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ashldi_input_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 30
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !56
  %11 = icmp eq ptr %10, %0
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %13 = icmp eq ptr %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %2, %5, %9
  %17 = phi i32 [ 1, %2 ], [ 0, %5 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @zero_extended_scalar_load_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = tail call ptr @maybe_get_pool_constant(ptr noundef nonnull %0) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 33
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = load i32, ptr %15, align 8, !tbaa !140
  %17 = lshr i32 %10, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %19
  br label %21

21:                                               ; preds = %25, %13
  %22 = phi i32 [ %16, %13 ], [ %23, %25 ]
  %23 = add i32 %22, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = load i8, ptr %20, align 1, !tbaa !67
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %21, label %42, !llvm.loop !142

34:                                               ; preds = %21
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, %1
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %25, %9, %6, %34, %36, %2
  %43 = phi i32 [ 0, %2 ], [ 1, %34 ], [ %41, %36 ], [ 0, %6 ], [ 0, %9 ], [ 0, %25 ]
  ret i32 %43
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @vector_all_ones_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #20 !prof !143 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 33
  br i1 %5, label %6, label %35, !prof !144

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = load i32, ptr %12, align 8, !tbaa !140
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %15, label %35

15:                                               ; preds = %6
  %16 = icmp eq i8 %9, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !56
  %19 = zext i8 %9 to i64
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, %19
  br i1 %22, label %28, label %23, !llvm.loop !145

23:                                               ; preds = %17, %20
  %24 = phi i64 [ 0, %17 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = icmp eq ptr %26, %18
  br i1 %27, label %20, label %35

28:                                               ; preds = %20, %15
  %29 = icmp eq i32 %1, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = lshr i32 %3, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %1
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %23, %6, %28, %30, %2
  %36 = phi i32 [ 0, %2 ], [ 1, %28 ], [ %34, %30 ], [ 0, %6 ], [ 0, %23 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vector_move_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !146 {
  %3 = tail call i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18, !prof !147

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %18 [
    i16 30, label %8
    i16 32, label %8
    i16 33, label %8
  ], !prof !148

8:                                                ; preds = %5, %5, %5
  %9 = icmp eq i32 %1, 0
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = select i1 %9, i32 %11, i32 %1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, %0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %8, %5, %2
  %19 = phi i32 [ 1, %2 ], [ %17, %8 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nonimmediate_or_sse_const_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !149 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !150

5:                                                ; preds = %2
  %6 = tail call i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) #26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !150

8:                                                ; preds = %5
  %9 = tail call i32 @standard_sse_constant_p(ptr noundef %0) #26
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %8, %5, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %5 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @reg_or_0_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %18 [
    i16 30, label %8
    i16 32, label %8
    i16 33, label %8
  ]

8:                                                ; preds = %5, %5, %5
  %9 = icmp eq i32 %1, 0
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = select i1 %9, i32 %11, i32 %1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, %0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %8, %5, %2
  %19 = phi i32 [ 1, %2 ], [ %17, %8 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @no_seg_address_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !151 {
  %3 = alloca %struct.ix86_address, align 8
  %4 = tail call i32 @address_operand(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6, !prof !152

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %7 = call i32 @ix86_decompose_address(ptr noundef %0, ptr noundef nonnull %3) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !153

9:                                                ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1168, ptr noundef nonnull @.str.5) #26
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !154
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %10 ]
  ret i32 %16
}

declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @aligned_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !156 {
  %3 = alloca %struct.ix86_address, align 8
  %4 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %80, label %6, !prof !157

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  br i1 %9, label %10, label %78, !prof !158

10:                                               ; preds = %6
  %11 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 37), align 1, !tbaa !67
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13, !prof !159

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @optimize_insn_for_size_p() #26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %78, label %16, !prof !160

16:                                               ; preds = %13, %10
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 134217728
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mem_attrs, ptr %23, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !161
  %28 = icmp ugt i32 %27, 31
  br i1 %28, label %78, label %29

29:                                               ; preds = %25, %20
  %30 = load ptr, ptr %21, align 8, !tbaa !67
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %33 [
    i16 74, label %78
    i16 77, label %78
  ]

33:                                               ; preds = %29
  %34 = call i32 @ix86_decompose_address(ptr noundef nonnull %30, ptr noundef nonnull %3) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1211, ptr noundef nonnull @.str.5) #26
  br label %37

37:                                               ; preds = %36, %33
  %38 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !163
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !164
  %43 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !67
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !67
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !173
  %51 = mul nsw i64 %50, %48
  %52 = icmp slt i64 %51, 32
  br i1 %52, label %78, label %53

53:                                               ; preds = %41, %37
  %54 = load ptr, ptr %3, align 8, !tbaa !174
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !164
  %58 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !67
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !67
  %63 = icmp ult i8 %62, 32
  br i1 %63, label %78, label %64

64:                                               ; preds = %56, %53
  %65 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !175
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %66, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 30
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !67
  %75 = and i64 %74, 3
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %64
  br label %78

78:                                               ; preds = %29, %13, %6, %16, %25, %29, %41, %56, %68, %72, %77
  %79 = phi i32 [ 1, %77 ], [ 1, %6 ], [ 0, %16 ], [ 1, %25 ], [ 1, %29 ], [ 0, %41 ], [ 0, %56 ], [ 0, %72 ], [ 0, %68 ], [ 0, %13 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  br label %80

80:                                               ; preds = %78, %2
  %81 = phi i32 [ 0, %2 ], [ %79, %78 ]
  ret i32 %81
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @memory_displacement_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = alloca %struct.ix86_address, align 8
  %4 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = call i32 @ix86_decompose_address(ptr noundef %8, ptr noundef nonnull %3) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1250, ptr noundef nonnull @.str.5) #26
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !175
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @memory_displacement_only_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !176 {
  %3 = alloca %struct.ix86_address, align 8
  %4 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6, !prof !177

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = call i32 @ix86_decompose_address(ptr noundef %8, ptr noundef nonnull %3) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !178

11:                                               ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1272, ptr noundef nonnull @.str.5) #26
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr %3, align 8, !tbaa !174
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false, !prof !179
  %19 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %18, i1 %21, i1 false, !prof !179
  %23 = zext i1 %22 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  br label %24

24:                                               ; preds = %12, %2
  %25 = phi i32 [ 0, %2 ], [ %23, %12 ]
  ret i32 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cmpxchg8b_pic_memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = alloca %struct.ix86_address, align 8
  %4 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = call i32 @ix86_decompose_address(ptr noundef %8, ptr noundef nonnull %3) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1295, ptr noundef nonnull @.str.5) #26
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr %3, align 8, !tbaa !174
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !56
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !56
  %20 = icmp eq ptr %13, %19
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !56
  %23 = icmp eq ptr %13, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !56
  %26 = icmp eq ptr %13, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ix86_address, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !163
  %30 = icmp eq ptr %29, null
  %31 = icmp eq ptr %29, %16
  %32 = or i1 %30, %31
  %33 = icmp eq ptr %29, %19
  %34 = or i1 %33, %32
  %35 = icmp eq ptr %29, %22
  %36 = or i1 %35, %34
  %37 = icmp eq ptr %29, %25
  %38 = or i1 %37, %36
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %12, %15, %18, %21, %24, %27
  %41 = phi i32 [ 1, %24 ], [ 1, %21 ], [ 1, %18 ], [ 1, %15 ], [ 1, %12 ], [ %39, %27 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  br label %42

42:                                               ; preds = %40, %2
  %43 = phi i32 [ 0, %2 ], [ %41, %40 ]
  ret i32 %43
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @long_memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @memory_address_length(ptr noundef %0) #26
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  ret i32 %10
}

declare i32 @memory_address_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @fcmov_comparison_operator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = tail call i32 @comparison_operator(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %10, -11
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = trunc i32 %11 to i16
  switch i16 %16, label %31 [
    i16 83, label %17
    i16 82, label %17
    i16 96, label %17
    i16 95, label %17
    i16 92, label %17
    i16 97, label %17
    i16 91, label %17
    i16 90, label %17
  ]

17:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = lshr i32 %11, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %31

23:                                               ; preds = %17, %19
  %24 = tail call i32 @ix86_fp_compare_code_to_integer(i32 noundef %12) #26
  br label %25

25:                                               ; preds = %23, %5
  %26 = phi i32 [ %24, %23 ], [ %12, %5 ]
  switch i32 %26, label %30 [
    i32 89, label %27
    i32 87, label %27
    i32 88, label %27
    i32 86, label %27
    i32 91, label %31
    i32 90, label %31
    i32 81, label %31
    i32 80, label %31
  ]

27:                                               ; preds = %25, %25, %25, %25
  %28 = trunc i32 %9 to i8
  switch i8 %28, label %29 [
    i8 12, label %31
    i8 11, label %31
    i8 7, label %31
    i8 2, label %31
  ]

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %27, %27, %27, %27, %25, %25, %25, %15, %30, %29, %25, %19, %2
  %32 = phi i32 [ 0, %2 ], [ 0, %30 ], [ 0, %29 ], [ 0, %19 ], [ 1, %25 ], [ 0, %15 ], [ 1, %25 ], [ 1, %25 ], [ 1, %25 ], [ 1, %27 ], [ 1, %27 ], [ 1, %27 ], [ 1, %27 ]
  ret i32 %32
}

declare i32 @comparison_operator(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sse_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !180 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, -80
  %6 = icmp ult i16 %5, 15
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [15 x i32], ptr @switch.table.sse_comparison_operator, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @avx_comparison_float_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 80, label %5
    i16 81, label %5
    i16 82, label %5
    i16 83, label %5
    i16 84, label %5
    i16 85, label %5
    i16 90, label %5
    i16 91, label %5
    i16 92, label %5
    i16 93, label %5
    i16 94, label %5
    i16 95, label %5
    i16 96, label %5
    i16 97, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %2, %5, %7
  %13 = phi i32 [ 1, %5 ], [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ix86_comparison_int_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, -80
  %6 = icmp ult i16 %5, 6
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = lshr i32 %3, 16
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, %1
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %9, %2
  %15 = phi i32 [ 0, %2 ], [ 1, %7 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ix86_comparison_uns_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !181 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 80, label %5
    i16 81, label %5
    i16 86, label %5
    i16 87, label %5
    i16 88, label %5
    i16 89, label %5
  ], !prof !182

5:                                                ; preds = %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %2, %5, %7
  %13 = phi i32 [ 1, %5 ], [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bt_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !183 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65534
  %5 = icmp eq i32 %4, 80
  br i1 %5, label %6, label %13, !prof !184

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8, !prof !185

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ix86_comparison_operator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !186 {
  %3 = tail call i32 @comparison_operator(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5, !prof !187

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -11
  %12 = icmp ult i32 %11, 2
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i16
  br i1 %12, label %15, label %22, !prof !188

15:                                               ; preds = %5
  switch i16 %14, label %40 [
    i16 83, label %16
    i16 82, label %16
    i16 96, label %16
    i16 95, label %16
    i16 92, label %16
    i16 97, label %16
    i16 91, label %16
    i16 90, label %16
  ]

16:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  %19 = lshr i32 %13, 16
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, %1
  br label %40

22:                                               ; preds = %5
  switch i16 %14, label %39 [
    i16 81, label %40
    i16 80, label %40
    i16 85, label %23
    i16 82, label %23
    i16 89, label %28
    i16 87, label %28
    i16 88, label %28
    i16 86, label %28
    i16 91, label %32
    i16 90, label %32
    i16 83, label %34
    i16 84, label %34
  ], !prof !189

23:                                               ; preds = %22, %22
  %24 = and i32 %8, 16646144
  %25 = icmp eq i32 %24, 131072
  %26 = icmp eq i32 %24, 262144
  %27 = or i1 %25, %26
  br label %40

28:                                               ; preds = %22, %22, %22, %22
  %29 = icmp eq i32 %10, 7
  %30 = icmp eq i32 %10, 2
  %31 = or i1 %29, %30
  br label %40

32:                                               ; preds = %22, %22
  %33 = icmp eq i32 %10, 2
  br label %40

34:                                               ; preds = %22, %22
  %35 = and i32 %8, 16646144
  %36 = icmp eq i32 %35, 131072
  %37 = icmp eq i32 %10, 5
  %38 = or i1 %36, %37
  br label %40

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %22, %15, %16, %18, %22, %23, %28, %32, %34, %39
  %41 = phi i1 [ false, %39 ], [ true, %22 ], [ %27, %23 ], [ %33, %32 ], [ %38, %34 ], [ %31, %28 ], [ true, %16 ], [ %21, %18 ], [ false, %15 ], [ true, %22 ]
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %40, %2
  %44 = phi i32 [ 0, %2 ], [ %42, %40 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_carry_flag_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !190 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %42 [
    i16 89, label %5
    i16 85, label %5
    i16 96, label %5
    i16 87, label %5
    i16 83, label %5
    i16 94, label %5
    i16 84, label %5
    i16 95, label %5
    i16 82, label %5
    i16 93, label %5
    i16 97, label %5
    i16 92, label %5
  ], !prof !191

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = and i32 %3, 65535
  %12 = add nsw i32 %10, -11
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %23, !prof !192

14:                                               ; preds = %5
  switch i16 %4, label %42 [
    i16 83, label %15
    i16 82, label %15
    i16 96, label %15
    i16 95, label %15
    i16 92, label %15
    i16 97, label %15
    i16 91, label %15
    i16 90, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = lshr i32 %3, 16
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %42

21:                                               ; preds = %15, %17
  %22 = tail call i32 @ix86_fp_compare_code_to_integer(i32 noundef %11) #26
  br label %29

23:                                               ; preds = %5
  %24 = trunc i32 %9 to i8
  switch i8 %24, label %42 [
    i8 7, label %25
    i8 2, label %29
  ], !prof !193

25:                                               ; preds = %23
  %26 = icmp eq i32 %11, 89
  %27 = icmp eq i32 %11, 87
  %28 = or i1 %26, %27
  br label %32

29:                                               ; preds = %23, %21
  %30 = phi i32 [ %22, %21 ], [ %11, %23 ]
  %31 = icmp eq i32 %30, 89
  br label %32

32:                                               ; preds = %25, %29
  %33 = phi i1 [ %31, %29 ], [ %28, %25 ]
  br i1 %33, label %34, label %42, !prof !194

34:                                               ; preds = %32
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %42, label %36, !prof !194

36:                                               ; preds = %34
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, %1
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %17, %23, %14, %32, %36, %34, %2
  %43 = phi i32 [ 0, %2 ], [ 0, %32 ], [ 1, %34 ], [ %41, %36 ], [ 0, %14 ], [ 0, %23 ], [ 0, %17 ]
  ret i32 %43
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ix86_trivial_fp_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 83, label %5
    i16 82, label %5
    i16 96, label %5
    i16 95, label %5
    i16 92, label %5
    i16 97, label %5
    i16 91, label %5
    i16 90, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %2, %5, %7
  %13 = phi i32 [ 1, %5 ], [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ix86_fp_comparison_operator(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !195 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = tail call i32 @ix86_fp_comparison_strategy(i32 noundef %4) #26
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9, !prof !196

7:                                                ; preds = %2
  %8 = tail call i32 @comparison_operator(ptr noundef nonnull %0, i32 noundef %1) #26
  br label %19

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %19 [
    i16 83, label %12
    i16 82, label %12
    i16 96, label %12
    i16 95, label %12
    i16 92, label %12
    i16 97, label %12
    i16 91, label %12
    i16 90, label %12
  ], !prof !197

12:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %19, label %14, !prof !198

14:                                               ; preds = %12
  %15 = lshr i32 %10, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %9, %14, %12, %7
  %20 = phi i32 [ %8, %7 ], [ 1, %12 ], [ %18, %14 ], [ 0, %9 ]
  ret i32 %20
}

declare i32 @ix86_fp_comparison_strategy(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cmp_fp_expander_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #26
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 1, %2 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @binary_fp_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !199 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 49, label %5
    i16 50, label %5
    i16 52, label %5
    i16 55, label %5
  ], !prof !200

5:                                                ; preds = %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7, !prof !201

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %2, %5, %7
  %13 = phi i32 [ 1, %5 ], [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mult_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 52
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @div_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 55
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @float_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !202 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 103
  br i1 %5, label %6, label %13, !prof !203

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @arith_or_logical_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !204 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 49, label %5
    i16 52, label %5
    i16 61, label %5
    i16 62, label %5
    i16 63, label %5
    i16 70, label %5
    i16 71, label %5
    i16 72, label %5
    i16 73, label %5
    i16 48, label %5
    i16 50, label %5
    i16 55, label %5
    i16 58, label %5
    i16 59, label %5
    i16 60, label %5
    i16 65, label %5
    i16 66, label %5
    i16 67, label %5
    i16 68, label %5
    i16 69, label %5
  ], !prof !205

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7, !prof !206

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %2, %5, %7
  %13 = phi i32 [ 1, %5 ], [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @commutative_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !207 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 49, label %5
    i16 52, label %5
    i16 61, label %5
    i16 62, label %5
    i16 63, label %5
    i16 70, label %5
    i16 71, label %5
    i16 72, label %5
    i16 73, label %5
  ], !prof !208

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %2, %5, %7
  %13 = phi i32 [ 1, %5 ], [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @promotable_binary_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !209 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %5 [
    i16 49, label %11
    i16 61, label %11
    i16 62, label %11
    i16 63, label %11
    i16 65, label %11
  ], !prof !210

5:                                                ; preds = %2
  %6 = and i32 %3, 65535
  %7 = icmp eq i32 %6, 52
  %8 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 52), align 4
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false, !prof !211
  br i1 %10, label %11, label %18, !prof !211

11:                                               ; preds = %2, %2, %2, %2, %2, %5
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %18, label %13, !prof !212

13:                                               ; preds = %11
  %14 = lshr i32 %3, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %5, %11, %13
  %19 = phi i32 [ 1, %11 ], [ %17, %13 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @compare_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !213 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 48
  br i1 %5, label %6, label %13, !prof !214

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8, !prof !214

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %8, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @absneg_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !215 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %12 [
    i16 111, label %5
    i16 51, label %5
  ], !prof !216

5:                                                ; preds = %2, %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %7 ], [ 1, %5 ]
  ret i32 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @misaligned_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !161
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i32 [ %12, %10 ], [ 8, %6 ]
  %15 = tail call i32 @get_mode_alignment(i32 noundef %1) #26
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, %1
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %17, %19, %13, %2
  %26 = phi i32 [ 0, %13 ], [ 0, %2 ], [ 1, %17 ], [ %24, %19 ]
  ret i32 %26
}

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @emms_operation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #20 !prof !217 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %59, !prof !218

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load i32, ptr %8, align 8, !tbaa !140
  %10 = icmp eq i32 %9, 17
  br i1 %10, label %11, label %59, !prof !219

11:                                               ; preds = %6, %46
  %12 = phi i64 [ %15, %46 ], [ 0, %6 ]
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %52, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i64 %12, 1
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 25
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 16777215
  %26 = icmp eq i32 %25, 2621477
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = or disjoint i64 %12, 8
  %31 = zext i32 %29 to i64
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %12, 9
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 25
  br i1 %39, label %40, label %59

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !67
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 16777215
  %45 = icmp eq i32 %44, 1114149
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !67
  %49 = add nuw nsw i64 %12, 29
  %50 = zext i32 %48 to i64
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %11, label %59, !llvm.loop !220

52:                                               ; preds = %11
  %53 = icmp eq i32 %1, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = lshr i32 %3, 16
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, %1
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %33, %40, %14, %21, %27, %46, %6, %52, %54, %2
  %60 = phi i32 [ 0, %2 ], [ 1, %52 ], [ %58, %54 ], [ 0, %6 ], [ 0, %46 ], [ 0, %27 ], [ 0, %21 ], [ 0, %14 ], [ 0, %40 ], [ 0, %33 ]
  ret i32 %60
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @vzeroall_operation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #20 !prof !217 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %46, !prof !218

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load i32, ptr %8, align 8, !tbaa !140
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %46, !prof !219

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 70), align 16
  br label %13

13:                                               ; preds = %11, %35
  %14 = phi i64 [ 0, %11 ], [ %17, %35 ]
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %14, 1
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 16777215
  %28 = icmp eq i32 %27, 4587557
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !67
  %32 = add nuw nsw i64 %14, 21
  %33 = zext i32 %31 to i64
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = icmp eq ptr %37, %12
  br i1 %38, label %13, label %46, !llvm.loop !221

39:                                               ; preds = %13
  %40 = icmp eq i32 %1, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = lshr i32 %3, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, %1
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %16, %23, %29, %35, %6, %39, %41, %2
  %47 = phi i32 [ 0, %2 ], [ 1, %39 ], [ %45, %41 ], [ 0, %6 ], [ 0, %35 ], [ 0, %29 ], [ 0, %23 ], [ 0, %16 ]
  ret i32 %47
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @vzeroupper_operation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #20 !prof !217 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %40, !prof !218

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load i32, ptr %8, align 8, !tbaa !140
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %40, !prof !219

11:                                               ; preds = %6, %27
  %12 = phi i64 [ %15, %27 ], [ 0, %6 ]
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i64 %12, 1
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 25
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 16777215
  %26 = icmp eq i32 %25, 4587557
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = add nuw nsw i64 %12, 21
  %31 = zext i32 %29 to i64
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %11, label %40, !llvm.loop !222

33:                                               ; preds = %11
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = lshr i32 %3, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, %1
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %14, %21, %27, %6, %33, %35, %2
  %41 = phi i32 [ 0, %2 ], [ 1, %33 ], [ %39, %35 ], [ 0, %6 ], [ 0, %27 ], [ 0, %21 ], [ 0, %14 ]
  ret i32 %41
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vpermilp_v8sf_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 81) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

declare i32 @avx_vpermilp_parallel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vpermilp_v4df_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 82) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vpermilp_v4sf_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 79) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vpermilp_v2df_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vpermilp_parallel(ptr noundef nonnull %0, i32 noundef 80) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vperm2f128_v8sf_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vperm2f128_parallel(ptr noundef nonnull %0, i32 noundef 81) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

declare i32 @avx_vperm2f128_parallel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vperm2f128_v8si_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vperm2f128_parallel(ptr noundef nonnull %0, i32 noundef 70) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @avx_vperm2f128_v4df_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call i32 @avx_vperm2f128_parallel(ptr noundef nonnull %0, i32 noundef 82) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11, %6, %2
  %18 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 1, %9 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @avx_vbroadcast_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #21 !prof !55 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 30
  br i1 %13, label %14, label %42

14:                                               ; preds = %6
  %15 = load i32, ptr %8, align 8, !tbaa !140
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = zext nneg i32 %15 to i64
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = icmp eq ptr %21, %10
  br i1 %22, label %23, label %33

23:                                               ; preds = %17, %27
  %24 = phi i64 [ %25, %27 ], [ 1, %17 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = icmp eq i64 %25, %19
  br i1 %26, label %35, label %27, !llvm.loop !223

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = icmp eq ptr %29, %10
  br i1 %30, label %23, label %31, !llvm.loop !223

31:                                               ; preds = %27
  %32 = icmp ult i64 %25, %18
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i1 [ %32, %31 ], [ %16, %17 ]
  br i1 %34, label %42, label %35

35:                                               ; preds = %23, %14, %33
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = lshr i32 %3, 16
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, %1
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %35, %37, %33, %6, %2
  %43 = phi i32 [ 0, %33 ], [ 0, %6 ], [ 0, %2 ], [ 1, %35 ], [ %41, %37 ]
  ret i32 %43
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @lookup_constraint(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !prof !224 {
  %2 = load i8, ptr %0, align 1, !tbaa !67
  switch i8 %2, label %42 [
    i8 65, label %43
    i8 67, label %3
    i8 68, label %4
    i8 71, label %5
    i8 73, label %6
    i8 74, label %7
    i8 75, label %8
    i8 76, label %9
    i8 77, label %10
    i8 78, label %11
    i8 79, label %12
    i8 81, label %13
    i8 82, label %14
    i8 83, label %15
    i8 85, label %16
    i8 89, label %17
    i8 90, label %29
    i8 97, label %30
    i8 98, label %31
    i8 99, label %32
    i8 100, label %33
    i8 101, label %34
    i8 102, label %35
    i8 108, label %36
    i8 113, label %37
    i8 116, label %38
    i8 117, label %39
    i8 120, label %40
    i8 121, label %41
  ], !prof !225

3:                                                ; preds = %1
  br label %43

4:                                                ; preds = %1
  br label %43

5:                                                ; preds = %1
  br label %43

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str, i64 noundef 2)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20, !prof !226

20:                                               ; preds = %17
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.1, i64 noundef 2)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23, !prof !227

23:                                               ; preds = %20
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.2, i64 noundef 2)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26, !prof !228

26:                                               ; preds = %23
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.3, i64 noundef 2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %42

29:                                               ; preds = %1
  br label %43

30:                                               ; preds = %1
  br label %43

31:                                               ; preds = %1
  br label %43

32:                                               ; preds = %1
  br label %43

33:                                               ; preds = %1
  br label %43

34:                                               ; preds = %1
  br label %43

35:                                               ; preds = %1
  br label %43

36:                                               ; preds = %1
  br label %43

37:                                               ; preds = %1
  br label %43

38:                                               ; preds = %1
  br label %43

39:                                               ; preds = %1
  br label %43

40:                                               ; preds = %1
  br label %43

41:                                               ; preds = %1
  br label %43

42:                                               ; preds = %1, %26
  br label %43

43:                                               ; preds = %26, %23, %20, %17, %1, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %44 = phi i32 [ 0, %42 ], [ 16, %41 ], [ 17, %40 ], [ 15, %39 ], [ 14, %38 ], [ 2, %37 ], [ 4, %36 ], [ 13, %35 ], [ 31, %34 ], [ 8, %33 ], [ 7, %32 ], [ 6, %31 ], [ 5, %30 ], [ 32, %29 ], [ 12, %16 ], [ 9, %15 ], [ 1, %14 ], [ 3, %13 ], [ 28, %12 ], [ 27, %11 ], [ 26, %10 ], [ 25, %9 ], [ 24, %8 ], [ 23, %7 ], [ 22, %6 ], [ 29, %5 ], [ 10, %4 ], [ 30, %3 ], [ 11, %1 ], [ 19, %17 ], [ 20, %20 ], [ 21, %23 ], [ 18, %26 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @regclass_for_constraint(i32 noundef %0) local_unnamed_addr #24 !prof !229 {
  switch i32 %0, label %64 [
    i32 1, label %65
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %11
    i32 12, label %12
    i32 13, label %13
    i32 14, label %18
    i32 15, label %23
    i32 16, label %28
    i32 17, label %33
    i32 18, label %38
    i32 19, label %43
    i32 20, label %48
    i32 21, label %56
  ], !prof !230

2:                                                ; preds = %1
  br label %65

3:                                                ; preds = %1
  br label %65

4:                                                ; preds = %1
  br label %65

5:                                                ; preds = %1
  br label %65

6:                                                ; preds = %1
  br label %65

7:                                                ; preds = %1
  br label %65

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load i32, ptr @target_flags, align 4
  %15 = and i32 %14, 34
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 16, !prof !231
  br label %65

18:                                               ; preds = %1
  %19 = load i32, ptr @target_flags, align 4
  %20 = and i32 %19, 34
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 14
  br label %65

23:                                               ; preds = %1
  %24 = load i32, ptr @target_flags, align 4
  %25 = and i32 %24, 34
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 15
  br label %65

28:                                               ; preds = %1
  %29 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !71
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 19, !prof !232
  br label %65

33:                                               ; preds = %1
  %34 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !71
  %35 = and i32 %34, 65536
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 0, i32 18, !prof !233
  br label %65

38:                                               ; preds = %1
  %39 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !71
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 17
  br label %65

43:                                               ; preds = %1
  %44 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !71
  %45 = and i32 %44, 131072
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 18, !prof !234
  br label %65

48:                                               ; preds = %1
  %49 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !71
  %50 = and i32 %49, 131072
  %51 = icmp ne i32 %50, 0
  %52 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 42), align 2
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false, !prof !235
  %55 = select i1 %54, i32 18, i32 0, !prof !235
  br label %65

56:                                               ; preds = %1
  %57 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !71
  %58 = and i32 %57, 2048
  %59 = icmp ne i32 %58, 0
  %60 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 42), align 2
  %61 = icmp ne i8 %60, 0
  %62 = select i1 %59, i1 %61, i1 false, !prof !236
  %63 = select i1 %62, i32 19, i32 0, !prof !236
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %1, %64, %56, %48, %43, %38, %33, %28, %23, %18, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %66 = phi i32 [ 0, %64 ], [ %63, %56 ], [ %55, %48 ], [ %47, %43 ], [ %42, %38 ], [ %37, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %13 ], [ 8, %12 ], [ 7, %11 ], [ 6, %10 ], [ 5, %9 ], [ 2, %8 ], [ 3, %7 ], [ 4, %6 ], [ 1, %5 ], [ 11, %4 ], [ 9, %3 ], [ 9, %2 ], [ 12, %1 ]
  ret i32 %66
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @constraint_satisfied_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !237 {
  switch i32 %1, label %94 [
    i32 22, label %3
    i32 23, label %12
    i32 24, label %21
    i32 25, label %31
    i32 26, label %45
    i32 27, label %54
    i32 28, label %63
    i32 29, label %72
    i32 30, label %80
    i32 31, label %83
    i32 32, label %91
  ], !prof !238

3:                                                ; preds = %2
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %7, label %94

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !67
  %10 = icmp ult i64 %9, 32
  %11 = zext i1 %10 to i8
  br label %94

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 30
  br i1 %15, label %16, label %94

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !67
  %19 = icmp ult i64 %18, 64
  %20 = zext i1 %19 to i8
  br label %94

21:                                               ; preds = %2
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !67
  %28 = add i64 %27, 128
  %29 = icmp ult i64 %28, 256
  %30 = zext i1 %29 to i8
  br label %94

31:                                               ; preds = %2
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 30
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !67
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi i64 [ %37, %35 ], [ 0, %31 ]
  %40 = icmp eq i64 %39, 255
  %41 = icmp eq i64 %39, 65535
  %42 = or i1 %40, %41
  %43 = select i1 %34, i1 %42, i1 false
  %44 = zext i1 %43 to i8
  br label %94

45:                                               ; preds = %2
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 30
  br i1 %48, label %49, label %94

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !67
  %52 = icmp ult i64 %51, 4
  %53 = zext i1 %52 to i8
  br label %94

54:                                               ; preds = %2
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 30
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !67
  %61 = icmp ult i64 %60, 256
  %62 = zext i1 %61 to i8
  br label %94

63:                                               ; preds = %2
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 30
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !67
  %70 = icmp ult i64 %69, 128
  %71 = zext i1 %70 to i8
  br label %94

72:                                               ; preds = %2
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = tail call i32 @standard_80387_constant_p(ptr noundef nonnull %0) #26
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i8
  br label %94

80:                                               ; preds = %2
  %81 = tail call i32 @standard_sse_constant_p(ptr noundef %0) #26
  %82 = trunc i32 %81 to i8
  br label %94

83:                                               ; preds = %2
  %84 = load i32, ptr %0, align 8
  %85 = trunc i32 %84 to i16
  switch i16 %85, label %94 [
    i16 30, label %86
    i16 45, label %86
    i16 44, label %86
    i16 35, label %86
  ]

86:                                               ; preds = %83, %83, %83, %83
  %87 = lshr i32 %84, 16
  %88 = and i32 %87, 255
  %89 = tail call i32 @immediate_operand(ptr noundef nonnull %0, i32 noundef %88) #26
  %90 = trunc i32 %89 to i8
  br label %94

91:                                               ; preds = %2
  %92 = tail call i32 @x86_64_zext_immediate_operand(ptr noundef nonnull %0, i32 poison)
  %93 = trunc i32 %92 to i8
  br label %94

94:                                               ; preds = %67, %63, %58, %54, %49, %45, %25, %21, %16, %12, %7, %3, %86, %83, %76, %72, %2, %91, %80, %38
  %95 = phi i8 [ %93, %91 ], [ %82, %80 ], [ %44, %38 ], [ 0, %2 ], [ 0, %72 ], [ %79, %76 ], [ %90, %86 ], [ 0, %83 ], [ %11, %7 ], [ 0, %3 ], [ %20, %16 ], [ 0, %12 ], [ %30, %25 ], [ 0, %21 ], [ %53, %49 ], [ 0, %45 ], [ %62, %58 ], [ 0, %54 ], [ %71, %67 ], [ 0, %63 ]
  ret i8 %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %0, i32 noundef %1) local_unnamed_addr #25 !prof !239 {
  switch i32 %1, label %20 [
    i32 22, label %3
    i32 23, label %5
    i32 24, label %7
    i32 25, label %10
    i32 26, label %14
    i32 27, label %16
    i32 28, label %18
  ], !prof !240

3:                                                ; preds = %2
  %4 = icmp ult i64 %0, 32
  br label %20

5:                                                ; preds = %2
  %6 = icmp ult i64 %0, 64
  br label %20

7:                                                ; preds = %2
  %8 = add i64 %0, 128
  %9 = icmp ult i64 %8, 256
  br label %20

10:                                               ; preds = %2
  %11 = icmp eq i64 %0, 255
  %12 = icmp eq i64 %0, 65535
  %13 = or i1 %11, %12
  br label %20

14:                                               ; preds = %2
  %15 = icmp ult i64 %0, 4
  br label %20

16:                                               ; preds = %2
  %17 = icmp ult i64 %0, 256
  br label %20

18:                                               ; preds = %2
  %19 = icmp ult i64 %0, 128
  br label %20

20:                                               ; preds = %2, %18, %16, %14, %10, %7, %5, %3
  %21 = phi i1 [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %10 ], [ %9, %7 ], [ %6, %5 ], [ %4, %3 ], [ false, %2 ]
  %22 = zext i1 %21 to i8
  ret i8 %22
}

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #3

declare ptr @maybe_get_pool_constant(ptr noundef) local_unnamed_addr #3

declare i32 @standard_sse_constant_p(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_decompose_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ix86_fp_compare_code_to_integer(i32 noundef) local_unnamed_addr #3

declare i32 @standard_80387_constant_p(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @q_regs_operand, ptr @register_operand, i64 2523}
!36 = !{ptr @ext_register_operand, ptr @register_operand, i64 130704}
!37 = !{ptr @reg_not_xmm0_operand, ptr @register_operand, i64 240}
!38 = !{ptr @index_register_operand, ptr @register_operand, i64 2518}
!39 = !{ptr @general_no_elim_operand, ptr @register_operand, i64 88}
!40 = !{ptr @incdec_operand, ptr @optimize_insn_for_size_p, i64 635773}
!41 = !{ptr @vector_move_operand, ptr @nonimmediate_operand, i64 1140}
!42 = !{ptr @nonimmediate_or_sse_const_operand, ptr @general_operand, i64 1040}
!43 = !{ptr @nonimmediate_or_sse_const_operand, ptr @nonimmediate_operand, i64 1040}
!44 = !{ptr @no_seg_address_operand, ptr @address_operand, i64 177104}
!45 = !{ptr @no_seg_address_operand, ptr @ix86_decompose_address, i64 4239}
!46 = !{ptr @aligned_operand, ptr @general_operand, i64 18548}
!47 = !{ptr @aligned_operand, ptr @optimize_insn_for_size_p, i64 604}
!48 = !{ptr @memory_displacement_only_operand, ptr @memory_operand, i64 434313}
!49 = !{ptr @memory_displacement_only_operand, ptr @ix86_decompose_address, i64 349714}
!50 = !{ptr @ix86_comparison_operator, ptr @comparison_operator, i64 1788410}
!51 = !{ptr @ix86_fp_comparison_operator, ptr @ix86_fp_comparison_strategy, i64 180185}
!52 = !{ptr @lookup_constraint, ptr @strncmp, i64 1581658}
!53 = !{ptr @constraint_satisfied_p, ptr @standard_sse_constant_p, i64 944526}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !57, i64 8}
!61 = !{!"_IO_FILE", !62, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !62, i64 112, !62, i64 116, !63, i64 120, !64, i64 128, !58, i64 130, !58, i64 131, !57, i64 136, !63, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !63, i64 184, !62, i64 192, !58, i64 196}
!62 = !{!"int", !58, i64 0}
!63 = !{!"long", !58, i64 0}
!64 = !{!"short", !58, i64 0}
!65 = !{!61, !57, i64 16}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!58, !58, i64 0}
!68 = !{!61, !57, i64 40}
!69 = !{!61, !57, i64 48}
!70 = !{!61, !62, i64 0}
!71 = !{!62, !62, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!"function_entry_count", i64 393440}
!76 = !{!"branch_weights", i32 298884, i32 94556}
!77 = !{!"branch_weights", i32 0, i32 298884}
!78 = !{!"function_entry_count", i64 2523}
!79 = !{!"branch_weights", i32 454, i32 2069}
!80 = !{!"branch_weights", i32 0, i32 2069}
!81 = !{!"branch_weights", i32 2069, i32 0}
!82 = !{!"function_entry_count", i64 130704}
!83 = !{!"branch_weights", i32 51839, i32 78865}
!84 = !{!"branch_weights", i32 76079, i32 2786}
!85 = !{!"branch_weights", i32 68, i32 76011}
!86 = !{!"branch_weights", i32 61471, i32 14608}
!87 = !{!"function_entry_count", i64 946591}
!88 = !{!"branch_weights", i32 544284, i32 402307}
!89 = !{!"branch_weights", i32 434231, i32 110053}
!90 = !{!"branch_weights", i32 434231, i32 0}
!91 = !{!"function_entry_count", i64 2016799}
!92 = !{!"branch_weights", i32 1767739, i32 249060}
!93 = !{!"branch_weights", i32 867039, i32 900700}
!94 = !{!"branch_weights", i32 786325, i32 80714}
!95 = !{!"function_entry_count", i64 240}
!96 = !{!"branch_weights", i32 96, i32 144}
!97 = !{!"branch_weights", i32 144, i32 0}
!98 = !{!"function_entry_count", i64 5052665}
!99 = !{!"branch_weights", i32 5050817, i32 0, i32 1848, i32 0}
!100 = !{!"branch_weights", i32 1848, i32 0}
!101 = !{i32 0, i32 2}
!102 = !{!"function_entry_count", i64 136959}
!103 = !{!"branch_weights", i32 0, i32 136959}
!104 = !{!"function_entry_count", i64 292878}
!105 = !{!"branch_weights", i32 292878, i32 0}
!106 = !{!"branch_weights", i32 226120, i32 66758}
!107 = !{!"branch_weights", i32 0, i32 88}
!108 = !{!"function_entry_count", i64 2518}
!109 = !{!"branch_weights", i32 875, i32 1643}
!110 = !{!"branch_weights", i32 0, i32 1643}
!111 = !{!"branch_weights", i32 619, i32 1024}
!112 = !{!"branch_weights", i32 619, i32 0}
!113 = !{!64, !64, i64 0}
!114 = !{!"branch_weights", i32 1024, i32 0}
!115 = !{!"function_entry_count", i64 88}
!116 = !{!"branch_weights", i32 0, i32 88, i32 0}
!117 = !{!"function_entry_count", i64 68939}
!118 = !{!"branch_weights", i32 68939, i32 0}
!119 = !{!"branch_weights", i32 68939, i32 0, i32 0}
!120 = !{!"branch_weights", i32 0, i32 68939}
!121 = !{!"function_entry_count", i64 19}
!122 = !{!"branch_weights", i32 19, i32 0}
!123 = !{!"branch_weights", i32 19, i32 0, i32 0}
!124 = !{!"branch_weights", i32 0, i32 19}
!125 = !{!"function_entry_count", i64 868501}
!126 = !{!"branch_weights", i32 543366, i32 325135, i32 0, i32 0}
!127 = !{!"branch_weights", i32 44672, i32 280463}
!128 = !{!"function_entry_count", i64 2301}
!129 = !{!"branch_weights", i32 2251, i32 50}
!130 = !{!"function_entry_count", i64 133284}
!131 = !{!"branch_weights", i32 132106, i32 1178}
!132 = !{!"function_entry_count", i64 404}
!133 = !{!"branch_weights", i32 404, i32 0}
!134 = !{!"branch_weights", i32 78, i32 218, i32 108}
!135 = !{!"function_entry_count", i64 650025}
!136 = !{!"branch_weights", i32 635773, i32 14252}
!137 = !{!"branch_weights", i32 635773, i32 0}
!138 = !{!"branch_weights", i32 550474, i32 85299}
!139 = !{!"branch_weights", i32 18290, i32 67009}
!140 = !{!141, !62, i64 0}
!141 = !{!"rtvec_def", !62, i64 0, !58, i64 8}
!142 = distinct !{!142, !73, !74}
!143 = !{!"function_entry_count", i64 913682}
!144 = !{!"branch_weights", i32 0, i32 913682}
!145 = distinct !{!145, !73, !74}
!146 = !{!"function_entry_count", i64 1140}
!147 = !{!"branch_weights", i32 10, i32 1130}
!148 = !{!"branch_weights", i32 10, i32 0, i32 0, i32 0}
!149 = !{!"function_entry_count", i64 1040}
!150 = !{!"branch_weights", i32 0, i32 1040}
!151 = !{!"function_entry_count", i64 177104}
!152 = !{!"branch_weights", i32 172865, i32 4239}
!153 = !{!"branch_weights", i32 0, i32 4239}
!154 = !{!155, !62, i64 32}
!155 = !{!"ix86_address", !57, i64 0, !57, i64 8, !57, i64 16, !63, i64 24, !62, i64 32}
!156 = !{!"function_entry_count", i64 18548}
!157 = !{!"branch_weights", i32 3419, i32 15129}
!158 = !{!"branch_weights", i32 604, i32 14525}
!159 = !{!"branch_weights", i32 0, i32 604}
!160 = !{!"branch_weights", i32 604, i32 0}
!161 = !{!162, !62, i64 28}
!162 = !{!"mem_attrs", !57, i64 0, !57, i64 8, !57, i64 16, !62, i64 24, !62, i64 28, !58, i64 32}
!163 = !{!155, !57, i64 8}
!164 = !{!165, !57, i64 88}
!165 = !{!"rtl_data", !166, i64 0, !167, i64 40, !168, i64 96, !169, i64 112, !171, i64 208, !172, i64 248, !62, i64 312, !57, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !57, i64 376, !57, i64 384, !57, i64 392, !63, i64 400, !57, i64 408, !57, i64 416, !57, i64 424, !62, i64 432, !62, i64 436, !62, i64 440, !62, i64 444, !62, i64 448, !62, i64 452, !57, i64 456, !58, i64 464, !58, i64 465, !58, i64 466, !58, i64 467, !58, i64 468, !58, i64 469, !58, i64 470, !58, i64 471, !58, i64 472, !58, i64 473, !58, i64 474, !58, i64 475, !58, i64 476, !58, i64 477, !58, i64 478, !58, i64 479, !58, i64 480, !58, i64 481, !58, i64 482, !58, i64 483, !58, i64 484, !58, i64 485}
!166 = !{!"expr_status", !62, i64 0, !62, i64 4, !62, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!167 = !{!"emit_status", !62, i64 0, !62, i64 4, !57, i64 8, !57, i64 16, !57, i64 24, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !57, i64 48}
!168 = !{!"varasm_status", !57, i64 0, !62, i64 8}
!169 = !{!"incoming_args", !62, i64 0, !62, i64 4, !62, i64 8, !57, i64 16, !170, i64 24, !57, i64 88}
!170 = !{!"ix86_args", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60}
!171 = !{!"function_subsections", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!172 = !{!"rtl_eh", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !58, i64 48}
!173 = !{!155, !63, i64 24}
!174 = !{!155, !57, i64 0}
!175 = !{!155, !57, i64 16}
!176 = !{!"function_entry_count", i64 434313}
!177 = !{!"branch_weights", i32 84599, i32 349714}
!178 = !{!"branch_weights", i32 0, i32 349714}
!179 = !{!"branch_weights", i32 97637, i32 252077}
!180 = !{!"function_entry_count", i64 96}
!181 = !{!"function_entry_count", i64 192}
!182 = !{!"branch_weights", i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!183 = !{!"function_entry_count", i64 241812}
!184 = !{!"branch_weights", i32 233193, i32 8619}
!185 = !{!"branch_weights", i32 233193, i32 0}
!186 = !{!"function_entry_count", i64 1788410}
!187 = !{!"branch_weights", i32 553868, i32 1234542}
!188 = !{!"branch_weights", i32 0, i32 1234542}
!189 = !{!"branch_weights", i32 0, i32 636078, i32 564276, i32 805, i32 1011, i32 1828, i32 8127, i32 20550, i32 0, i32 0, i32 0, i32 1036, i32 831}
!190 = !{!"function_entry_count", i64 6037}
!191 = !{!"branch_weights", i32 3134, i32 2903, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!192 = !{!"branch_weights", i32 0, i32 2903}
!193 = !{!"branch_weights", i32 0, i32 0, i32 2903}
!194 = !{!"branch_weights", i32 2903, i32 0}
!195 = !{!"function_entry_count", i64 180185}
!196 = !{!"branch_weights", i32 0, i32 180185}
!197 = !{!"branch_weights", i32 179794, i32 270, i32 121, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!198 = !{!"branch_weights", i32 391, i32 0}
!199 = !{!"function_entry_count", i64 443864}
!200 = !{!"branch_weights", i32 436400, i32 7464, i32 0, i32 0, i32 0}
!201 = !{!"branch_weights", i32 7464, i32 0}
!202 = !{!"function_entry_count", i64 391}
!203 = !{!"branch_weights", i32 0, i32 391}
!204 = !{!"function_entry_count", i64 5439}
!205 = !{!"branch_weights", i32 1155, i32 2129, i32 0, i32 1742, i32 146, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 67, i32 0, i32 185, i32 0, i32 0}
!206 = !{!"branch_weights", i32 0, i32 4284}
!207 = !{!"function_entry_count", i64 1}
!208 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!209 = !{!"function_entry_count", i64 60729}
!210 = !{!"branch_weights", i32 42309, i32 11542, i32 5770, i32 872, i32 35, i32 201}
!211 = !{!"branch_weights", i32 0, i32 42309}
!212 = !{!"branch_weights", i32 18420, i32 0}
!213 = !{!"function_entry_count", i64 786325}
!214 = !{!"branch_weights", i32 786325, i32 0}
!215 = !{!"function_entry_count", i64 47}
!216 = !{!"branch_weights", i32 47, i32 0, i32 0}
!217 = !{!"function_entry_count", i64 171789}
!218 = !{!"branch_weights", i32 171789, i32 0}
!219 = !{!"branch_weights", i32 0, i32 171789}
!220 = distinct !{!220, !73, !74}
!221 = distinct !{!221, !73, !74}
!222 = distinct !{!222, !73, !74}
!223 = distinct !{!223, !73, !74}
!224 = !{!"function_entry_count", i64 8250740}
!225 = !{!"branch_weights", i32 2430, i32 0, i32 2679462, i32 0, i32 0, i32 1468, i32 0, i32 0, i32 3735, i32 134, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 791041, i32 0, i32 21171, i32 0, i32 6630, i32 0, i32 0, i32 464, i32 90873, i32 701180, i32 0, i32 0, i32 1976272, i32 1975880}
!226 = !{!"branch_weights", i32 520, i32 790521}
!227 = !{!"branch_weights", i32 790425, i32 96}
!228 = !{!"branch_weights", i32 96, i32 0}
!229 = !{!"function_entry_count", i64 7298001}
!230 = !{!"branch_weights", i32 1737366, i32 0, i32 701180, i32 0, i32 90873, i32 21171, i32 0, i32 6630, i32 0, i32 0, i32 0, i32 0, i32 0, i32 464, i32 0, i32 0, i32 1974877, i32 1975073, i32 0, i32 260, i32 790059, i32 48}
!231 = !{!"branch_weights", i32 0, i32 464}
!232 = !{!"branch_weights", i32 1974877, i32 0}
!233 = !{!"branch_weights", i32 1975073, i32 0}
!234 = !{!"branch_weights", i32 260, i32 0}
!235 = !{!"branch_weights", i32 0, i32 790059}
!236 = !{!"branch_weights", i32 0, i32 48}
!237 = !{!"function_entry_count", i64 947402}
!238 = !{!"branch_weights", i32 2876, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 944526, i32 0, i32 0}
!239 = !{!"function_entry_count", i64 5337}
!240 = !{!"branch_weights", i32 0, i32 1468, i32 0, i32 0, i32 3735, i32 134, i32 0, i32 0}
