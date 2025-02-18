; ModuleID = 'genrtl.c'
source_filename = "genrtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !52 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !53
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !52 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !53
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !52 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = load i8, ptr %3, align 1, !tbaa !64
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !52 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = load i8, ptr %3, align 1, !tbaa !64
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !52 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = load i8, ptr %3, align 1, !tbaa !64
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !53
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !52 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !63

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !65
  store i8 %12, ptr %4, align 1, !tbaa !64
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !52 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !63

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !65
  store i8 %12, ptr %4, align 1, !tbaa !64
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !52 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !63

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !65
  store i8 %12, ptr %4, align 1, !tbaa !64
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !52 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !52 {
  %2 = load i32, ptr %0, align 8, !tbaa !67
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !52 {
  %2 = load i32, ptr %0, align 8, !tbaa !67
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !52 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !68
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !52 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !68
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !52 {
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
  br i1 %23, label %7, label %24, !llvm.loop !69

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_0_stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !72 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !64
  ret ptr %3
}

declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !73 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ue_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !74 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_E_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !75 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !76 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #8 !prof !77 {
  %11 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 %1, 16
  %14 = and i32 %13, 16711680
  %15 = and i32 %12, -16711681
  %16 = or disjoint i32 %15, %14
  store i32 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  store i32 %2, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  store i32 %6, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  store ptr %7, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1
  store i32 %8, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %24, align 8, !tbaa !64
  ret ptr %11
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuBieie0_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #10 !prof !52 {
  %11 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 %1, 16
  %14 = and i32 %13, 16711680
  %15 = and i32 %12, -16711681
  %16 = or disjoint i32 %15, %14
  store i32 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  store i32 %2, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  store i32 %6, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  store ptr %7, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1
  store i32 %8, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %25, align 8, !tbaa !64
  ret ptr %11
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuBieiee_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #10 !prof !52 {
  %12 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %1, 16
  %15 = and i32 %14, 16711680
  %16 = and i32 %13, -16711681
  %17 = or disjoint i32 %16, %15
  store i32 %17, ptr %12, align 8
  %18 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  store i32 %2, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 2
  store i32 %6, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  store ptr %7, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1
  store i32 %8, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %10, ptr %26, align 8, !tbaa !64
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuu00000_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  ret ptr %6
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #9 !prof !78 {
  %9 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 %1, 16
  %12 = and i32 %11, 16711680
  %13 = and i32 %10, -16711681
  %14 = or disjoint i32 %13, %12
  store i32 %14, ptr %9, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  store i32 %2, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i32 %6, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %7, ptr %21, align 8, !tbaa !64
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_si_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #10 !prof !52 {
  %10 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %11 = load i32, ptr %10, align 8
  %12 = shl i32 %1, 16
  %13 = and i32 %12, 16711680
  %14 = and i32 %11, -16711681
  %15 = or disjoint i32 %14, %13
  store i32 %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  store i32 %4, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 2
  store ptr %6, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  store ptr %7, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1, i32 1
  store i32 %8, ptr %22, align 8, !tbaa !64
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_Ei_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 !prof !79 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_eEee0_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !prof !52 {
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %1, 16
  %10 = and i32 %9, 16711680
  %11 = and i32 %8, -16711681
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !64
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_eee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 !prof !80 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt__stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !81 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_w_stat(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 !prof !82 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store i64 %2, ptr %10, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_www_stat(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i64 %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store i64 %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store i64 %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_s_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !52 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_i00_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !83 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store i32 %2, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ei_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !84 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_e0_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !85 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %11, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_u_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !86 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_s00_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !87 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_tei_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store i32 %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iss_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_is_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_isE_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_i_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !52 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store i32 %2, ptr %10, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_iE_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ss_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_sEss_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !prof !52 {
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %1, 16
  %10 = and i32 %9, 16711680
  %11 = and i32 %8, -16711681
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !64
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_eE_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_Ess_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ses_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_sss_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_sse_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !52 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_sies_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !prof !52 {
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %1, 16
  %10 = and i32 %9, 16711680
  %11 = and i32 %8, -16711681
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !64
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_sE_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_ii_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_rtx_fmt_Ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !52 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #12
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @gen_rtx_fmt_0_stat, ptr @rtx_alloc_stat, i64 310}
!36 = !{ptr @gen_rtx_fmt_ee_stat, ptr @rtx_alloc_stat, i64 4961210}
!37 = !{ptr @gen_rtx_fmt_ue_stat, ptr @rtx_alloc_stat, i64 638112}
!38 = !{ptr @gen_rtx_fmt_E_stat, ptr @rtx_alloc_stat, i64 184965}
!39 = !{ptr @gen_rtx_fmt_e_stat, ptr @rtx_alloc_stat, i64 1234065}
!40 = !{ptr @gen_rtx_fmt_iuuBieie_stat, ptr @rtx_alloc_stat, i64 157}
!41 = !{ptr @gen_rtx_fmt_iuuB00is_stat, ptr @rtx_alloc_stat, i64 164541}
!42 = !{ptr @gen_rtx_fmt_Ei_stat, ptr @rtx_alloc_stat, i64 24339}
!43 = !{ptr @gen_rtx_fmt_eee_stat, ptr @rtx_alloc_stat, i64 244211}
!44 = !{ptr @gen_rtx_fmt__stat, ptr @rtx_alloc_stat, i64 40}
!45 = !{ptr @gen_rtx_fmt_w_stat, ptr @rtx_alloc_stat, i64 2067}
!46 = !{ptr @gen_rtx_fmt_i00_stat, ptr @rtx_alloc_stat, i64 1038559}
!47 = !{ptr @gen_rtx_fmt_ei_stat, ptr @rtx_alloc_stat, i64 115290}
!48 = !{ptr @gen_rtx_fmt_e0_stat, ptr @rtx_alloc_stat, i64 856645}
!49 = !{ptr @gen_rtx_fmt_u_stat, ptr @rtx_alloc_stat, i64 575334}
!50 = !{ptr @gen_rtx_fmt_s00_stat, ptr @rtx_alloc_stat, i64 139}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !54, i64 8}
!58 = !{!"_IO_FILE", !59, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !59, i64 112, !59, i64 116, !60, i64 120, !61, i64 128, !55, i64 130, !55, i64 131, !54, i64 136, !60, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !60, i64 184, !59, i64 192, !55, i64 196}
!59 = !{!"int", !55, i64 0}
!60 = !{!"long", !55, i64 0}
!61 = !{!"short", !55, i64 0}
!62 = !{!58, !54, i64 16}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!55, !55, i64 0}
!65 = !{!58, !54, i64 40}
!66 = !{!58, !54, i64 48}
!67 = !{!58, !59, i64 0}
!68 = !{!59, !59, i64 0}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"function_entry_count", i64 310}
!73 = !{!"function_entry_count", i64 4961210}
!74 = !{!"function_entry_count", i64 638112}
!75 = !{!"function_entry_count", i64 184965}
!76 = !{!"function_entry_count", i64 1234065}
!77 = !{!"function_entry_count", i64 157}
!78 = !{!"function_entry_count", i64 164541}
!79 = !{!"function_entry_count", i64 24339}
!80 = !{!"function_entry_count", i64 244211}
!81 = !{!"function_entry_count", i64 40}
!82 = !{!"function_entry_count", i64 2067}
!83 = !{!"function_entry_count", i64 1038559}
!84 = !{!"function_entry_count", i64 115290}
!85 = !{!"function_entry_count", i64 856645}
!86 = !{!"function_entry_count", i64 575334}
!87 = !{!"function_entry_count", i64 139}
