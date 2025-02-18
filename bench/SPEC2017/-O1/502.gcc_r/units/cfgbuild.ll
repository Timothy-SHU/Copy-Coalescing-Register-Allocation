; ModuleID = 'cfgbuild.c'
source_filename = "cfgbuild.c"
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
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"cfgbuild.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !58 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !59
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !58 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !59
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !58 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !69

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !63
  %11 = load i8, ptr %3, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !58 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !69

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !63
  %11 = load i8, ptr %3, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !58 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !69

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !63
  %11 = load i8, ptr %3, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !59
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !58 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !69

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !71
  store i8 %12, ptr %4, align 1, !tbaa !70
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !58 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !69

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !71
  store i8 %12, ptr %4, align 1, !tbaa !70
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !58 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !69

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !71
  store i8 %12, ptr %4, align 1, !tbaa !70
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !58 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !58 {
  %2 = load i32, ptr %0, align 8, !tbaa !73
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !58 {
  %2 = load i32, ptr %0, align 8, !tbaa !73
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !58 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !74
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !58 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !74
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !58 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
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
  br i1 %23, label %7, label %24, !llvm.loop !75

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @inside_basic_block_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !58 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %25 [
    i16 12, label %4
    i16 9, label %18
    i16 10, label %26
    i16 8, label %26
    i16 7, label %26
    i16 11, label %24
    i16 13, label %24
  ], !prof !78

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8, !prof !79

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %26, !prof !79

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65534
  %17 = icmp ne i32 %16, 20
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp ne i32 %22, 20
  br label %26

24:                                               ; preds = %1, %1
  br label %26

25:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @.str.1) #12
  br label %26

26:                                               ; preds = %12, %1, %1, %1, %4, %8, %25, %24, %18
  %27 = phi i1 [ false, %25 ], [ false, %24 ], [ %23, %18 ], [ true, %8 ], [ true, %4 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ %17, %12 ]
  %28 = zext i1 %27 to i8
  ret i8 %28
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @control_flow_insn_p(ptr noundef %0) local_unnamed_addr #10 !prof !80 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %40 [
    i16 13, label %43
    i16 12, label %43
    i16 7, label %43
    i16 9, label %4
    i16 10, label %11
    i16 8, label %26
    i16 11, label %43
  ], !prof !81

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65534
  %9 = icmp ne i32 %8, 20
  %10 = zext i1 %9 to i8
  br label %43

11:                                               ; preds = %1
  %12 = and i32 %2, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !82

14:                                               ; preds = %11
  %15 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !83

17:                                               ; preds = %14, %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 14
  br i1 %22, label %23, label %43, !prof !84

23:                                               ; preds = %14, %17
  %24 = tail call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %0) #12
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %43, !prof !85

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 29
  br i1 %31, label %32, label %37, !prof !86

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !59
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %26
  %38 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !74
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %41, !prof !87

40:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #12
  br label %41

41:                                               ; preds = %23, %37, %40
  %42 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %0) #12
  br label %43

43:                                               ; preds = %32, %23, %1, %1, %1, %1, %37, %17, %41, %4
  %44 = phi i8 [ %42, %41 ], [ %10, %4 ], [ 1, %17 ], [ 0, %37 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %23 ], [ 1, %32 ]
  ret i8 %44
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @rtl_make_eh_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !58 {
  %4 = tail call ptr @get_eh_landing_pad_from_rtx(ptr noundef %2) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !prof !88

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load ptr, ptr %11, align 8, !tbaa !91
  %17 = tail call ptr @label_rtx(ptr noundef %16) #12
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi ptr [ %17, %15 ], [ %8, %6 ]
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  %23 = select i1 %22, i32 14, i32 10
  tail call fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr noundef %19, i32 noundef %23)
  br label %24

24:                                               ; preds = %18, %3
  ret void
}

declare ptr @get_eh_landing_pad_from_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @label_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #10 !prof !58 !PGOFuncName !92 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %9, label %8, !prof !93

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !70
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !94

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = tail call ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef %3) #12
  br label %17

17:                                               ; preds = %9, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @find_many_sub_basic_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !95 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %13, label %22, !prof !103

13:                                               ; preds = %22, %1
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = load ptr, ptr @cfun, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %379, label %41, !prof !103

22:                                               ; preds = %1, %22
  %23 = phi ptr [ %39, %22 ], [ %11, %1 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !104
  %26 = lshr i32 %25, 6
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !105
  %30 = and i32 %25, 63
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw i64 1, %31
  %33 = and i64 %32, %29
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %34, i64 1, i64 2, !prof !106
  %36 = inttoptr i64 %35 to ptr
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  %40 = icmp eq ptr %39, %9
  br i1 %40, label %13, label %22, !prof !108, !llvm.loop !109

41:                                               ; preds = %13, %370
  %42 = phi ptr [ %372, %370 ], [ %15, %13 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 4294967295
  %47 = icmp eq i64 %46, 2
  br i1 %47, label %48, label %370, !prof !110

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %369, label %55, !prof !114

55:                                               ; preds = %48
  %56 = load i32, ptr %51, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %62, !prof !115

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi ptr [ %51, %55 ], [ %61, %59 ]
  br label %64

64:                                               ; preds = %62, %196
  %65 = phi ptr [ %197, %196 ], [ %63, %62 ]
  %66 = phi ptr [ %191, %196 ], [ null, %62 ]
  %67 = phi ptr [ %146, %196 ], [ %42, %62 ]
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65535
  %70 = icmp ne ptr %66, null
  %71 = icmp eq i32 %69, 12
  %72 = select i1 %70, i1 true, i1 %71, !prof !116
  br i1 %72, label %73, label %139, !prof !117

73:                                               ; preds = %64
  %74 = trunc i32 %68 to i16
  switch i16 %74, label %83 [
    i16 12, label %75
    i16 9, label %84
    i16 10, label %91
    i16 8, label %91
    i16 7, label %91
    i16 11, label %139
    i16 13, label %139
  ], !prof !78

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79, !prof !79

79:                                               ; preds = %75
  %80 = load i32, ptr %77, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %84, label %91, !prof !79

83:                                               ; preds = %73
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @.str.1) #12
  br label %139

84:                                               ; preds = %73, %79
  %85 = phi ptr [ %77, %79 ], [ %65, %73 ]
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65534
  %90 = icmp eq i32 %89, 20
  br i1 %90, label %139, label %91, !prof !118

91:                                               ; preds = %79, %75, %73, %73, %73, %84
  %92 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !70
  %94 = call ptr @split_block(ptr noundef %67, ptr noundef %93) #12
  br i1 %70, label %95, label %122, !prof !119

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !70
  %98 = getelementptr inbounds %struct.rtl_bb_info, ptr %97, i64 0, i32 1
  store ptr %66, ptr %98, align 8, !tbaa !113
  %99 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 1
  %100 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %101 = load ptr, ptr %100, align 8, !tbaa !70
  %102 = load ptr, ptr %99, align 8, !tbaa !120
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = load ptr, ptr %104, align 8, !tbaa !111
  %106 = icmp eq ptr %101, %105
  br i1 %106, label %122, label %107, !prof !122

107:                                              ; preds = %95, %114
  %108 = phi ptr [ %116, %114 ], [ %101, %95 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 11
  br i1 %111, label %114, label %112, !prof !123

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %113, align 8, !tbaa !70
  br label %114

114:                                              ; preds = %112, %107
  %115 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 2
  %116 = load ptr, ptr %115, align 8, !tbaa !70
  %117 = load ptr, ptr %99, align 8, !tbaa !120
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !70
  %120 = load ptr, ptr %119, align 8, !tbaa !111
  %121 = icmp eq ptr %116, %120
  br i1 %121, label %122, label %107, !prof !123, !llvm.loop !124

122:                                              ; preds = %114, %95, %91
  %123 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !120
  call void @remove_edge(ptr noundef %94) #12
  br i1 %71, label %125, label %144, !prof !125

125:                                              ; preds = %122
  %126 = load i32, ptr %65, align 8
  %127 = lshr i32 %126, 23
  %128 = and i32 %127, 2
  %129 = lshr i32 %126, 25
  %130 = and i32 %129, 1
  %131 = or disjoint i32 %128, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %144, label %133, !prof !126

133:                                              ; preds = %125
  %134 = load ptr, ptr @cfun, align 8, !tbaa !59
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !96
  %137 = load ptr, ptr %136, align 8, !tbaa !98
  %138 = call ptr @make_edge(ptr noundef %137, ptr noundef %124, i32 noundef 0) #12
  br label %144

139:                                              ; preds = %73, %73, %83, %84, %64
  %140 = icmp ne i32 %69, 11
  %141 = or i1 %70, %140
  br i1 %141, label %144, label %142, !prof !127

142:                                              ; preds = %139
  %143 = call ptr @prev_nonnote_insn_bb(ptr noundef nonnull %65) #12
  br label %144

144:                                              ; preds = %139, %142, %133, %125, %122
  %145 = phi ptr [ null, %133 ], [ null, %125 ], [ null, %122 ], [ %143, %142 ], [ %66, %139 ]
  %146 = phi ptr [ %124, %133 ], [ %124, %125 ], [ %124, %122 ], [ %67, %142 ], [ %67, %139 ]
  %147 = load i32, ptr %65, align 8
  %148 = trunc i32 %147 to i16
  switch i16 %148, label %185 [
    i16 13, label %188
    i16 12, label %188
    i16 7, label %188
    i16 9, label %149
    i16 10, label %156
    i16 8, label %171
    i16 11, label %188
  ], !prof !81

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !70
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65534
  %154 = icmp ne i32 %153, 20
  %155 = zext i1 %154 to i8
  br label %188

156:                                              ; preds = %144
  %157 = and i32 %147, 16777216
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162, !prof !82

159:                                              ; preds = %156
  %160 = call ptr @find_reg_note(ptr noundef nonnull %65, i32 noundef 27, ptr noundef null) #12
  %161 = icmp eq ptr %160, null
  br i1 %161, label %168, label %162, !prof !83

162:                                              ; preds = %159, %156
  %163 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !70
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp eq i32 %166, 14
  br i1 %167, label %168, label %188, !prof !84

168:                                              ; preds = %162, %159
  %169 = call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %65) #12
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %186, label %188, !prof !85

171:                                              ; preds = %144
  %172 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !70
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 29
  br i1 %176, label %177, label %182, !prof !86

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !70
  %180 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !59
  %181 = icmp eq ptr %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %177, %171
  %183 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !74
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %186, !prof !87

185:                                              ; preds = %144
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #12
  br label %186

186:                                              ; preds = %185, %182, %168
  %187 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %65) #12
  br label %188

188:                                              ; preds = %144, %144, %144, %144, %149, %162, %168, %177, %182, %186
  %189 = phi i8 [ %187, %186 ], [ %155, %149 ], [ 1, %162 ], [ 0, %182 ], [ 0, %144 ], [ 0, %144 ], [ 0, %144 ], [ 0, %144 ], [ 1, %168 ], [ 1, %177 ]
  %190 = icmp eq i8 %189, 0
  %191 = select i1 %190, ptr %145, ptr %65, !prof !128
  %192 = icmp eq ptr %65, %53
  br i1 %192, label %196, label %193, !prof !129

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !70
  br label %196

196:                                              ; preds = %193, %188
  %197 = phi ptr [ %195, %193 ], [ %65, %188 ]
  br i1 %192, label %198, label %64, !prof !129

198:                                              ; preds = %196
  %199 = icmp eq ptr %191, null
  br i1 %199, label %216, label %200, !prof !130

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !70
  %203 = getelementptr inbounds %struct.rtl_bb_info, ptr %202, i64 0, i32 1
  store ptr %191, ptr %203, align 8, !tbaa !113
  %204 = icmp eq ptr %191, %53
  br i1 %204, label %216, label %205, !prof !131

205:                                              ; preds = %200, %214
  %206 = phi ptr [ %208, %214 ], [ %191, %200 ]
  %207 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 2
  %208 = load ptr, ptr %207, align 8, !tbaa !70
  %209 = load i32, ptr %208, align 8
  %210 = and i32 %209, 65535
  %211 = icmp eq i32 %210, 11
  br i1 %211, label %214, label %212, !prof !132

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %213, align 8, !tbaa !70
  br label %214

214:                                              ; preds = %212, %205
  %215 = icmp eq ptr %208, %53
  br i1 %215, label %216, label %205, !prof !132, !llvm.loop !133

216:                                              ; preds = %214, %200, %198
  %217 = call zeroext i8 @purge_dead_edges(ptr noundef %146) #12
  %218 = icmp eq ptr %146, %42
  br i1 %218, label %369, label %219, !prof !134

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 7
  %221 = load ptr, ptr %220, align 8, !tbaa !70
  %222 = getelementptr inbounds %struct.rtl_bb_info, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !113
  %224 = call zeroext i8 @tablejump_p(ptr noundef %223, ptr noundef null, ptr noundef nonnull %3) #12
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %369, label %226, !prof !135

226:                                              ; preds = %219
  %227 = load ptr, ptr %3, align 8, !tbaa !59
  %228 = load ptr, ptr %220, align 8, !tbaa !70
  %229 = getelementptr inbounds %struct.rtl_bb_info, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !113
  %231 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !70
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 20
  %236 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1
  %237 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  %238 = select i1 %235, ptr %236, ptr %237, !prof !136
  %239 = load ptr, ptr %238, align 8, !tbaa !70
  %240 = load i32, ptr %239, align 8, !tbaa !137
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %269, !prof !139

242:                                              ; preds = %226
  %243 = zext nneg i32 %240 to i64
  br label %244

244:                                              ; preds = %242, %267
  %245 = phi i64 [ %243, %242 ], [ %246, %267 ]
  %246 = add nsw i64 %245, -1
  %247 = getelementptr inbounds %struct.rtvec_def, ptr %239, i64 0, i32 1, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !59
  %249 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !70
  %251 = load i32, ptr %250, align 8
  %252 = and i32 %251, 65535
  %253 = icmp eq i32 %252, 12
  br i1 %253, label %255, label %254, !prof !140

254:                                              ; preds = %244
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #12
  br label %255

255:                                              ; preds = %254, %244
  %256 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  %257 = load i32, ptr %256, align 8, !tbaa !70
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %267, label %259, !prof !141

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !70
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %261, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !107
  %264 = ptrtoint ptr %263 to i64
  %265 = or i64 %264, 32
  %266 = inttoptr i64 %265 to ptr
  store ptr %266, ptr %262, align 8, !tbaa !107
  br label %267

267:                                              ; preds = %259, %255
  %268 = icmp sgt i64 %245, 1
  br i1 %268, label %244, label %269, !prof !142, !llvm.loop !143

269:                                              ; preds = %267, %226
  %270 = load i32, ptr %230, align 8
  %271 = and i32 %270, 65535
  %272 = add nsw i32 %271, -7
  %273 = icmp ult i32 %272, 4
  br i1 %273, label %274, label %282, !prof !136

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.rtx_def, ptr %230, i64 1
  %276 = load ptr, ptr %275, align 8, !tbaa !70
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 23
  br i1 %279, label %282, label %280, !prof !144

280:                                              ; preds = %274
  %281 = call ptr @single_set_2(ptr noundef nonnull %230, ptr noundef nonnull %276) #12
  br label %282

282:                                              ; preds = %280, %274, %269
  %283 = phi ptr [ %281, %280 ], [ null, %269 ], [ %276, %274 ]
  %284 = icmp eq ptr %283, null
  br i1 %284, label %321, label %285, !prof !144

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !70
  %288 = load ptr, ptr @global_rtl, align 16, !tbaa !59
  %289 = icmp eq ptr %287, %288
  br i1 %289, label %290, label %321, !prof !136

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1, i32 0, i32 0, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !70
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 47
  br i1 %295, label %296, label %321, !prof !144

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.rtx_def, ptr %292, i64 0, i32 1, i32 0, i32 0, i64 2
  %298 = load ptr, ptr %297, align 8, !tbaa !70
  %299 = load i32, ptr %298, align 8
  %300 = and i32 %299, 65535
  %301 = icmp eq i32 %300, 44
  br i1 %301, label %302, label %321

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !70
  %305 = load i32, ptr %304, align 8
  %306 = and i32 %305, 65535
  %307 = icmp eq i32 %306, 12
  br i1 %307, label %309, label %308

308:                                              ; preds = %302
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #12
  br label %309

309:                                              ; preds = %308, %302
  %310 = getelementptr inbounds %struct.rtx_def, ptr %304, i64 0, i32 1
  %311 = load i32, ptr %310, align 8, !tbaa !70
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.rtx_def, ptr %304, i64 0, i32 1, i32 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !70
  %316 = getelementptr inbounds %struct.basic_block_def, ptr %315, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !107
  %318 = ptrtoint ptr %317 to i64
  %319 = or i64 %318, 32
  %320 = inttoptr i64 %319 to ptr
  store ptr %320, ptr %316, align 8, !tbaa !107
  br label %321

321:                                              ; preds = %313, %309, %296, %290, %285, %282
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 1
  br label %323

323:                                              ; preds = %367, %321
  %324 = phi i32 [ %368, %367 ], [ 0, %321 ]
  br label %325

325:                                              ; preds = %323, %357
  %326 = load ptr, ptr %322, align 8, !tbaa !59
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328, !prof !145

328:                                              ; preds = %325
  %329 = load i32, ptr %326, align 8, !tbaa !146
  br label %330

330:                                              ; preds = %328, %325
  %331 = phi i32 [ %329, %328 ], [ 0, %325 ]
  %332 = icmp eq i32 %331, %324
  br i1 %332, label %337, label %333, !prof !148

333:                                              ; preds = %330
  %334 = zext i32 %324 to i64
  %335 = getelementptr inbounds %struct.VEC_edge_base, ptr %326, i64 0, i32 2, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !59
  br label %337

337:                                              ; preds = %333, %330
  %338 = phi ptr [ %336, %333 ], [ null, %330 ]
  %339 = icmp eq ptr %338, null
  br i1 %339, label %369, label %340, !prof !148

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.edge_def, ptr %338, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !120
  %343 = getelementptr inbounds %struct.basic_block_def, ptr %342, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !107
  %345 = ptrtoint ptr %344 to i64
  %346 = and i64 %345, 32
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %352, label %348, !prof !149

348:                                              ; preds = %340
  %349 = getelementptr inbounds %struct.basic_block_def, ptr %342, i64 0, i32 2
  %350 = and i64 %345, -33
  %351 = inttoptr i64 %350 to ptr
  store ptr %351, ptr %349, align 8, !tbaa !107
  br label %358

352:                                              ; preds = %340
  %353 = getelementptr inbounds %struct.edge_def, ptr %338, i64 0, i32 7
  %354 = load i32, ptr %353, align 8, !tbaa !150
  %355 = and i32 %354, 10
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  call void @remove_edge(ptr noundef nonnull %338) #12
  br label %325, !llvm.loop !151

358:                                              ; preds = %352, %348
  %359 = load ptr, ptr %322, align 8, !tbaa !59
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361, !prof !149

361:                                              ; preds = %358
  %362 = load i32, ptr %359, align 8, !tbaa !146
  br label %363

363:                                              ; preds = %361, %358
  %364 = phi i32 [ %362, %361 ], [ 0, %358 ]
  %365 = icmp ult i32 %324, %364
  br i1 %365, label %367, label %366, !prof !152

366:                                              ; preds = %363
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %367

367:                                              ; preds = %366, %363
  %368 = add i32 %324, 1
  br label %323, !llvm.loop !151

369:                                              ; preds = %337, %48, %216, %219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %370

370:                                              ; preds = %41, %369
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %372 = load ptr, ptr %371, align 8, !tbaa !101
  %373 = load ptr, ptr @cfun, align 8, !tbaa !59
  %374 = getelementptr inbounds %struct.function, ptr %373, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !96
  %376 = getelementptr inbounds %struct.control_flow_graph, ptr %375, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !100
  %378 = icmp eq ptr %372, %377
  br i1 %378, label %379, label %41, !prof !153, !llvm.loop !154

379:                                              ; preds = %370, %13
  %380 = phi ptr [ %18, %13 ], [ %375, %370 ]
  %381 = phi ptr [ %20, %13 ], [ %377, %370 ]
  %382 = load ptr, ptr %380, align 8, !tbaa !98
  br label %383

383:                                              ; preds = %388, %379
  %384 = phi ptr [ %382, %379 ], [ %386, %388 ]
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %384, i64 0, i32 6
  %386 = load ptr, ptr %385, align 8, !tbaa !101
  %387 = icmp eq ptr %386, %381
  br i1 %387, label %394, label %388, !prof !155

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.basic_block_def, ptr %386, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !107
  %391 = ptrtoint ptr %390 to i64
  %392 = and i64 %391, 4294967295
  %393 = icmp eq i64 %392, 1
  br i1 %393, label %383, label %394, !prof !156, !llvm.loop !157

394:                                              ; preds = %388, %383
  %395 = icmp eq ptr %386, %381
  br i1 %395, label %408, label %396, !prof !103

396:                                              ; preds = %394, %396
  %397 = phi ptr [ %406, %396 ], [ %386, %394 ]
  %398 = phi ptr [ %404, %396 ], [ %386, %394 ]
  %399 = getelementptr inbounds %struct.basic_block_def, ptr %397, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !107
  %401 = ptrtoint ptr %400 to i64
  %402 = and i64 %401, 4294967295
  %403 = icmp eq i64 %402, 1
  %404 = select i1 %403, ptr %398, ptr %397, !prof !158
  %405 = getelementptr inbounds %struct.basic_block_def, ptr %397, i64 0, i32 6
  %406 = load ptr, ptr %405, align 8, !tbaa !101
  %407 = icmp eq ptr %406, %381
  br i1 %407, label %408, label %396, !prof !159, !llvm.loop !160

408:                                              ; preds = %396, %394
  %409 = phi ptr [ %386, %394 ], [ %404, %396 ]
  %410 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !161
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %416, !prof !170

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.control_flow_graph, ptr %380, i64 0, i32 10
  %414 = load i32, ptr %413, align 4, !tbaa !171
  %415 = icmp sgt i32 %414, 100
  br i1 %415, label %416, label %420, !prof !172

416:                                              ; preds = %412, %408
  %417 = getelementptr inbounds %struct.control_flow_graph, ptr %380, i64 0, i32 5
  %418 = load i32, ptr %417, align 8, !tbaa !173
  %419 = call ptr @sbitmap_alloc(i32 noundef %418) #12
  br label %420

420:                                              ; preds = %416, %412
  %421 = phi ptr [ %419, %416 ], [ null, %412 ]
  %422 = load ptr, ptr @cfun, align 8, !tbaa !59
  %423 = getelementptr inbounds %struct.function, ptr %422, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !96
  %425 = load ptr, ptr %424, align 8, !tbaa !98
  %426 = getelementptr inbounds %struct.basic_block_def, ptr %425, i64 0, i32 6
  %427 = load ptr, ptr %426, align 8, !tbaa !101
  %428 = icmp eq ptr %427, %386
  br i1 %428, label %429, label %431, !prof !174

429:                                              ; preds = %420
  %430 = call ptr @make_edge(ptr noundef %425, ptr noundef %386, i32 noundef 1) #12
  br label %431

431:                                              ; preds = %429, %420
  %432 = getelementptr inbounds %struct.basic_block_def, ptr %409, i64 0, i32 6
  %433 = load ptr, ptr %432, align 8, !tbaa !101
  %434 = icmp eq ptr %386, %433
  br i1 %434, label %796, label %435, !prof !103

435:                                              ; preds = %431
  %436 = icmp eq ptr %421, null
  br label %437

437:                                              ; preds = %435, %791
  %438 = phi ptr [ %386, %435 ], [ %793, %791 ]
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 2
  %440 = load ptr, ptr %439, align 8, !tbaa !107
  %441 = ptrtoint ptr %440 to i64
  %442 = and i64 %441, 4294967295
  %443 = icmp eq i64 %442, 1
  br i1 %443, label %791, label %444, !prof !175

444:                                              ; preds = %437
  br i1 %436, label %510, label %445, !prof !176

445:                                              ; preds = %444
  call void @sbitmap_zero(ptr noundef nonnull %421) #12
  %446 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 1
  br label %447

447:                                              ; preds = %508, %445
  %448 = phi i32 [ 0, %445 ], [ %509, %508 ]
  %449 = load ptr, ptr %446, align 8, !tbaa !59
  %450 = icmp eq ptr %449, null
  br i1 %450, label %453, label %451, !prof !177

451:                                              ; preds = %447
  %452 = load i32, ptr %449, align 8, !tbaa !146
  br label %453

453:                                              ; preds = %451, %447
  %454 = phi i32 [ %452, %451 ], [ 0, %447 ]
  %455 = icmp eq i32 %454, %448
  br i1 %455, label %460, label %456, !prof !178

456:                                              ; preds = %453
  %457 = zext i32 %448 to i64
  %458 = getelementptr inbounds %struct.VEC_edge_base, ptr %449, i64 0, i32 2, i64 %457
  %459 = load ptr, ptr %458, align 8, !tbaa !59
  br label %460

460:                                              ; preds = %456, %453
  %461 = phi ptr [ %459, %456 ], [ null, %453 ]
  br i1 %455, label %510, label %462, !prof !178

462:                                              ; preds = %460
  %463 = getelementptr inbounds %struct.edge_def, ptr %461, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !120
  %465 = load ptr, ptr @cfun, align 8, !tbaa !59
  %466 = getelementptr inbounds %struct.function, ptr %465, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !96
  %468 = getelementptr inbounds %struct.control_flow_graph, ptr %467, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !100
  %470 = icmp eq ptr %464, %469
  br i1 %470, label %499, label %471, !prof !179

471:                                              ; preds = %462
  %472 = getelementptr inbounds %struct.basic_block_def, ptr %464, i64 0, i32 9
  %473 = load i32, ptr %472, align 8, !tbaa !104
  %474 = load ptr, ptr %421, align 8, !tbaa !180
  %475 = icmp eq ptr %474, null
  br i1 %475, label %490, label %476, !prof !182

476:                                              ; preds = %471
  %477 = lshr i32 %473, 6
  %478 = zext nneg i32 %477 to i64
  %479 = getelementptr inbounds %struct.simple_bitmap_def, ptr %421, i64 0, i32 3, i64 %478
  %480 = load i64, ptr %479, align 8, !tbaa !105
  %481 = and i32 %473, 63
  %482 = zext nneg i32 %481 to i64
  %483 = shl nuw i64 1, %482
  %484 = and i64 %480, %483
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %490

486:                                              ; preds = %476
  %487 = getelementptr inbounds i8, ptr %474, i64 %478
  %488 = load i8, ptr %487, align 1, !tbaa !70
  %489 = add i8 %488, 1
  store i8 %489, ptr %487, align 1, !tbaa !70
  br label %490

490:                                              ; preds = %486, %476, %471
  %491 = and i32 %473, 63
  %492 = zext nneg i32 %491 to i64
  %493 = shl nuw i64 1, %492
  %494 = lshr i32 %473, 6
  %495 = zext nneg i32 %494 to i64
  %496 = getelementptr inbounds %struct.simple_bitmap_def, ptr %421, i64 0, i32 3, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !105
  %498 = or i64 %497, %493
  store i64 %498, ptr %496, align 8, !tbaa !105
  br label %499

499:                                              ; preds = %490, %462
  %500 = load ptr, ptr %446, align 8, !tbaa !59
  %501 = icmp eq ptr %500, null
  br i1 %501, label %504, label %502, !prof !183

502:                                              ; preds = %499
  %503 = load i32, ptr %500, align 8, !tbaa !146
  br label %504

504:                                              ; preds = %502, %499
  %505 = phi i32 [ %503, %502 ], [ 0, %499 ]
  %506 = icmp ult i32 %448, %505
  br i1 %506, label %508, label %507, !prof !184

507:                                              ; preds = %504
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %508

508:                                              ; preds = %507, %504
  %509 = add i32 %448, 1
  br label %447, !llvm.loop !185

510:                                              ; preds = %460, %444
  %511 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 7
  %512 = load ptr, ptr %511, align 8, !tbaa !70
  %513 = load ptr, ptr %512, align 8, !tbaa !111
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 12
  br i1 %516, label %517, label %530, !prof !186

517:                                              ; preds = %510
  %518 = lshr i32 %514, 23
  %519 = and i32 %518, 2
  %520 = lshr i32 %514, 25
  %521 = and i32 %520, 1
  %522 = or disjoint i32 %519, %521
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %530, label %524, !prof !187

524:                                              ; preds = %517
  %525 = load ptr, ptr @cfun, align 8, !tbaa !59
  %526 = getelementptr inbounds %struct.function, ptr %525, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !96
  %528 = load ptr, ptr %527, align 8, !tbaa !98
  %529 = call ptr @cached_make_edge(ptr noundef null, ptr noundef %528, ptr noundef %438, i32 noundef 0) #12
  br label %530

530:                                              ; preds = %524, %517, %510
  %531 = load ptr, ptr %511, align 8, !tbaa !70
  %532 = getelementptr inbounds %struct.rtl_bb_info, ptr %531, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !113
  %534 = load i32, ptr %533, align 8
  %535 = and i32 %534, 65535
  %536 = icmp eq i32 %535, 9
  br i1 %536, label %537, label %681, !prof !188

537:                                              ; preds = %530
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %538 = call ptr @find_reg_note(ptr noundef nonnull %533, i32 noundef 28, ptr noundef null) #12
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %680, !prof !189

540:                                              ; preds = %537
  %541 = call zeroext i8 @tablejump_p(ptr noundef nonnull %533, ptr noundef null, ptr noundef nonnull %2) #12
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %615, label %543, !prof !190

543:                                              ; preds = %540
  %544 = load ptr, ptr %2, align 8, !tbaa !59
  %545 = getelementptr inbounds %struct.rtx_def, ptr %544, i64 1
  %546 = load ptr, ptr %545, align 8, !tbaa !70
  %547 = load i32, ptr %546, align 8
  %548 = and i32 %547, 65535
  %549 = icmp eq i32 %548, 20
  %550 = getelementptr inbounds %struct.rtx_def, ptr %546, i64 0, i32 1
  %551 = getelementptr inbounds %struct.rtx_def, ptr %546, i64 0, i32 1, i32 0, i32 0, i64 1
  %552 = select i1 %549, ptr %550, ptr %551, !prof !136
  %553 = load ptr, ptr %552, align 8, !tbaa !70
  %554 = load i32, ptr %553, align 8, !tbaa !137
  %555 = icmp sgt i32 %554, 0
  br i1 %555, label %556, label %579, !prof !139

556:                                              ; preds = %543
  %557 = zext nneg i32 %554 to i64
  br label %558

558:                                              ; preds = %556, %577
  %559 = phi i64 [ %557, %556 ], [ %560, %577 ]
  %560 = add nsw i64 %559, -1
  %561 = getelementptr inbounds %struct.rtvec_def, ptr %553, i64 0, i32 1, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !59
  %563 = getelementptr inbounds %struct.rtx_def, ptr %562, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !70
  %565 = load i32, ptr %564, align 8
  %566 = and i32 %565, 65535
  %567 = icmp eq i32 %566, 12
  br i1 %567, label %569, label %568, !prof !93

568:                                              ; preds = %558
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #12
  br label %569

569:                                              ; preds = %568, %558
  %570 = getelementptr inbounds %struct.rtx_def, ptr %564, i64 0, i32 1
  %571 = load i32, ptr %570, align 8, !tbaa !70
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %577, label %573, !prof !94

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.rtx_def, ptr %564, i64 0, i32 1, i32 0, i32 1
  %575 = load ptr, ptr %574, align 8, !tbaa !70
  %576 = call ptr @cached_make_edge(ptr noundef %421, ptr noundef %438, ptr noundef %575, i32 noundef 0) #12
  br label %577

577:                                              ; preds = %569, %573
  %578 = icmp sgt i64 %559, 1
  br i1 %578, label %558, label %579, !prof !142, !llvm.loop !191

579:                                              ; preds = %577, %543
  %580 = load i32, ptr %533, align 8
  %581 = and i32 %580, 65535
  %582 = add nsw i32 %581, -7
  %583 = icmp ult i32 %582, 4
  br i1 %583, label %584, label %592, !prof !136

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 1
  %586 = load ptr, ptr %585, align 8, !tbaa !70
  %587 = load i32, ptr %586, align 8
  %588 = and i32 %587, 65535
  %589 = icmp eq i32 %588, 23
  br i1 %589, label %592, label %590, !prof !144

590:                                              ; preds = %584
  %591 = call ptr @single_set_2(ptr noundef nonnull %533, ptr noundef nonnull %586) #12
  br label %592

592:                                              ; preds = %590, %584, %579
  %593 = phi ptr [ %591, %590 ], [ null, %579 ], [ %586, %584 ]
  store ptr %593, ptr %2, align 8, !tbaa !59
  %594 = icmp eq ptr %593, null
  br i1 %594, label %680, label %595, !prof !144

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !70
  %598 = load ptr, ptr @global_rtl, align 16, !tbaa !59
  %599 = icmp eq ptr %597, %598
  br i1 %599, label %600, label %680, !prof !136

600:                                              ; preds = %595
  %601 = getelementptr inbounds %struct.rtx_def, ptr %593, i64 0, i32 1, i32 0, i32 0, i64 1
  %602 = load ptr, ptr %601, align 8, !tbaa !70
  %603 = load i32, ptr %602, align 8
  %604 = and i32 %603, 65535
  %605 = icmp eq i32 %604, 47
  br i1 %605, label %606, label %680, !prof !144

606:                                              ; preds = %600
  %607 = getelementptr inbounds %struct.rtx_def, ptr %602, i64 0, i32 1, i32 0, i32 0, i64 2
  %608 = load ptr, ptr %607, align 8, !tbaa !70
  %609 = load i32, ptr %608, align 8
  %610 = and i32 %609, 65535
  %611 = icmp eq i32 %610, 44
  br i1 %611, label %612, label %680

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.rtx_def, ptr %608, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !70
  call fastcc void @make_label_edge(ptr noundef %421, ptr noundef %438, ptr noundef %614, i32 noundef 0)
  br label %680

615:                                              ; preds = %540
  %616 = call i32 @computed_jump_p(ptr noundef nonnull %533) #12
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %628, label %618, !prof !192

618:                                              ; preds = %615
  %619 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !70
  %620 = icmp eq ptr %619, null
  br i1 %620, label %680, label %621

621:                                              ; preds = %618, %621
  %622 = phi ptr [ %626, %621 ], [ %619, %618 ]
  %623 = getelementptr inbounds %struct.rtx_def, ptr %622, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !70
  call fastcc void @make_label_edge(ptr noundef %421, ptr noundef %438, ptr noundef %624, i32 noundef 2)
  %625 = getelementptr inbounds %struct.rtx_def, ptr %622, i64 0, i32 1, i32 0, i32 0, i64 1
  %626 = load ptr, ptr %625, align 8, !tbaa !70
  %627 = icmp eq ptr %626, null
  br i1 %627, label %680, label %621, !llvm.loop !193

628:                                              ; preds = %615
  %629 = call i32 @returnjump_p(ptr noundef nonnull %533) #12
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %638, label %631, !prof !194

631:                                              ; preds = %628
  %632 = load ptr, ptr @cfun, align 8, !tbaa !59
  %633 = getelementptr inbounds %struct.function, ptr %632, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !96
  %635 = getelementptr inbounds %struct.control_flow_graph, ptr %634, i64 0, i32 1
  %636 = load ptr, ptr %635, align 8, !tbaa !100
  %637 = call ptr @cached_make_edge(ptr noundef %421, ptr noundef %438, ptr noundef %636, i32 noundef 0) #12
  br label %680

638:                                              ; preds = %628
  %639 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 1
  %640 = load ptr, ptr %639, align 8, !tbaa !70
  %641 = call ptr @extract_asm_operands(ptr noundef %640) #12
  store ptr %641, ptr %2, align 8, !tbaa !59
  %642 = icmp eq ptr %641, null
  br i1 %642, label %661, label %643, !prof !195

643:                                              ; preds = %638
  %644 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 1
  %645 = load ptr, ptr %644, align 8, !tbaa !70
  %646 = load i32, ptr %645, align 8, !tbaa !137
  %647 = icmp sgt i32 %646, 0
  br i1 %647, label %648, label %680

648:                                              ; preds = %643
  %649 = zext nneg i32 %646 to i64
  br label %650

650:                                              ; preds = %648, %650
  %651 = phi i64 [ 0, %648 ], [ %659, %650 ]
  %652 = load ptr, ptr %2, align 8, !tbaa !59
  %653 = getelementptr inbounds %struct.rtx_def, ptr %652, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !70
  %655 = getelementptr inbounds %struct.rtvec_def, ptr %654, i64 0, i32 1, i64 %651
  %656 = load ptr, ptr %655, align 8, !tbaa !59
  %657 = getelementptr inbounds %struct.rtx_def, ptr %656, i64 0, i32 1
  %658 = load ptr, ptr %657, align 8, !tbaa !70
  call fastcc void @make_label_edge(ptr noundef %421, ptr noundef %438, ptr noundef %658, i32 noundef 0)
  %659 = add nuw nsw i64 %651, 1
  %660 = icmp eq i64 %659, %649
  br i1 %660, label %680, label %650, !llvm.loop !196

661:                                              ; preds = %638
  %662 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 1, i32 1, i32 0, i32 0, i64 2
  %663 = load ptr, ptr %662, align 8, !tbaa !70
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %666, !prof !197

665:                                              ; preds = %661
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #12
  br label %666

666:                                              ; preds = %665, %661
  %667 = load ptr, ptr %662, align 8, !tbaa !70
  %668 = load i32, ptr %667, align 8
  %669 = and i32 %668, 65535
  %670 = icmp eq i32 %669, 12
  br i1 %670, label %672, label %671, !prof !93

671:                                              ; preds = %666
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #12
  br label %672

672:                                              ; preds = %671, %666
  %673 = getelementptr inbounds %struct.rtx_def, ptr %667, i64 0, i32 1
  %674 = load i32, ptr %673, align 8, !tbaa !70
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %680, label %676, !prof !94

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.rtx_def, ptr %667, i64 0, i32 1, i32 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !70
  %679 = call ptr @cached_make_edge(ptr noundef %421, ptr noundef %438, ptr noundef %678, i32 noundef 0) #12
  br label %680

680:                                              ; preds = %621, %650, %618, %643, %676, %672, %631, %612, %606, %600, %595, %592, %537
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %681

681:                                              ; preds = %680, %530
  %682 = icmp eq i32 %535, 10
  br i1 %682, label %683, label %694, !prof !198

683:                                              ; preds = %681
  %684 = load i32, ptr %533, align 8
  %685 = and i32 %684, 16777216
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %694, label %687, !prof !199

687:                                              ; preds = %683
  %688 = load ptr, ptr @cfun, align 8, !tbaa !59
  %689 = getelementptr inbounds %struct.function, ptr %688, i64 0, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !96
  %691 = getelementptr inbounds %struct.control_flow_graph, ptr %690, i64 0, i32 1
  %692 = load ptr, ptr %691, align 8, !tbaa !100
  %693 = call ptr @cached_make_edge(ptr noundef %421, ptr noundef %438, ptr noundef %692, i32 noundef 258) #12
  br label %736

694:                                              ; preds = %683, %681
  %695 = load i32, ptr @flag_non_call_exceptions, align 4
  %696 = icmp ne i32 %695, 0
  %697 = select i1 %682, i1 true, i1 %696, !prof !200
  br i1 %697, label %698, label %736, !prof !200

698:                                              ; preds = %694
  %699 = call ptr @get_eh_landing_pad_from_rtx(ptr noundef nonnull %533) #12
  %700 = icmp eq ptr %699, null
  br i1 %700, label %719, label %701, !prof !88

701:                                              ; preds = %698
  %702 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %699, i64 0, i32 3
  %703 = load ptr, ptr %702, align 8, !tbaa !89
  %704 = icmp eq ptr %703, null
  br i1 %704, label %705, label %713

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %699, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !91
  %708 = icmp eq ptr %707, null
  br i1 %708, label %709, label %710

709:                                              ; preds = %705
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #12
  br label %710

710:                                              ; preds = %709, %705
  %711 = load ptr, ptr %706, align 8, !tbaa !91
  %712 = call ptr @label_rtx(ptr noundef %711) #12
  br label %713

713:                                              ; preds = %710, %701
  %714 = phi ptr [ %712, %710 ], [ %703, %701 ]
  %715 = load i32, ptr %533, align 8
  %716 = and i32 %715, 65535
  %717 = icmp eq i32 %716, 10
  %718 = select i1 %717, i32 14, i32 10
  call fastcc void @make_label_edge(ptr noundef %421, ptr noundef %438, ptr noundef %714, i32 noundef %718)
  br label %719

719:                                              ; preds = %698, %713
  %720 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %721 = icmp ne ptr %720, null
  %722 = select i1 %682, i1 %721, i1 false, !prof !88
  br i1 %722, label %723, label %736, !prof !201

723:                                              ; preds = %719
  %724 = call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %533) #12
  %725 = icmp eq i8 %724, 0
  %726 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %727 = icmp eq ptr %726, null
  %728 = select i1 %725, i1 true, i1 %727
  br i1 %728, label %736, label %729

729:                                              ; preds = %723, %729
  %730 = phi ptr [ %734, %729 ], [ %726, %723 ]
  %731 = getelementptr inbounds %struct.rtx_def, ptr %730, i64 0, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !70
  call fastcc void @make_label_edge(ptr noundef %421, ptr noundef %438, ptr noundef %732, i32 noundef 6)
  %733 = getelementptr inbounds %struct.rtx_def, ptr %730, i64 0, i32 1, i32 0, i32 0, i64 1
  %734 = load ptr, ptr %733, align 8, !tbaa !70
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %729, !llvm.loop !202

736:                                              ; preds = %729, %723, %719, %694, %687
  %737 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 0, i32 1, i32 0, i32 0, i64 2
  %738 = load ptr, ptr %737, align 8, !tbaa !70
  %739 = load ptr, ptr @cfun, align 8, !tbaa !59
  %740 = getelementptr inbounds %struct.function, ptr %739, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !96
  %742 = getelementptr inbounds %struct.control_flow_graph, ptr %741, i64 0, i32 1
  %743 = load ptr, ptr %742, align 8, !tbaa !100
  %744 = call ptr @find_edge(ptr noundef %438, ptr noundef %743) #12
  %745 = icmp eq ptr %744, null
  br i1 %745, label %752, label %746, !prof !203

746:                                              ; preds = %736
  %747 = getelementptr inbounds %struct.edge_def, ptr %744, i64 0, i32 7
  %748 = load i32, ptr %747, align 8, !tbaa !150
  %749 = and i32 %748, 1
  %750 = icmp eq i32 %749, 0
  %751 = select i1 %750, ptr %738, ptr null, !prof !204
  br label %752

752:                                              ; preds = %746, %736
  %753 = phi ptr [ %738, %736 ], [ %751, %746 ]
  %754 = icmp eq ptr %753, null
  br i1 %754, label %768, label %755, !prof !205

755:                                              ; preds = %752, %764
  %756 = phi ptr [ %766, %764 ], [ %753, %752 ]
  %757 = load i32, ptr %756, align 8
  %758 = and i32 %757, 65535
  %759 = icmp eq i32 %758, 13
  br i1 %759, label %760, label %774, !prof !206

760:                                              ; preds = %755
  %761 = getelementptr inbounds %struct.rtx_def, ptr %756, i64 1
  %762 = load i32, ptr %761, align 8, !tbaa !70
  %763 = icmp eq i32 %762, 10
  br i1 %763, label %774, label %764, !prof !207

764:                                              ; preds = %760
  %765 = getelementptr inbounds %struct.rtx_def, ptr %756, i64 0, i32 1, i32 0, i32 0, i64 2
  %766 = load ptr, ptr %765, align 8, !tbaa !70
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %755, !prof !208, !llvm.loop !209

768:                                              ; preds = %764, %752
  %769 = load ptr, ptr @cfun, align 8, !tbaa !59
  %770 = getelementptr inbounds %struct.function, ptr %769, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !96
  %772 = getelementptr inbounds %struct.control_flow_graph, ptr %771, i64 0, i32 1
  %773 = load ptr, ptr %772, align 8, !tbaa !100
  br label %788

774:                                              ; preds = %760, %755
  %775 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 6
  %776 = load ptr, ptr %775, align 8, !tbaa !101
  %777 = load ptr, ptr @cfun, align 8, !tbaa !59
  %778 = getelementptr inbounds %struct.function, ptr %777, i64 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !96
  %780 = getelementptr inbounds %struct.control_flow_graph, ptr %779, i64 0, i32 1
  %781 = load ptr, ptr %780, align 8, !tbaa !100
  %782 = icmp eq ptr %776, %781
  br i1 %782, label %791, label %783, !prof !210

783:                                              ; preds = %774
  %784 = getelementptr inbounds %struct.basic_block_def, ptr %776, i64 0, i32 7
  %785 = load ptr, ptr %784, align 8, !tbaa !70
  %786 = load ptr, ptr %785, align 8, !tbaa !111
  %787 = icmp eq ptr %756, %786
  br i1 %787, label %788, label %791, !prof !211

788:                                              ; preds = %783, %768
  %789 = phi ptr [ %773, %768 ], [ %776, %783 ]
  %790 = call ptr @cached_make_edge(ptr noundef %421, ptr noundef %438, ptr noundef %789, i32 noundef 1) #12
  br label %791

791:                                              ; preds = %788, %783, %774, %437
  %792 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 6
  %793 = load ptr, ptr %792, align 8, !tbaa !101
  %794 = load ptr, ptr %432, align 8, !tbaa !101
  %795 = icmp eq ptr %793, %794
  br i1 %795, label %796, label %437, !prof !212, !llvm.loop !213

796:                                              ; preds = %791, %431
  %797 = getelementptr inbounds %struct.basic_block_def, ptr %409, i64 0, i32 6
  %798 = icmp eq ptr %421, null
  br i1 %798, label %800, label %799, !prof !214

799:                                              ; preds = %796
  call void @free(ptr noundef %421)
  br label %800

800:                                              ; preds = %796, %799
  %801 = load ptr, ptr @cfun, align 8, !tbaa !59
  %802 = getelementptr inbounds %struct.function, ptr %801, i64 0, i32 1
  %803 = load ptr, ptr %802, align 8, !tbaa !96
  %804 = getelementptr inbounds %struct.control_flow_graph, ptr %803, i64 0, i32 7
  %805 = load i32, ptr %804, align 8, !tbaa !215
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %968, label %807, !prof !216

807:                                              ; preds = %800
  %808 = load ptr, ptr %797, align 8, !tbaa !101
  %809 = icmp eq ptr %386, %808
  br i1 %809, label %968, label %810, !prof !103

810:                                              ; preds = %807, %963
  %811 = phi ptr [ %965, %963 ], [ %386, %807 ]
  %812 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 2
  %813 = load ptr, ptr %812, align 8, !tbaa !107
  %814 = ptrtoint ptr %813 to i64
  %815 = trunc i64 %814 to i32
  switch i32 %815, label %861 [
    i32 1, label %963
    i32 0, label %816
  ], !prof !217

816:                                              ; preds = %810
  %817 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 8
  store i64 0, ptr %817, align 8, !tbaa !218
  %818 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 11
  store i32 0, ptr %818, align 8, !tbaa !219
  %819 = icmp eq ptr %811, null
  br label %820

820:                                              ; preds = %859, %816
  %821 = phi i32 [ 0, %816 ], [ %860, %859 ]
  br i1 %819, label %822, label %823, !prof !220

822:                                              ; preds = %820
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #12
  br label %823

823:                                              ; preds = %822, %820
  %824 = load ptr, ptr %811, align 8, !tbaa !59
  %825 = icmp eq ptr %824, null
  br i1 %825, label %828, label %826, !prof !220

826:                                              ; preds = %823
  %827 = load i32, ptr %824, align 8, !tbaa !146
  br label %828

828:                                              ; preds = %826, %823
  %829 = phi i32 [ %827, %826 ], [ 0, %823 ]
  %830 = icmp eq i32 %829, %821
  br i1 %830, label %835, label %831, !prof !221

831:                                              ; preds = %828
  %832 = zext i32 %821 to i64
  %833 = getelementptr inbounds %struct.VEC_edge_base, ptr %824, i64 0, i32 2, i64 %832
  %834 = load ptr, ptr %833, align 8, !tbaa !59
  br label %835

835:                                              ; preds = %828, %831
  %836 = phi ptr [ %834, %831 ], [ null, %828 ]
  br i1 %830, label %861, label %837, !prof !221

837:                                              ; preds = %835
  %838 = getelementptr inbounds %struct.edge_def, ptr %836, i64 0, i32 9
  %839 = load i64, ptr %838, align 8, !tbaa !222
  %840 = load i64, ptr %817, align 8, !tbaa !218
  %841 = add nsw i64 %840, %839
  store i64 %841, ptr %817, align 8, !tbaa !218
  %842 = load ptr, ptr %836, align 8, !tbaa !223
  %843 = getelementptr inbounds %struct.basic_block_def, ptr %842, i64 0, i32 11
  %844 = load i32, ptr %843, align 8, !tbaa !219
  %845 = getelementptr inbounds %struct.edge_def, ptr %836, i64 0, i32 8
  %846 = load i32, ptr %845, align 4, !tbaa !224
  %847 = mul nsw i32 %846, %844
  %848 = add nsw i32 %847, 5000
  %849 = sdiv i32 %848, 10000
  %850 = load i32, ptr %818, align 8, !tbaa !219
  %851 = add nsw i32 %849, %850
  store i32 %851, ptr %818, align 8, !tbaa !219
  %852 = icmp eq ptr %824, null
  br i1 %852, label %855, label %853, !prof !225

853:                                              ; preds = %837
  %854 = load i32, ptr %824, align 8, !tbaa !146
  br label %855

855:                                              ; preds = %853, %837
  %856 = phi i32 [ %854, %853 ], [ 0, %837 ]
  %857 = icmp ult i32 %821, %856
  br i1 %857, label %859, label %858, !prof !226

858:                                              ; preds = %855
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %859

859:                                              ; preds = %855, %858
  %860 = add i32 %821, 1
  br label %820, !llvm.loop !227

861:                                              ; preds = %835, %810
  %862 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !228
  %864 = icmp eq ptr %863, null
  br i1 %864, label %910, label %865, !prof !229

865:                                              ; preds = %861
  %866 = load i32, ptr %863, align 8, !tbaa !146
  %867 = icmp eq i32 %866, 2
  br i1 %867, label %868, label %910, !prof !230

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 7
  %870 = load ptr, ptr %869, align 8, !tbaa !70
  %871 = getelementptr inbounds %struct.rtl_bb_info, ptr %870, i64 0, i32 1
  %872 = load ptr, ptr %871, align 8, !tbaa !113
  %873 = call ptr @find_reg_note(ptr noundef %872, i32 noundef 13, ptr noundef null) #12
  %874 = icmp eq ptr %873, null
  br i1 %874, label %910, label %875, !prof !231

875:                                              ; preds = %868
  %876 = getelementptr inbounds %struct.rtx_def, ptr %873, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !70
  %878 = getelementptr inbounds %struct.rtx_def, ptr %877, i64 0, i32 1
  %879 = load i64, ptr %878, align 8, !tbaa !70
  %880 = trunc i64 %879 to i32
  %881 = load ptr, ptr %862, align 8, !tbaa !228
  %882 = getelementptr inbounds %struct.VEC_edge_base, ptr %881, i64 0, i32 2, i64 0
  %883 = load ptr, ptr %882, align 8, !tbaa !59
  %884 = getelementptr inbounds %struct.edge_def, ptr %883, i64 0, i32 7
  %885 = load i32, ptr %884, align 8, !tbaa !150
  %886 = and i32 %885, 1
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %891, label %888, !prof !232

888:                                              ; preds = %875
  %889 = getelementptr inbounds %struct.VEC_edge_base, ptr %881, i64 0, i32 2, i64 1
  %890 = load ptr, ptr %889, align 8, !tbaa !59
  br label %891

891:                                              ; preds = %888, %875
  %892 = phi ptr [ %890, %888 ], [ %883, %875 ]
  %893 = getelementptr inbounds %struct.edge_def, ptr %892, i64 0, i32 8
  store i32 %880, ptr %893, align 4, !tbaa !224
  %894 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 8
  %895 = load i64, ptr %894, align 8, !tbaa !218
  %896 = shl i64 %879, 32
  %897 = ashr exact i64 %896, 32
  %898 = mul nsw i64 %895, %897
  %899 = add nsw i64 %898, 5000
  %900 = sdiv i64 %899, 10000
  %901 = getelementptr inbounds %struct.edge_def, ptr %892, i64 0, i32 9
  store i64 %900, ptr %901, align 8, !tbaa !222
  br i1 %887, label %902, label %905, !prof !232

902:                                              ; preds = %891
  %903 = getelementptr inbounds %struct.VEC_edge_base, ptr %881, i64 0, i32 2, i64 1
  %904 = load ptr, ptr %903, align 8, !tbaa !59
  br label %905

905:                                              ; preds = %902, %891
  %906 = phi ptr [ %904, %902 ], [ %883, %891 ]
  %907 = sub nsw i32 10000, %880
  %908 = getelementptr inbounds %struct.edge_def, ptr %906, i64 0, i32 8
  store i32 %907, ptr %908, align 4, !tbaa !224
  %909 = sub nsw i64 %895, %900
  br label %959

910:                                              ; preds = %861, %868, %865
  %911 = load ptr, ptr %862, align 8, !tbaa !228
  %912 = icmp eq ptr %911, null
  br i1 %912, label %923, label %913, !prof !233

913:                                              ; preds = %910
  %914 = load i32, ptr %911, align 8, !tbaa !146
  %915 = icmp eq i32 %914, 1
  br i1 %915, label %916, label %923, !prof !234

916:                                              ; preds = %913
  %917 = load ptr, ptr %862, align 8, !tbaa !228
  %918 = getelementptr inbounds %struct.VEC_edge_base, ptr %917, i64 0, i32 2, i64 0
  %919 = load ptr, ptr %918, align 8, !tbaa !59
  %920 = getelementptr inbounds %struct.edge_def, ptr %919, i64 0, i32 8
  store i32 10000, ptr %920, align 4, !tbaa !224
  %921 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 8
  %922 = load i64, ptr %921, align 8, !tbaa !218
  br label %959

923:                                              ; preds = %910, %913
  call void @guess_outgoing_edge_probabilities(ptr noundef %811) #12
  %924 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 8
  %925 = load i64, ptr %924, align 8, !tbaa !218
  %926 = icmp eq i64 %925, 0
  br i1 %926, label %963, label %927, !prof !235

927:                                              ; preds = %923, %957
  %928 = phi i32 [ %958, %957 ], [ 0, %923 ]
  %929 = load ptr, ptr %862, align 8, !tbaa !59
  %930 = icmp eq ptr %929, null
  br i1 %930, label %933, label %931

931:                                              ; preds = %927
  %932 = load i32, ptr %929, align 8, !tbaa !146
  br label %933

933:                                              ; preds = %931, %927
  %934 = phi i32 [ %932, %931 ], [ 0, %927 ]
  %935 = icmp eq i32 %934, %928
  br i1 %935, label %940, label %936

936:                                              ; preds = %933
  %937 = zext i32 %928 to i64
  %938 = getelementptr inbounds %struct.VEC_edge_base, ptr %929, i64 0, i32 2, i64 %937
  %939 = load ptr, ptr %938, align 8, !tbaa !59
  br label %940

940:                                              ; preds = %936, %933
  %941 = phi ptr [ %939, %936 ], [ null, %933 ]
  br i1 %935, label %963, label %942

942:                                              ; preds = %940
  %943 = load i64, ptr %924, align 8, !tbaa !218
  %944 = getelementptr inbounds %struct.edge_def, ptr %941, i64 0, i32 8
  %945 = load i32, ptr %944, align 4, !tbaa !224
  %946 = sext i32 %945 to i64
  %947 = mul nsw i64 %943, %946
  %948 = add nsw i64 %947, 5000
  %949 = sdiv i64 %948, 10000
  %950 = getelementptr inbounds %struct.edge_def, ptr %941, i64 0, i32 9
  store i64 %949, ptr %950, align 8, !tbaa !222
  br i1 %930, label %953, label %951

951:                                              ; preds = %942
  %952 = load i32, ptr %929, align 8, !tbaa !146
  br label %953

953:                                              ; preds = %951, %942
  %954 = phi i32 [ %952, %951 ], [ 0, %942 ]
  %955 = icmp ult i32 %928, %954
  br i1 %955, label %957, label %956

956:                                              ; preds = %953
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %957

957:                                              ; preds = %956, %953
  %958 = add i32 %928, 1
  br label %927, !llvm.loop !236

959:                                              ; preds = %905, %916
  %960 = phi ptr [ %919, %916 ], [ %906, %905 ]
  %961 = phi i64 [ %922, %916 ], [ %909, %905 ]
  %962 = getelementptr inbounds %struct.edge_def, ptr %960, i64 0, i32 9
  store i64 %961, ptr %962, align 8, !tbaa !222
  br label %963

963:                                              ; preds = %940, %959, %923, %810
  %964 = getelementptr inbounds %struct.basic_block_def, ptr %811, i64 0, i32 6
  %965 = load ptr, ptr %964, align 8, !tbaa !101
  %966 = load ptr, ptr %797, align 8, !tbaa !101
  %967 = icmp eq ptr %965, %966
  br i1 %967, label %968, label %810, !prof !212, !llvm.loop !237

968:                                              ; preds = %963, %807, %800
  %969 = load ptr, ptr @cfun, align 8, !tbaa !59
  %970 = getelementptr inbounds %struct.function, ptr %969, i64 0, i32 1
  %971 = load ptr, ptr %970, align 8, !tbaa !96
  %972 = load ptr, ptr %971, align 8, !tbaa !98
  %973 = getelementptr inbounds %struct.control_flow_graph, ptr %971, i64 0, i32 1
  %974 = load ptr, ptr %973, align 8, !tbaa !100
  %975 = getelementptr inbounds %struct.basic_block_def, ptr %972, i64 0, i32 6
  %976 = load ptr, ptr %975, align 8, !tbaa !101
  %977 = icmp eq ptr %976, %974
  br i1 %977, label %984, label %978, !prof !103

978:                                              ; preds = %968, %978
  %979 = phi ptr [ %982, %978 ], [ %976, %968 ]
  %980 = getelementptr inbounds %struct.basic_block_def, ptr %979, i64 0, i32 2
  store ptr null, ptr %980, align 8, !tbaa !107
  %981 = getelementptr inbounds %struct.basic_block_def, ptr %979, i64 0, i32 6
  %982 = load ptr, ptr %981, align 8, !tbaa !101
  %983 = icmp eq ptr %982, %974
  br i1 %983, label %984, label %978, !prof !153, !llvm.loop !238

984:                                              ; preds = %978, %968
  ret void
}

declare ptr @cached_make_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn_bb(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @guess_outgoing_edge_probabilities(ptr noundef) local_unnamed_addr #3

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
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @control_flow_insn_p, ptr @find_reg_note, i64 255301}
!36 = !{ptr @control_flow_insn_p, ptr @can_nonlocal_goto, i64 255143}
!37 = !{ptr @control_flow_insn_p, ptr @can_throw_internal, i64 255143}
!38 = !{ptr @find_many_sub_basic_blocks, ptr @split_block, i64 18741}
!39 = !{ptr @find_many_sub_basic_blocks, ptr @remove_edge, i64 18741}
!40 = !{ptr @find_many_sub_basic_blocks, ptr @find_reg_note, i64 438581}
!41 = !{ptr @find_many_sub_basic_blocks, ptr @can_nonlocal_goto, i64 43596}
!42 = !{ptr @find_many_sub_basic_blocks, ptr @can_throw_internal, i64 43596}
!43 = !{ptr @find_many_sub_basic_blocks, ptr @purge_dead_edges, i64 230077}
!44 = !{ptr @find_many_sub_basic_blocks, ptr @tablejump_p, i64 243697}
!45 = !{ptr @find_many_sub_basic_blocks, ptr @single_set_2, i64 46}
!46 = !{ptr @find_many_sub_basic_blocks, ptr @sbitmap_alloc, i64 90}
!47 = !{ptr @find_many_sub_basic_blocks, ptr @make_edge, i64 76}
!48 = !{ptr @find_many_sub_basic_blocks, ptr @sbitmap_zero, i64 247162}
!49 = !{ptr @find_many_sub_basic_blocks, ptr @cached_make_edge, i64 450215}
!50 = !{ptr @find_many_sub_basic_blocks, ptr @computed_jump_p, i64 234434}
!51 = !{ptr @find_many_sub_basic_blocks, ptr @returnjump_p, i64 234434}
!52 = !{ptr @find_many_sub_basic_blocks, ptr @extract_asm_operands, i64 234396}
!53 = !{ptr @find_many_sub_basic_blocks, ptr @get_eh_landing_pad_from_rtx, i64 63}
!54 = !{ptr @find_many_sub_basic_blocks, ptr @find_edge, i64 248823}
!55 = !{ptr @find_many_sub_basic_blocks, ptr @free, i64 90}
!56 = !{ptr @find_many_sub_basic_blocks, ptr @guess_outgoing_edge_probabilities, i64 777}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!64, !60, i64 8}
!64 = !{!"_IO_FILE", !65, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !65, i64 112, !65, i64 116, !66, i64 120, !67, i64 128, !61, i64 130, !61, i64 131, !60, i64 136, !66, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !66, i64 184, !65, i64 192, !61, i64 196}
!65 = !{!"int", !61, i64 0}
!66 = !{!"long", !61, i64 0}
!67 = !{!"short", !61, i64 0}
!68 = !{!64, !60, i64 16}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!61, !61, i64 0}
!71 = !{!64, !60, i64 40}
!72 = !{!64, !60, i64 48}
!73 = !{!64, !65, i64 0}
!74 = !{!65, !65, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!"branch_weights", i32 0, i32 8794, i32 281, i32 0, i32 9671, i32 0, i32 306, i32 0}
!79 = !{!"branch_weights", i32 0, i32 8794}
!80 = !{!"function_entry_count", i64 6371930}
!81 = !{!"branch_weights", i32 0, i32 259922, i32 8794, i32 0, i32 1053415, i32 298950, i32 5839318, i32 306}
!82 = !{!"branch_weights", i32 298925, i32 25}
!83 = !{!"branch_weights", i32 298739, i32 186}
!84 = !{!"branch_weights", i32 0, i32 211}
!85 = !{!"branch_weights", i32 298739, i32 0}
!86 = !{!"branch_weights", i32 0, i32 5839318}
!87 = !{!"branch_weights", i32 5839318, i32 0}
!88 = !{!"branch_weights", i32 63, i32 0}
!89 = !{!90, !60, i64 24}
!90 = !{!"eh_landing_pad_d", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !65, i64 32}
!91 = !{!90, !60, i64 16}
!92 = !{!"cfgbuild.c;make_label_edge"}
!93 = !{!"branch_weights", i32 274897, i32 0}
!94 = !{!"branch_weights", i32 0, i32 274897}
!95 = !{!"function_entry_count", i64 133}
!96 = !{!97, !60, i64 8}
!97 = !{!"function", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !65, i64 104, !65, i64 108, !65, i64 112, !65, i64 116, !65, i64 120, !65, i64 124, !60, i64 128, !65, i64 136, !65, i64 137, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 138, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139, !65, i64 139}
!98 = !{!99, !60, i64 0}
!99 = !{!"control_flow_graph", !60, i64 0, !60, i64 8, !60, i64 16, !65, i64 24, !65, i64 28, !65, i64 32, !60, i64 40, !65, i64 48, !61, i64 52, !61, i64 60, !65, i64 68, !65, i64 72}
!100 = !{!99, !60, i64 8}
!101 = !{!102, !60, i64 56}
!102 = !{!"basic_block_def", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !61, i64 32, !60, i64 48, !60, i64 56, !61, i64 64, !66, i64 72, !65, i64 80, !65, i64 84, !65, i64 88, !65, i64 92, !65, i64 96}
!103 = !{!"branch_weights", i32 1, i32 132}
!104 = !{!102, !65, i64 80}
!105 = !{!66, !66, i64 0}
!106 = !{!"branch_weights", i32 454202, i32 230077}
!107 = !{!102, !60, i64 16}
!108 = !{!"branch_weights", i32 132, i32 684147}
!109 = distinct !{!109, !76, !77}
!110 = !{!"branch_weights", i32 230077, i32 472948}
!111 = !{!112, !60, i64 0}
!112 = !{!"rtl_bb_info", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !65, i64 32}
!113 = !{!112, !60, i64 8}
!114 = !{!"branch_weights", i32 0, i32 230077}
!115 = !{!"branch_weights", i32 124070, i32 106007}
!116 = !{!"branch_weights", i32 19014, i32 1069760}
!117 = !{!"branch_weights", i32 19052, i32 1069722}
!118 = !{!"branch_weights", i32 306, i32 18746}
!119 = !{!"branch_weights", i32 18708, i32 38}
!120 = !{!121, !60, i64 8}
!121 = !{!"edge_def", !60, i64 0, !60, i64 8, !61, i64 16, !60, i64 24, !60, i64 32, !65, i64 40, !65, i64 44, !65, i64 48, !65, i64 52, !66, i64 56}
!122 = !{!"branch_weights", i32 18444, i32 264}
!123 = !{!"branch_weights", i32 264, i32 0}
!124 = distinct !{!124, !76, !77}
!125 = !{!"branch_weights", i32 8794, i32 9952}
!126 = !{!"branch_weights", i32 8794, i32 0}
!127 = !{!"branch_weights", i32 1070028, i32 0}
!128 = !{!"branch_weights", i32 854235, i32 234539}
!129 = !{!"branch_weights", i32 230077, i32 858697}
!130 = !{!"branch_weights", i32 14246, i32 215831}
!131 = !{!"branch_weights", i32 215789, i32 42}
!132 = !{!"branch_weights", i32 42, i32 0}
!133 = distinct !{!133, !76, !77}
!134 = !{!"branch_weights", i32 220837, i32 9240}
!135 = !{!"branch_weights", i32 9217, i32 23}
!136 = !{!"branch_weights", i32 23, i32 0}
!137 = !{!138, !65, i64 0}
!138 = !{!"rtvec_def", !65, i64 0, !61, i64 8}
!139 = !{!"branch_weights", i32 183, i32 1}
!140 = !{!"branch_weights", i32 40501, i32 0}
!141 = !{!"branch_weights", i32 0, i32 40501}
!142 = !{!"branch_weights", i32 323825, i32 183}
!143 = distinct !{!143, !76, !77}
!144 = !{!"branch_weights", i32 0, i32 23}
!145 = !{!"branch_weights", i32 0, i32 2786}
!146 = !{!147, !65, i64 0}
!147 = !{!"VEC_edge_base", !65, i64 0, !65, i64 4, !61, i64 8}
!148 = !{!"branch_weights", i32 23, i32 2763}
!149 = !{!"branch_weights", i32 0, i32 2763}
!150 = !{!121, !65, i64 48}
!151 = distinct !{!151, !76, !77}
!152 = !{!"branch_weights", i32 2763, i32 0}
!153 = !{!"branch_weights", i32 132, i32 702893}
!154 = distinct !{!154, !76, !77}
!155 = !{!"branch_weights", i32 0, i32 3766}
!156 = !{!"branch_weights", i32 3633, i32 133}
!157 = distinct !{!157, !76, !77}
!158 = !{!"branch_weights", i32 450569, i32 248823}
!159 = !{!"branch_weights", i32 132, i32 699260}
!160 = distinct !{!160, !76, !77}
!161 = !{!162, !60, i64 32}
!162 = !{!"rtl_data", !163, i64 0, !164, i64 40, !165, i64 96, !166, i64 112, !168, i64 208, !169, i64 248, !65, i64 312, !60, i64 320, !60, i64 328, !60, i64 336, !60, i64 344, !60, i64 352, !60, i64 360, !60, i64 368, !60, i64 376, !60, i64 384, !60, i64 392, !66, i64 400, !60, i64 408, !60, i64 416, !60, i64 424, !65, i64 432, !65, i64 436, !65, i64 440, !65, i64 444, !65, i64 448, !65, i64 452, !60, i64 456, !61, i64 464, !61, i64 465, !61, i64 466, !61, i64 467, !61, i64 468, !61, i64 469, !61, i64 470, !61, i64 471, !61, i64 472, !61, i64 473, !61, i64 474, !61, i64 475, !61, i64 476, !61, i64 477, !61, i64 478, !61, i64 479, !61, i64 480, !61, i64 481, !61, i64 482, !61, i64 483, !61, i64 484, !61, i64 485}
!163 = !{!"expr_status", !65, i64 0, !65, i64 4, !65, i64 8, !60, i64 16, !60, i64 24, !60, i64 32}
!164 = !{!"emit_status", !65, i64 0, !65, i64 4, !60, i64 8, !60, i64 16, !60, i64 24, !65, i64 32, !65, i64 36, !65, i64 40, !65, i64 44, !60, i64 48}
!165 = !{!"varasm_status", !60, i64 0, !65, i64 8}
!166 = !{!"incoming_args", !65, i64 0, !65, i64 4, !65, i64 8, !60, i64 16, !167, i64 24, !60, i64 88}
!167 = !{!"ix86_args", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !65, i64 36, !65, i64 40, !65, i64 44, !65, i64 48, !65, i64 52, !65, i64 56, !65, i64 60}
!168 = !{!"function_subsections", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32}
!169 = !{!"rtl_eh", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !61, i64 48}
!170 = !{!"branch_weights", i32 133, i32 0}
!171 = !{!99, !65, i64 68}
!172 = !{!"branch_weights", i32 90, i32 43}
!173 = !{!99, !65, i64 32}
!174 = !{!"branch_weights", i32 76, i32 57}
!175 = !{!"branch_weights", i32 431088, i32 248823}
!176 = !{!"branch_weights", i32 1661, i32 247162}
!177 = !{!"branch_weights", i32 0, i32 621028}
!178 = !{!"branch_weights", i32 247162, i32 373866}
!179 = !{!"branch_weights", i32 46, i32 373820}
!180 = !{!181, !60, i64 0}
!181 = !{!"simple_bitmap_def", !60, i64 0, !65, i64 8, !65, i64 12, !61, i64 16}
!182 = !{!"branch_weights", i32 373820, i32 0}
!183 = !{!"branch_weights", i32 0, i32 373866}
!184 = !{!"branch_weights", i32 373866, i32 0}
!185 = distinct !{!185, !76, !77}
!186 = !{!"branch_weights", i32 132864, i32 115959}
!187 = !{!"branch_weights", i32 132864, i32 0}
!188 = !{!"branch_weights", i32 234457, i32 14366}
!189 = !{!"branch_weights", i32 234457, i32 0}
!190 = !{!"branch_weights", i32 234434, i32 23}
!191 = distinct !{!191, !76, !77}
!192 = !{!"branch_weights", i32 234434, i32 0}
!193 = distinct !{!193, !76, !77}
!194 = !{!"branch_weights", i32 234396, i32 38}
!195 = !{!"branch_weights", i32 234396, i32 0}
!196 = distinct !{!196, !76, !77}
!197 = !{!"branch_weights", i32 0, i32 234396}
!198 = !{!"branch_weights", i32 82, i32 248741}
!199 = !{!"branch_weights", i32 63, i32 19}
!200 = !{!"branch_weights", i32 63, i32 248741}
!201 = !{!"branch_weights", i32 0, i32 63}
!202 = distinct !{!202, !76, !77}
!203 = !{!"branch_weights", i32 248728, i32 95}
!204 = !{!"branch_weights", i32 57, i32 38}
!205 = !{!"branch_weights", i32 1, i32 151}
!206 = !{!"branch_weights", i32 118068, i32 130717}
!207 = !{!"branch_weights", i32 118068, i32 0}
!208 = !{!"branch_weights", i32 151, i32 994989}
!209 = distinct !{!209, !76, !77}
!210 = !{!"branch_weights", i32 31, i32 248754}
!211 = !{!"branch_weights", i32 174747, i32 74007}
!212 = !{!"branch_weights", i32 132, i32 679779}
!213 = distinct !{!213, !76, !77}
!214 = !{!"branch_weights", i32 43, i32 90}
!215 = !{!99, !65, i64 48}
!216 = !{!"branch_weights", i32 0, i32 133}
!217 = !{!"branch_weights", i32 230077, i32 431088, i32 18746}
!218 = !{!102, !66, i64 72}
!219 = !{!102, !65, i64 88}
!220 = !{!"branch_weights", i32 0, i32 46022}
!221 = !{!"branch_weights", i32 18746, i32 27276}
!222 = !{!121, !66, i64 56}
!223 = !{!121, !60, i64 0}
!224 = !{!121, !65, i64 52}
!225 = !{!"branch_weights", i32 0, i32 27276}
!226 = !{!"branch_weights", i32 27276, i32 0}
!227 = distinct !{!227, !76, !77}
!228 = !{!102, !60, i64 8}
!229 = !{!"branch_weights", i32 0, i32 248823}
!230 = !{!"branch_weights", i32 160501, i32 88322}
!231 = !{!"branch_weights", i32 691, i32 159810}
!232 = !{!"branch_weights", i32 87664, i32 72146}
!233 = !{!"branch_weights", i32 0, i32 89013}
!234 = !{!"branch_weights", i32 88236, i32 777}
!235 = !{!"branch_weights", i32 777, i32 0}
!236 = distinct !{!236, !76, !77}
!237 = distinct !{!237, !76, !77}
!238 = distinct !{!238, !76, !77}
